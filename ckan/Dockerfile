FROM ckan/ckan-base:2.9.5


# Set up environment variables
ENV APP_DIR=/srv/app
ENV TZ=UTC
RUN echo ${TZ} > /etc/timezone

# Make sure both files are not exactly the same
RUN if ! [ /usr/share/zoneinfo/${TZ} -ef /etc/localtime ]; then \
        cp /usr/share/zoneinfo/${TZ} /etc/localtime ;\
    fi ;

### Dreddx Theme ###
RUN  pip3 install -e 'git+https://github.com/dreddx/ckanext-dreddx_theme.git@master#egg=ckanext-dreddx_theme'

### Dreddx Dataviz ###
RUN  pip3 install -e 'git+https://github.com/dreddx/ckanext-dreddx_dataviz.git@master#egg=ckanext-dreddx_dataviz'

### Dreddx Networkview ###
RUN  pip3 install -e 'git+https://github.com/dreddx/ckanext-dreddx_networkview.git@master#egg=ckanext-dreddx_networkview'

COPY docker-entrypoint.d/* /docker-entrypoint.d/

COPY setup/start_ckan.sh ${APP_DIR}

RUN chown ckan -R /srv/app

CMD ["/srv/app/start_ckan.sh"]