package pet.petcage.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pet.petcage.entity.Device;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by user chenzuoli on 2020/3/24 16:12
 * description: 设备工厂
 */
@Repository
public interface DeviceRepository extends JpaRepository<Device, String> {

    @Query(value = "select * from device", nativeQuery = true)
    List<Device> deviceLocations();

    @Transactional
    @Modifying
    @Query(value = "insert into device(device_id, device_name, latitude, longitude, kwh) values(?1, ?2, ?3, ?4, ?5)", nativeQuery = true)
    int addDevice(String device_id, String device_name, String latitude, String longitude, String kwh);

    @Query(value = "select * from device where id = ?1", nativeQuery = true)
    Device getDeviceById(String id);


    @Transactional
    @Modifying
    @Query(value = "update device set kwh = ?2 where device_name = ?1", nativeQuery = true)
    int updateDevicePowerVolume(String device_name, String kwh);
}
