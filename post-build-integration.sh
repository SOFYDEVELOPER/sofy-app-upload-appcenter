#!/usr/bin/env bash
BUILD_PATH=$APPCENTER_OUTPUT_DIRECTORY/app-release.apk
SUBSCRIPTION_KEY="your subscription key"
APPLICATION_GUID="Your application guid"
CERTIFICATE_NAME="Your application certificate name"

curl --location --request POST 'https://public.sofy.ai/parser-microservice/build-upload' \
--header "SubscriptionKey: $SUBSCRIPTION_KEY" \
--form "applicationFile=@"$BUILD_PATH"" \
--form "ApplicationGUID= $APPLICATION_GUID" \
--form "CertificateName= $CERTIFICATE_NAME"

