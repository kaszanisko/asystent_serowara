# To jest plik konfiguracyjny dla Gitpoda

# Określamy, jakiego gotowego "obrazu" z narzędziami chcemy użyć.
# Ten obraz ma już w sobie zainstalowanego Fluttera i narzędzia Androida.
image:
  file: .gitpod.Dockerfile

# Definiujemy zadania, które mają się wykonać automatycznie po uruchomieniu środowiska.
tasks:
  - name: Flutter Setup # Nazwa naszego zadania
    # Komendy do wykonania przy pierwszym starcie
    init: |
      flutter doctor
      flutter pub get
    # Komenda do wykonania przy każdym starcie
    command: |
      echo "Środowisko Flutter gotowe!"
      echo "Wpisz 'flutter run' aby uruchomić aplikację."

# Określamy, które porty mają być publicznie dostępne (potrzebne do podglądu aplikacji).
ports:
  - port: 6080
    onOpen: open-preview
