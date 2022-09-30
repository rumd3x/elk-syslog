FROM sebp/elk

WORKDIR ${LOGSTASH_HOME}
RUN gosu logstash bin/logstash-plugin install logstash-input-syslog

ADD syslog-input.conf /etc/logstash/conf.d/01-syslog-input.conf