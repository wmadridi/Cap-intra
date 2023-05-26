provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}

# Define the Apache web server resources
resource "aws_instance" "web_server" {
  ami           = "ami-0c94855ba95c71c99"  # Replace with desired AMI ID
  instance_type = "t2.micro"                # Replace with desired instance type

  # Add other configuration parameters as needed
  # ...

  tags = {
    Name = "web-server"
  }
}

# Define the PostgreSQL database resources
resource "aws_db_instance" "database" {
  engine            = "postgres"
  instance_class    = "db.t2.micro"
  allocated_storage = 20

  # Add other configuration parameters as needed
  # ...

  tags = {
    Name = "database"
  }
}

# Define other resources like Jenkins VM, Ansible VM, load balancer, etc.
# ...

