# Generated by Django 3.2.6 on 2021-08-26 06:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='DetailPelayanan',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('infografis', models.ImageField(upload_to='pelayanan')),
                ('dokumen', models.FileField(upload_to='pelayanan')),
                ('link', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Kategori',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nama', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Kategori_pel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nm_kategori', models.CharField(max_length=200)),
                ('ket_kategori', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='KategoriFAQ',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('judulFAQ', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='KelompokSDM',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nm_kelompok', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Komentar',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nama', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254)),
                ('komentar', models.TextField()),
                ('tanggal_berita', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Kontak',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nama', models.CharField(max_length=100)),
                ('alamat', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254)),
                ('nohp', models.CharField(max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Subkelompok',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nm_subkelompok', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='SyaratPelayanan',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nm_syarat', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nama', models.CharField(max_length=100)),
                ('NIP', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='TentangKami',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nm_kelompok', models.CharField(max_length=100)),
                ('subkelompok1', models.CharField(max_length=100, null=True)),
                ('subkelompok2', models.CharField(max_length=100, null=True)),
                ('subkelompok3', models.CharField(max_length=100, null=True)),
                ('Photo', models.ImageField(upload_to='tentangkami')),
                ('kelompok_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='MainApp.kelompoksdm')),
            ],
        ),
        migrations.CreateModel(
            name='Pelayanan',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nm_pelayanan', models.CharField(max_length=100)),
                ('detailpelayanan_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='MainApp.detailpelayanan')),
                ('kategori_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='has_kategori', to='MainApp.kategori_pel')),
                ('kelompok_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='MainApp.kelompoksdm')),
            ],
        ),
        migrations.CreateModel(
            name='Galeri',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('keterangan', models.CharField(max_length=100, verbose_name='Judul')),
                ('Photo', models.ImageField(upload_to='galeri', verbose_name='photo galeri')),
                ('created_by', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='MainApp.user')),
                ('kategori_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='has_galeri', to='MainApp.kategori')),
            ],
        ),
        migrations.CreateModel(
            name='FAQ',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pertanyaan', models.CharField(max_length=100)),
                ('jawaban', models.CharField(max_length=500)),
                ('created_by', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='MainApp.user')),
                ('judul', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='MainApp.kategorifaq')),
            ],
        ),
        migrations.AddField(
            model_name='detailpelayanan',
            name='syaratpelayanan_id',
            field=models.ManyToManyField(to='MainApp.SyaratPelayanan'),
        ),
        migrations.CreateModel(
            name='Berita',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('judul', models.CharField(max_length=100)),
                ('isi', models.TextField()),
                ('tanggal_berita', models.DateTimeField(auto_now_add=True)),
                ('Photo', models.ImageField(upload_to='berita')),
                ('created_by', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='MainApp.user')),
            ],
        ),
        migrations.CreateModel(
            name='Beranda',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('judul_beranda', models.CharField(max_length=100)),
                ('deskripsi', models.TextField()),
                ('Photo_beranda', models.ImageField(upload_to='beranda', verbose_name='photo beranda')),
                ('created_by', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='MainApp.user')),
            ],
        ),
    ]
