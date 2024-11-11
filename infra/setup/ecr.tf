### Create ECR repos for storing docker images

resource "aws_ecr_repository" "app" {
  name                 = "django-app-api-app"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # NOTE: update to true for real deployment.
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "proxy" {
  name                 = "django-app-api-proxy"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # NOTE: update to true for real deployment.
    scan_on_push = false
  }
}
