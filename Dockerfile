# Utiliser l'image officielle Python 3.8 comme image parent
 FROM python:3.8-slim-buster

# Définir le répertoire de travail à /app
WORKDIR /app

# Copier le fichier requirements.txt dans le conteneur au répertoire /app
COPY requirements.txt /app

# Installer les dépendances nécessaires spécifiées dans requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copier le contenu de l'application Flask dans le conteneur au répertoire /app
COPY . /app

# Exposer le port 31201 sur le conteneur
EXPOSE 5000

# Définir la commande par défaut à exécuter lors du démarrage du conteneur
CMD ["python", "app.py"]

