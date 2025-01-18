FROM opentripplanner/opentripplanner:latest

# Créer le répertoire attendu par OTP
RUN mkdir -p /var/opentripplanner

# Copier vos fichiers GTFS dans le répertoire attendu par OTP
COPY data /var/opentripplanner

# Télécharger les données GTFS de De Lijn dans le répertoire OTP
RUN curl -L -o /var/opentripplanner/de_lijn-gtfs.zip "https://gtfs.irail.be/de-lijn/de_lijn-gtfs.zip"

# Démarrer OTP avec les options
CMD ["--build", "--serve"]
