# Mini projekt do analizy danych
Projekt polegał na stworzeniu w chmurze Azure resource group, a w niej zasobów takich jak: Key Vault, Azure SQL Database i Azure Blob Storage.

Kolejne etapy projektu to:
- Utworzenie dwóch repozytoriów w Azure DevOps
- Wczytanie do SQL Database przykładowej bazy danych z GitHub.
- Stworzenie Storage Account, a w nim dwóch kontenerów.
- Stworzonie Service Principal - App registration.
- Dodanie do Azure Key Vault loginu i hasła do SQL db, service principal id i sekretu.
- Utworzenie Azure Data Factory
   - Pierwsza wersja: skopiowanie danych przy użyciu narzędzia Copy Data Tool
   - Druga wersja: 
