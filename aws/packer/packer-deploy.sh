#!/bin/bash
if [[ $ENVIRONMENT == "PROD" ]]; then
<<<<<<< HEAD
export VERSION=4.3.0
packer build \
    -var "neo4j_edition=enterprise" \
    -var "neo4j_version=1:4.3.0" \
=======
export VERSION=4.3.2
packer build \
    -var "neo4j_edition=enterprise" \
    -var "neo4j_version=1:4.3.2" \
>>>>>>> neo4j-v4.3.0
    packer-template.json

#packer build \
#    -var "neo4j_edition=community" \
<<<<<<< HEAD
#    -var "neo4j_version=1:4.3.0" \
#    packer-template.json

elif [[ $ENVIRONMENT == "TEST" ]]; then
export VERSION=4.3.0
packer build \
    -var "neo4j_edition=enterprise" \
    -var "neo4j_version=1:4.3.0" \
=======
#    -var "neo4j_version=1:4.3.2" \
#    packer-template.json

elif [[ $ENVIRONMENT == "TEST" ]]; then
export VERSION=4.3.2
packer build \
    -var "neo4j_edition=enterprise" \
    -var "neo4j_version=1:4.3.2" \
>>>>>>> neo4j-v4.3.0
    packer-template-test.json

packer build \
    -var "neo4j_edition=community" \
<<<<<<< HEAD
    -var "neo4j_version=1:4.3.0" \
=======
    -var "neo4j_version=1:4.3.2" \
>>>>>>> neo4j-v4.3.0
    packer-template-test.json
else
   echo "Parameter: $ENVIRONMENT is not valid"
fi