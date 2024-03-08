# Guide d'utilisation de Flask Pandas Dataframe

Ce guide vous aidera à mettre en place et à exécuter une application Flask utilisant Pandas pour gérer des données.

## Étapes

### 1. Créer un environnement virtuel

```bash
# Unix/Mac
virtualenv env
source env/bin/activate

# Windows
# virtualenv env
# .\env\Scripts\activate
```

### 2. Installer les dépendances

```bash
pip3 install -r requirements.txt
```

### 3. Créer la base de données

```bash
flask shell

from app import db
db.create_all()
quit()
```

### 4. Charger les données dans la base de données

```bash
flask load-data titanic-min.csv
```

### 5. Définir la variable d'environnement FLASK_APP

```bash
# Unix/Mac
export FLASK_APP=run.py

# Windows
# set FLASK_APP=run.py

# Powershell
# $env:FLASK_APP = ".\run.py"
```

### 6. Démarrer le serveur Flask

```bash
flask run
```

## Accès à l'application

Une fois le serveur Flask démarré, accédez à l'application via votre navigateur Web à l'adresse [http://127.0.0.1:5000/](http://127.0.0.1:5000/).
