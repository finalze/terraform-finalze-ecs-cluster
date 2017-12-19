
variable "ecs-target-group-arn" {}

variable "ecs-cluster-name" {
    default = "finalze-ecs-cluster"
}

variable "ecs-service-role-arn" {
    default = "finalze-ecs-cluster"
}

variable "ecs-service-name" {
    default = "finalze-ecs-service"
}

variable "ecs-load-balancer-name" {
    default = "finalze-ecs-load-balancer"
}

