# 🚀 My Windows Terminal Setup

Este repositório contém minhas configurações personalizadas para o Windows Terminal, focadas em produtividade para desenvolvedores .NET e entusiastas de Git. 
Inclui um prompt customizado que exibe o diretório atual e o status do branch Git sem necessidade de extensões externas.

## ✨ Destaques

* **Prompt Nativo Ultra-rápido:** Mostra o branch do Git e status de modificação (+/?) sem lag.
* **Visual Moderno:** Esquema de cores Hyper com efeito Acrílico (transparência).
* **Atalhos:** Gerenciamento de painéis divididos (Split Panes) via teclado.
* **Otimizado para Devs:** Configurações de fonte e padding ajustadas para longas horas de código.

## 📜 Como Instalar

### 1. Configurar o Terminal

1. Abra o Windows Terminal.
2. Pressione `Ctrl + ,` e clique em **Abrir arquivo JSON** (canto inferior esquerdo).
3. Substitua o conteúdo pelo arquivo `settings.json` deste repositório.

### 2. Configurar o Prompt (Git Status)

Para ter o indicador de branch e diretório, execute o script de automação incluído:

1. Abra o PowerShell como Administrador.
2. Execute:
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
.\Setup-Terminal.ps1

```

## 🗛 Requisitos de Fonte

Eu utilizo a [Cascadia Code](https://github.com/microsoft/cascadia-code/releases) para habilitar **ligaduras tipográficas** (ex: `!=` vira `≠`).

---

Caso seja necessario, crie um novo arquivo com o conteudo do Setup-Terminal.ps1 e  execute em sua maquina.
