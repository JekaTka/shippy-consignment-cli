# Shippy Consignment CLI
## First of all we need to run user service & consignment service

1) Run user service locally [GitHub shippy-user-service](https://github.com/JekaTka/shippy-user-service)
2) For consignment service run [GitHub shippy-consignment-service](https://github.com/JekaTka/shippy-consignment-service)
3) Build consignment CLI [GitHub shippy-consignment-cli](https://github.com/JekaTka/shippy-consignment-cli): `make build`
4) Run CLI: `docker run -e MICRO_REGISTRY=mdns shippy-consignment-cli ./consignment.json TOKEN_HERE`