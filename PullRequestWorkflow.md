# Pull Request Workflow

1. Complete review
1. Click _Merge Pull Request_
1. Github Action kicks off
1. Increment the version
    1. Retrieve the version of the management pack from both the head and base branches
    1. Determine what the new version should be
    1. Save the change in the base branch
1. Commit the change to the base branch
1. If the change was made in the main branch, rebase the dev branch
