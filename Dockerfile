FROM sebp/elk

RUN logstash-plugin install logstash-input-syslog

ADD syslog-input.conf /etc/logstash/conf.d/01-syslog-input.conf