
# from django.urls import path
from django.contrib import admin
from django.urls import path, include

# from .views import index
from MainApp import views

urlpatterns = [
    path('', views.index,name='beranda'),
    path('berita/', views.BlogView, name='berita'),
    path('<int:pk>/detail_berita/', views.berita,name='detail_berita'),
    # path('statistik/', views.generate, name='statistik'),
    path('pelayanan/', views.pelayanan, name='pelayanan'),
    path('faq/', views.faq, name='faq'),
    path('tentangkami/', views.tentangkami, name='tentangkami'),
    path('laporankinerja/', views.LaporanKinerja, name='laporankinerja'),
    path('laporantahunan/', views.LaporanTahunan, name='laporantahunan'),
    path('visimisibpom/', views.visimisibpom, name='visimisibpom'),
    path('tambah_komentar/', views.TambahKomentar.as_view(),name='tambah_komentar'),
]