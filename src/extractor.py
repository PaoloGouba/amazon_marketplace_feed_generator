"""

Allowed formats : XML,CSV

Functionalities 
- store data in memory
- check and drop duplicated
- from CSV to XML
- 

"""
import xsl
import lxml.etree as t



class Extractor():
    def __init__(self):
        return
    
    def extract_feed(xml_input):
        
        xml_feed = open(xml_input, encoding="utf8")
        feed = t.parse(xml_feed)
              
        return 
    
    
    def extract_xsl(xsl_input):
        
        xsl_stylesheet = open(xsl_input)
        xslt = t.parse(xsl_stylesheet)         
        
        return
    
    