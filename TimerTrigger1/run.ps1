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

$module = Get-Module -Name Az -ListAvailable | Select-Object -First 1
Write-Host "Az Module version: " $module.Version.ToString()

git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/VladilenK/test-az-function-app-03.git
git push -u origin main