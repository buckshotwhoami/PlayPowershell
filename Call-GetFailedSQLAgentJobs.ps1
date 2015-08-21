<#  You do know that you're gonna need to find that other script called Get-FailedSQLAgentJobs
    and run it first right? :-) #>
$Yo = $null #Reset your results variable
foreach ($RegisteredSQLs in dir -recurse SQLSERVER:\SQLRegistration\'Database Engine Server Group'\Development\ | where {$_.Mode -ne "d"} ) 
{ 
$Yo += Get-FailedSQLAgentJobs $RegisteredSQLs.ServerName
}; 
$Yo | Out-GridView


# $Yo = $null
