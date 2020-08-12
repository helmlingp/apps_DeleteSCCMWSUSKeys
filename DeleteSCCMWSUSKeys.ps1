<#	
    .Synopsis
      This powershell script deletes the SCCM WSUS registry keys that prevent a 
      Windows 10 machine from using a modern managed Windows Update Profile.
    .NOTES
	  Created:   	June, 2020
	  Created by:	Phil Helmling, @philhelmling
	  Organization: 	VMware, Inc.
	  Filename:     	DeleteSCCMWSUSKeys.ps1
	.DESCRIPTION
	  This powershell script deletes the SCCM WSUS registry keys that prevent a 
      Windows 10 machine from using a modern managed Windows Update Profile.

      Once deleted the machien will be honour the WS1 delivered WUS or WSUS configuration settings.
    .EXAMPLE
      powershell.exe -executionpolicy bypass -file .\DeleteSCCMWSUSKeys.ps1
#>

$SCCMWSUSPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate"
Remove-ItemProperty -Path $SCCMWSUSPath -Name "WUServer"
Remove-ItemProperty -Path $SCCMWSUSPath -Name "WUStatusServer"
