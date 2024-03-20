# Cloud based data analytics platform
The project involved creating a data analytics platform in the Azure cloud. To achieve this goal, the following components were used: SQL Database, Blob Storage, Data Factory, Databricks, Azure DevOps.

Steps of the project:
- Creating a Resource Group.
- Creating two repositories in Azure DevOps - first for Data Factory (to store and manage the metadata and configuration of data factory pipelines and related artifacts) and second for Databricks (to store scripts, notebooks).
- Loading a sample database from https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/northwind-pubs into SQL Database.
- Creating a Storage Account, with two containers within it.
- Creating a Service Principal to authenticate and authorize Databricks to access storage account and databases.
- Integrating services with Key Vault.
- Building ETLs using Data Factory:
  - Copy data using one-time Copy Data tool.
  - Connecting to Azure DevOps repository. In the branch, creating a pipeline to copy data from the database to Azure Data Lake Storage and merge it into main branch before publishing.
- Creating Azure Databricks workspace -adding a notebook, a compute cluster. Mounting the Azure storage account and performing simple data processing.
- Using Terraform to create: Resource Group, SQL Server, Storage Account and SQL Database.


 
  ![Azure project vpd](https://github.com/JustynaPortfolio/DareMentee/assets/159054537/92f242c1-4788-4f5b-81bf-ffc220d5651b)
