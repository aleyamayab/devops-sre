# -------------------------
# Define el provider de AWS
# -------------------------
provider "aws" {
  region  = "us-east-1"     # Especifica tu región AWS
  shared_credentials_files = ["~/.aws/credentials"]
  shared_config_files = ["~/.aws/config"]
  profile = "alejo-sandbox" # Especifica el nombre de tu perfil AWS configurado en la CLI
}
