# Generated by Django 3.1.6 on 2021-03-15 06:34

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('MainApp', '0013_auto_20210310_1534'),
    ]

    operations = [
        migrations.AlterField(
            model_name='berita',
            name='id',
            field=models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False),
        ),
    ]