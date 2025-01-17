FROM quay.io/keycloak/keycloak:26.0.6

# Activer le mode développement pour simplifier le démarrage
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Copier le realm exporté vers le dossier d'importation
COPY realm.json /opt/keycloak/data/import/realm.json

# Utiliser le mode de démarrage standard
ENTRYPOINT ["keycloak", "start-dev", "--import-realm"]
