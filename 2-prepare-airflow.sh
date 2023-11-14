# will reset the database, DO NOT USE THIS IN PRODUCTION
airflow db reset && \

airflow db migrate && \

airflow users create \
    --username admin \
    --firstname Guilherme \
    --lastname Massoqueto \
    --role Admin \
    --email example@example.org \
    --password admin

airflow scheduler & # will run scheduler in the background

airflow webserver --port 8000 --debug
