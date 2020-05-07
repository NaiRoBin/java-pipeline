FROM java:8  
EXPOSE 80
ADD /target/java-pipeline.war java-pipeline.war
ENTRYPOINT ["java","-jar","java-pipeline.war"]