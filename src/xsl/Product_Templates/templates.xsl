<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="../ProductData/universes.xsl"/>
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
    <xsl:template name="message_Info">
        <xsl:param name="Delete_product"/>
        <xsl:param name="Partial_update"/>
        <MessageID><xsl:number value="position()" format="1" /></MessageID>
        <xsl:choose>
            <xsl:when test="./*[name() = $Delete_product] = 'True'">
                <OperationType>Delete</OperationType> 
            </xsl:when>
            <xsl:when test="./*[name() = $Partial_update] = 'True'">
                <OperationType>PartialUpdate</OperationType> 
            </xsl:when>
            <xsl:otherwise>
                <OperationType>Update</OperationType> 
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    
    <!-- Condition -->
    <xsl:template name="product_condition">
        <xsl:param name="Condition"/>
        <xsl:param name="ConditionNote"/>
        <xsl:if test="string-length(./*[name() = $Condition]) &gt; 0"> 
            <Condition>
                <ConditionType>
                    <xsl:value-of select="./*[name() = $Condition]"/>
                </ConditionType>
                
                <xsl:if test="string-length(./*[name() = $ConditionNote]) &gt; 0">
                    <ConditionNote>
                        <xsl:value-of select="./*[name() = $ConditionNote]"/>
                    </ConditionNote>
                </xsl:if>
            </Condition>
        </xsl:if>
    </xsl:template>
    
    <!-- Product.xsd : Identification -->
    <xsl:template name="amzon_generic_fields">
        <xsl:param name="sku"/>  
        <xsl:param name="parentage"/>
        <xsl:param name="ean"/>
        <xsl:param name="isbn"/>
        <xsl:param name="asin"/>
        
        
        
        <SKU><xsl:value-of select="./*[name() = $sku]"/></SKU>
        
        <xsl:if test="./*[name() = $parentage] !='parent' and (string-length(./*[name() = $ean]) &gt; 0 or string-length(./*[name() = $isbn]) &gt; 0 or string-length(./*[name() = $asin]) &gt; 0)">
            
            <StandardProductID>  
                <xsl:choose>
                    
                    <xsl:when test="string-length(./*[name() = $asin]) &gt; 0">
                        <Type>ASIN</Type>
                        <Value><xsl:value-of select="./*[name() = $asin]"/></Value>
                    </xsl:when>
                    
                    <xsl:when test="string-length(./*[name() = $ean]) &gt; 0">
                        <Type>EAN</Type>
                        <Value><xsl:value-of select="./*[name() = $ean]"/></Value>
                    </xsl:when>
                    
                    <xsl:when test="string-length(./*[name() = $isbn]) &gt; 0">
                        <Type>ISBN</Type>
                        <Value><xsl:value-of select="./*[name() = $isbn]"/></Value>
                    </xsl:when>
                    
                </xsl:choose>
            </StandardProductID>
        </xsl:if>
        
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