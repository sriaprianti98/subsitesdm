import unicodedata

from django import forms
from django.contrib.auth import password_validation
from django.contrib.auth.forms import ReadOnlyPasswordHashField
from .models import *


class PengajuanFAQ(forms.ModelForm):
    
    class Meta:
        model = FAQ
        fields = "__all__"
    def __init__(self, *args, **kwargs):
        super(PengajuanFAQ, self).__init__(*args, **kwargs)

        self.fields['nama'].widget.attrs['class'] = 'form-control'
        self.fields['email'].widget.attrs['class'] = 'form-control'
        self.fields['subjek'].widget.attrs['class'] = 'form-control'
        self.fields['pesan'].widget.attrs['class'] = 'form-control'
    

class TambahKomentarForm(forms.ModelForm):
    class Meta:
        model = Kategori
        fields = "__all__"
       
    def __init__(self, *args, **kwargs):
        super(TambahKategoriForm, self).__init__(*args, **kwargs)

        self.fields['nama'].widget.attrs['class'] = 'form-control'
        self.fields['email'].widget.attrs['class'] = 'form-control'
        self.fields['komentar'].widget.attrs['class'] = 'form-control'