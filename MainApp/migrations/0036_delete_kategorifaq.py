# Generated by Django 3.1.6 on 2021-08-18 05:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('MainApp', '0035_remove_faq_judul'),
    ]

    operations = [
        migrations.DeleteModel(
            name='KategoriFAQ',
        ),
    ]