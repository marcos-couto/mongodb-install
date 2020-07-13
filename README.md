----
----
# Instale o MongoDB Enterprise Edition no Ubuntu 
## Versões:
---
- MongoDB 4.2 Enterprise Edition
- Ubuntu 18.04 LTS (Bionic)
---
### Observações:
---
O MongoDB suporta apenas a versão de 64 bits do Ubuntu ( 18.04 e 16.04)
O MongoDB 4.2 Enterprise Edition no Ubuntu também suporta as arquiteturas ARM64, PPC64LE e s390x em plataformas selecionadas.
O pacote oficial mongodb-enterprise sempre contém a versão mais recente do MongoDB e está disponível em seu próprio servidor dedicado.
#### Importante
O pacote mongodb fornecido pelo Ubuntu não é mantido pelo MongoDB Inc. e entra em conflito com o pacote oficial mongodb-enterprise. Se você já instalou o pacote mongodb no sistema Ubuntu, primeiro desinstale o pacote mongodb antes de continuar com estas instruções.
Consulte Pacotes do MongoDB Enterprise Edition para obter a lista completa de pacotes oficiais.
----

## Procedimento:
---

## 1. 
Importe a chave pública usada pelo sistema de gerenciamento de pacotes.
Em um terminal, use o seguinte comando para importar a Chave GPG pública do MongoDB :

`
$ wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
`
A operação deve responder com um OK.

## 2.
Crie um arquivo /etc/apt/sources.list.d/mongodb-enterprise.list para o MongoDB:

 `$ echo "deb [ arch=amd64,arm64,s390x ] http://repo.mongodb.com/apt/ubuntu bionic/mongodb-enterprise/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-enterprise.list`

## 3. 
Atualize o sistema.
Use o seguinte comando para atualizar:

 `$ sudo apt-get update`

## 4.
Instale os pacotes do MongoDB Enterprise.
Instale o MongoDB Enterprise.
Use o seguinte comando:

 `$ sudo apt-get install -y mongodb-enterprise`

## 5.
"Fixar" uma versão específica do MongoDB Enterprise.
Para evitar atualizações não intencionais. "Fixar" a versão do MongoDB na versão atualmente instalada, use a seguinte sequência de comandos:

```
$ echo "mongodb-enterprise hold" | sudo dpkg --set-selections
$ echo "mongodb-enterprise-server hold" | sudo dpkg --set-selections
$ echo "mongodb-enterprise-shell hold" | sudo dpkg --set-selections
$ echo "mongodb-enterprise-mongos hold" | sudo dpkg --set-selections
$ echo "mongodb-enterprise-tools hold" | sudo dpkg --set-selections
```
Final do procedimento de instalação.



---
# Teste pós Instalação:
---
### Observações:

Por padrão, a instância do MongoDB armazena:

    arquivos de dados em:  / var / lib / mongodb
    arquivos de log em: / var / log / mongodb
    
Siga estas etapas para fazer o testes iniciais da MongoDB Enterprise Edition no seu sistema. Essas instruções assumem que você está usando o pacote oficial do mongodb-enterprise e, não o pacote não oficial do mongodb fornecido pelo Ubuntu e está usando as configurações padrão.
#### Init System
Para executar e gerenciar seu processo mongod, você estará usando o init system interno do seu sistema operacional. Versões recentes do Linux tendem a usar systemd (que usa o comando systemctl), enquanto versões mais antigas do Linux tendem a usar o System V init (que usa o comando service).

Se você não tiver certeza de qual init system sua plataforma usa, execute o seguinte comando:

`$ ps --no-headers -o comm 1`

O sistema deverá retornar qual init system está instalado.
Para este procedimento iremos utilizar o systemd.

## 1.
Para iniciar o processo mongod use o seguinte comando:

`$ sudo systemctl start mongod`

## 2.
Verifique se o MongoDB foi iniciado com êxito:

`$ sudo systemctl status mongod`

## 3.
Opcionalmente, você pode garantir que o MongoDB inicialize quando o seu sistema for reinicializado, use o seguinte comando:

 ` $ sudo systemctl enable mongod`

## 4.
Conforme necessário, você pode parar o processo mongod através o seguinte comando:

 `$ sudo systemctl stop mongod`

## 5.
Caso necessário, você pode reiniciar processo mongod através o seguinte comando:

`$ sudo systemctl restart mongod`

Você pode acompanhar o estado do processo em busca de erros ou mensagens importantes, observando a saída no arquivo:

/var/log/mongodb/mongod.log file.

---
---



