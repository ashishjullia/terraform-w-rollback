# terraform-w-separate-workflows
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_null"></a> [null](#requirement\_null) | 3.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_vpc.main1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_airflow_s3_bucket_name"></a> [airflow\_s3\_bucket\_name](#input\_airflow\_s3\_bucket\_name) | S3 Bucket | `string` | `null` | no |
| <a name="input_airflow_version"></a> [airflow\_version](#input\_airflow\_version) | Airflow (MWAA) | `string` | `null` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Network | `string` | `null` | no |
| <a name="input_azs"></a> [azs](#input\_azs) | A list of availability zones names or ids in the region | `list(string)` | `[]` | no |
| <a name="input_celery_worker_autoscale"></a> [celery\_worker\_autoscale](#input\_celery\_worker\_autoscale) | The maximum and minimum number of tasks that can run concurrently on any worker using the Celery Executor in worker\_autoscale. Value must be comma-separated in the following order: max\_concurrency,min\_concurrency | `string` | `null` | no |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | n/a | `string` | `null` | no |
| <a name="input_core_dag_concurrency"></a> [core\_dag\_concurrency](#input\_core\_dag\_concurrency) | For detailed ref on these Follow (for 2.2.2) -> https://airflow.apache.org/docs/apache-airflow/2.2.2/configurations-ref.html | `number` | `null` | no |
| <a name="input_core_default_task_retries"></a> [core\_default\_task\_retries](#input\_core\_default\_task\_retries) | The number of times to retry an Apache Airflow task | `number` | `null` | no |
| <a name="input_core_parallelism"></a> [core\_parallelism](#input\_core\_parallelism) | The maximum number of task instances that can run simultaneously across the entire environment in parallel | `number` | `null` | no |
| <a name="input_dag_processing_logs"></a> [dag\_processing\_logs](#input\_dag\_processing\_logs) | n/a | `string` | `null` | no |
| <a name="input_dag_s3_path"></a> [dag\_s3\_path](#input\_dag\_s3\_path) | n/a | `string` | `null` | no |
| <a name="input_eip_nat_count"></a> [eip\_nat\_count](#input\_eip\_nat\_count) | n/a | `number` | `null` | no |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | https://docs.aws.amazon.com/vpc/latest/userguide/vpc-dns.html#vpc-dns-hostnames | `bool` | `null` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | n/a | `bool` | `null` | no |
| <a name="input_environment_class"></a> [environment\_class](#input\_environment\_class) | n/a | `string` | `null` | no |
| <a name="input_iam_role"></a> [iam\_role](#input\_iam\_role) | IAM Role for MWAA | `string` | `null` | no |
| <a name="input_map_public_ip_on_launch_private_subnet"></a> [map\_public\_ip\_on\_launch\_private\_subnet](#input\_map\_public\_ip\_on\_launch\_private\_subnet) | n/a | `bool` | `null` | no |
| <a name="input_map_public_ip_on_launch_public_subnet"></a> [map\_public\_ip\_on\_launch\_public\_subnet](#input\_map\_public\_ip\_on\_launch\_public\_subnet) | n/a | `bool` | `null` | no |
| <a name="input_mwaa_environment_name"></a> [mwaa\_environment\_name](#input\_mwaa\_environment\_name) | n/a | `string` | `null` | no |
| <a name="input_mwaa_max_workers"></a> [mwaa\_max\_workers](#input\_mwaa\_max\_workers) | n/a | `number` | `null` | no |
| <a name="input_mwaa_min_workers"></a> [mwaa\_min\_workers](#input\_mwaa\_min\_workers) | n/a | `number` | `null` | no |
| <a name="input_nat_gateway_count"></a> [nat\_gateway\_count](#input\_nat\_gateway\_count) | n/a | `number` | `null` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | A list of private subnets inside the VPC | `list(string)` | `[]` | no |
| <a name="input_private_subnets_count"></a> [private\_subnets\_count](#input\_private\_subnets\_count) | A number of private subnets inside the VPC | `number` | `null` | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | A list of public subnets inside the VPC | `list(string)` | `[]` | no |
| <a name="input_public_subnets_count"></a> [public\_subnets\_count](#input\_public\_subnets\_count) | A number of public subnets inside the VPC | `number` | `null` | no |
| <a name="input_scheduler_catchup_by_default"></a> [scheduler\_catchup\_by\_default](#input\_scheduler\_catchup\_by\_default) | Tells the scheduler to create a DAG run to 'catch up' to the specific time interval in | `string` | `null` | no |
| <a name="input_scheduler_dag_dir_list_interval"></a> [scheduler\_dag\_dir\_list\_interval](#input\_scheduler\_dag\_dir\_list\_interval) | How often (in seconds) to scan the DAGs directory for new files | `number` | `null` | no |
| <a name="input_scheduler_logs"></a> [scheduler\_logs](#input\_scheduler\_logs) | n/a | `string` | `null` | no |
| <a name="input_scheduler_min_file_process_interval"></a> [scheduler\_min\_file\_process\_interval](#input\_scheduler\_min\_file\_process\_interval) | Number of seconds after which a DAG file is parsed. | `number` | `null` | no |
| <a name="input_schedulers_count"></a> [schedulers\_count](#input\_schedulers\_count) | n/a | `number` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | <pre>{<br>  "Environment": null,<br>  "Name": null<br>}</pre> | no |
| <a name="input_task_logs"></a> [task\_logs](#input\_task\_logs) | n/a | `string` | `null` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `string` | `""` | no |
| <a name="input_webserver_access_mode"></a> [webserver\_access\_mode](#input\_webserver\_access\_mode) | n/a | `string` | `null` | no |
| <a name="input_webserver_default_ui_timezone"></a> [webserver\_default\_ui\_timezone](#input\_webserver\_default\_ui\_timezone) | The default Apache Airflow UI datetime setting | `string` | `null` | no |
| <a name="input_webserver_logs"></a> [webserver\_logs](#input\_webserver\_logs) | n/a | `string` | `null` | no |
| <a name="input_worker_logs"></a> [worker\_logs](#input\_worker\_logs) | n/a | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->