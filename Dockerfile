FROM openjdk:17
WORKDIR /app
COPY . .
RUN ls -l /app
RUN javac Servidor.java
EXPOSE 8080
CMD ["java", "Servidor"]
