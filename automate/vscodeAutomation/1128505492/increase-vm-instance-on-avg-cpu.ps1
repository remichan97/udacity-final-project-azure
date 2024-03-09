<#
	DESCRIPTOION
		Hard increase the number of instance (9) to remedy high avg CPU usage on VMSS
	NOTES:
		AUTHOR: Binh Truong
#>

try {
	Write-Information("Connecting to Azure")
	Connect-AzAccount -Identity -Verbose
	Write-Information("Connected")
}
catch {
	<#Do this if a terminating exception happens#>
	Write-Error("Unable to connect to Azure")
	throw $_.Exception
}

# Increase VMSS Instance
try {
	Write-Information("Increasing VM Counts")
	Update-AzVmss `
		-SkuCapacity 9 `
		-ResourceGroupName 'acdnd-c4-project' `
		-VMScaleSetName 'udacity-vmss' `
		-Verbose
}
catch {
	<#Do this if a terminating exception happens#>
	Write-Error("Operation Failure")
	throw $_.Exception
}
Write-Information("Remedying Finished")
