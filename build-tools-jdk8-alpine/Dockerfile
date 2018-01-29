FROM androidsdk:jdk8-alpine

ARG ANDROID_BUILD_TOOLS=26.0.3

RUN sdkmanager "build-tools;${ANDROID_BUILD_TOOLS}" "platforms;android-${ANDROID_BUILD_TOOLS%%.*}"

CMD ["./gradlew", "build"]
