<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:include href="../Univers/universes.xsl"/>
    <xsl:output method="xml" indent="yes"/>
    
    
    
    <!-- Product : ProductData -->
    <xsl:template name="ProductData_Template">
        
        <xsl:param name ="case_xsl"/>
        
        <ProductData>
            
            <xsl:choose>
                <xsl:when test="X">
                    
                </xsl:when>
            </xsl:choose>
            
        </ProductData>
        
        
    </xsl:template>
    
    
    
    
</xsl:stylesheet>