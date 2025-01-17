FROM quay.io/keycloak/keycloak:26.0.6

# Variables d'environnement
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Copier le fichier realm.json dans le répertoire d'importation
COPY realm.json /opt/keycloak/data/import/

# Commande de démarrage Keycloak avec importation de realm
ENTRYPOINT ["kc.sh", "start-dev", "--import-realm"]
