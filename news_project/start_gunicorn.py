import os
import sys
from gunicorn.app.wsgiapp import run

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'news_project.settings')

if __name__ == "__main__":
    sys.argv = [
        "gunicorn",
        "news_project.wsgi:application",
        "--bind", "0.0.0.0:8000",
        "--workers", "3"
    ]
    run()
