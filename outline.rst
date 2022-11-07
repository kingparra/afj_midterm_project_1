Outline
*******
An outline of the pdf guide, to help me keep track of things while I code along.

* 0 Midterm project description
* 1 Prerequisites

  * 1.1  Create a s3 bucket
  * 1.2 Move file to s3 bucket

  * 1.3 Create a role
  * 1.4 Attach a policy to the role

* 2 Create a vpc with private and public subnets

  * 2.1 To create a vpc and subnets

    * 2.1.1 Create an eip
    * 2.1.2 Create the vpc, two pairs of public/private subnets, an ngw, and igw, route tables,
      route table associations, and more in one long step.

* 3 Create a vpc security group for a public web server

  * 3.1 To create a vpc security group

* 4 Create a vpc security group for a private db instance

  * 4.1 To create a vpc security group

* 5 Create a db subnet group

* 6 Now lets create a db instance

  * 6.1 To create a mysql db instance

* 7 Now create an ec2 instance and install a web server

  * 7.1 Launch an ec2 instance
  * 7.2 Install an apache web server with php

    * 7.3 To set file permissions for the apache web server

* 8 Connect your apache web server to your db instance

  * 8.1 To add content to the apache web server that connects to your db instance
  * 8.2 Verify that your web server connects to the db instance
