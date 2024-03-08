# Utiliser l'image Python 3.9 avec une version légère (slim)
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code source de l'application dans le conteneur
COPY . .

# Exposer le port sur lequel l'application Flask écoute
EXPOSE 80

# Commande pour lancer l'application Flask
CMD ["python", "app.py"]
