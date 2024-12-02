terraform { 
  cloud { 
    hostname = "43.203.207.93" 
    organization = "test" 

    workspaces { 
      name = "test" 
    } 
  } 
}

provider "aws" {
    region = "ap-northeast-2"
}

resource "aws_vpc" "test_vpc" {
  cidr_block = "10.0.0.0/24"
  tags = {
    Name      = "terraform test vpc"
  }
}
