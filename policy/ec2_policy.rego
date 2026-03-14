package main
deny[msg]{
	resource := input.resource_changes[_]
	resource.type == "aws_instance"
	resource.change.after.instance_type != "t3.micro"

	msg := "only t3.micro instance type is allowed"
}


