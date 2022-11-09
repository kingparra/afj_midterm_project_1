resource "aws_security_group" "db_security_group" {
    name        = "tutorial-db-securitygroup"
    description = "Tutorial DB Instance Security Group"
    vpc_id      = var.vpc_id
    ingress {
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        security_groups = [var.webserver_security_group_id]
        self            = false
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }
}
