# Get the latest amazon linux ami
data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_iam_instance_profile" "webserver_profile" {
  name = "webserver_profile"
  role = var.role_name
}

resource "tls_private_key" "key_pair_precision" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Use terraform output -raw private_key to view this
# from the cli, in order to download it to ~/.ssh/
resource "aws_key_pair" "aws_key_pair_precision" {
  key_name = "precision"
  public_key = tls_private_key.key_pair_precision.public_key_openssh
}

resource "aws_instance" "web" {
  ami = data.aws_ami.amazon-linux-2.id
  instance_type = "t2.micro"
  subnet_id = var.subnet_public1_id
  associate_public_ip_address = true
  security_groups = [var.webserver_security_group_id]
  # How do I associate the role with the instance?
  iam_instance_profile = aws_iam_instance_profile.webserver_profile.name
  user_data = <<EOF
    #!/bin/bash
    sudo amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
    sudo yum install -y httpd
    sudo systemctl start httpd
    sudo systemctl enable httpd
    # p 28
    sudo usermod -a -G apache ec2-user
    sudo chown -R ec2-user:apache /var/www
    sudo chmod 2775 /var/www
    find /var/www -type d -exec sudo chmod 2775 {} \;
    find /var/www -type f -exec sudo chmod 0664 {} \;
  EOF
  key_name = aws_key_pair.aws_key_pair_precision.key_name
  tags = {
    Name = "tutorial-web-server"
  }
}
