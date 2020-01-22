param(
  [string] $token
)

$ci = $true

. $PSScriptRoot\pipeline-logging-functions.ps1

Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN2' -Value $token
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES2' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/'
