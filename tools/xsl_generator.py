"""
XSL Generator : 

This script will generate XSL transformers in folder 'src\xsl\ProductData'

How to use it : 

- 

"""
from attr import fields
import json
import unidecode
import csv
import codecs
from tools import data_cleaner as d
from tools import helper as h
from tools import xsl_writer as x
import requests
import xml.etree.ElementTree as ET
from bs4 import BeautifulSoup
import fields




# CONST
AMAZON_XSL_HEADER = '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\n<xsl:param name=\"ExternalMerchantId\" select=\"\'ExternalMerchantId[Required]\'\"/>\n<xsl:output method=\"xml\" indent=\"yes\"/>\n<xsl:template match=\"/\">\n'
AMAZON_XSL_FOOTER = '</xsl:template>\n</xsl:stylesheet>'
AMAZON_ENDPOINT ='https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_1_9/'




"""

XslWriter : a set of functions to write XSL lines.

"""

class XslWriter():
    def __init__(self):
        return
    
    def write_amazon_header(file_path):
        try :
            with open(file_path,'a') as f :
                f.write(AMAZON_XSL_HEADER)
        except :
            return Exception
        
    def write_amazon_simple_attribute(field):
        
        
        
        pass
    
    def write_amazon_dimension_attribute():
        pass
    









"""

AmzXsdParser :

Extract and transform data from Amazon XSD to JSON

"""


class AmzXsdParser():
    def __init__(self):
        return
    
    def get_data(self,univers='CameraPhoto.xsd'):

        url = x.AMAZON_ENDPOINT + univers

        reponse = requests.get(url)
        if reponse.status_code == 200:
            parsed_page = BeautifulSoup(reponse.content, 'lxml')

        return parsed_page
    
    def get_product_types(self,xsd_data):

        product_types = []

        elements = xsd_data.find('xsd:element', {'name': 'CameraPhoto'}).find(
            'xsd:element', {'name': 'ProductType'}).find_all('xsd:element')

        for element in elements:
            try:
                product_types.append(element['ref'])
            except:
                product_types.append(element['name'])

        return product_types

    def get_product_types_fields(category_name):

        field_list = []
        
        get_data()
        
        xsd_data = self.get_data()
        
        elements = xsd_data.find('xsd:element', {'name':category_name})
        fields = elements.find_all('xsd:element')
        
        for field in fields :
            try :
                attribute = field['name']
                field_list.append(attribute)
            except : pass    
            
        return field_list

    def get_univers_fields():
        pass













    
    
    
    
    def get_category_name_list(self, xsd_data):

        category_name_list = []

        elements = xsd_data.find('xsd:element', {'name': 'CameraPhoto'}).find(
            'xsd:element', {'name': 'ProductType'}).find_all('xsd:element')

        for element in elements:
            try:
                category_name_list.append(element['ref'])
            except:
                category_name_list.append(element['name'])

        return category_name_list

    
    
    
    
    
    def get_field_name_list(self, category_name):

        field_list = []
        
        xsd_data = self.get_data()
        
        elements = xsd_data.find('xsd:element', {'name':category_name})
        fields = elements.find_all('xsd:element')
        
        for field in fields :
            try :
                attribute = field['name']
                field_list.append(attribute)
            except : pass    
            
        return field_list

    
    
    
    
    
    """
    write_product_type_info
    
    This function will write the XSLT lines 
    for product univers general attributes. 
    
        e.g. : in https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_1_9/CameraPhoto.xsd , 
        all childs elements which name is CameraPhoto.xsd except of the element 'ProductType'
    
    """

    def write_product_type_info(self):

        pass




