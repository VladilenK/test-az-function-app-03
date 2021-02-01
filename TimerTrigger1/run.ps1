# Input bindings are passed in via param block.
param($Timer)

# Get the current universal time in the default string format
$currentUTCtime = (Get-Date).ToUniversalTime()

# The 'IsPastDue' porperty is 'true' when the current function invocation is later than scheduled.
if ($Timer.IsPastDue) {
    Write-Host "PowerShell timer is running late!"
}

# Write an information log with the current time.
Write-Host "PowerShell timer trigger function ran! TIME: $currentUTCtime"

$azModule = Get-Module -Name Az -ListAvailable | Select-Object -First 1
Write-Host "Az Module version: " $azModule.Version.ToString()
$pnpModule = Get-Module -Name PnP.PowerShell -ListAvailable | Select-Object -First 1
Write-Host "Az Module version: " $pnpModule.Version.ToString()

