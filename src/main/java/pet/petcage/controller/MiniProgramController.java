package pet.petcage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pet.petcage.common.Constant;
import pet.petcage.util.HttpUtil;

import java.util.HashMap;

@RestController
public class MiniProgramController {

    @Autowired
    Constant constant;

    @RequestMapping(value = "/access_token", method = RequestMethod.POST)
    public String accessToken(@RequestParam String js_code) {
        HashMap<String, String> params = new HashMap<>();
        params.put("appid", constant.getWx_app_id());
        params.put("secret", constant.getWx_app_secret());
        params.put("js_code", js_code);
        params.put("grant_type", "authorization_code");
        String response = HttpUtil.sendPost(constant.getAccess_url(), params);
        System.out.println("response: " + response);
        return response;
    }
}
