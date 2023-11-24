
resource "aws_instance" "web" {
  ami                         = "ami-0230bd60aa48260c6"
  associate_public_ip_address = true
  availability_zone           = "us-east-1b"
  cpu_core_count              = 1
  instance_type               = "t3.micro"
  ipv6_address_count          = 0
  key_name                    = "week10"
  monitoring                  = false
  security_groups             = ["launch-wizard-2"]
  source_dest_check           = true
  subnet_id                   = "subnet-06e1a151c7295cea2"
  tags = {
    Name = "imported-server"
    env  = "dev"
    Team = "devops"
  }
}
