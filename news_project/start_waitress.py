import os
from waitress import serve

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'news_project.settings')

from news_project.wsgi import application

if __name__ == "__main__":
    print("Staring........")
    serve(application, host="0.0.0.0", port=8000)
