$Public = @(Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue)
$Private = @(Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue)

Try
{
	$Public.ForEach{. $_.fullname}
	$Private.ForEach{. $_.fullname}
}
Catch
{
	Write-Error -Message "Failed to import $($_.InvocationInfo.ScriptName): $_"
}

Export-ModuleMember -Function $Public.Basename