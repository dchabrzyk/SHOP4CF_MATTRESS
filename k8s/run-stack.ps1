kubectl apply -f ./mamma-secret.yml -f ./kafka-pvc.yml -f ./mongo-pvc.yml -f ./rabbitmq-pvc.yml -f ./keycloak-pvc.yml -n $args[0]
kubectl apply -f ./camunda.yml -f ./fiware.yml -f ./kafka.yml -f ./keycloak.yml -f ./mongo.yml -f ./rabbitmq.yml -n $args[0]
kubectl apply -f ./mamma-api.yml -f ./mamma-kafka-stream.yml -n $args[0]
kubectl apply -f ./mamma-client.yml -f ./mamma-operators-terminal.yml -n $args[0]
