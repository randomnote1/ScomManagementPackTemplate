# Set the verbose preference
$VerbosePreference = 'Continue'

Write-Verbose -Message "GITHUB_BASE_REF: $($env:GITHUB_BASE_REF)"
Write-Verbose -Message "GITHUB_HEAD_REF: $($env:GITHUB_HEAD_REF)"

$rootFolder = $pwd

Set-Location -Path ( Join-Path -Path $rootFolder -ChildPath head )
git branch -a

Set-Location -Path ( Join-Path -Path $rootFolder -ChildPath base )
git branch -a

switch ($env:GITHUB_BASE_REF)
{
    dev { "dev $(Get-Date)" > testing.txt }
    main { "main $(Get-Date)" > testing.txt }
}

git config user.name "GitHub Actions Bot"
git config user.email "<>"
git add testing.txt
git commit -m "new date commit"
git push
