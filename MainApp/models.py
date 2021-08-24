from django.db import models
from django.contrib.auth.models import AbstractUser
import uuid
# from datetime import datetime
import datetime
from django.utils.crypto import get_random_string

class User(models.Model):
    nama = models.CharField(max_length=100)
    NIP = models.CharField(max_length=100)

class Berita(models.Model):
    judul = models.CharField(max_length=100, null=False)
    isi = models.TextField()
    tanggal_berita = models.DateTimeField(auto_now_add=True)
    Photo = models.ImageField(upload_to ='berita')
    created_by = models.ForeignKey(User,models.SET_NULL,blank=True,null=True,)

    def __str__(self):
        return self.judul

class Beranda(models.Model):
    judul_beranda = models.CharField(max_length=100, null=False)
    deskripsi = models.TextField()
    Photo_beranda = models.ImageField('photo beranda', upload_to ='beranda') 
    created_by = models.ForeignKey(User,models.SET_NULL,blank=True,null=True,)

    def __str__(self):
        return self.judul_beranda

class KategoriFAQ(models.Model):
    judulFAQ = models.CharField(max_length=100, null=False)

class FAQ(models.Model):
    judul = models.ForeignKey(KategoriFAQ,models.SET_NULL,blank=True,null=True,)
    pertanyaan = models.CharField(max_length=100, null=False)
    jawaban = models.CharField( max_length=500)
    created_by = models.ForeignKey(User,models.SET_NULL,blank=True,null=True,)
    
class Kontak(models.Model):
    nama = models.CharField(max_length=100, null=False)
    alamat = models.CharField(max_length=100, null=False)
    email = models.EmailField( max_length=254)
    nohp = models.CharField(max_length=100, null=True)

class Kategori(models.Model):
    nama = models.CharField(max_length=100, null=False)

class Galeri(models.Model):
    keterangan = models.CharField('Judul',max_length=100, null=False)
    Photo = models.ImageField('photo galeri', upload_to ='galeri') 
    kategori_id = models.ForeignKey('Kategori', related_name='has_galeri', blank=True, null=True, on_delete=models.SET_NULL)
    created_by = models.ForeignKey(User,models.SET_NULL,blank=True,null=True,)

class Subkelompok(models.Model):
    nm_subkelompok = models.CharField(max_length=100, null=False)
    
class KelompokSDM(models.Model):
    nm_kelompok = models.CharField(max_length=100, null=False)

class TentangKami(models.Model):
    kelompok_id = models.ForeignKey(KelompokSDM,models.SET_NULL,blank=True,null=True,)
    nm_kelompok = models.CharField(max_length=100, null=False)
    subkelompok1 = models.CharField(max_length=100, null=True)
    subkelompok2 = models.CharField(max_length=100, null=True)
    subkelompok3 = models.CharField(max_length=100, null=True) 
    Photo = models.ImageField(upload_to ='tentangkami')

class Komentar(models.Model):
    nama = models.CharField(max_length=100, null=False)
    email = models.EmailField( max_length=254)
    komentar = models.TextField()
    tanggal_berita = models.DateTimeField(auto_now_add=True)

class Kategori_pel(models.Model):
    nm_kategori = models.CharField(max_length=200)
    ket_kategori = models.TextField()

    def __str__(self):
        return self.nm_kategori

class SyaratPelayanan(models.Model):
    nm_syarat = models.CharField(max_length=100, null=False)


    def __str__(self):
        return self.nm_syarat
        
class DetailPelayanan(models.Model):
    syaratpelayanan_id = models.ManyToManyField(SyaratPelayanan)
    infografis = models.ImageField(upload_to ='pelayanan')
    dokumen = models.FileField(upload_to='pelayanan')
    link = models.CharField(max_length=100)
    

class Pelayanan(models.Model):
    nm_pelayanan = models.CharField(max_length=100, null=False)
    kelompok_id = models.ForeignKey(KelompokSDM,models.SET_NULL,blank=True,null=True,)
    detailpelayanan_id = models.ForeignKey(DetailPelayanan,models.SET_NULL,blank=True,null=True,)
    kategori_id = models.ForeignKey(Kategori_pel,models.SET_NULL, blank=True, null=True, related_name="has_kategori")
