FROM opentripplanner/opentripplanner:latest

# Créez le répertoire data s'il n'existe pas déjà
RUN mkdir -p /var/otp/data

# Copiez vos fichiers GTFS dans le répertoire approprié
COPY data /var/otp/data

# Téléchargez le fichier GTFS de De Lijn si ce n'est pas déjà fait
RUN curl -L -o /var/otp/data/de_lijn-gtfs.zip "https://gtfs.irail.be/de-lijn/de_lijn-gtfs.zip"

# Commande pour démarrer OTP
CMD ["--build", "--serve"]
