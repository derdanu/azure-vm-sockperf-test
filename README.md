# Network Latency Test based on Sockperf

Testing Latency cross Availability Zones in different Azure regions.

## Usage 

Terraform apply and run both command shown in the terraform output afterwards. 

```
terraform init 
terraform plan 
terraform apply
terraform output 
``` 

First the Receiver, second the Sender command in different terminals. 


## Troubleshooting 

`` 
bash: /usr/local/bin/sockperf: No such file or directory
`` 

Please try again later. Installing the Build Tools and compiling the sources may take a while. 

## Documentation 

https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-test-latency#test-vms-that-are-running-linux
