# 🚧 Infra - Idvogados

Trabalho em progresso.

## Como contribuir

Leia nosso guia de contribuição nesse [arquivo](https://github.com/idvogados/infra/blob/dev/CONTRIBUTING.md)

## Ferramentas

- **[Terraform](https://www.terraform.io/):** Infraestrutura como Código (IaC)
- **[Helm](https://helm.sh/):** Framework Kubernetes 
- **[GitHub Actions](https://github.com/features/actions):** Ferramenta de integração contínua (CI)

As instruções de configuração de ambiente local e de desenvolvimento se encontram no `README` de cada diretório.

## Arquitetura

![Kubernetes](https://user-images.githubusercontent.com/22299426/92336649-3d659d00-f079-11ea-8e15-1cecd8d52f54.png)

## Estrutura de arquivos

### GitHub Actions
Os arquivos referentes aos workflows de CI estão localizados dentro de `.github/workflows`, sendo eles:
- `dev-pipeline.yml`: Pipeline a ser executado após o merge de um PR em `dev`
- `prod-pipeline.yml`: Pipeline a ser executado após o merge de um PR em `prod`

### Terraform
Os arquivos referentes à infra com Terraform, localizados no diretório `terraform/` possuem a seguinte estrutura:
- `providers.tf`: Com o Terraform é possível criar infra em diversas Clouds, neste arquivo é especificado(s) o(s) provider(s) que estamos utilizando no projeto.
- `variables.tf`: Neste arquivo ficam localizadas as variáveis do projeto.
- `values.tfvars`: Neste arquivo ficam os valores referentes aos arquivos de variáveis, com essa configuração de variáveis e valores, fica tudo centralizado nestes arquivos.
- `terraform.tf`: O Terraform cria um arquivo chamado `terraform.state`, onde ficam salvos o estado atual da infra. Este arquivo _state_ deve estar centralizado em algum lugar. Para isso, o terraform possui os chamados `backends`, os quais são definidos neste arquivo. O nosso backend é um bucket no Google Cloud Storage, isto é, ao executar o código o terraform faz o download do state, compara as alterações, aplica e faz o upload novamente para o bucket.

### Helm

O Helm facilita a configuração com Kubernetes e provém templates. Assim, a estrutura de arquivos no diretório `helm` é:

- `templates/*`: Template de configurações criadas com o helm. Na medida do necessário o template pode ser alterado.
- `Chart.yaml`: Configurações gerais do projeto como nome, tipo e versão.
- `values.yaml`: Os valores a serem aplicados no template. Aqui, ficam de fato as configurações aplicadas, como número de réplicas, tipo de ingress, limitação de recursos, autoscaling, etc.