<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="Lighting/main.xsl"/>
    <xsl:import href="CameraPhoto/main.xsl"/>
    <xsl:output method="xml" indent="yes"/>
    
    
    <!--
         run main.xsl of selected univers.
         
    -->
    
    <xsl:template name="product_univers_gateway">
        <xsl:param name="univers" select="'univers'"/>
        
        <xsl:choose>
            <xsl:when test="./*[name()=$univers] = 'Lighting' ">
                <xsl:call-template name="Lightin_ProductType_Gateway"/>
            </xsl:when>
            
            
            <xsl:when test="./*[name()=$univers] = 'CameraPhoto' ">
                <xsl:call-template name="CameraPhoto_ProductType_Gateway"/>
            </xsl:when>
            
            
            
            
        </xsl:choose>
        
    </xsl:template>
    
    
    
    
    
    
    
    
    
    
    
    
    
</xsl:stylesheet>