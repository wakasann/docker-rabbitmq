# base image
FROM rabbitmq:3.7-management
# running required command
RUN rabbitmq-plugins enable --offline rabbitmq_management rabbitmq_management_agent rabbitmq_shovel rabbitmq_mqtt rabbitmq_federation_management rabbitmq_stomp rabbitmq_web_mqtt
COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
VOLUME ["/etc/rabbitmq/tls"]
EXPOSE 15673
