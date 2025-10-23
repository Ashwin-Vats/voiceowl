variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region to deploy resources"
}

variable "cluster_role_arn" {
  type        = string
  description = "IAM role ARN for EKS cluster"
  default     = "arn:aws:iam::123456789012:role/EKSClusterRole" # replace with real one
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for the EKS cluster"
  default     = ["subnet-11111111", "subnet-22222222"] # replace with actual subnets
}
