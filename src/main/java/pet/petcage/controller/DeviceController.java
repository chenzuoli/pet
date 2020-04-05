package pet.petcage.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pet.petcage.common.Constant;
import pet.petcage.dto.BluetoothDTO;
import pet.petcage.dto.ResultDTO;
import pet.petcage.entity.Device;
import pet.petcage.service.DeviceService;
import pet.petcage.util.HttpUtil;

import java.util.HashMap;
import java.util.List;

/**
 * Created by user chenzuoli on 2020/3/24 16:20
 * description: 蓝牙设备控制器
 */
@RestController
public class DeviceController {
    @Autowired
    DeviceService deviceService;
    @Autowired
    Constant constant;

    @RequestMapping(value = "/getDeviceLocations", method = RequestMethod.POST)
    public List<Device> getDeviceLocations() {
        return deviceService.getDeviceLocations();
    }

    @RequestMapping("/addDevice")
    public int addDevice(@RequestParam String device_id,
                         @RequestParam String device_name,
                         @RequestParam String latitude,
                         @RequestParam String longitude,
                         @RequestParam String kwh) {
        return deviceService.addDevice(device_id, device_name, latitude, longitude, kwh);
    }

    @RequestMapping(value = "/get_device_info", method = RequestMethod.POST)
    public ResultDTO getDeviceInfo(@RequestParam("id") String id) {
        Device deviceInfo = deviceService.getDeviceInfo(id);
        if (deviceInfo == null) {
            return ResultDTO.fail("未找到该设备");
        }
        return ResultDTO.ok(deviceInfo);
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
     * 获取蓝牙设备服务id
     * @return 服务id
     */
    @RequestMapping(value = "/get_service_id")
    public String getServiceId() {
        return constant.getService_id();
    }

    /**
     * 获取蓝牙设备特征id
     * @return 特征id
     */
    @RequestMapping(value = "/get_characteristic_id")
    public String getCharacteristicId() {
        return constant.getCharacteristic_id();
    }
}
