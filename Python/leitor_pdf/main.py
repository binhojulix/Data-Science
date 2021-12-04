# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.
import PyPDF2
import re

def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press Ctrl+F8 to toggle the breakpoint.


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    path = 'C:/Users/binho/OneDrive/Apostilas/Apostilas/Data Science/'
    file = 'MySQL Comece com o principal banco de dados open source do mercado.pdf'
    full_path = path + file
    print(full_path)
    pdf_file = open(full_path, 'rb')
    read_pdf = PyPDF2.PdfFileReader(pdf_file)

    number_of_pages = read_pdf.getNumPages()
    print('number of pages: {}'.format(number_of_pages))
    # lê a primeira página completa
    page = read_pdf.getPage(0)



    for i in range(0, number_of_pages):
        PageObj = read_pdf.getPage(i)
        print("this is page " + str(i))
        Text = PageObj.extractText()
        ResSearch = re.search("Sumário", Text)
        print(ResSearch)


