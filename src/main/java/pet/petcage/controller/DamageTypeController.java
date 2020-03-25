package pet.petcage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import pet.petcage.entity.DamageType;
import pet.petcage.service.DamageTypeService;

import java.util.List;

/**
 * Created by user chenzuoli on 2020/3/25 12:09
 * description: 损坏信息控制器
 */
@RestController
public class DamageTypeController {

    @Autowired
    DamageTypeService damageTypeService;

    @RequestMapping(value = "/getDamageType", method = RequestMethod.POST)
    public List<DamageType> getDamageType(){
        return damageTypeService.getDamageType();
    }

}
