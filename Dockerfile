FROM openjdk:8-jre-apline
MAINTAINER Peter Viertel
WORKDIR /home/root/javahelloworld
RUN mkdir bin src
COPY src src
RUN javac -d bin src/HelloWorld.java
RUN touch /NEWFILE
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
ENV FOO bar
