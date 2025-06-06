set -O errexit
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

pip install -r ./requirements.txt
cd ./news_project/

python ./manage.py collectstatic --no-input
