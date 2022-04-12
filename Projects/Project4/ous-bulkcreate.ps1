Import-Csv ous.csv |
foreach {
    "New-ADOrganizationalUnit -Name $_.Name -Path $_.Path `
    -ProtectedFromAccidentalDeletion $true -PassThru"
}
