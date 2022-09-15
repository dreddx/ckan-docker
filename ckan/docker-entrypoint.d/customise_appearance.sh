#!/bin/bash

# Custom site settings
echo "Customise settings"
ckan config-tool $CKAN_INI "ckan.site_title = DDX" \
    "ckan.site_logo = /images/dreddx_logo.jpeg" \
    "ckan.favicon = /images/dreddx_logo.jpeg"