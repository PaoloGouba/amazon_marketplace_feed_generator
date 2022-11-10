<?xml version="1.0" encoding="utf-8"?>

<!-- 
     
    Univers Ligthing : https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_1_9/Lighting.xsd
     
    Product Type Gateway : 
    This template is used to decide the product type, and so the list of attributes available of the product.

     
-->

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="ProductType/Candle.xsl"/>
    <xsl:output method="xml" indent="yes"/>
    
    
    
    <xsl:template name="Lightin_ProductType_Gateway">
        <xsl:param name="case_xsl" />
        <xsl:param name="cat_2" />

        <xsl:choose>

            <xsl:when test="./*[name()= $case_xsl] = 'lumiere' and ./*[name()= $cat_2] = 'Ampoules' "> <!-- here we can create an array of all categories linked to this product type -->
                <xsl:call-template name="ProductType_Candle"/>
            </xsl:when>
            
        </xsl:choose>
        
    </xsl:template>
    
    
    
</xsl:stylesheet>