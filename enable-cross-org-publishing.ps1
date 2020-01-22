param(
  [string] $token
)

Write-Host "Testing old version of enable-cross-org-publishing.ps1"

Write-Host "##vso[task.setvariable variable=VSS_NUGET_ACCESSTOKEN]$token"
Write-Host "##vso[task.setvariable variable=VSS_NUGET_URI_PREFIXES]https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/"

Write-Host "end Testing old version of enable-cross-org-publishing.ps1"