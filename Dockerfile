FROM jenkins
USER root
RUN apt-get update
RUN apt-get install -y ansible
RUN apt-get install openjdk-8-jdk-headless -y
RUN wget https://download.rundeck.org/deb/rundeck_3.3.12.20210521-1_all.deb
RUN sudo dpkg -i rundeck_3.3.12.20210521-1_all.deb
RUN sudo service rundeckd start
USER jenkins

