#!/bin/bash
wget --content-disposition "http://start.spring.io/starter.zip?type=maven-project\
&language=java\
&bootVersion=1.5.6.RELEASE\
&baseDir=tdd-demo\
&groupId=com.roshan092.demo.tdd\
&artifactId=tdd-demo\
&name=tdd-demo\
&description=Demo+project+for+Spring+Boot\
&packageName=com.roshan092.demo.tdd\
&packaging=jar\
&javaVersion=1.8\
&autocomplete=\
&generate-project=\
&style=web"

unzip tdd-demo.zip
pushd tdd-demo
rm -rf .mvn/
rm -rf mvnw*
popd
rm -rf tdd-demo.zip
