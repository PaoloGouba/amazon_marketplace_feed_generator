<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="Product_Templates/templates.xsl"/>
  <xsl:import href="Product_Templates/DescriptionData.xsl"/>
  <xsl:import href="ProductData/product_gateway.xsl"/>
  <xsl:output method="xml" indent="yes"/>
  <xsl:param name="ExternalMerchantId" select="'ExternalMerchantId[Required]'"/>
  
  
  
  <xsl:template match="/product">
    
    
    
    <AmazonEnvelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="amzn-envelope.xsd">
      
      
      <!-- Header -->
      <xsl:call-template name="Header">
        <xsl:with-param name="ExternalMerchantId" select="$ExternalMerchantId"/>
      </xsl:call-template>
      
      <xsl:for-each select="catalogue/product">
        
        <Message>
          
          <!-- Message Info -->
          <xsl:call-template name="message_Info">
            <xsl:with-param name="Delete_product" select="'Delete_product'"/>
            <xsl:with-param name="Partial_update" select="'Partial_update'"/>
          </xsl:call-template>
          
          
          <Product>
            
            <!-- Product Info Fields -->
            <xsl:call-template name="amzon_generic_fields">
              <xsl:with-param name="sku" select="'SKU'"/>
              <xsl:with-param name="asin" select="'ASIN'"/>
              <xsl:with-param name="ean" select="'EAN'"/>
              <xsl:with-param name="isbn" select="'ISBN'"/>
              <xsl:with-param name="parentage" select="'Parentage'"/>
            </xsl:call-template>
            
            
            <xsl:if test="(string-length(ASIN) != 0 and Details_on_if_ASIN = 'True') or (string-length(ASIN) = 0)">
              
              <!-- Product Condition Fields -->
              <xsl:call-template name="product_condition">
                <xsl:with-param name="Condition" select="'Condition'"/>
                <xsl:with-param name="ConditionNote" select="'ConditionNote'"/>
              </xsl:call-template>
              
              <!-- Description Data -->
              <xsl:call-template name="DescriptionData_Template"/>
              
              <!-- Product Data -->
              <xsl:call-template name="product_univers_gateway">
                <xsl:with-param name="univers" select="'univers'"/>
              </xsl:call-template>
            </xsl:if>

            <!-- Make Template for other additional fields -->
            


            <!-- Description Data ASIN -->
            
            <xsl:if test="string-length(ASIN) != 0 and Details_on_if_ASIN = 'False'">
              
              <xsl:call-template name="DescriptionDataASIN_Template"/>
              
            </xsl:if> 
            
          </Product>
          
          <!--    ##################################################################### FIN PRODUCT DATA #####################################################################   -->
        </Message>
        
        
      </xsl:for-each>
      
      
    </AmazonEnvelope>
    
  </xsl:template>
  
</xsl:stylesheet> 