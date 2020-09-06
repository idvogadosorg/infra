## Configuração

### Terraform 

Faça o download do Terraform na [página de downloads](https://www.terraform.io/downloads.html)

```bash
wget https://releases.hashicorp.com/terraform/[VERSION]/terraform_[VERSION]_linux_amd64.zip
```

Caso não tenha, instale o `unzip`;
```bash
sudo apt-get install unzip
```

Descompacte o arquivo `.zip`:
```bash
unzip terraform_[VERSION]_linux_amd64.zip
```

Mova o executável para a pasta de arquivos binários do sistema:
```bash
sudo mv terraform /usr/local/bin/
```

Confira a versão:
```bash
terraform --version 
```

### Credenciais

A conta do GCP do projeto é restrita apenas ao projeto, para contribuir com a infra você deve utilizar uma conta pessoal. Segue o passo a passo do que deve ser configurado: https://github.com/idvogados/infra/issues/13#issuecomment-687914345

Para configurar as suas credenciais, configure primeiro o [gcloud cli](https://cloud.google.com/sdk/docs/quickstarts). Com o gcloud configurado, você terá acesso à sua conta do GCP local, confirmando que os acessos estão corretos.

Caso não tenha uma Service Account, crie uma (basta ir em `IAM > Service Account` no GCP). Ative uma key para esta Service Account e faça o download desta key, será um arquivo `json`. Coloque o arquivo em algum local, como `~/.gcp/credentials/my-credential.json`. Depois basta setar a variável de ambiente abaixo apontando para o arquivo:

```bash
export GOOGLE_CREDENTIALS="~/.gcp/credentials/my-credential.json"
```

Por fim, substitua os placeholds abaixo com os nomes configurados na sua conta:
- `terraform.tf`: Trocar `{{ bucket }}` pelo nome do bucket da sua conta, onde ficará o `terraform.state`.
- `values.tfvars`: Trocar `{{ project_id }}` pelo project ID da sua conta.

Caso tenha algum problema, contate os administradores do repositório.

### Comandos

#### Inicializando os módulos

```bash
terraform init
```

#### Validando a configuração

```bash
terraform validate
```

#### Planejando as alterações

```bash
terraform plan -var-file=values.tfvars
```

#### Aplicando as alterações

```bash
terraform apply -var-file=values.tfvar
```

#### Destruindo a infra criada

```bash
terraform destroy -var-file=values.tfvars
```
