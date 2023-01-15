# Network
variable "aws_region" {
  type    = string
  default = null
}

variable "vpc_name" {
  type    = string
  default = ""
}

variable "cidr_block" {
  type    = string
  default = null
}

variable "azs" {
  description = "A list of availability zones names or ids in the region"
  type        = list(string)
  default     = []
}

variable "enable_dns_hostnames" {
  description = "https://docs.aws.amazon.com/vpc/latest/userguide/vpc-dns.html#vpc-dns-hostnames"
  type        = bool
  default     = null
}

variable "enable_dns_support" {
  type    = bool
  default = null
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "private_subnets_count" {
  description = "A number of private subnets inside the VPC"
  type        = number
  default     = null
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "public_subnets_count" {
  description = "A number of public subnets inside the VPC"
  type        = number
  default     = null
}

variable "map_public_ip_on_launch_public_subnet" {
  type    = bool
  default = null
}

variable "map_public_ip_on_launch_private_subnet" {
  type    = bool
  default = null
}

variable "nat_gateway_count" {
  type    = number
  default = null
}

variable "eip_nat_count" {
  type    = number
  default = null
}


# Airflow (MWAA)
variable "airflow_version" {
  type    = string
  default = null
}

variable "mwaa_environment_name" {
  type    = string
  default = null
}

variable "webserver_access_mode" {
  type    = string
  default = null
}

variable "dag_s3_path" {
  type    = string
  default = null
}

variable "mwaa_max_workers" {
  type    = number
  default = null
}

variable "mwaa_min_workers" {
  type    = number
  default = null
}

variable "environment_class" {
  type    = string
  default = null
}

variable "schedulers_count" {
  type    = number
  default = null
}

# For detailed ref on these
# Follow (for 2.2.2) -> https://airflow.apache.org/docs/apache-airflow/2.2.2/configurations-ref.html
variable "core_dag_concurrency" {
  type    = number
  default = null
}
variable "core_default_task_retries" {
  description = "The number of times to retry an Apache Airflow task"
  type        = number
  default     = null
}

variable "core_parallelism" {
  description = "The maximum number of task instances that can run simultaneously across the entire environment in parallel"
  type        = number
  default     = null
}

variable "celery_worker_autoscale" {
  description = "The maximum and minimum number of tasks that can run concurrently on any worker using the Celery Executor in worker_autoscale. Value must be comma-separated in the following order: max_concurrency,min_concurrency"
  type        = string
  default     = null
}

variable "scheduler_catchup_by_default" {
  description = "Tells the scheduler to create a DAG run to 'catch up' to the specific time interval in"
  type        = string
  default     = null
}

variable "scheduler_dag_dir_list_interval" {
  description = "How often (in seconds) to scan the DAGs directory for new files"
  type        = number
  default     = null
}

variable "scheduler_min_file_process_interval" {
  description = "Number of seconds after which a DAG file is parsed. "
  type        = number
  default     = null
}

variable "webserver_default_ui_timezone" {
  description = "The default Apache Airflow UI datetime setting"
  type        = string
  default     = null
}

variable "dag_processing_logs" {
  type    = string
  default = null
}

variable "scheduler_logs" {
  type    = string
  default = null
}

variable "task_logs" {
  type    = string
  default = null
}

variable "webserver_logs" {
  type    = string
  default = null
}

variable "worker_logs" {
  type    = string
  default = null
}

# S3 Bucket
variable "airflow_s3_bucket_name" {
  type    = string
  default = null
}

# Tags
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    Name        = null
    Environment = null
  }
}

# IAM Role for MWAA
variable "iam_role" {
  type    = string
  default = null
}
