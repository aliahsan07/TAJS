FROM openjdk:11
WORKDIR /
ADD dist/tajs-all.jar tajs-all.jar
ADD example.js example.js
ADD data.txt data.txt
EXPOSE 8080
CMD java -jar tajs-all.jar -ptrSetFile data.txt example.js
