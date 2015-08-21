Get-AgentJobHistory "Win7NetBook" | select InstanceID,
JobName, 
Message,
StepID,
StepName,
SqlSeverity,
RunStatus, 
RunDate, 
RunDuration, 
RetriesAttempted,
JobID,  
SqlMessageID,
Server | Out-GridView
