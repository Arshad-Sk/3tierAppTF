
resource "aws_instance" "demoinstance" {
 
  #ami                         = "ami-0fb7ffc4a6f7ad467"
  ami                         = "ami-06a72910b27938a31"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = "${aws_subnet.public-subnet-1.id}"
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"

  tags = {
    Name = "My Public Instance"
  }
}

resource "aws_instance" "demoinstance1" {
  #ami                         = "ami-0fb7ffc4a6f7ad467"
  ami                         = "ami-06a72910b27938a31"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = "${aws_subnet.public-subnet-2.id}"
  associate_public_ip_address = true

  tags = {
    Name = "My Public Instance 2"
  }
}

#Key
resource "aws_key_pair" "awskey" {
key_name = "tests"
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC838Zt/LMy2cJP505/k9eCc1i1Dqsn/CRgdMkiuJ3BQFeG/B1jmmQLYBbP1R6SWMALzlVTTeJJJBXRwHgKFYPQsBqxG4ilOVKozCtLq2azlooqbJRIOTGYqFffeqqj6jk1QDX0aEXgtgj1MnlU0DIbc326F54ED/k3tQ/P4Qte4wD/j2y7IgrZAYPMB0wlG70FJBTlFpLz/TTEtaQleO5mNMnMHDYCKH6gnb51pN7NFOE5aWv+wNMJaVbvVaCDTvtlCZYk3ylu9zgKGYM3A1NOG65avRoRjQxCBk803Fiy1vO4hYJT4XACwcUWcLbgmfX0ET2vJ8cHdYZSIBNDpTHX arshad.shaik@IN-IT6644"
}
