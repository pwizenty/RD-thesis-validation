#!/usr/bin/env bash
cd "../eureka" && sh build.sh
cd "../v01/de/fhdo/online_shop/customerservice/" && sh build.sh
cd "../zuul" && sh build.sh
cd "../v01/de/fhdo/online_shop/itemservice/" && sh build.sh
cd "../v01/de/fhdo/online_shop/orderservice/" && sh build.sh
