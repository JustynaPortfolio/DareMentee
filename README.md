# Cloud based data analytics platform
The project involved creating a data analytics platform in the Azure cloud. To achieve this goal, the following components were used: SQL Database, Blob Storage, Data Factory, Databricks, Azure DevOps.

Steps of the project:
- Creating two repositories in Azure DevOps - first for Data Factory and second for Databricks.
- Loading a sample database from https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/northwind-pubs into SQL Database.
- Creating a Storage Account, with two containers within it.
- Creating a Service Principal.
- Integrating services with Key Vault.
- Building ETLs using Data Factory:
  - Copy data using one-time Copy Data tool.
  - Connecting to Azure DevOps repository. In branch creating a pipeline to copy data from Database to Azure Data Lake Storage and merge it to main and publish.
- Creating Azure Databricks workspace.
- Using Terraform to create: Resource Group, SQL Server, Storage Account and SQL Database.


 
  ![Azure project vpd](https://github.com/JustynaPortfolio/DareMentee/assets/159054537/92f242c1-4788-4f5b-81bf-ffc220d5651b)
