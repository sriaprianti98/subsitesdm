# Generated by Django 3.1.6 on 2021-08-18 05:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('MainApp', '0036_delete_kategorifaq'),
    ]

    operations = [
        migrations.CreateModel(
            name='KategoriFAQ',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('judulFAQ', models.CharField(max_length=100)),
            ],
        ),
    ]