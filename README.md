# APACHE AIRFLOW 101

## Requirements
Python 3.11+
Pip (do NOT use Poetry or another dependecy manager, it must be pip)

## How to run the app

1. Certify that the variable $AIRFLOW_HOME is setted:
    ```
    echo $AIRFLOW_HOME
    ```

2. Create an python virtual enviroment:
    ```shell
    python -m venv .venv
    ```

3. Activate the virtual environment:
   ```shell
   source .venv/bin/activate
   ```

4. Set the execution priviledges and install the airflow dependencies from the [airflow.sh file](./airflow.sh)
    ```shell
    sudo chmod +x airflow.sh && ./1-set-dependencies.sh
    ```

5. Run the airflow:
    ```shell
    airflow standalone
    ```
    or
    ```shell
    sudo chmod +x 2-prepare-airflow.sh && ./2-prepare-airflow.sh
    ```

Ps: the scheduler will run in the backgroud, you must kill the process after finishing working

6. Access the ui on [localhost:8000](http://localhost:8000) (username and password are setted in 2-prepare-airflow.sh)