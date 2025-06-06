set -O errexit
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

pip install -r ./requirements.txt

python ./news_project/manage.py collectstatic --no-input
