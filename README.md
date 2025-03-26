# YAML inventory generator

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
