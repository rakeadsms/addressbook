FROM tomcat:latest
add target/addressbook.war /usr/local/tomcat/webaspps
expose 8080
CMD ["catalina.sh", "run" ]
