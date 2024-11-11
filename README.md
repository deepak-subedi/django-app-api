#### Run below command after setting all up within setup and deploy folder

## run aws-vault to get the user credentials

1. cd infra
2. aws-vault exec :aws-profile-name --duration=8h

## Then initialize the terraform backend and run other commands

# For setup

1. docker compose run --rm terraform -chdir=setup init
2. docker compose run --rm terraform -chdir=setup fmt
3. docker compose run --rm terraform -chdir=setup validate

4. docker compose run --rm terraform -chdir=setup output cd_user_access_key_secret
5. docker compose run --rm terraform -chdir=setup output ecr_repo_app
6. docker compose run --rm terraform -chdir=setup output ecr_repo_proxy

# For deploy

1. docker compose run --rm terraform -chdir=deploy init
2. docker compose run --rm terraform -chdir=deploy fmt
3. docker compose run --rm terraform -chdir=deploy validate
