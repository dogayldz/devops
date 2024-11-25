# Base image olarak OpenJDK 11'i kullanıyoruz (Java 11'de Spring Boot uygulamaları için yaygın bir seçim)
FROM openjdk:17-jdk-slim

# Uygulama jar dosyasını konteynıra kopyalıyoruz
COPY target/thymeleafdemo-0.0.1-SNAPSHOT.jar app.jar

# Uygulama konteynırında çalıştırılacak komut
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Konteynır çalışırken hangi portta dinleyeceğimizi belirtiyoruz
EXPOSE 8080