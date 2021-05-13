# Set the verbose preference
$VerbosePreference = 'Continue'

Set-Location -Path head
git branch -a

Set-Location -Path base
git branch -a

Get-Date > testing.txt

git config user.name "GitHub Actions Bot"
git config user.email "<>"
git add testing.txt
git commit -m "new date commit"
git push
