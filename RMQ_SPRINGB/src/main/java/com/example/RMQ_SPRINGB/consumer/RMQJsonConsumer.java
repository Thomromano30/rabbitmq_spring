package com.example.RMQ_SPRINGB.consumer;

import com.example.RMQ_SPRINGB.dto.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

@Service
public class RMQJsonConsumer {
    private static final Logger LOGGER = LoggerFactory.getLogger(RMQJsonConsumer.class);
    @RabbitListener(queues = "${rabbitmq.queue.json.name}")
    public void consumeJsonMessage(User user){
        LOGGER.info(String.format("Json message sent -> %s", user.toString()));
    }
}
