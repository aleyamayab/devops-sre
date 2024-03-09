# -------------------------
# Define el provider de AWS
# -------------------------
provider "aws" {
  region = "us-east-1" # Especifica tu región AWS
  profile = "alejo-sandbox"  # Especifica el nombre de tu perfil AWS configurado en la CLI
}