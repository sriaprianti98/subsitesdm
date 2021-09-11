from django.shortcuts import render
from django.http import HttpResponse, response, JsonResponse
from MainApp.models import *
from MainApp.forms import *
from django.urls import reverse, reverse_lazy, resolve
from django.views.generic import ListView, CreateView, View, DetailView
import uuid
import mimetypes
from django.db.models import Q 
from django.core.paginator import Paginator
from django.template.loader import get_template, render_to_string
# Create your views here.

def index(request):
    berandas = Beranda.objects.all()[0:5]
    beritas = Berita.objects.all()[0:4]
    kontaks = Kontak.objects.all()[0:1]
    kategoris = Kategori.objects.all()
    tentangs = Tentang.objects.all()
    tautans = TautanAplikasi.objects.all()[0:4]
    konteks = {'berandas':berandas,'beritas':beritas,'kontaks':kontaks,'kategoris':kategoris,'tentangs':tentangs,'tautans':tautans}
    return render(request,'beranda.html',konteks)

    def form_valid(self, form):
        return super().form_valid(form)

def DetailBerita(request, pk):
    beritass = Berita.objects.all()[0:4]
    komentars = Komentar.objects.all()[0:5]
    idnya = pk
    beritas = Berita.objects.get(pk=idnya)
    konteks = {'beritas':beritas,'beritass':beritass,'komentars':komentars,}
    return render(request,'detail_berita.html',konteks)

def ViewBerita(request):
    kat = 1
    
    beritas=Berita.objects.all().order_by("-tanggal_berita")
    if 'kat' in request.GET:
        kat = request.GET['kat']
        beritas=Berita.objects.filter(kategori_berita=kat).order_by("-tanggal_berita")
    kat_list = KategoriBerita.objects.all()
    if 'q' in request.GET:
        q=request.GET['q']
        beritas=Berita.objects.filter(Q(judul__icontains=q)|Q(isi__icontains=q))
    paginator=Paginator(beritas,3)
    # page_number=request.GET.get('page')
    # beritas=paginator.get_page(page_number)
    try:
        page = int(request.GET.get('page', '1'))
    except:
        page = 1

    try:
        blogs = paginator.page(page)
    except(EmptyPage, InvalidPage):
        blogs = paginator.page(1)
    index = paginator.page_range.index(blogs.number)
    max_index = len(paginator.page_range)
    start_index = index - 3 if index >= 3 else 0
    end_index = index + 3 if index <= max_index - 3 else max_index
    page_range = paginator.page_range[start_index:end_index]
    return render(request,'berita.html', {'beritas': blogs,'page_range':page_range,'kat_list':kat_list})

def visimisibpom(request):
    tentangs = Tentang.objects.all()
    konteks = {'tentangs':tentangs}
    return render(request,'visimisipom.html',konteks)

def pelayanan(request):
    kelompoks = Kelompok.objects.all()
    kat = 1
    if 'kat' in request.GET:
        kat = request.GET['kat']
    pelayanans = Pelayanan.objects.filter(kategori_id=kat)
    tautans = TautanAplikasi.objects.all()[0:4]

    kategori_pel = Kategori_pel.objects.all()
    detaipelayanans = DetailPelayanan.objects.all()
    konteks = {'kelompoks':kelompoks,'pelayanans':pelayanans,'detaipelayanans':detaipelayanans, 'kat':kategori_pel,'tautans':tautans}
    return render(request,'pelayanan.html',konteks)

def faq(request):
    katFAQ = 1
    if 'katFAQ' in request.GET:
        katFAQ = request.GET['katFAQ']
    if request.POST:
        keyword=request.POST['keyword']
        faqs = FAQ.objects.filter(Q(detail_FAQ__pertanyaan__icontains=keyword)|Q(detail_FAQ__jawaban__judulFAQ__icontains=keyword)|Q(kategori_FAQ__kategori_faq__icontains=keyword))
        if keyword is "":
            # print("masuk sini")
            faqs = FAQ.objects.filter(kategori_FAQ=katFAQ)
        html = render_to_string('particial/faq-list-search.html', {'faqs':faqs})
        data = {"result":True,"value":html}
        return JsonResponse(data)
    faqs = FAQ.objects.filter(kategori_FAQ=katFAQ)
    kontaks = Kontak.objects.all()[0:1]

    kat_FAQ = KategoriFAQ.objects.all()
    konteks = {'faqs':faqs,'katFAQ':kat_FAQ,'kontaks':kontaks}
    return render(request,'faq.html',konteks)

def tentangkami(request):
    kelompoks = Kelompok.objects.all()
    kel = 1
    if 'kel' in request.GET:
        kel = request.GET['kel']
    tentangs = Tentang.objects.filter(kelompok_id=kel)
    konteks = {'tentangs':tentangs,'kelompoks':kelompoks}
    return render(request,'tentangkami.html',konteks)

def ViewProfilKaro(request):
    profilkaros = ProfilKaro.objects.all()
    konteks = {'profilkaros':profilkaros}
    return render(request,'profilkaro.html',konteks)

def laporan(request, jns):
    laporans = Laporan.objects.filter(jenislaporan_id = jns)
    konteks = {'laporans':laporans}
    return render(request,'laporan.html',konteks)

# def LaporanTahunan(request):
#     laporans = Laporan.objects.all()
#     konteks = {'laporans':laporans}
#     return render(request,'LaporanTahunan.html',konteks)

# def LaporanKinerja(request):
#     laporans = Laporan.objects.all()
#     konteks = {'laporans':laporans}
#     return render(request,'LaporanKinerja.html',konteks)

# class TambahKomentar(CreateView):
#     model = Komentar
#     form_class = TambahKomentarForm
#     template_name = 'detail_berita.html'
#     success_url = reverse_lazy('detail_berita')
    
#     def form_valid(self, form):
#         return super().form_valid(form)

