package pet.petcage.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import pet.petcage.common.Constant;
import pet.petcage.dto.*;
import pet.petcage.entity.User;
import pet.petcage.service.UserService;
import pet.petcage.util.HttpUtil;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
public class MiniProgramController {

    @Autowired
    Constant constant;

    @Autowired
    UserService userService;

    /**
     * 小程序获取session_key openid
     *
     * @param js_code 小程序生成的code
     * @return session_key open_id
     */
    @RequestMapping(value = "/open_id", method = RequestMethod.POST)
    public ResultDTO openId(@RequestParam String js_code) {
        HashMap<String, String> params = new HashMap<>();
        params.put("appid", constant.getWx_app_id());
        params.put("secret", constant.getWx_app_secret());
        params.put("js_code", js_code);
        params.put("grant_type", "authorization_code");
        String response = HttpUtil.sendPost(constant.getAccess_url(), params);
        System.out.println("response: " + response);
        SessionDTO sessionDTO = new SessionDTO();
        JSONObject jsonObject = JSONObject.parseObject(response);
        sessionDTO.setOpen_id(jsonObject.getString("openid"));
        sessionDTO.setSession_key(jsonObject.getString("session_key"));
        return ResultDTO.ok(sessionDTO);
    }

    /**
     * 获取小程序access token, 保存用户token到mysql数据库
     *
     * @return 请求响应
     */
    @RequestMapping(value = "/access_token", method = RequestMethod.GET)
    public String accessToken() {
        String token = "";
        try {
            StringBuilder params = new StringBuilder();
            params.append("appid=").append(constant.getWx_app_id());
            params.append("&secret=").append(constant.getWx_app_secret());
            params.append("&grant_type=client_credential");
            String request_url = constant.getAccess_token_url() + "?" + params;
            System.out.println(request_url);
            String response = HttpUtil.get(request_url);
            System.out.println("get access token response: " + response);
            token = JSONObject.parseObject(response).getString("access_token");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return token;
    }

    /**
     * 小程序获取session access_token, 保存用户token到mysql数据库
     *
     * @param loginDTO 小程序生成的code，和用户信息rawData
     * @return ResultDTO包含token
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

    /**
     * 获取小程序码
     *
     * @param page  页面id
     * @param scene 场景值
     * @return 小程序码本地路径
     */
    @RequestMapping(value = "/get_qrcode")
    @ResponseBody
    public ResultDTO getQRCode(String page, String scene) {
        RestTemplate rest = new RestTemplate();
        InputStream inputStream = null;
        OutputStream outputStream = null;
        System.out.println("page：" + page);
        System.out.println("scene：" + scene);
        try {
            //获取小程序码调用API
            String url = constant.getUnlimited_qrcode() + "?access_token=" + constant.getAccess_token();
            Map<String, Object> param = new HashMap();
            param.put("page", page);//小程序页面
            param.put("width", 430);
            param.put("scene", scene);//参数
            param.put("auto_color", true);
            MultiValueMap<String, String> headers = new LinkedMultiValueMap();
            HttpEntity requestEntity = new HttpEntity(param, headers);
            ResponseEntity<byte[]> entity = rest.exchange(url, HttpMethod.POST, requestEntity, byte[].class, new Object[0]);
            byte[] result = entity.getBody();
            inputStream = new ByteArrayInputStream(result);
            String fileName = UUID.randomUUID().toString().trim().replaceAll("-", "") + ".png";
            //本地上传，路径填写自己项目路径
            File file = new File(constant.getQrcode_path() + "/" + fileName);
            System.out.println("filePath : " + file.getAbsolutePath());
            outputStream = new FileOutputStream(file);
            int len = 0;
            byte[] buf = new byte[1024];
            while ((len = inputStream.read(buf, 0, 1024)) != -1) {
                outputStream.write(buf, 0, len);
            }
            outputStream.flush();
            //保存到数据表

            //返回本地图片路径

            QRCodeDTO qrCodeDTO = new QRCodeDTO();
            qrCodeDTO.setCode_path(file.getAbsolutePath());
            return ResultDTO.ok(qrCodeDTO);
        } catch (Exception e) {
            System.out.println("调用小程序生成微信永久二维码URL接口异常" + e);
            e.printStackTrace();
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    @RequestMapping(value = "/get_service_id")
    public String getServiceId() {
        return constant.getService_id();
    }

    @RequestMapping(value = "/get_characteristic_id")
    public String getCharacteristicId() {
        return constant.getCharacteristic_id();
    }


}
