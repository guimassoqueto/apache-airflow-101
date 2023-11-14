# create a airflow folder if it does not exists
if [[ ! -d "airflow" ]]
then
    mkdir -p "airflow" || echo "$(date "+%Y-%m-%d %T") - Fail to create directoty $DIRECTORY"
fi


# set the airflow version
AIRFLOW_VERSION=2.7.3

# sset the python version, based on the current environment
PYTHON_VERSION=$(python --version | cut -d " " -f 2 | cut -d "." -f 1-2)

# set the pip dependencies, based on the previously defined variables
CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"

# install python dependencies
pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"
