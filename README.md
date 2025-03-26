# YAML inventory generator

Przedstawiam interaktywny skrypt w Bash, który dynamicznie tworzy plik `inventory.yml` dla Ansible. Dzięki niemu w kilku prostych krokach możesz zautomatyzować konfigurację hostów – wystarczy, że podasz liczbę hostów oraz ich dane (nazwa, adres IP, użytkownik). Idealne narzędzie dla pasjonatów DevOps oraz administratorów systemów. Zachęcam do zapoznania się z repozytorium, komentowania i udostępniania!

### Działanie:

Po uruchomieniu użytkownik podaje liczbę hostów, a następnie wprowadza dane dla każdego z nich:
- Nazwa hosta
- Adres IP hosta (ansible_host)
- Nazwa użytkownika (ansible_user)

### Sposób użycia:
 1. Nadaj uprawnienia wykonywania:chmod +x create_inventory_pl.sh
```bash
chmod +x create_inventory_pl.sh
```
 2. Uruchom skrypt: ./create_inventory_pl.sh
```bash
./create_inventory_pl.sh
```
