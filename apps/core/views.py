from django.shortcuts import render
from django.http import JsonResponse
from .utils import scanTexto_func

def extract_text_from_image(request):
    if request.method == 'POST':
        image_path = request.FILES['image'].temporary_file_path()
        extracted_text = scanTexto_func(image_path)
        return JsonResponse({'extracted_text': extracted_text})


# Create your views here.
