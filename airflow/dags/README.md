
### initialize the database tables
```shell
airflow db migrate
```

### print the list of active DAGs
```shell
airflow dags list
```

### prints the list of tasks in the "tutorial" DAG
```shell
airflow tasks list tutorial
```

### prints the hierarchy of tasks in the "tutorial" DAG
```shell
airflow tasks list tutorial --tree
```


### testing print_date
```shell
airflow tasks test tutorial print_date 2015-06-01
```

### testing sleep
```shell
airflow tasks test tutorial sleep 2015-06-01
```

### testing DAG
```shell
airflow dags test tutorial 2015-06-01
```

### start your backfill on a date range
```shell
airflow dags backfill tutorial \
    --start-date 2015-06-01 \
    --end-date 2015-06-07
```
