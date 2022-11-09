<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="Lighting/main.xsl"/>
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="ExternalMerchantId" select="'ExternalMerchantId[Required]'"/>
    
    
    
    <!-- Header -->
    <xsl:template name="Header">
        <Header>
            <DocumentVersion>1.01</DocumentVersion>
            <MerchantIdentifier>
                <xsl:value-of select="$ExternalMerchantId"/>
            </MerchantIdentifier>
        </Header>
        <MessageType>Product</MessageType>
    </xsl:template>
    

    

    
    
    
    
    
    
    
    
    
</xsl:stylesheet>