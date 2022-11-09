<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="ProductType/FilmCamera.xsl"/>
    <xsl:output method="xml" indent="yes"/>
    
    
    
    <xsl:template name="Lightin_ProductType_Gateway">
        <xsl:param name="case_xsl" />
        <xsl:choose>
            <xsl:when test="./*[name()= $case_xsl] = 'lumiere'"> <!-- here we can create an array of all categories linked to this product type -->
                <xsl:call-template name="ProductType_Candle"/>
            </xsl:when>
        </xsl:choose>
        
    </xsl:template>
    
    
    
</xsl:stylesheet>