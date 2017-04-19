#!/bin/bash

rm -rf ./../mono/mono-api-classic/api ./../mono/mono-api-classic/model

java -jar ./modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -l typescript-angular2 -i https://tomcathosting.comerge.net/public-api-10-v2/documentation/ui/swagger.json -c ../../mono/mono-api-classic/codegen-config.json -o ../../mono/mono-api-classic/

rm ../../mono/mono-api-classic/model/XmlNs0*

sed -i '' '/XmlNs0/d' ../../mono/mono-api-classic/model/models.ts