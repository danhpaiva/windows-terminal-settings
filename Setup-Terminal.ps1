# Script de automação do perfil do PowerShell
$ProfilePath = $PROFILE
$ProfileDir = Split-Path $ProfilePath

# 1. Garante que a pasta do perfil existe
if (!(Test-Path $ProfileDir)) {
    New-Item -ItemType Directory -Path $ProfileDir -Force
}

# 2. Define o código que vai dentro do perfil
$ProfileCode = @"
function prompt {
    `$p_color = "Cyan"
    `$g_color = "Yellow"
    `$s_color = "Red"

    # Caminho do diretório
    Write-Host "``n`$( `$ExecutionContext.SessionState.Path.CurrentLocation )" -ForegroundColor `$p_color

    # Lógica do Git
    `$isGit = git rev-parse --is-inside-work-tree 2>`$null
    if (`$isGit -eq "true") {
        `$branch = git branch --show-current
        `$status = git status --porcelain
        
        if (`$status) {
            Write-Host "git:(`$branch) [modificado]" -NoNewline -ForegroundColor `$s_color
        } else {
            Write-Host "git:(`$branch)" -NoNewline -ForegroundColor `$g_color
        }
    }

    return "``n> "
}

# Atalhos (Aliases) Úteis
Set-Alias -Name g -Value git
Set-Alias -Name ll -Value ls
"@

# 3. Escreve no arquivo de perfil (sobrescrevendo para garantir limpeza)
$ProfileCode | Out-File -FilePath $ProfilePath -Encoding utf8

Write-Host "Configuração concluída com sucesso! Reinicie o Terminal." -ForegroundColor Green