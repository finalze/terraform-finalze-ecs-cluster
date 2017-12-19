resource "aws_ecs_task_definition" "finalze-sample-definition" {
    family                = "finalze-sample-definition"
    container_definitions = "${file("./ecs/task-definition.json")}"
}