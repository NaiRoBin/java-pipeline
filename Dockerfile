FROM tomcat:8.0
MAINTAINER nairobin
ADD /target/java-pipeline.war java-pipeline.war
CMD ["catalina.sh", "run"]