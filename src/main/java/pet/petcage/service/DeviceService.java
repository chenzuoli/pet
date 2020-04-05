package pet.petcage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.petcage.dao.DeviceRepository;
import pet.petcage.entity.Device;

import java.util.List;

/**
 * Created by user chenzuoli on 2020/3/24 16:25
 * description: 设备服务类
 */
@Service
public class DeviceService extends BaseService<Device> {
    @Autowired
    DeviceRepository devRepo;

    @Override
    public Device getById(String id) {
        return null;
    }

    public List<Device> getDeviceLocations() {
        return devRepo.deviceLocations();
    }

    /**
     * 添加设备信息
     *
     * @param device_id   设备id
     * @param device_name 设备名称
     * @param latitude    设备所在径度
     * @param longitude   设备所在纬度
     * @param kwh         设备所剩电量
     * @return 返回设备信息
     */
    public int addDevice(String device_id, String device_name, String latitude, String longitude, String kwh) {
        System.out.println("params: " + device_id + "," + device_name + "," + latitude + "," + longitude + "," + kwh);
        return devRepo.addDevice(device_id, device_name, latitude, longitude, kwh);
    }

    public Device getDeviceInfo(String id) {
        System.out.println("params: " + id);
        return devRepo.getDeviceById(id);
    }

}
