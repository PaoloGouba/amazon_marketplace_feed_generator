<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="ProductType/FilmCamera.xsl"/>
    <xsl:output method="xml" indent="yes"/>
    
    
    
    <xsl:template name="CameraPhoto_ProductType_Gateway">
        <xsl:param name="case_xsl"/>
        <xsl:param name="cat_2" />
        <!-- Film Camera ProductType -->
        <xsl:variable name="Photo" select="'photo'"/>


        <xsl:comment>
            CameraPhoto_ProductType_Gateway
        </xsl:comment>
        <case><xsl:value-of select="$case_xsl"/></case>
        <foto><xsl:value-of select="$Photo"/></foto>
        
        <xsl:choose>
            <xsl:when test="$case_xsl = case_xsl">
                <xsl:comment>
                    ProductType_FilmCamera
                </xsl:comment>
                <xsl:call-template name="ProductType_FilmCamera"/>
            </xsl:when>
        </xsl:choose>

        
    </xsl:template>
    
    
    
</xsl:stylesheet>