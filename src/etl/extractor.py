
import xsl
import lxml.etree as t



class Extractor():
    """

    Extractor : 

    Description :
    
        XML or CSV Data Extractor 

        - check and drop duplicated
        - if CSV, from CSV to XML

    """
    def __init__(self):
        return
    
    def extract_feed(xml_input):
        
        xml_feed = open(xml_input, encoding="utf8")
        feed = t.parse(xml_feed)
              
        return 
    
    def extract_data():
        return print('Extracting Data')
    
    
    def extract_xsl(xsl_input):
        
        xsl_stylesheet = open(xsl_input)
        xslt = t.parse(xsl_stylesheet)         
        
        return
    
    