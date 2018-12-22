FROM boolivar/androidsdk:jdk8-alpine

ENV ANDROID_HOME /opt/android-sdk

ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin

ARG ANDROID_SDK_VERSION

RUN mkdir -p /opt/android-sdk && cd /opt/android-sdk && \
    wget -q https://dl.google.com/android/repository/sdk-tools-linux-${ANDROID_SDK_VERSION}.zip && \
    unzip *tools*linux*.zip && \
    rm *tools*linux*.zip && \
    yes | sdkmanager --licenses

ARG ANDROID_BUILD_TOOLS

RUN sdkmanager "build-tools;${ANDROID_BUILD_TOOLS}" "platforms;android-${ANDROID_BUILD_TOOLS%%.*}"

CMD ["./gradlew", "build"]