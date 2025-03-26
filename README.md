# YAML inventory generator

[English version](#english-version)

Przedstawiam interaktywny skrypt w Bash, który dynamicznie tworzy plik `inventory.yml` dla Ansible. Dzięki niemu w kilku prostych krokach możesz zautomatyzować konfigurację hostów – wystarczy, że podasz liczbę hostów oraz ich dane (nazwa, adres IP, użytkownik). Idealne narzędzie dla pasjonatów DevOps oraz administratorów systemów. Zachęcam do zapoznania się z repozytorium, komentowania i udostępniania!

### Funkcjonalności
- Interaktywne pobieranie liczby hostów do dodania.
- Zbieranie informacji: nazwa hosta, adres IP (ansible_host), nazwa użytkownika (ansible_user).
- Tworzenie pliku `inventory.yml` z odpowiednią strukturą YAML.
- Weryfikacja istnienia pliku i opcja nadpisania istniejącej konfiguracji.

### Sposób użycia:
 1. Nadaj uprawnienia wykonywania:chmod +x create_inventory_pl.sh
```bash
chmod +x create_inventory_pl.sh
```
 2. Uruchom skrypt: ./create_inventory_pl.sh
```bash
./create_inventory_pl.sh
```


I’m excited to share an interactive Bash script that dynamically creates an `inventory.yml` file for Ansible. In just a few simple steps, you can automate host configuration by providing the number of hosts along with their details (name, IP address, username). This tool is perfect for DevOps enthusiasts and system administrators alike. Check out the repository, leave your feedback, and share with your network!

### Features
- Interactive prompt for the number of hosts to add.
- Gathering of host details: name, IP address (ansible_host), and username (ansible_user).
- Generation of an `inventory.yml` file with the proper YAML structure.
- File existence check with an option to overwrite the current configuration.

### Usage:
1. Grant execute permissions:
```bash
chmod +x create_inventory_en.sh
```
2. Run the script: ./create_inventory_en.sh
```bash
./create_inventory_en.sh
```
