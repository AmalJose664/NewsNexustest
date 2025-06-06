set -O errexit
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

pip install -r ./requirements.txt
source venv/bin/activate
python ./news_project/manage.py makemigrations
python ./news_project/manage.py migrate

python ./news_project/manage.py collectstatic --no-input

echo "Finished commands....................."



