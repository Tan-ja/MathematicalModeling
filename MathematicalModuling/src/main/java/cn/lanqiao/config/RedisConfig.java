package cn.lanqiao.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
/*
*该类是Java操作Redis的配置类
*/
@Configuration // 指定当前类是配置类
@PropertySource("classpath:application.properties") // 执行Redis的配置文件
public class RedisConfig {
    @Value("${redis.host}") // 指定获取配置文件中的指定的值
    private String redisHost;

    @Value("${redis.port}")
    private int redisPort;

    @Bean // 该注解的作用是返回一个对象
    public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer(){
        return new PropertySourcesPlaceholderConfigurer();
    }
}