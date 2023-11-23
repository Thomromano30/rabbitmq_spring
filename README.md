# spring + rabbitmq basic conf

### this project use maven dependencies 

go to: 
https://start.spring.io/

set dependencies for rabbitmq

```xml 
<dependency>
    <groupId>org.springframework.amqp</groupId>
    <artifactId>spring-rabbit-test</artifactId>
    <scope>test</scope>
    </dependency>
```

> make configuration 

using `application.properties` file
\
add the basic configuration for connecting rabbitmq to spring
\
add some config for queue, exchange:
\
```
rabbitmq.queue.name=queue_name
rabbitmq.queue.json.name=json_queue_name
rabbitmq.exchange.name=exchange_name
rabbitmq.routing.key=routing_key
rabbitmq.routing.json.key=json_key
``` 

