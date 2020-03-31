package pet.petcage.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pet.petcage.common.Constant;
import pet.petcage.dto.BluetoothDTO;
import pet.petcage.dto.LoginDTO;
import pet.petcage.dto.ResultDTO;
import pet.petcage.dto.TokenDTO;
import pet.petcage.entity.User;
import pet.petcage.service.UserService;
import pet.petcage.util.HttpUtil;

import java.util.HashMap;
import java.util.UUID;

@RestController
public class MiniProgramController {

    @Autowired
    Constant constant;

    @Autowired
    UserService userService;

    /**
     * 小程序获取session access_token, 保存用户token到mysql数据库
     *
     * @param js_code 小程序生成的code
     * @return session_key open_id
     */
    @RequestMapping(value = "/accessToken", method = RequestMethod.POST)
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

    /**
     * 小程序获取session access_token, 保存用户token到mysql数据库
     *
     * @param loginDTO 小程序生成的code，和用户信息rawData
     * @return access_token
     */
    @RequestMapping(value = "/wx_login", method = RequestMethod.GET)
    public ResultDTO wxLogin(LoginDTO loginDTO) {
        System.out.println(loginDTO);
        HashMap<String, String> params = new HashMap<>();
        params.put("appid", constant.getWx_app_id());
        params.put("secret", constant.getWx_app_secret());
        params.put("js_code", loginDTO.getJs_code());
        params.put("grant_type", "authorization_code");
        String response = HttpUtil.sendPost(constant.getAccess_url(), params);
        System.out.println("response: " + response);

        String token = UUID.randomUUID().toString();
        User user = JSON.parseObject(loginDTO.getRawData(), User.class);
        user.setToken(token);
        JSONObject result = JSON.parseObject(response);
        user.setOpen_id(result.getString("openid"));
        System.out.println(user);

        // 更新或者插入token，记录登录状态，下次客户端请求头携带token，后端拦截器做对比，存在即放行
        if (userService.getUserByOpenid(result.getString("openid")).size() == 0) {
            userService.addUser(user);
        } else {
            userService.updateUser(user);
        }
        TokenDTO data = new TokenDTO();
        data.setToken(token);
        return ResultDTO.ok(data);
    }


    /**
     * 获取蓝牙设备指令集
     *
     * @param dvname 设备名称
     * @return 设备指令集
     */
    @RequestMapping(value = "/get_device_bluetooth_command", method = RequestMethod.POST)
    public ResultDTO getDeviceBluetoothCommand(@RequestParam("dvname") String dvname) {
        HashMap<String, String> params = new HashMap<>();
        params.put("dvname", dvname);
        params.put("acctoken", constant.getAcctoken());
        String response = HttpUtil.sendPost(constant.getDev_command_list(), params);
        BluetoothDTO bluetoothDTO = new BluetoothDTO();
        JSONObject jsonObject = JSONObject.parseObject(response);
        bluetoothDTO.setSta(jsonObject.getString("sta"));
        bluetoothDTO.setMsg(jsonObject.getJSONObject("msg"));
        return ResultDTO.ok(bluetoothDTO);
    }

}
