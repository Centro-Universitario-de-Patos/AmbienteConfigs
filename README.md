# 🚀 Script de Instalação de Aplicativos para Debian

Este script automatiza a instalação dos principais aplicativos e ferramentas de desenvolvimento em sistemas Debian-based (como Debian 11/12).

## ✅ Aplicativos que serão instalados:

- `OpenSSH`
- `snapd`
- `Google Chrome`
- `Chromium`
- `Discord`
- `Visual Studio Code`
- `Git`
- `Docker`
- `Docker-Compose`
- `Postman`
- `Insomnia`

## 📦 Como usar

1. Baixar arquivo para instalações

Via **curl**:

```
$ curl -O https://raw.githubusercontent.com/seu-usuario/seu-repositorio/main/instalar_apps.sh
```

Via **wget**:

```
$ wget https://raw.githubusercontent.com/seu-usuario/seu-repositorio/main/instalar_apps.sh
```

2. Dê permissão de execução

```
$ chmod +x instalar_apps.sh
```

3. Execute o script

```
$ ./instalar_apps.sh
```

## ⚠️ Observações

O script precisa de acesso root. Ele pedirá sua senha de sudo no início.

Após a instalação do Docker, é necessário relogar ou reiniciar o sistema para que o usuário atual tenha permissão de usar Docker sem sudo.

## 🛠️ Requisitos

Sistema baseado em Debian

Conexão com a internet
