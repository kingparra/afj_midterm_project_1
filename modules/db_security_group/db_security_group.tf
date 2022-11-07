resource "aws_security_group" "db-sg" {
    name        = "tutorial-db-securitygroup"
    description = "Tutorial DB Instance Security Group"
    vpc_id      = aws_vpc.midterm-vpc.id
    ingress {
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        security_groups = [aws_security_group.webserver_sg.id]
        self            = false
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }
}
