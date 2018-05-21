# docker-jboss-eap
sample rest service deployed using jboss-eap 

Download jboss-eap in this link http://www.jboss.org/products/eap/download/ 

build the app
i.e.: docker build -t jboss-eap:7.1

run the app
winpty docker run -it -p 8080:8080 -e JAVA_OPTS='-Xmx1g -Djava.net.preferIPv4Stack=true' jboss-eap:7.1
 
