module "network" {
    source = "./network"
    vpc_name=var.vpc_name
    vp_cidr=var.vp_cidr

    public_subnet_1=var.public_subnet_1
    public_subnet_cidr_1=var.public_subnet_cidr_1
    public_subnet_2=var.public_subnet_2
    public_subnet_cidr_2=var.public_subnet_cidr_2

    private_subnet_1= var.private_subnet_1
    private_subnet_cidr_1= var.private_subnet_cidr_1
    private_subnet_2= var.private_subnet_2
    private_subnet_cidr_2= var.private_subnet_cidr_2

    availability_zone1=var.availability_zone1
    availability_zone2=var.availability_zone2

    workSpace=var.workSpace

}