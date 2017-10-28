# github-backup-docker
Docker Image for Github-Backup

Uses the wonderful [python-github-backup](https://github.com/josegonzalez/python-github-backup).

Makes a backup of all your Github repositories every 6 hours.

## Configuration

* `GITHUB_TOKEN` should be set to a Github OAuth token
* `GITHUB_USERNAME` should be set to the Github user you want to backup

* Repositories are stored in `/storage`, so if you wish to use a docker volume for storage, you should mount it there
