#!/usr/bin/env bash

# This script runs the code generators for creating all deployment relevent artifacts, e.g.,
# Dockerfiles, Kubernetes deployment files and build scripts.
# The script requires the file path to the LEMMA folder as a command line parameter. 

if [ ! -z "$1" ]; then
  LEMMA_PATH="$1"
fi

# Path to LEMMA Repository folder
SCRIPT_PATH="scripts/run_model_processor.py"

# Path to Code Generators
CONTAINER_BASE_PATH="code generators/de.fhdo.lemma.model_processing.code_generation.container_base/docker/execution.yaml"
MONGODB_PATH="code generators/de.fhdo.lemma.model_processing.code_generation.mongodb/docker/execution.yaml"
MARIADB_PATH="code generators/de.fhdo.lemma.model_processing.code_generation.mariadb/docker/execution.yaml"
EUREKA_PATH="code generators/de.fhdo.lemma.model_processing.code_generation.springcloud.eureka/docker/execution.yaml"
ZUUL_PATH="code generators/de.fhdo.lemma.model_processing.code_generation.springcloud.zuul/docker/execution.yaml"
MONGODB_PATH="code generators/de.fhdo.lemma.model_processing.code_generation.mongodb/docker/execution.yaml"
MARIADB_PATH="code generators/de.fhdo.lemma.model_processing.code_generation.mariadb/docker/execution.yaml"

# Path to code generation target folder
TARGET_PATH="/Users/phil/Entwicklung/FuE-Arbeit/OnlineShop_Github_Validierung/post_generation"

# Test output
echo $LEMMA_PATH
echo $PWD 

####################################################################################################
# ItemService Generation
####################################################################################################

# Container Base Generator - ItemService
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$CONTAINER_BASE_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/ItemService/item.operation" \
         -i "LEMMA_models/intermediate/operation models/item.xmi" \
    -t "$TARGET_PATH"

# MongoDB Generator - ItemService
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$MONGODB_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/ItemService/item.operation" \
         -i "LEMMA_models/intermediate/operation models/item.xmi" \
    -t "$TARGET_PATH"

# Eureka Generator - ItemService
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$EUREKA_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/ItemService/item.operation" \
         -i "LEMMA_models/intermediate/operation models/item.xmi" \
    -t "$TARGET_PATH"

####################################################################################################
# CustomerService Generation
####################################################################################################

# Container Base Generator - CustomerService
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$CONTAINER_BASE_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/CustomerService/customer.operation" \
         -i "LEMMA_models/intermediate/operation models/customer.xmi" \
    -t "$TARGET_PATH"

# MariaDV Generator - CustomerService
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$MARIADB_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/CustomerService/customer.operation" \
         -i "LEMMA_models/intermediate/operation models/customer.xmi" \
    -t "$TARGET_PATH"

# Eureka Generator - EUREKA
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$EUREKA_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/CustomerService/customer.operation" \
         -i "LEMMA_models/intermediate/operation models/customer.xmi" \
    -t "$TARGET_PATH"

####################################################################################################
# OrderService Generation
####################################################################################################

# Container Base Generator - OrderService
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$CONTAINER_BASE_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/OrderService/order.operation" \
         -i "LEMMA_models/intermediate/operation models/order.xmi" \
    -t "$TARGET_PATH"

# MongoDB Generator - OrderService
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$MONGODB_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/OrderService/order.operation" \
         -i "LEMMA_models/intermediate/operation models/order.xmi" \
    -t "$TARGET_PATH"

# Eureka Generator - EUREKA
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$EUREKA_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/OrderService/order.operation" \
         -i "LEMMA_models/intermediate/operation models/order.xmi" \
    -t "$TARGET_PATH"

####################################################################################################
# Eureka Generation
####################################################################################################
# Eureka Generator - EUREKA
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$EUREKA_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/infrastructure/eureka.operation" \
         -i "LEMMA_models/intermediate/operation models/eureka.xmi" \
    -t "$TARGET_PATH"

# Container Base Generator - Eureka
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$CONTAINER_BASE_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/infrastructure/eureka.operation" \
         -i "LEMMA_models/intermediate/operation models/eureka.xmi" \
    -t "$TARGET_PATH"

####################################################################################################
# Zuul Generation
####################################################################################################
# Container Base Generator - Zuul
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$CONTAINER_BASE_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/infrastructure/zuul.operation" \
         -i "LEMMA_models/intermediate/operation models/zuul.xmi" \
    -t "$TARGET_PATH"

# Zuul Generator - Zuul
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$ZUUL_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/infrastructure/zuul.operation" \
         -i "LEMMA_models/intermediate/operation models/zuul.xmi" \
    -t "$TARGET_PATH"

# Eureka Generator - ItemService
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$EUREKA_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/infrastructure/zuul.operation" \
         -i "LEMMA_models/intermediate/operation models/zuul.xmi" \
    -t "$TARGET_PATH"

####################################################################################################
# MongoDB
####################################################################################################
# MongoDB Code Generator
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$MONGODB_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/infrastructure/mongodb.operation" \
         -i "LEMMA_models/intermediate/operation models/mongodb.xmi" \
    -t "$TARGET_PATH"


####################################################################################################
# MariaDB
####################################################################################################
# MariaDB Code Generator
"$LEMMA_PATH/$SCRIPT_PATH" \
    "$LEMMA_PATH/$MARIADB_PATH" \
    -b "$PWD" \
         -s "LEMMA_models/infrastructure/mariadb.operation" \
         -i "LEMMA_models/intermediate/operation models/mariadb.xmi" \
    -t "$TARGET_PATH"