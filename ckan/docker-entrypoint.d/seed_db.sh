#!/bin/bash

# Create DB tables if not there
echo "Seed DB tables"
ckan -c $CKAN_INI seed basic
ckan -c $CKAN_INI seed family
ckan -c $CKAN_INI seed gov
ckan -c $CKAN_INI seed hierarchy
ckan -c $CKAN_INI seed search
ckan -c $CKAN_INI seed translations
ckan -c $CKAN_INI seed user
ckan -c $CKAN_INI seed vocabs