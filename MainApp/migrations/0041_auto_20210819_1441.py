# Generated by Django 3.1.6 on 2021-08-19 07:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('MainApp', '0040_detailpelayanan_kelompoksdm_pelayanan'),
    ]

    operations = [
        migrations.CreateModel(
            name='SyaratPelayanan',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nm_syarat', models.CharField(max_length=100)),
            ],
        ),
        migrations.RemoveField(
            model_name='detailpelayanan',
            name='syarat_pelayanan',
        ),
        migrations.AddField(
            model_name='detailpelayanan',
            name='syaratpelayanan_id',
            field=models.ManyToManyField(to='MainApp.SyaratPelayanan'),
        ),
    ]