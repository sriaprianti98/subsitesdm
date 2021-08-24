# Generated by Django 3.1.6 on 2021-03-09 12:34

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('MainApp', '0009_kontak'),
    ]

    operations = [
        migrations.CreateModel(
            name='Kategori',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nama', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Galeri',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('keterangan', models.CharField(max_length=100, verbose_name='Judul')),
                ('Photo', models.ImageField(upload_to='beranda', verbose_name='photo galeri')),
                ('kategori_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='has_galeri', to='MainApp.kategori')),
            ],
        ),
    ]
