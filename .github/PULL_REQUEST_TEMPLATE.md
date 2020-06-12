### Descrição das Mudanças ###

<!--
Primeiramente muito obrigado por sua contribuição, antes de abrir o PR tenha certeza de preencher todos os campos necessários, o não preenchimento dos campos pode resultar em um atraso para revisão do seu código ou até mesmo fechamento do PR.
-->

Descrevas as mudanças feitas no código neste espaço.

### *Bugs* Corrigidos ###

<!-- 
Se for mais de uma issue, liste seguindo o padrão 
-->

- Relacionado a issue #
**Tenha certeza de que existe uma issue aberta neste repositório para esta funcionalidade antes de enviar o PR**

### Mudanças de comportamento ###

Descreva o comportamento da funcionalidade implementada neste PR.

### Dados sensíveis ###

Caso a alteração envolva a inclusão de credenciais ou qualquer tipo de dado sensível, certifique-se de ter este dado como variável de ambiente, seja na máquina ou no CI. Além disso, faça uma descrição do que deve ser adicionado e a equipe responsável para realizar o _merge_ do PR irá incluir os valores sensíveis nos lugares devidos.

Se possível, inclua também um link ou um passo a passo de como gerar dado que deve ser incluído na infra.

#### Exemplo
Foi adicionada a variável abaixo para possibilitar a comunicação com o Google Cloud Platform e implantar as alterações de infraestrutura na nuvem. 

```bash
TF_VAR_GOOGLE_CLOUD_CREDENTIALS=XXXXXXXXXXXXXXXXX
```

**Links:** [Como criar e gerenciar chaves de contas de serviço](https://cloud.google.com/iam/docs/creating-managing-service-account-keys?hl=pt-br)

### Testing Procedure ###

Por favor descreva os procedimentos de teste da sua implementação, caso tenha.

### PR Checklist ###
<!-- A ser preenchido por você -->
- [ ] Foi feito Rebase para a master no momento que o PR foi aberto
- [ ] Modificações estão de acordo com o padrão de código
- [ ] Não existem dados sensíveis sendo commitados explicitamente
- [ ] Atualizado documentação

### PR Checklist  do time ###
<!-- A ser preenchido por quem for revisar o código -->

- [ ] O PR está apontando para a branch correta
- [ ] Os testes estão passando (ou as falha não são relacionadas a este PR)
