variable "ebs_name" {
  description = "EBS name/tag to query"
  default     = ""
}

variable "ebs_type" {
  description = "EBS type to query"
  type        = "list"
  default     = ["gp2"]
}

variable "dml_description" {
  description = "DLM lifecycle policy description"
  default     = "DLM lifecycle policy"
}

variable "dml_resource_type" {
  description = "DLM resource type"
  default     = ["VOLUME"]
}

variable "schedule_name" {
  description = "Snapshots schedule name"
  default     = "One week of daily snapshots"
}


variable "schedule_interval" {
  description = "Snapshots schedule interval"
  default     = 24
}

variable "schedule_interval_unit" {
  description = "Snapshots schedule interval unit"
  default     = "HOURS"
}

variable "schedule_times" {
  description = "Snapshots schedule time"
  type        = "list"
  default     = ["23:45"]
}

variable "schedule_retain_rule" {
  description = "Snapshots schedule interval times"
  default     = 14
}

variable "schedule_copy_tags" {
  description = "Copy all user-defined tags on a source volume to snapshots of the volume created by this policy."
  default     = false
}

variable "schedule_target_tags" {
  description = "A mapping of tag keys and their values. Any resources that match the resource_types and are tagged with any of these tags will be targeted."
  default     = "true"
}
