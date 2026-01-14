## Introduction

This project demonstrates how to use Terraform with some basic configurations. It includes a `main.tf`, `variables.tf`, `outputs.tf`, and `versions.tf`. The `README.md` provides instructions on how to start using this project.

This was created for the Udemy course [Terraform 101](https://www.udemy.com/course/terraform-101-azure-edition/).

## Hint

In real projects _never_ add the `.tfvars` files to the repository.

## Start

`terraform init | plan | apply | destroy`

To add configurations and necessary variables:

`terraform init -var-file env-dev.tfvars`
