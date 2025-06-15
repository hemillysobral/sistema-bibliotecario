# Imagem base com JDK 17
FROM openjdk:17

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia todos os arquivos da pasta local para dentro do container
COPY . .

# Lista os arquivos copiados para garantir que Servidor.java está presente (ajuda no debug)
RUN ls -l /app

# Compila o arquivo Servidor.java
RUN javac servidor.java

# Expõe a porta 8080 para acesso externo
EXPOSE 8080

# Comando para rodar o servidor Java
CMD ["java", "servidor"]
