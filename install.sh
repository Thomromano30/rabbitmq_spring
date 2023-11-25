sudo apt install openjdk-17-jre-headless
sudo apt install maven
sudo apt install git
sudo apt install maven
#sudo apt install docker.io -y
#sudo apt install docker-compose -y

#cloning repo
git clone https://github.com/Thomromano30/rabbitmq_spring

#change directory
cd ./rabbitmq_spring/RMQ_SPRINGB/

#change application properties
echo"
logging.level.org.springframework.amqp=DEBUG

#server.servlet.context-path=/app
#set connection options
spring.rabbitmq.host=localhost
#spring.rabbitmq.host=rabbitmq
spring.rabbitmq.port=5672
spring.rabbitmq.username=guest
spring.rabbitmq.password=guest
# Optional: Set the virtual host
#spring.rabbitmq.virtual-host=rabbitmq

#set queue and some stuff
rabbitmq.queue.name=prova_rmq
rabbitmq.queue.json.name=json_prova
rabbitmq.exchange.name=prova_rmq_exchange
rabbitmq.routing.key=thomas_key
rabbitmq.routing.json.key=json_key

# Optional: Configure additional properties as needed
# spring.rabbitmq.connection-timeout=60000
# spring.rabbitmq.publisher-confirms=true
# spring.rabbitmq.publisher-returns=true
" >> ./src/main/resources/application.properties

# latest RabbitMQ 3.12
docker run -d -it --rm --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:3.12-management

#creating clean jar package
#mvn -f ./rabbitmq_spring/RMQ_SPRINGB/pom.xml clean package

mvn clean package

#compile jar
#java -jar ./target/RMQ_SPRINGB-0.0.1-SNAPSHOT.jar

# check Maven build status and run JAR if successful
if [ $? -eq 0 ]; then
    # Maven build successful, run the JAR
    java -jar ./target/RMQ_SPRINGB-0.0.1-SNAPSHOT.jar
else
    # Maven build failed
    echo "Maven build failed. Check the logs for details."
fi
cd ..
echo ------------------------
cat README.md


