package pet.petcage.common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@ConfigurationProperties
@PropertySource("classpath:param.properties")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Constant {
    private String select_user_by_id_sql;
    private String select_user_by_phone_sql;
    private String insert_user_sql;
    private String update_user_by_id_sql;
    private String update_user_by_phone_sql;
    private String wx_app_id;
    private String wx_app_secret;
    private String access_url;
    private String access_token;
    private String access_token_url;
    private String sms_url;
    private String sms_app_id;
    private String sms_app_secret;
    private String dev_command_list;
    private String decrypt_open_url;
    private String decrypt_close_url;
    private String acctoken;
    private String unlimited_qrcode;
    private String qrcode_path;
    private String service_id;
    private String characteristic_id;
}
