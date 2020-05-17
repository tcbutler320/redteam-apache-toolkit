$domainObj = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
$PDC = ($domainObj.PdcRoleOwner).Name
$SearchString = "LDAP://"
$SearchString += $PDC + "/"
$DistinguishedName = "DC=$($domainObj.Name.Replace('.', ',DC='))"
$SearchString += $DistinguishedName
$SearchString
$Searcher = New-Object System.DirectoryServices.DirectorySearcher([ADSI]$SearchString)
$objDomain = New-Object System.DirectoryServices.DirectoryEntry
#$Searcher.SearchRoot = $objDomain
$Searcher.filter="samAccountType=805306368"
#$Searcher.FindAll()
$Result = $Searcher.FindAll()
Foreach($obj in $Result)
{
    Foreach($prop in $obj.Properties)
    {
        if($prop.memberof = "Domain Admin") {
            Write-Output $prop.samaccountname
            Write-Output $prop.memberof
        } else {
            Write-Output "Not Member Of"         
        }

    }
    Write-Host "------------------------"
}
