## Configuração

### Helm

Faça o download do Helm 3 na [página de downloads](https://helm.sh/docs/intro/install/). Ou se preferir, pode utilizar o script de instalação:

```bash
$ curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
$ chmod 700 get_helm.sh
$ ./get_helm.sh
```

Confira a instalação.
```bash
helm -h
```

### Comandos

Documentação: https://helm.sh/docs/helm/

#### Aplicando as configurações no Cluster Kubernetes

```bash
helm install -f values.yaml idvogados .
```

#### Conferindo o histórico

```bash
helm history idvogados
```
