PARAM(
[string]$machine,
[string]$snapshot,
[string]$user,
[string]$password,
[string]$server
)
. 'C:\Program Files (x86)\VMware\Infrastructure\PowerCLI\Scripts\Initialize-PowerCLIEnvironment.ps1' -erroraction 'silentlycontinue'
Connect-VIServer -Server $server -User $user -Password $password
New-Snapshot -VM $machine -Name $snapshot -Confirm:$false -Memory:$true
