FROM tomcat:8.0
EXPOSE 80
ADD /target/java-pipeline.war java-pipeline.war
#ENTRYPOINT ["java","-jar","java-pipeline.war"]
CMD ["catalina.sh", "run"]