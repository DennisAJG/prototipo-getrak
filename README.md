## Prototipo GETRAK

### Elaboração do projeto:
Desenvolver via terraform+ansible uma infraestrutura com 3 máquinas (uma de uma aplicação Python, outra com a prometheus+grafana e a ultima com o jenkins para as pipelines), será necessário um RDS e toda uma infra vpc. 

Pontos importantes será necessário provisionar via CloudFormation e fazer uma função lambda em python e em Go para start/stop das 3 máquinas. 
Utiliza o cloudwatch para monitorar as máquinas e o RDS também 
Aprenda a usar o Github Actions 