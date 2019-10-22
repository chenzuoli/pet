package top.wetech.pet.common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@ConfigurationProperties(prefix = "sql")
@PropertySource("classpath:sql.properties")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Constant {
    private String select_user_by_id_sql;
    private String select_user_by_mobile_sql;
    private String insert_user_sql;
    private String update_user_by_id_sql;
    private String update_user_by_mobile_sql;

}
