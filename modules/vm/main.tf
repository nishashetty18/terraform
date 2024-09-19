resource "google_compute_instance" "sample" {
    name = var.instance_name
    machine_type = "e2-micro"
    zone = "us-west4-b"

     boot_disk {
        initialize_params {
            image = "debian-cloud/debian-11"
        }
    }

    network_interface {
        network = "default"
    }
}

