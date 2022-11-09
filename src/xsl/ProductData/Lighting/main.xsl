<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="ProductType/Candle.xsl"/>
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="array" as="element()*">
        <Item>lumiere</Item>
        <Item>exemple_case_xsl_2</Item>
        <Item>C</Item>
    </xsl:variable>
    
    
    
    <!-- product_type_selector -->
    <xsl:template match="/product">
        
        <xsl:if test="case_xsl = 'lumiere'">
        <xsl:call-template name="candle_product_type_fields">
            
        </xsl:call-template>
            
        </xsl:if>
        
    </xsl:template>
    
    
    
    
    
    
    
    
    
    
    
    
    
</xsl:stylesheet>