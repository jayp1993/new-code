variable "Environment" {
  
}
variable "Project" {
  
}
variable "Application" {
  
}
variable "Owner" {
  
}
variable "CostCenter" {
  
}
variable "Department" {
  
}
variable "ManagedBy" {
  
}
variable "CreatedBy" {
  
}
variable "cth-storage" {
  type=map(object(
    {
        name                     = string
  location                 = string
  resource_group_name=string
  account_tier             =string
  account_replication_type =string
    }
  ))
}