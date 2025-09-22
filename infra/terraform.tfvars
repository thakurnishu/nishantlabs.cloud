zone                            = "us-central1-a"
project_id                      = "nishantlabs"
region                          = "us-central1"
deletion_protection             = false
artifact_registry_repository_id = "nishantlabs"

cloud_run_name = "portfolio-cloud-run"
ingress        = "INGRESS_TRAFFIC_ALL"
image          = "us-central1-docker.pkg.dev/nishantlabs/nishantlabs/portfolio:b8a806491e3655ec43c32f9d9f0d46255a8241da"
memory         = "128Mi"
public_access  = true
port           = 80
cpu            = 1

labels = {
  env = "prod"
  app = "portfolio"
}
