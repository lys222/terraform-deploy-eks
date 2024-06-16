variable "region" {
    default = "ap-northeast-2"
}

variable "cluster_name" {
    description = "Cluster Name"
    type = string
    default = "test"
}

variable "cluster_version"{
    description = "Cluster Version"
    type = string
    default = "1.28"
}

variable "vpc_cidr" {
    description = "VPC CIDR Range"
    type = string
    default = "10.0.0.0/16"
}

variable "ami_type" {
    description = "Node AMI type"
    type = string
    default = "AL2_x86_64"
}

variable "instance_type" {
    description = "Node Instance type"
    type = list(string)
    default = ["t2.micro"]
}

variable "disk_size" {
    description = "Node Disk Size"
    type = number
    default = 50
}

variable "min_size" {
    description = "Node Min Size"
    type = number
    default = 1
}

variable "max_size" {
    description = "Node Max Size"
    type = number
    default = 1
}

variable "desired_size" {
    description = "Node Desired Size"
    type = number
    default = 1
}

variable "iam_arn" {
    description = "IAM Role ARN for EKS"
    type = string
    default = ${{ vars.IAM_ROLE_ARN }}
}

variable "policy_arn" {
    description = "IAM Policy for EKS"
    type = string
    default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "ec2_ssh_key_name" {
    description = "EC2 SSH Key name"
    type = string
    default = ysKey
}