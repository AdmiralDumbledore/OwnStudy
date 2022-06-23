Write-Host "IP:"
$ip_addr=Read-Host
Write-Host "Username:"
$user=Read-Host
type $env:USERPROFILE\.ssh\id_rsa.pub | ssh $user@$ip_addr  "cat >> .ssh/authorized_keys"
