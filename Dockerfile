FROM tomcat:8.0
MAINTAINER nairobin
EXPOSE 80
ADD /target/java-pipeline.war java-pipeline.war