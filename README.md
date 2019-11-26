# The terraform the spins up all the containers on my container server

If you want to run all the same containers as I am feel free to clone down and setup the connection needed to use terraforms docker provider. If you find a better setup maybe put up a PR or just fork so others can see the awesome work.

## Setup and run it

- Copy `terraform.tfvars.dist` to `terraform.tfvars`
- Put in the connection information needed
- Run `terraform init`
- Run `terraform plan -o execution-plan`
- Review the plan and if your happy with it continue
- Run `terraform apply execution-plan`

## License

This project is MIT licensed. Please see license file for details.