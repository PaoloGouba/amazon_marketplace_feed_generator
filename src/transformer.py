"""

The transformer will run tranformation


"""

import xsl
import lxml.etree as t



class Transformer():
    def __init__(self):
        return
    
    def run_transformation(xml_input,xsl_input):
        
        xml_feed = open(xml_input, encoding="utf8")
        xsl_stylesheet = open(xsl_input)
        feed = t.parse(xml_feed)
        xslt = t.parse(xsl_stylesheet)

        try :
            transform = t.XSLT(xslt)
        except : Exception 
           
        final_xml = transform(feed)
        
        return final_xml

        