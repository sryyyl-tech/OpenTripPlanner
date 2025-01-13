FROM opentripplanner/opentripplanner:latest
COPY data /var/otp/data

RUN curl -L -o /var/otp/data/de_lijn-gtfs.zip "https://gtfs.irail.be/de-lijn/de_lijn-gtfs.zip"

CMD ["--build", "--serve"]
