from django.shortcuts import render
from django.http import HttpResponse, response
from MainApp.models import *
from MainApp.forms import *
from django.urls import reverse, reverse_lazy, resolve
from django.views.generic import ListView, CreateView, View, DetailView
import uuid
import mimetypes
# Create your views here.

def index(request):
    berandas = Beranda.objects.all()[0:5]
    beritas = Berita.objects.all()[0:4]
    kontaks = Kontak.objects.all()[0:1]
    galeris = Galeri.objects.all()
    kategoris = Kategori.objects.all()
    tentangs = TentangKami.objects.all()
    model = FAQ
    form_class = PengajuanFAQ
    konteks = {'berandas':berandas,'beritas':beritas,'kontaks':kontaks,'galeris':galeris,'kategoris':kategoris,'tentangs':tentangs}
    return render(request,'beranda.html',konteks)

    def form_valid(self, form):
        return super().form_valid(form)

def berita(request, pk):
    beritass = Berita.objects.all()[0:4]
    komentars = Komentar.objects.all()[0:5]
    tentangs = TentangKami.objects.all()
    idnya = pk
    beritas = Berita.objects.get(pk=idnya)
    konteks = {'beritas':beritas,'beritass':beritass,'komentars':komentars,'tentangs':tentangs,}
    return render(request,'detail_berita.html',konteks)

def BlogView(request):
    beritas = Berita.objects.all()
    konteks = {'beritas':beritas}
    return render(request,'berita.html',konteks)

def visimisibpom(request):
    return render(request,'visimisipom.html')

def pelayanan(request):
    kelompoks = KelompokSDM.objects.all()
    kat = 1
    if 'kat' in request.GET:
        kat = request.GET['kat']
    pelayanans = Pelayanan.objects.filter(kategori_id=kat)

    kategori_pel = Kategori_pel.objects.all()
    detaipelayanans = DetailPelayanan.objects.all()
    konteks = {'kelompoks':kelompoks,'pelayanans':pelayanans,'detaipelayanans':detaipelayanans, 'kat':kategori_pel}
    return render(request,'pelayanan.html',konteks)

def faq(request):
    faqs = FAQ.objects.all()
    konteks = {'faqs':faqs}
    return render(request,'faq.html',konteks)

def tentangkami(request):
    tentangs = TentangKami.objects.all()
    konteks = {'tentangs':tentangs}
    return render(request,'tentangkami.html',konteks)

def LaporanTahunan(request):
    return render(request,'LaporanTahunan.html')

def LaporanKinerja(request):
    return render(request,'LaporanKinerja.html')

class TambahKomentar(CreateView):
    model = Komentar
    form_class = TambahKomentarForm
    template_name = 'detail_berita.html'
    success_url = reverse_lazy('detail_berita')
    
    def form_valid(self, form):
        return super().form_valid(form)

