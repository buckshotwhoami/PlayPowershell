#Script generated by PoshBoard DocBuilder Beta
if ((Get-Module PoshBoard) -eq $null)
{
   Import-Module C:\Users\Kurt\Documents\WindowsPowerShell\Modules\Poshboard\PoshBoard
}

# Script for Element Paragraph_1
New-WordParagraph -Text "Paragraph"

# Script for Element Heading1_0
New-WordHeading1 -Text "Heading 1"

# Script for Element BulletedList_2
$List = New-WordBulletedList
Add-PBChild -InputObject $List -Child (New-WordBulletedListItem -Level 0 -Text "Item1")
Add-PBChild -InputObject $List -Child (New-WordBulletedListItem -Level 0 -Text "Item2")
$List

# Script for Element ContentControl_4
$ContentControl = New-WordContentControl -TargetControlName "ContentControlName"
Add-WordContentControlItem -InputObject $ContentControl -SourceValue "SourceText1" -TargetValue "TargetText1"
Add-WordContentControlItem -InputObject $ContentControl -SourceValue "SourceText2" -TargetValue "TargetText2"
$ContentControl


# Script for Element Datagrid_4
$Datagrid = New-DataGrid -Name Datagrid_4
$ColumnColumn1 = New-DataGridTextColumn -Name ColumnColumn1 -Header 'Column1'  -Children "Data1"
$ColumnColumn2 = New-DataGridTextColumn -Name ColumnColumn2 -Header 'Column2'  -Children "Data2"
$ColumnColumn3 = New-DataGridTextColumn -Name ColumnColumn3 -Header 'Column3'  -Children "Data3"
Add-PBChild -InputObject $DataGrid -Children $ColumnColumn1,$ColumnColumn2,$ColumnColumn3
$Datagrid

# Script for Element Image_5
$ImageBytes = @"

"@
New-Image -StringValue $ImageBytes

