from django.db import models
from django.contrib.auth.models import AbstractUser
# from datetime import datetime
import datetime
from django.utils.crypto import get_random_string

class User(models.Model):
    nama = models.CharField(max_length=100)
    NIP = models.CharField(max_length=100)

    def __str__(self):
        return self.nama

class KategoriBerita(models.Model):
    kategori = models.CharField(max_length=400, null=False)

    def __str__(self):
        return self.kategori

class Berita(models.Model):
    judul = models.TextField()
    isi = models.TextField()
    tanggal_berita = models.DateTimeField(auto_now_add=True)
    Photo = models.ImageField(upload_to ='berita')
    created_by = models.ForeignKey(User,models.SET_NULL,blank=True,null=True,)
    dokumen = models.FileField(upload_to='berita')
    kategori_berita = models.ForeignKey(KategoriBerita,models.SET_NULL,blank=True,null=True,)

    def __str__(self):
        return self.judul

class Beranda(models.Model):
    judul_beranda = models.CharField(max_length=400, null=False)
    deskripsi = models.TextField()
    Photo_beranda = models.ImageField('photo beranda', upload_to ='beranda') 
    created_by = models.ForeignKey(User,models.SET_NULL,blank=True,null=True,)

    def __str__(self):
        return self.judul_beranda

class KategoriFAQ(models.Model):
    kategori_faq = models.CharField(max_length=400, null=False)
    
    def __str__(self):
        return self.kategori_faq

class jawabanFAQ(models.Model):
    judulFAQ = models.CharField(max_length=400, null=False)
    
    def __str__(self):
        return self.judulFAQ

class DetailFAQ(models.Model):
    pertanyaan = models.TextField()
    jawaban = models.ForeignKey(jawabanFAQ,models.SET_NULL,blank=True,null=True,)

    def __str__(self):
        return self.pertanyaan

class FAQ(models.Model):
    kategori_FAQ = models.ForeignKey(KategoriFAQ,models.SET_NULL,blank=True,null=True,)
    detail_FAQ = models.ForeignKey(DetailFAQ,models.SET_NULL,blank=True,null=True,)
    created_by = models.ForeignKey(User,models.SET_NULL,blank=True,null=True,)

    def __str__(self):
        return self.detail_FAQ.pertanyaan

class Kontak(models.Model):
    nama = models.CharField(max_length=400, null=False)
    alamat = models.CharField(max_length=400, null=False)
    email = models.EmailField( max_length=254)
    nohp = models.CharField(max_length=100, null=True)
    directlink = models.URLField(max_length = 400,default = "link")

class Kategori(models.Model):
    nama = models.CharField(max_length=400, null=False)

    def __str__(self):
            return self.nama

# class Galeri(models.Model):
#     keterangan = models.CharField('Judul',max_length=100, null=False)
#     Photo = models.ImageField('photo galeri', upload_to ='galeri') 
#     kategori_id = models.ForeignKey('Kategori', related_name='has_galeri', blank=True, null=True, on_delete=models.SET_NULL)
#     created_by = models.ForeignKey(User,models.SET_NULL,blank=True,null=True,)

class Subkelompok(models.Model):
    nm_subkelompok = models.TextField()
    
    def __str__(self):
        return self.nm_subkelompok
        
class Kelompok(models.Model):
    nm_kelompok = models.TextField()
    subkelompok_id = models.ManyToManyField(Subkelompok)
    Photo = models.ImageField(upload_to ='kelompoksdm')

    def __str__(self):
        return self.nm_kelompok

class MisiBPOM(models.Model):
    misi = models.TextField()


    def __str__(self):
        return self.misi

class TugasBPOM(models.Model):
    tugas = models.TextField()


    def __str__(self):
        return self.tugas

class ProfilKaro(models.Model):
    nama = models.CharField(max_length=100)
    nip = models.CharField(max_length=100)
    jabatan = models.CharField(max_length=400)
    Photo = models.ImageField(upload_to ='profilkaro')
    deskripsi = models.TextField()


    def __str__(self):
        return self.nama

class Tentang(models.Model):
    kelompok_id = models.ManyToManyField(Kelompok)
    misipom = models.ManyToManyField(MisiBPOM)
    gb_strukturorganisasi = models.ImageField(upload_to='tentangkami')
    visipom = models.TextField()
    bpomis = models.TextField()
    nm_kelompok = models.TextField()
    tugaspom = models.ManyToManyField(TugasBPOM)
    profilkaro = models.ManyToManyField(ProfilKaro)

class Komentar(models.Model):
    nama = models.CharField(max_length=400, null=False)
    email = models.EmailField( max_length=254)
    komentar = models.TextField()
    tanggal_berita = models.DateTimeField(auto_now_add=True)


class SyaratPelayanan(models.Model):
    nm_syarat = models.TextField()

    def __str__(self):
        return self.nm_syarat
        
class DetailPelayanan(models.Model):
    syaratpelayanan_id = models.ManyToManyField(SyaratPelayanan)
    infografis = models.ImageField(upload_to ='pelayanan')
    dokumen = models.FileField(upload_to='pelayanan')
    link = models.TextField()
    
class Kategori_pel(models.Model):
    nm_kategori = models.CharField(max_length=200)
    ket_kategori = models.TextField()

    def __str__(self):
        return self.nm_kategori

class Pelayanan(models.Model):
    nm_pelayanan = models.TextField()
    detailpelayanan_id = models.ForeignKey(DetailPelayanan,models.SET_NULL,blank=True,null=True,)
    kategori_id = models.ForeignKey(Kategori_pel,models.SET_NULL, blank=True, null=True, related_name="has_kategori")

    def __str__(self):
        return self.nm_pelayanan

class JenisLaporan(models.Model):
    nm_laporan = models.CharField(max_length=100, null=False)

    def __str__(self):
        return self.nm_laporan

class Laporan(models.Model):
    jenislaporan_id =  models.ForeignKey(JenisLaporan,models.SET_NULL,blank=True,null=True,)
    tahun_laporan = models.CharField(max_length=100, null=False)
    dokumen = models.FileField(upload_to='laporan',blank=True)
    deskripsi = models.TextField( default="deskripsi laporan")

    def __str__(self):
        return self.jenislaporan_id.nm_laporan

class TautanAplikasi(models.Model):
    nm_aplikasi = models.CharField(max_length=100, null=False)
    photo = models.ImageField(upload_to ='TautanAplikasi')
    desk = models.TextField( default="deskripsi aplikasi")
    directlink = models.URLField(max_length = 200,default = "link")

    def __str__(self):
        return self.nm_aplikasi


