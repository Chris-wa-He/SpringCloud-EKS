export eureka_server_port=$(aws ssm get-parameter --name='/Spring/Eureka/Server/port' --region us-east-1 | jq '.Parameter | .Value ' | sed 's/\"//g' )
export eureka_server_1=$(aws ssm get-parameter --name='/Spring/Eureka/Server/URL_1' --region us-east-1 | jq '.Parameter | .Value ' | sed 's/\"//g' )
export eureka_server_2=$(aws ssm get-parameter --name='/Spring/Eureka/Server/URL_2' --region us-east-1 | jq '.Parameter | .Value ' | sed 's/\"//g' )
#export eureka_server_3=$(aws ssm get-parameter --name='/Spring/Eureka/Server/URL_3' --region us-east-1 | jq '.Parameter | .Value ' | sed 's/\"//g' )

java -jar /springCloud/api-gateway-0.0.1-SNAPSHOT.jar