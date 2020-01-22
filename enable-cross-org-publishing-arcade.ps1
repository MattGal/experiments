param(
  [string] $token
)

. $PSScriptRoot\pipeline-logging-functions.ps1

$ci = $true

# Does (seemingly) nothing
Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN2' -Value $token 
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES2' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/'

# Does seemingly nothing but makes the previous value a secret (and get ***)
Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN3' -Value "$token" -Secret
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES3' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/' -Secret

Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN4' -Value "$token" -AsOutput
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES4' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/'  -AsOutput

Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN5' -Value "$token" -IsMultiJobVariable $true
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES5' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/' -IsMultiJobVariable $true

# Does seemingly nothing but makes the previous value a secret (and get ***)
Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN6' -Value "$token" -Secret
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES6' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/' -Secret -IsMultiJobVariable $false

Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN7' -Value "$token" -AsOutput
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES7' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/'  -AsOutput -IsMultiJobVariable $false

Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN8' -Value "$token" -IsMultiJobVariable $true
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES8' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/' -IsMultiJobVariable $false




