terraform {
  source = "../../template"

  extra_arguments "common_vars" {
    commands = get_terraform_commands_that_need_vars()
  }
}
