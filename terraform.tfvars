
region   = "us-east-1"



vpc_cidr = "10.0.0.0/16"

public_subnets = ["10.0.0.0/20" ,"10.0.16.0/20"]

private_subnets = ["10.0.128.0/20" ,"10.0.144.0/20" , "10.0.160.0/20" , "10.0.176.0/20"]

azs = ["us-east-1a", "us-east-1b"]

tags   = { Environment = "dev"}

