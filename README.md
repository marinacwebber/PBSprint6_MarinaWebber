[![Issues](https://img.shields.io/github/workflow/status/marinacwebber/PBSprint6_MarinaWebber/issues?label=GitHub%20Actions&logo=github-actions&style=flat-square)](https://github.com/marinacwebber/PBSprint6_MarinaWebber/issues)
## Sprint 6 - ServRest Test Automation

## Sobre o Projeto 🚀
O projeto "ServRest Test Automation" é uma atividade de aprendizado de automação de testes desenvolvida como parte do programa de bolsas da Compass. Ele tem como objetivo principal proporcionar uma experiência prática de automação de testes funcionais em um ambiente de desenvolvimento real. Neste projeto, o foco é garantir a qualidade e o desempenho de um website fictício de comércio chamado "ServRest".

## Pré-Requisitos 🛠️

Antes de mergulhar no projeto, verifique se você já está preparado com as seguintes ferramentas e configurações:

- [Ruby](https://rubyinstaller.org/downloads/): É necessário ter o Ruby instalado na sua máquina.
- [RubyGems](https://rubygems.org/): Gerenciador de pacotes do Ruby (`cucumber`, `capybara`, `site_prism`, `selenium-webdriver`, `rspec`, `pry`, `faker`, `parallel_tests`).
- [Bundler](https://bundler.io/): Gerencia dependências Ruby. `gem install bundler`.
- [Git](https://git-scm.com/downloads): Para clonar o repositório e colaborar com o projeto.
- [Visual Studio Code](https://code.visualstudio.com/)


## Instalação ⚙️

Configurar o ambiente de desenvolvimento e instalar as gems necessárias listadas no arquivo `Gemfile` e no terminal `bundle instal`.
Siga estas etapas para configurar o ambiente e instalar as dependências do projeto.

## Execução dos Testes 🚀

Para executar todos os testes, utilize o seguinte '1'; para executar um teste específico '2'; excluir testes com uma determinada tag '3'; testes em paralelo(paralelismo) '4'.

```shell
1. bundle exec cucumber -p default

2. bundle exec cucumber -p default -t@"tag_desejada"

3. bundle exec cucumber -p default --tags "not @fix_later"

4. parallel_cucumber
```
## Deploy - Realizar Pull Request 🤖

Deseja contribuir e fazer alterações no projeto? Siga as seguintes etapas:

1. Crie uma nova branch no seu repositório local para realizar suas alterações:

```bash
git checkout -b nova_branch
```
2. Realize as alterações no código e faça commits das suas mudanças:

```bash
git commit -m "mensagem_do_commit"
```
3. Envie a branch com as alterações para o GitHub:
```bash
git push origin nova_branch
```
4. Crie um Pull Request no GitHub para que sua contribuição seja revisada e mesclada no projeto principal. Você pode fazer isso clicando no botão "Compare & pull request" na página do repositório e, em seguida, clicando em "Create Pull Request".

As alterações serão revisadas e, se estiverem de acordo com a linha das regras do projeto, mesclará seu Pull Request!

## Autora 👩‍💻

Marina Chaves Webber:
- GitHub: [marinacwebber](https://github.com/marinacwebber)
- LinkedIn: [Marina Chaves Webber](https://www.linkedin.com/in/marina-chaves-webber-6b844a230/)

## Créditos 🌐

Este projeto foi desenvolvido com a ajuda de recursos de várias fontes, incluindo:

- [Stack Overflow](https://stackoverflow.com/)
- [GitHub Faker Ruby](https://github.com/faker-ruby)
- [Canal YouTube - Marcí Ribeiro](https://www.youtube.com/@marciribeiro)

## Licença 📜 

Este projeto está licenciado sob a Licença MIT. Consulte o arquivo [LICENSE](/LICENCE) para obter mais detalhes.