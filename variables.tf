variable "region" {
    default = "ap-northeast-2"
}

variable "cluster_name" {
    description = "Cluster Name"
    type = string
    default = null
}

variable "cluster_version"{
    description = "Cluster Version"
    type = string
    default = null
}

variable "vpc_cidr" {
    description = "VPC CIDR Range"
    type = string
    default = null
}

variable "ami_type" {
    description = "Node AMI type"
    type = string
    default = null
}

variable "instance_type" {
    description = "Node Instance type"
    type = list(string)
    default = null
}

variable "disk_size" {
    description = "Node Disk Size"
    type = number
    default = null
}

variable "min_size" {
    description = "Node Min Size"
    type = number
    default = null
}

variable "max_size" {
    description = "Node Max Size"
    type = number
    default = null
}

variable "desired_size" {
    description = "Node Desired Size"
    type = number
    default = null
}

variable "iam_arn" {
    description = "IAM Role ARN for EKS"
    type = string
    default = null
}

variable "policy_arn" {
    description = "IAM Policy for EKS"
    type = string
    default = null
}

variable "ec2_ssh_key_name" {
    description = "EC2 SSH Key name"
    type = string
    default = null
}