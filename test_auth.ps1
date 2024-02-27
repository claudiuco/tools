## Title:       Test Authentication 
## Author:      Claudiu Costin
## Version:     1.2
## Date:        2024-02-27

# to find a more secure way to pass the credentials without hardcoding, maybe a file which is destroyed after the run of the script ?

$UserName = ''
$Password = ""

Function Test-ADAuthentication {
    param(
        $username,
        $password)
    
    (New-Object DirectoryServices.DirectoryEntry "",$username,$password).psbase.name -ne $null
}

Test-ADAuthentication -username $UserName -password $password
