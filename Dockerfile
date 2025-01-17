FROM quay.io/keycloak/keycloak:26.0.6

# Définitions des variables d'environnement pour l'admin
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Copier le fichier realm dans le répertoire d'importation de Keycloak
COPY realm.json /opt/keycloak/data/import/

# Commande pour démarrer Keycloak en mode développement et importer le realm
ENTRYPOINT ["kc.sh", "start-dev", "--import-realm"]
