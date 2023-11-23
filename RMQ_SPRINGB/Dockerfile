# Usa l'immagine di base con OpenJDK 17 su Alpine Linux
FROM openjdk:17-alpine

RUN apk -U add vim && apk -U add gzip
# Esponi la porta 8080
EXPOSE 8080

# Argomento di build e aggiungi il file JAR all'immagine
ARG JAR_FILE=target/RMQ_SPRINGB-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} /app.jar

# Punto di ingresso per eseguire l'applicazione Java
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Crea un punto di mount con un volume chiamato /tmp
VOLUME /tmp

# Nota: la seguente copia è ridondante, poiché il file JAR è già stato aggiunto sopra
# COPY target/RMQ_SPRINGB-0.0.1-SNAPSHOT.jar /app.jar

# Definisci il comando predefinito per avviare l'applicazione
CMD ["java", "-jar", "/app.jar"]

