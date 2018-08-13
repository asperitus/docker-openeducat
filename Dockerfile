FROM odoo:11
MAINTAINER Qiang Li

ENV DEBIAN_FRONTEND noninteractive

####
USER root
#
RUN apt-get update \
    && apt-get -y install \
        dnsutils \
        git \
        lsof \
        procps

RUN mkdir -p /opt/odoo/addons \
    && cd /opt/odoo/addons \
    && chown -R odoo /opt/odoo/ \
    && git clone --single-branch -b 11.0 https://github.com/asperitus/openeducat_erp.git openeducat_erp-11.0

RUN pip3 install phonenumbers

COPY ./entrypoint.sh /
COPY ./odoo.conf /etc/odoo/
RUN chown odoo /etc/odoo/odoo.conf

####
# Set default user when running the container
USER odoo

ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
##