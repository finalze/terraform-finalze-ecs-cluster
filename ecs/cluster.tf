resource "aws_ecs_cluster" "finalze-ecs-cluster" {
    name = "${var.ecs-cluster-name}"
}