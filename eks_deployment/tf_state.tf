terraform {
  backend "s3" {
    bucket  = "terraform-curse"
    key     = "pt-deployment/terraform.tfstate"
    region  = "us-east-1" # Ajusta a tu región
    encrypt = false
    profile = "alejo-sandbox" # Nombre de tu perfil AWS configurado en la CLI
  }
}
