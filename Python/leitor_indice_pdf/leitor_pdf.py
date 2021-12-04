import PyPDF2
import re

diretorio = 'C:/Users/binho/OneDrive/Apostilas/Apostilas/Data Science/'

pdf_file = open(diretorio + 'Armazenando dados com Redis - Casa do Codigo.pdf', 'rb')

read_pdf = PyPDF2.PdfFileReader(pdf_file)