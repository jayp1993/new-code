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
variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}