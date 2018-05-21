# docker-jboss-eap
sample rest service deployed using jboss-eap 

Download jboss-eap in this link http://www.jboss.org/products/eap/download/ 

build the app
format: docker build -t <name of repository>
i.e.: docker build -t jboss-eap:7.1

run the app
format: winpty docker run -it -p 9090:9090 -e JAVA_OPTS='-Xmx1g -Djava.net.preferIPv4Stack=true' <name of repository>
i.e.: winpty docker run -it -p 9090:9090 -e JAVA_OPTS='-Xmx1g -Djava.net.preferIPv4Stack=true' jboss-eap:7.1
 
