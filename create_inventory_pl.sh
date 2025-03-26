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
echo "--- #Inwentory YML" >> inventory.yml
echo "all:" >> inventory.yml
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
    echo "      ansible_user: $host_user" >> inventory.yml
    echo "      ansible_host: $host_ip" >> inventory.yml
    echo "" >> inventory.yml
done

echo "Plik inventory.yml został pomyślnie utworzony."
