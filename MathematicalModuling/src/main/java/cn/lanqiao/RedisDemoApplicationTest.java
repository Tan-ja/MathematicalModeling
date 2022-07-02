package cn.lanqiao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisCluster;
import redis.clients.jedis.JedisPool;


@SpringBootTest
@RunWith(SpringRunner.class)
public class RedisDemoApplicationTest {
    @Test
    public void testJedisPool(){
        //从连接池中获取实例
        Jedis jedis = new Jedis("127.0.0.1");
        // 操作redis
        jedis.set("name","单机版测试");
        System.out.println(jedis.get("name"));
        // 释放连接
        jedis.close();
    }
}
