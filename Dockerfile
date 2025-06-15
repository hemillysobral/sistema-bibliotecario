# Imagem base com JDK 17
FROM openjdk:17

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia todos os arquivos da sua pasta local para dentro do container
COPY . .

# Compila o Servidor.java
RUN javac Servidor.java

# Expõe a porta 8080 para acesso externo
EXPOSE 8080

# Comando para rodar o servidor
CMD ["java", "Servidor"]
