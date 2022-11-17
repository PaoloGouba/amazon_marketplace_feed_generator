import lxml.etree as ET
from  saxonpy  import PySaxonProcessor

xml_filename = input('XML : ')
xsl_filename = input('XSL : ')
dom = ET.parse(xml_filename)
xslt = ET.parse(xsl_filename)


dom = ET.parse(xml_filename)
xslt = ET.parse(xsl_filename)
transform = ET.XSLT(xslt)
newdom = transform(dom)

#print(ET.tostring(newdom, pretty_print=True))

#print(newdom)
print('Transformation OK !')

result = str(newdom)


# SAXON XSLT TRANSFORMER
"""with PySaxonProcessor(license=False) as  proc:
	xsltproc = proc.new_xslt_processor()

	document = proc.parse_xml(xml_text=str(dom))
    
	xsltproc.set_source(xdm_node=document)

	xsltproc.compile_stylesheet(stylesheet_text=xslt)

	output2 = xsltproc.transform_to_string()
	print(output2)"""



with open('result.xml','w',encoding='utf-8') as f :
    f.write(str(result))
    
    
print('Result is available !')    