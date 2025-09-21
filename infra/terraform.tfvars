zone                            = "us-central1-a"
project_id                      = "nishantlabs"
region                          = "us-central1"
deletion_protection             = false
artifact_registry_repository_id = "nishantlabs"

cloud_run_name = "portfolio-cloud-run"
ingress        = "INGRESS_TRAFFIC_ALL"
image          = "us-central1-docker.pkg.dev/nishantlabs/nishantlabs/portfolio:6cd23ae90f1b9f015356d29252186007940b9c1c"
memory         = "128Mi"
public_access  = true
port           = 80
cpu            = 1
