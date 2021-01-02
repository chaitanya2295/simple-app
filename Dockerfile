FROM tomcat
WORKDIR webapps
COPY target/simple-app-2.0.0.war .
ENTRYPOINT ["sh","/usr/local/tomcat/bin/startup.sh"]
