FROM jboss/base-jdk:8

ENV JBOSS_VERSION 7.1.0
ENV JBOSS_HOME /opt/jboss/jboss-eap-7.1/


COPY jboss-eap-$JBOSS_VERSION.zip $HOME

RUN cd $HOME \
    && unzip jboss-eap-$JBOSS_VERSION.zip \
&& rm jboss-eap-$JBOSS_VERSION.zip

ENV LAUNCH_JBOSS_IN_BACKGROUND true

RUN /opt/jboss/jboss-eap-7.1/bin/add-user.sh admin Admin#007 --silent

EXPOSE 8080 9990

CMD ["/opt/jboss/jboss-eap-7.1/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]


#ENTRYPOINT /opt/jboss/jboss-eap-7.1/bin/standalone.sh -c standalone-full.xml

#file path below is variable depends on your local setup
#ADD ear/target/jboss-demo.ear /opt/jboss/jboss-eap-7.1/standalone/deployments/jboss-demo.ear
