param(
  [string] $token
)

. $PSScriptRoot\pipeline-logging-functions.ps1

$ci = $true

Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN2' -Value $token
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES2' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/'
