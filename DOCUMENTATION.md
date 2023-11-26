<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_grafana"></a> [grafana](#provider\_grafana) | 2.6.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [grafana_dashboard.oac_dashboard](https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/dashboard) | resource |
| [grafana_data_source.prometheus](https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/data_source) | resource |
| [grafana_folder.oac_folder](https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/folder) | resource |
| [grafana_organization.my_org](https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/organization) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_grafana_auth"></a> [grafana\_auth](#input\_grafana\_auth) | Value for grafana authentication (username:pass) | `string` | n/a | yes |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | Name of organization on grafana | `string` | `"oac-org"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->