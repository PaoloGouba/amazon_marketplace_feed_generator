<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="Lighting/main.xsl"/>
    <xsl:import href="CameraPhoto/main.xsl"/>
    <xsl:output method="xml" indent="yes"/>
    
    <!--
        Template : product_univers_gateway

        Description : This template will take amazon univers as input and select 
        which univers template run depending on UNIVERS parameter setted in channel by default.

        
        How manage new universes : 

        1. Create a folder named with univers name, into this folder 
        create a main.xsl file and import it in this module


        2. Go into your new univers folder, then into main.xsl and create a template 
        which allow you to chose product type based on old universes. You can find 
        a documentation about it here : http://....


        3. Insert in 'product_univers_gateway' a new condition to manage newrly created template 

        NB: add an hidden field named 'UNIVERS' in the new channel you recently add. Insert the 
        name of the univers as a default value.
    -->
    
    <xsl:template name="product_univers_gateway">
        <xsl:param name="univers" select="'univers'"/>
        
        <xsl:choose>

            <xsl:when test="./*[name()=$univers] = 'Lighting' ">
                <xsl:call-template name="Lightin_ProductType_Gateway">
                    <xsl:with-param name="case_xsl" select="'case_xsl'"/>
                    <xsl:with-param name="cat_2" as="" select="'cat_2'"/>
                </xsl:call-template>
            </xsl:when>
            
            <xsl:when test="./*[name()=$univers] = 'CameraPhoto' ">
                <xsl:call-template name="CameraPhoto_ProductType_Gateway">
                    <xsl:with-param name="case_xsl" select="'case_xsl'"/>
                    <xsl:with-param name="cat_2" as="" select="'cat_2'"/>
                </xsl:call-template>
            </xsl:when>
            
            
        </xsl:choose>
        
    </xsl:template>
    
    
    
    
    
    
    
    
    
    
    
    
    
</xsl:stylesheet>