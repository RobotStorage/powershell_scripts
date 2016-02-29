$large=Get-ChildItem -path c:\ -recurse -ErrorAction Continue | where {($_.Length /1GB) -gt 2} | foreach {($_.FullName)}
foreach ($item in $large)
{
Write-Host $item
}