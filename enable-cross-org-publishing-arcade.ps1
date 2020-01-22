param(
  [string] $token
)

. $PSScriptRoot\pipeline-logging-functions.ps1

$ci = $true

Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN2' -Value $token 
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES2' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/'

Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN3' -Value $token -Secret
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES3' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/' -Secret

Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN4' -Value $token -AsOutput
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES4' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/'  -AsOutput

Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN5' -Value $token -IsMultiJobVariable $true
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES5' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/' -IsMultiJobVariable $true



