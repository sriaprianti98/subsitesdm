# Generated by Django 3.1.6 on 2021-09-08 15:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('MainApp', '0003_auto_20210908_2148'),
    ]

    operations = [
        migrations.CreateModel(
            name='TautanAplikasi',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nm_aplikasi', models.CharField(max_length=100)),
                ('photo', models.ImageField(upload_to='TautanAplikasi')),
                ('desk', models.TextField(default='deskripsi aplikasi')),
            ],
        ),
    ]