# YAML inventory generator

[English version](#english-version)

### WERSJA POLSKA

Przedstawiam interaktywny skrypt w Bash, który dynamicznie tworzy plik `inventory.yml` dla Ansible. Dzięki niemu w kilku prostych krokach możesz zautomatyzować konfigurację hostów – wystarczy, że podasz liczbę hostów oraz ich dane (nazwa, adres IP, użytkownik). Idealne narzędzie dla pasjonatów DevOps oraz administratorów systemów. Zachęcam do zapoznania się z repozytorium, komentowania i udostępniania!

### Funkcjonalności:
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
### Skrypt w języku polskim – create_inventory_pl.sh

```bash
#!/bin/bash
# =============================================================================
# Skrypt: create_inventory_pl.sh
# Opis: Skrypt dynamicznie tworzy plik inventory.yml dla Ansible.
#       Użytkownik podaje liczbę hostów, a następnie wprowadza dane dla każdego:
#         - Nazwa hosta
#         - Adres IP hosta
#         - Nazwa użytkownika (ansible_user)
#
# Sposób użycia:
#   1. Nadaj uprawnienia wykonywania: chmod +x create_inventory_pl.sh
#   2. Uruchom skrypt: ./create_inventory_pl.sh
#
# Autor: Lukasz Sarnecki
# Data: 26.03.2025
# =============================================================================

echo "Witaj w kreatorze pliku inventory.yml dla Ansible (wersja polska)"
echo "-----------------------------------------------------"

# Pobranie liczby hostów do dodania
read -p "Ile hostów chcesz dodać? " host_count

# Sprawdzenie, czy plik już istnieje i zapytanie o nadpisanie
if [ -f "inventory.yml" ]; then
    read -p "Plik inventory.yml już istnieje. Czy chcesz go nadpisać? (t/n): " choice
    if [ "$choice" != "t" ]; then
        echo "Operacja anulowana. Obecny plik pozostanie nienaruszony."
        exit 0
    fi
fi

# Tworzenie podstawowej struktury pliku YAML
echo "all:" > inventory.yml
echo "  hosts:" >> inventory.yml

# Pętla zbierająca dane o hostach
for (( i=1; i<=host_count; i++ ))
do
    echo "Wprowadź dane dla hosta nr $i:"
    read -p "  Nazwa hosta: " host_name
    read -p "  Adres IP hosta: " host_ip
    read -p "  Nazwa użytkownika: " host_user

    # Dodanie danych hosta do pliku inventory.yml
    echo "    $host_name:" >> inventory.yml
    echo "      ansible_host: $host_ip" >> inventory.yml
    echo "      ansible_user: $host_user" >> inventory.yml
    echo "" >> inventory.yml
done

echo "Plik inventory.yml został pomyślnie utworzony."
```

### ENGLISH VERSION

I’m excited to share an interactive Bash script that dynamically creates an `inventory.yml` file for Ansible. In just a few simple steps, you can automate host configuration by providing the number of hosts along with their details (name, IP address, username). This tool is perfect for DevOps enthusiasts and system administrators alike. Check out the repository, leave your feedback, and share with your network!

### Features:
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
### Skrypt w języku angielskim – create_inventory_en.sh
```bash
#!/bin/bash
# =============================================================================
# Script: create_inventory_en.sh
# Description: This script dynamically creates an inventory.yml file for Ansible.
#              The user is prompted to enter the number of hosts and then to provide:
#                - Host name
#                - Host IP address
#                - Username (ansible_user)
#
# Usage:
#   1. Grant execute permissions: chmod +x create_inventory_en.sh
#   2. Run the script: ./create_inventory_en.sh
#
# Author: Lukasz Sarnecki
# Date: 25.03.2025
# =============================================================================

echo "Welcome to the Ansible inventory.yml creator (English version)"
echo "-----------------------------------------------------"

# Prompt for the number of hosts to add
read -p "How many hosts would you like to add? " host_count

# Check if the inventory.yml file already exists and ask for overwrite permission
if [ -f "inventory.yml" ]; then
    read -p "The file inventory.yml already exists. Do you want to overwrite it? (y/n): " choice
    if [ "$choice" != "y" ]; then
        echo "Operation cancelled. Your current file remains unchanged."
        exit 0
    fi
fi

# Create the basic YAML structure for the inventory file
echo "all:" > inventory.yml
echo "  hosts:" >> inventory.yml

# Loop to gather host information
for (( i=1; i<=host_count; i++ ))
do
    echo "Enter the details for host number $i:"
    read -p "  Host name: " host_name
    read -p "  Host IP address: " host_ip
    read -p "  Username: " host_user

    # Append host details to the inventory.yml file
    echo "    $host_name:" >> inventory.yml
    echo "      ansible_host: $host_ip" >> inventory.yml
    echo "      ansible_user: $host_user" >> inventory.yml
    echo "" >> inventory.yml
done

echo "The inventory.yml file has been successfully created."
```
