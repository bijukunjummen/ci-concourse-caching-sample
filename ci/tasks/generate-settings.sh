#!/bin/bash

mkdir -p ${HOME}/.m2

M2_LOCAL_REPO="${ROOT_FOLDER}/.m2"

mkdir -p "${M2_LOCAL_REPO}/repository"

cat > ${M2_LOCAL_REPO}/settings.xml <<EOF

<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                          https://maven.apache.org/xsd/settings-1.0.0.xsd">
      <localRepository>${M2_LOCAL_REPO}/repository</localRepository>
</settings>

EOF
echo "settings.xml updated with local repository to : " ${M2_LOCAL_REPO}/repository

export GRADLE_USER_HOME="${ROOT_FOLDER}/.gradle"
mkdir -p ${GRADLE_USER_HOME}

echo "GRADLE_USER_HOME set to  " ${GRADLE_USER_HOME}
