FROM trusty:latest

MAINTAINER Zouyapeng<zyp19901009@163.com>

ENV \
  TEST_ENV1=123456 \
  TEST_ENV2=true \
  TEST_ENV3=/var/log

RUN apt-get update && apt-get install -y \
  apache2 \
  php5
  
COPY run.sh /

RUN chmod +x /run.sh

# COPY . /tmp/
# ADD http://example.com/big.tar.xz /
VOLUME ["/etc/custom-config", "/opt/user"]

EXPOSE 80 443 162/udp 22 10080

ENTRYPOINT ["/run.sh"]
CMD ["param1","param2","param3"]
