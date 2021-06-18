FROM node:14 AS build

# Create a default user
RUN groupadd --system automation && \
    useradd --system --create-home --gid automation  automation && \
    chown --recursive automation:automation /home/automation


RUN apt-get update && apt-get install -y unzip
RUN apt-get install -y libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb

WORKDIR /source

COPY features/ ./features/
COPY *.js .
COPY *.json .
COPY *.sh .
COPY cypress/ ./cypress/

RUN chown -R automation.automation /source
USER automation

RUN npm install

ENV PATH $PATH:/home/automation/.local/bin

#ENTRYPOINT ["mvn", "clean", "compile", "test", "-Dcucumber.plugin=json:report.json", "-Dcucumber.features=features/"]
ENTRYPOINT ["./run_all_cloud_standard_workflow.sh"]

