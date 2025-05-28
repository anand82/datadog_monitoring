# Terraform Datadog CPU Monitor

This project provides Terraform configurations to set up CPU usage monitors in Datadog. Use these resources to automatically alert your team when CPU thresholds are exceeded, helping ensure system reliability and performance.

## Features

- Create and manage Datadog CPU monitors via Terraform
- Customizable alert thresholds and notification to SRE team
- Alert notification
    - CPU threshold value reach to 90%, alert to high CPU usage message 
    - CPU threshold value reach to 80% alert to Warning CPU usage message


## Getting Started

1. Clone this repository.
2. Update the variables in the Terraform configuration to match your Datadog account and desired thresholds.
3. Initialize and apply the Terraform plan:
    ```sh
    terraform init
    terraform plan
    terraform apply -auto-approve
    ```