<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="ProductData.xsl"/>
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
    
    
    <!-- Message info -->
    <xsl:template name="Message_Info">
        <MessageID><xsl:number value="position()" format="1" /></MessageID>
        <xsl:choose>
            <xsl:when test="Delete_product = 'True'">
                <OperationType>Delete</OperationType> 
            </xsl:when>
            <xsl:when test="Partial_update = 'True'">
                <OperationType>PartialUpdate</OperationType> 
            </xsl:when>
            <xsl:otherwise>
                <OperationType>Update</OperationType> 
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    
    <!-- Product : Identification -->
    <xsl:template name="Identification">
        
    </xsl:template>
    
    <!-- Product : DescriptionData -->
    <xsl:template name="DescriptionData">
        
    </xsl:template>
    
    <!-- Product : ProductData -->
    <xsl:template name="ProductData">

        <xsl:call-template name="ProductData_Template">
        <xsl:with-param name="case_xsl" select="case_xsl"/>
            
        </xsl:call-template>
        
    </xsl:template>
    
    
    
    <!-- Product : ProductData_Fields -->
    <xsl:template name="ProductData_Fields">
        
    </xsl:template>
    
    

    <xsl:template name="simple_field">
        <xsl:param name ="input_node_name"/>
        <xsl:param name ="output_node_name"/>
        <xsl:if test="(string-length(./*[name() = $input_node_name]) &gt; 0)">
            <xsl:element name="{$output_node_name}">
                <xsl:value-of select="./*[name() = $input_node_name]"/>
            </xsl:element>
        </xsl:if>
    </xsl:template>	
    
    
    
    
    <xsl:template name="price_model">
        <xsl:param name ="price"/>
        <xsl:param name ="discount_price"/>
        <xsl:param name ="discount_start_date"/>
        <xsl:param name ="discount_end_date"/>
        <xsl:variable name="std-price" select="./*[name() = $price]"/>
        <xsl:variable name="sal-price" select="./*[name() = $discount_price]"/>
        
        
        <xsl:if test="(string-length(./*[name() = $price]) &gt; 0 )">
            
            
            <xsl:choose>
                <xsl:when test="string-length(./*[name() = $price]) &gt; 0 and string-length(./*[name() = $discount_price]) &gt; 0 and number($std-price) &gt; number($sal-price)">
                    <xsl:element name ="price"><xsl:value-of select="./*[name() = $price]"/></xsl:element>
                    
                    <xsl:choose>
                        <xsl:when test="string-length(./*[name() = $discount_price]) &gt; 0">
                            <xsl:element name ="discount-price"><xsl:value-of select="./*[name() = $discount_price]"/></xsl:element>
                        </xsl:when>
                        <xsl:otherwise>
                            <discount-price><xsl:value-of select="only_to_let_empy_val"/></discount-price>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    
                    
                    <xsl:element name ="discount-start-date"><xsl:value-of select="./*[name() = $discount_start_date]"/></xsl:element>
                    <xsl:element name ="discount-end-date"><xsl:value-of select="./*[name() = $discount_end_date]"/></xsl:element>
                </xsl:when> 
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="number($std-price) &gt; number($sal-price)">
                            <xsl:element name ="price"><xsl:value-of select="./*[name() = $discount_price]"/></xsl:element>
                            <discount-price><xsl:value-of select="only_to_let_empy_val"/></discount-price>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:choose>
                                <xsl:when test="string-length(./*[name() = $price]) &gt; 0">
                                    <xsl:element name ="price"><xsl:value-of select="./*[name() = $price]"/></xsl:element>
                                    <discount-price><xsl:value-of select="only_to_let_empy_val"/></discount-price>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:if test="string-length($sal-price) &gt; 0">
                                        <xsl:element name ="price"><xsl:value-of select="./*[name() = $discount_price]"/></xsl:element>
                                        <discount-price><xsl:value-of select="only_to_let_empy_val"/></discount-price>
                                    </xsl:if>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
                
                
                
            </xsl:choose>
            
            
            
        </xsl:if>
        
        
    </xsl:template>
    
    
    
    
    
    
    
    
    
</xsl:stylesheet>