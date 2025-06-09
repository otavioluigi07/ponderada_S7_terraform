# ponderada_S7_terraform

# Documentação e passo a passo feito na ponderada

Esta documentação tem como objetivo registrar uma infraestrutura básica na AWS utilizando Terraform. O recurso principal criado é uma instância RDS (MySQL), acompanhada por um grupo de segurança (Security Group).

## Instalação do Terraform

![image](https://github.com/user-attachments/assets/ec2a61ef-3271-434f-8c51-5d6b233ab791)

Link: https://developer.hashicorp.com/terraform/install#windows

## Execução dos Comandos Terraform

Após a instalação do Terraform, executei os seguintes comando no Terminal do repositório no vscode:
```
- terraform init:
```
O que executa:
Inicializa o diretório de trabalho contendo os arquivos .tf. Baixa e instala os plugins do provider (como o da AWS) necessários para o Terraform funcionar corretamente.

Propósito:
Preparar o ambiente Terraform para uso, garantindo que ele reconheça o provedor de nuvem e possa interpretar os arquivos de configuração.

![image](https://github.com/user-attachments/assets/56e8acbe-1927-46ed-b132-a59fc13c4cf7)

```
- terraform plan:
```
O que executa:
Analisa os arquivos .tf e mostra um plano de execução, ou seja, exibe o que será criado, modificado ou destruído sem de fato fazer nenhuma alteração na nuvem.

Propósito:
Permitir que você valide e revise as mudanças antes de aplicar, reduzindo o risco de erros ou criação de recursos indesejados.

![image](https://github.com/user-attachments/assets/9bce9320-c146-453f-ae71-d1c593e01c08)
![image](https://github.com/user-attachments/assets/dadfffae-6903-422c-8b59-6834dff75055)
![image](https://github.com/user-attachments/assets/6f32b93d-4135-4367-a1f3-8b9899e43845)

```
- terraform apply:
```

O que executa:
Aplica o plano gerado anteriormente, provisionando os recursos especificados no código diretamente na infraestrutura da AWS.

Propósito:
Criar de fato os recursos definidos no projeto (como instância RDS, security group etc.), automatizando a infraestrutura.

![image](https://github.com/user-attachments/assets/66d4b5f7-e3e6-404c-af2a-4916cd77de85)
![image](https://github.com/user-attachments/assets/223a6e8d-8605-4448-bc31-6e1e8c475afa)

```
- Outputs:
  ```
db_instance_endpoint = "banco-dev.ca7prmtr8s6j.us-east-1.rds.amazonaws.com:3306"
security_group_id = "sg-03b0d7afeef1b9505"

## Repositório

![image](https://github.com/user-attachments/assets/65e945e8-c75c-4c1a-9f66-04ef5109056a)

## Resultado dentro da AWS Academy

![image](https://github.com/user-attachments/assets/9237b40e-9c94-4b50-b0f6-d09fda265108)


