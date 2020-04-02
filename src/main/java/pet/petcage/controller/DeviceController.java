package pet.petcage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pet.petcage.entity.Device;
import pet.petcage.service.DeviceService;

import java.util.List;

/**
 * Created by user chenzuoli on 2020/3/24 16:20
 * description: 设备控制器
 */
@RestController
public class DeviceController {
    @Autowired
    DeviceService deviceService;

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
}
