# VPC
aws_region="us-east-1"
vpc_name="mwaa-vpc"
cidr_block="172.16.0.0/16"
azs=["a", "b"]
enable_dns_hostnames=true
enable_dns_support=true
private_subnets_count=2
public_subnets_count=2
# the cidr block will be automatically calculated using 'cidrsubnet' in 'subnet.tf' file
# so no need to populate the following 2 variables
private_subnets=[]
public_subnets=[]
map_public_ip_on_launch_private_subnet=false
map_public_ip_on_launch_public_subnet=true
nat_gateway_count=2
eip_nat_count=2

# MWAA
mwaa_environment_name="example"
# The relative path to the DAG folder on your Amazon S3 storage bucket.
dag_s3_path="dags/"
webserver_access_mode="PUBLIC_ONLY"
airflow_version="2.2.2"
environment_class="mw1.small"
mwaa_max_workers=25
mwaa_min_workers=1
schedulers_count=2

# mwaa airflow_configuration_options
# core options
core_dag_concurrency =	500
# Task configurations
core_default_task_retries = 0
core_parallelism          = 1000
# Worker configurations
celery_worker_autoscale =	"5,5"
# Scheduler configurations
scheduler_catchup_by_default =	"False"
scheduler_dag_dir_list_interval =	120
scheduler_min_file_process_interval =	30
webserver_default_ui_timezone = "UTC"

# mwaa logging_configuration
dag_processing_logs = "WARNING"
scheduler_logs = "WARNING"
task_logs  = "INFO"
webserver_logs = "WARNING"
worker_logs  = "WARNING"

# S3 bucket
airflow_s3_bucket_name="my-tf-test-bucket-airflow-v1-us-east-1"



# IAM Role
iam_role = "test_role"

# Tags
tags = {
  "Name" = "mwaa"
  "Environment" = "Dev11"
}
