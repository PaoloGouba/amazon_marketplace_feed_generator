<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="ProductType/FilmCamera.xsl"/>
    <xsl:output method="xml" indent="yes"/>
    
    
    
    <xsl:template name="CameraPhoto_ProductType_Gateway">
        <xsl:param name="case_xsl"/>
        <xsl:param name="cat_2" />
        <xsl:comment>
            CameraPhoto_ProductType_Gateway
        </xsl:comment>
        <xsl:choose>
            <xsl:when test="./*[name()= $case_xsl] = 'photo'"> <!-- here we can create an array of all categories linked to this product type -->
                <xsl:comment>
                    RUN ProductType_FilmCamera
                </xsl:comment>
                <xsl:call-template name="ProductType_FilmCamera"/>
            </xsl:when>
        </xsl:choose>
        
    </xsl:template>
    
    
    
</xsl:stylesheet>