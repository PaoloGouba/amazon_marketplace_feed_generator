import lxml.etree as ET
xml_filename = input('XML : ')
xsl_filename = input('XSL : ')
dom = ET.parse(xml_filename)
xslt = ET.parse(xsl_filename)
transform = ET.XSLT(xslt)
newdom = transform(dom)

print(ET.tostring(newdom, pretty_print=True))

print(newdom)

result = str(newdom)

with open('result.xml','w',encoding='utf-8') as f :
    f.write(result)