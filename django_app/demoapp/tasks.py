from celery import shared_task

from demoapp.models import Widget


@shared_task
def count_widgets():
    return Widget.objects.count()