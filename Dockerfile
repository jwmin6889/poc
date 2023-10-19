# Tomcat 베이스 이미지를 사용합니다
FROM my-tomcat-java11:latest

# WAR 파일을 도커 이미지에 추가합니다
COPY ./target/testweb-1.0.0.war /usr/local/tomcat/webapps/ROOT.war

# 톰켓이 8080 포트를 사용하므로 해당 포트를 열어줍니다
EXPOSE 8080

# 컨테이너 시작 시 톰켓을 실행합니다
CMD ["catalina.sh", "run"]
