FROM tomcat
WORKDIR webapps
COPY target/*.war .
ENTRYPOINT ["sh","/usr/local/tomcat/bin/startup.sh"]
