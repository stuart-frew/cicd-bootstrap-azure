# CICD Bootstrap Azure

Terraform script to bootstrap the creation of the resources to run the CI/CD process in Azure and Azure DevOps

## Prerequisites

This process assumes that the following resources already exist,

* An Azure subscription and tenant Ids
* An Azure DevOps organisation
* A GitHub account
* An Azure DevOps personal access token has been created and is available for use
* A GitHub token has been created and is available for use

## Assumptions

The example bootstrap is based on the following assumptions.

* The artefacts are sourced from a single GitHub organisation
* The artefacts pipelines will be in a single DevOps project
* The examples security stance is fairly coarse
* The example assumes that the DevOps boards will not be used as Jira is the agile workflow tracker

# Boot strap variables

| Variable                      | Description |
|-------------------------------|-------------|
| prefix                        | An arbitrary prefix used to group like resources |
| subscription_id               | Azure authentication information used by the pipelines |
| subscription_name             | Azure authentication information used by the pipelines |
| tenant_id                     | Azure authentication information used by the pipelines |
| project_name                  |  Name of the devops project to be operated on|
| project_description           | Description of the devops project to be operated on|
| devops_url                    | Fully qualified URL of the devops organisation |
| devops_personal_access_token  | Devops PAT to be used to manipulate devops project |
| github_organisation           | GitHub organisation that contains the target repos |
| github_personal_access_token  | Access token to authenticate against GitHub |
| tags                          | A object of tag name/value pairs |
| defaultLocation               | Where to run the azure resources, defaults to `australiaeast` |


