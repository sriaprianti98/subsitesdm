jenis_laporan(request)
from .models import *

def jenis_laporan(request):
    jns_laporan = JenisLaporan.objects.all()
    return {
        'jns_laporan':jns_laporan
    }