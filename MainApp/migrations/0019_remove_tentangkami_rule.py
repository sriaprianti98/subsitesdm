# Generated by Django 3.1.6 on 2021-03-17 08:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('MainApp', '0018_tentangkami_rule'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='tentangkami',
            name='rule',
        ),
    ]