package com.yohavo.CI1.controller;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.yohavo.CI1.dao.GiveawaystructDao;
import com.yohavo.CI1.dao.UserDao;

import com.yohavo.CI1.dto.YoutubeJsonRespone;
import com.yohavo.CI1.entity.Giveawaystruct;
import com.yohavo.CI1.entity.User;
import com.yohavo.CI1.form.UserForm;
import com.yohavo.CI1.util.Constants;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.client.OAuth2AuthorizedClient;
import org.springframework.security.oauth2.client.OAuth2AuthorizedClientService;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.net.URI;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.net.URISyntaxException;


@Controller
@RequestMapping("/")
public class ResourceController {

    @Autowired
    UserDao userDao;

    @Autowired
    GiveawaystructDao giveawaystructDao;

    @Autowired
    RestTemplate restTemplate;

    @Value("${spring.security.oauth2.client.registration.google.clientSecret}")
    private String clientSecret;

    @Autowired
    private OAuth2AuthorizedClientService authorizedClientService;

    private User u;

    @GetMapping({ "index"})
    public String welcome(OAuth2AuthenticationToken authentication, @ModelAttribute("user") UserForm user, Model model) throws ParseException {

        System.out.println("In Main controller: "+authentication.getPrincipal()+" \n"+authentication.getDetails());


            List<Giveawaystruct> openGiveaways = giveawaystructDao.findByClosedFalse();
            model.addAttribute("openGiveawaysList", openGiveaways);


        Object oauthUser = authentication.getPrincipal();
        String email = StringUtils.substringBetween(oauthUser.toString(), "email=", "}");
        u = userDao.findByUsername(email);
        model.addAttribute("giveaways", giveawaystructDao.findAll());
        model.addAttribute("user", u);
        if(u.getAdmin()) {
            //where admin goes to upon login
            return "redirect:/current-orders";
        }
        else {

            if(u.getIsEnabled()){
                System.out.println("Already Enabled, sending to Index");
                return "index";
            }else{
                //It's not verified get the youtube subscription list for this user
                try {
                    System.out.println("Going to fetch the User Youtube subscription list");
                    OAuth2AuthorizedClient client = authorizedClientService.loadAuthorizedClient(authentication.getAuthorizedClientRegistrationId(), authentication.getName());
                    String accessToken=client.getAccessToken().getTokenValue();
                    boolean subscribed = userSubscribedToMyChannel(accessToken);

                    if(subscribed){
                        // User subscribed our channel
                        System.out.println("not verified, subscribed, go to extra-settings");
                        return "extra-settings";
                    }else{
                        // User doesn't subscribed our channel
                        System.out.println("not verified, not subscribed, go to home");
                        return "login";
                    }
                }catch(Exception ex){
                    ex.printStackTrace();
                }
            }
        }
        return "";
    }

    @GetMapping({"/", "/login", "/logout"})
    public String login(){
        System.out.println("In Login controller");
        return "login";
    }

    @GetMapping({ "termsandconditions"})
    public String termsandconditions(){
        return "termsandconditions";
    }
    @GetMapping({ "privacy"})
    public String privacy(){
        return "privacy";
    }


    @GetMapping("/giveawaystruct")
    public String giveawaystruct(){
        System.out.println("In Giveawaystruct controller");
        return "redirect:/index2";
    }

    @GetMapping("/new-hp")
    public String newhp(){
        System.out.println("In New-hp controller");
        return "new-hp";
    }

    @GetMapping("/settings")
    public String settings(Model model){
        Boolean delete = false;
        model.addAttribute("delete", delete);
        if(delete){
            userDao.deleteById(u.getId());
        }
        return "settings";
    }

    @GetMapping("/deleteUser")
    public String deleteEmployee() {
        userDao.deleteById(u.getId());
        return "redirect:/login";
    }


    private boolean userSubscribedToMyChannel(String accessToken)throws Exception{
        boolean status=false;
        System.out.println("Access token -- "+accessToken);
        String url = "https://youtube.googleapis.com/youtube/v3/subscriptions?maxResults=50&part=snippet&mine=true&key="+clientSecret;
        HttpHeaders headers = new HttpHeaders();
        headers.set(HttpHeaders.AUTHORIZATION, "Bearer "+accessToken);
        headers.set(HttpHeaders.ACCEPT, "application/json");
        HttpEntity<String> entity = new HttpEntity<>("", headers);

        ResponseEntity<String> responseData= restTemplate.exchange(url, HttpMethod.GET, entity, String.class);
        if(responseData.getStatusCodeValue()==200){
            //success
            System.out.println("Success -- "+responseData.getStatusCode()+" \n");
            String jsonData=responseData.getBody();
            // Parse received JSON subscripton data list and match with channel
            ObjectMapper objectMapper = new ObjectMapper().configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
            YoutubeJsonRespone youtubeJsonRespone = objectMapper.readValue(jsonData,YoutubeJsonRespone.class);

            for(YoutubeJsonRespone.Item itm:youtubeJsonRespone.getItems()){
                String channelId=itm.getSnippet().getResourceId().getChannelId();
                String channelTitle=itm.getSnippet().getTitle();
                System.out.println(channelId+" ch  "+channelTitle);
                // User subscription list contains our channel id, break the loop
                if(Constants.channelList.contains(channelId)){
                    status=true;
                    break;
                }
            }
        }else{
            // failed
            System.out.println("Error -- "+responseData.getStatusCode()+" \n"+responseData.getBody());
        }
        return status;
    }
}

