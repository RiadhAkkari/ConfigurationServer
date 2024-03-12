#!/bin/bash

# Script for building and deploying Grails app
# Add the necessary commands to compile and deploy your app

# Example:
# gradle clean
# gradle build --refresh-dependencies --stacktrace
# /path/to/grails/2.4.4/bin/grails prod build-standalone favizone.jar -Dbuild.compiler=javac1.7 --jetty

# Copy the JAR to the server
scp favizone.jar root@cluster.favizone.com:/home/favizone/resources/upgrade/favizone-date.jar

# Additional deployment steps like connecting via SSH, backing up, stopping the app, replacing JAR, and restarting can be added here.
