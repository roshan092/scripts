#!/bin/bash
echo "Enter the groupId: com.roshan092"
read GROUP_ID
if [ -z "$GROUP_ID" ]; then
    GROUP_ID="com.roshan092"
fi

echo "Enter the artifact id: test"
read ARTIFACT_ID
if [ -z "$ARTIFACT_ID" ]; then
    ARTIFACT_ID="test"
fi
wget --content-disposition "http://start.spring.io/starter.zip?type=maven-project\
&language=java\
&bootVersion=1.5.6.RELEASE\
&baseDir=${ARTIFACT_ID}\
&groupId=${GROUP_ID}\
&artifactId=${ARTIFACT_ID}\
&name=${ARTIFACT_ID}\
&description=Demo+project+for+Spring+Boot\
&packageName=${GROUP_ID}\
&packaging=jar\
&javaVersion=1.8\
&autocomplete=\
&generate-project=\
&style=web"

unzip ${ARTIFACT_ID}.zip
pushd ${ARTIFACT_ID}
rm -rf .mvn/
rm -rf mvnw*
popd
rm -rf ${ARTIFACT_ID}.zip
