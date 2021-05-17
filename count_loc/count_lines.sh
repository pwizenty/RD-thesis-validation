#!/usr/bin/env bash
# Count Source Models
cloc --by-file --force-lang-def="cloc_scripts/cloc_defs/cloc_lemma_ops_def" "../LEMMA_models/CustomerService/"
cloc --by-file --force-lang-def="cloc_scripts/cloc_defs/cloc_lemma_ops_def" "../LEMMA_models/ItemService/"
cloc --by-file --force-lang-def="cloc_scripts/cloc_defs/cloc_lemma_ops_def" "../LEMMA_models/OrderService/"
cloc --by-file --force-lang-def="cloc_scripts/cloc_defs/cloc_lemma_ops_def" "../LEMMA_models/infrastructure/"

# Count generated Files
cloc --by-file "../post_generation/docker-compose.yml"
cloc --by-file "../post_generation/build/"
cloc --by-file "../post_generation/zuul/"
cloc --by-file "../post_generation/eureka/"
cloc --by-file "../post_generation/v01/de/fhdo/online_shop/itemservice/"
cloc --by-file "../post_generation/v01/de/fhdo/online_shop/orderservice/"
cloc --by-file "../post_generation/v01/de/fhdo/online_shop/customerservice/"