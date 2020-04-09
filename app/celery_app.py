from celery import Celery

app = Celery('app', include=['tasks'])
app.config_from_object('celeryconfig')

# Optional configuration, see the application user guide.
app.conf.update(
    result_expires=3600,
    task_routes = {
        'tasks.add': {'queue': 'hipri'},
        'tasks.mul': {'queue': 'lopri'},
    },
)

if __name__ == '__main__':
    app.start()