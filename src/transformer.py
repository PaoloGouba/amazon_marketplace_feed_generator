"""

The transformer will run tranformation


"""

import lxml.etree as t



class Transformer():
    def __init__(self):
        return
    
    def run_transformation(xml_input,xsl_input):
        
        xml_feed = open(str(xml_input), encoding="utf8")
        print(xml_feed)
        xsl_stylesheet = open(str(xsl_input))
        print(xsl_input)
        feed = t.parse(xml_feed)
        xslt = t.parse(xsl_stylesheet)
        transform = ''

        try :
            transform = t.XSLT(xslt)
            print(transform)
        except : Exception 
           
        final_xml = transform(feed)
        
        return final_xml

        
        
amazon_transformer = Transformer 

export = r'C:\Users\PaoloGouba\OneDrive - BeezUP\Documents\software_development\amazon_marketplace_feed_generator\src\export.xml'
xslt = r'C:\Users\PaoloGouba\OneDrive - BeezUP\Documents\software_development\amazon_marketplace_feed_generator\src\xsl\main.xsl'
export.replace('\\','')
amazon_transformer.run_transformation(export,xslt)      