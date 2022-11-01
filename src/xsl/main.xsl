<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="Product_Templates/templates.xsl"/>
  <xsl:output method="xml" indent="yes"/>
  <xsl:param name="ExternalMerchantId" select="'ExternalMerchantId[Required]'"/>
  
  <xsl:template match="/">


  
    <AmazonEnvelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="amzn-envelope.xsd">
      
      <!-- Header  
      <Header>
        <DocumentVersion>1.01</DocumentVersion>
        <MerchantIdentifier>
          <xsl:value-of select="$ExternalMerchantId"/>
        </MerchantIdentifier>
      </Header>
      
      <MessageType>Product</MessageType>
      -->

      <xsl:call-template name="Header">
        
      </xsl:call-template>
      
      <xsl:for-each select="catalogue/product">

        
        <Message>


          <!-- Message info 

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
          -->

          <xsl:call-template name="Message_Info">
            
          </xsl:call-template>

          
          
          <Product>

            <!-- ID info 
            <SKU><xsl:value-of select="SKU"/></SKU>
            
            <xsl:if test="Parentage!='parent' and (string-length(EAN) &gt; 0 or string-length(ISBN) &gt; 0 or string-length(ASIN) &gt; 0)">
              
              <StandardProductID>  
                <xsl:choose>
                  
                  <xsl:when test="string-length(ASIN) &gt; 0">
                    <Type>ASIN</Type>
                    <Value><xsl:value-of select="ASIN"/></Value>
                  </xsl:when>
                  
                  <xsl:when test="string-length(EAN) &gt; 0">
                    <Type>EAN</Type>
                    <Value><xsl:value-of select="EAN"/></Value>
                  </xsl:when>
                  
                  <xsl:when test="string-length(ISBN) &gt; 0">
                    <Type>ISBN</Type>
                    <Value><xsl:value-of select="ISBN"/></Value>
                  </xsl:when>
                  
                </xsl:choose>
              </StandardProductID>
            </xsl:if>
            -->

            <xsl:call-template name="Identification">
              
            </xsl:call-template>
            
            <xsl:if test="(string-length(ASIN) != 0 and Details_on_if_ASIN = 'True') or (string-length(ASIN) = 0)">
              <!-- Condition
              <xsl:if test="string-length(Condition) &gt; 0"> 
                <Condition>
                  
                  <ConditionType>
                    <xsl:value-of select="Condition"/>
                  </ConditionType>
                  
                  <xsl:if test="string-length(ConditionNote) &gt; 0">
                    <ConditionNote>
                      <xsl:value-of select="ConditionNote"/>
                    </ConditionNote>
                  </xsl:if>
                  
                </Condition>
              </xsl:if>
              -->

              <!--
              <DescriptionData>
                <Title><xsl:value-of select="Title"/></Title>
                <xsl:if test="string-length(Brand) &gt; 0"><Brand><xsl:value-of select="Brand"/></Brand></xsl:if>
                <xsl:if test="string-length(Designer) &gt; 0"><Designer><xsl:value-of select="Designer"/></Designer></xsl:if>
                <Description><xsl:value-of select="Description"/></Description>
                <xsl:if test="string-length(BulletPoint1) &gt; 0"> <BulletPoint><xsl:value-of select="BulletPoint1"/></BulletPoint></xsl:if>
                <xsl:if test="string-length(BulletPoint2) &gt; 0"> <BulletPoint><xsl:value-of select="BulletPoint2"/></BulletPoint></xsl:if>
                <xsl:if test="string-length(BulletPoint3) &gt; 0"> <BulletPoint><xsl:value-of select="BulletPoint3"/></BulletPoint></xsl:if>
                <xsl:if test="string-length(BulletPoint4) &gt; 0"> <BulletPoint><xsl:value-of select="BulletPoint4"/></BulletPoint></xsl:if>
                <xsl:if test="string-length(BulletPoint5) &gt; 0"> <BulletPoint><xsl:value-of select="BulletPoint5"/></BulletPoint></xsl:if>
                
                <xsl:if test="string-length(PackageWeight_in_gr) &gt; 0">
                  <PackageWeight unitOfMeasure="GR">  
                    <xsl:value-of select="PackageWeight_in_gr"/>
                  </PackageWeight>
                </xsl:if>
                
                <xsl:if test="string-length(ShippingWeight_in_gr) &gt; 0">
                  <ShippingWeight unitOfMeasure="GR">  
                    <xsl:value-of select="ShippingWeight_in_gr"/>
                  </ShippingWeight>
                </xsl:if>
                
                <xsl:if test="string-length(Manufacturer) &gt; 0"><Manufacturer><xsl:value-of select="Manufacturer"/></Manufacturer></xsl:if>
                <xsl:if test="string-length(MfrPartNumber) &gt; 0"> <MfrPartNumber><xsl:value-of select="MfrPartNumber"/></MfrPartNumber></xsl:if>
                <xsl:if test="string-length(SearchTerms) &gt; 0"> <SearchTerms><xsl:value-of select="SearchTerms"/></SearchTerms></xsl:if>
                
                <xsl:if test="string-length(TargetAudience) &gt; 0"> <TargetAudience><xsl:value-of select="TargetAudience"/></TargetAudience></xsl:if>
                <xsl:if test="string-length(IsGiftWrapAvailable) &gt; 0"> <IsGiftWrapAvailable><xsl:value-of select="IsGiftWrapAvailable"/></IsGiftWrapAvailable></xsl:if>
                <xsl:if test="string-length(IsGiftMessageAvailable) &gt; 0"> <IsGiftMessageAvailable><xsl:value-of select="IsGiftMessageAvailable"/></IsGiftMessageAvailable></xsl:if>
                <xsl:if test="string-length(RecommendedBrowseNode) &gt; 0"><RecommendedBrowseNode><xsl:value-of select="RecommendedBrowseNode"/></RecommendedBrowseNode></xsl:if>
                <xsl:if test="string-length(MerchantShippingGroupName) &gt; 0"><MerchantShippingGroupName><xsl:value-of select="MerchantShippingGroupName"/></MerchantShippingGroupName></xsl:if> 
                
                <xsl:if test="string-length(AreBatteriesRequired) &gt; 0">
                  <Battery>
                    <AreBatteriesRequired><xsl:value-of select="AreBatteriesRequired"/></AreBatteriesRequired>
                  </Battery>
                </xsl:if>
                
                <xsl:if test="string-length(SupplierDeclaredDGHZRegulation) &gt; 0">
                  <SupplierDeclaredDGHZRegulation><xsl:value-of select="SupplierDeclaredDGHZRegulation"/></SupplierDeclaredDGHZRegulation>
                </xsl:if>
                
              </DescriptionData>
              -->
              <!--    ##################################################################### DEBUT PRODUCT DATA #####################################################################   -->
              
              <xsl:choose>
                
                <!--    ######################################### CAS LUMIERE #########################################   -->
                <xsl:when test="case_xsl = 'lumiere'">
                  <ProductData>
                    <Lighting>
                      <ProductType>
                        <xsl:choose>	
                          <xsl:when test="cat_2 = 'Ampoules'"><xsl:text disable-output-escaping="yes">&lt;</xsl:text>LightBulbs<xsl:text disable-output-escaping="yes">&gt;</xsl:text></xsl:when>
                          <xsl:when test="cat_2 = 'Electricité'"><xsl:text disable-output-escaping="yes">&lt;</xsl:text>LightingAccessories<xsl:text disable-output-escaping="yes">&gt;</xsl:text></xsl:when>
                          <xsl:when test="cat_2 = 'Lampes Torche'"><xsl:text disable-output-escaping="yes">&lt;</xsl:text>LightsAndFixtures<xsl:text disable-output-escaping="yes">&gt;</xsl:text></xsl:when>	   
                          <xsl:when test="cat_2 = 'Luminaires Extérieur'"><xsl:text disable-output-escaping="yes">&lt;</xsl:text>LightsAndFixtures<xsl:text disable-output-escaping="yes">&gt;</xsl:text></xsl:when>
                          <xsl:when test="cat_2 = 'Luminaires Intérieur'"><xsl:text disable-output-escaping="yes">&lt;</xsl:text>LightsAndFixtures<xsl:text disable-output-escaping="yes">&gt;</xsl:text></xsl:when>
                        </xsl:choose>
                        <xsl:if test="string-length(Parentage) &gt; 0">
                          <VariationData>
                            <Parentage><xsl:value-of select="Parentage"/></Parentage> <!--   2 accepted values only : "child" or "parent"  -->
                            <VariationTheme><xsl:value-of select="VariationTheme"/></VariationTheme> <!--   2 accepted values only : "Color" or "Wattage"-->
                          </VariationData>
                        </xsl:if>	
                        <xsl:if test="string-length(BaseDiameter) &gt; 0"><BaseDiameter><xsl:value-of select="BaseDiameter"/></BaseDiameter></xsl:if>
                        <xsl:if test="string-length(BaseDiameterUnitOfMeasure) &gt; 0"><BaseDiameterUnitOfMeasure><xsl:value-of select="BaseDiameterUnitOfMeasure"/></BaseDiameterUnitOfMeasure></xsl:if>
                        <xsl:if test="string-length(BeamAngle) &gt; 0"><BeamAngle><xsl:value-of select="BeamAngle"/></BeamAngle></xsl:if>
                        <xsl:if test="string-length(BeamAngleUnitOfMeasure) &gt; 0"><BeamAngleUnitOfMeasure><xsl:value-of select="BeamAngleUnitOfMeasure"/></BeamAngleUnitOfMeasure></xsl:if>
                        <xsl:if test="string-length(BulbDiameter) &gt; 0"><BulbDiameter><xsl:value-of select="BulbDiameter"/></BulbDiameter></xsl:if>
                        <xsl:if test="string-length(BulbDiameterUnitOfMeasure) &gt; 0"><BulbDiameterUnitOfMeasure><xsl:value-of select="BulbDiameterUnitOfMeasure"/></BulbDiameterUnitOfMeasure></xsl:if>
                        <xsl:if test="string-length(BulbLength) &gt; 0"><BulbLength><xsl:value-of select="BulbLength"/></BulbLength></xsl:if>
                        <xsl:if test="string-length(BulbLengthUnitOfMeasure) &gt; 0"><BulbLengthUnitOfMeasure><xsl:value-of select="BulbLengthUnitOfMeasure"/></BulbLengthUnitOfMeasure></xsl:if>
                        <xsl:if test="string-length(BulbLifeSpan) &gt; 0"><BulbLifeSpan><xsl:value-of select="BulbLifeSpan"/></BulbLifeSpan></xsl:if>
                        <xsl:if test="string-length(BulbLifeSpanUnitOfMeasure) &gt; 0"><BulbLifeSpanUnitOfMeasure><xsl:value-of select="BulbLifeSpanUnitOfMeasure"/></BulbLifeSpanUnitOfMeasure></xsl:if>
                        <xsl:if test="string-length(BulbPowerFactor) &gt; 0"><BulbPowerFactor><xsl:value-of select="BulbPowerFactor"/></BulbPowerFactor></xsl:if>
                        <xsl:if test="string-length(BulbSpecialFeatures1) &gt; 0"><BulbSpecialFeatures><xsl:value-of select="BulbSpecialFeatures1"/></BulbSpecialFeatures></xsl:if>
                        <xsl:if test="string-length(BulbSpecialFeatures2) &gt; 0"><BulbSpecialFeatures><xsl:value-of select="BulbSpecialFeatures2"/></BulbSpecialFeatures></xsl:if>
                        <xsl:if test="string-length(BulbSwitchingCycles) &gt; 0"><BulbSwitchingCycles><xsl:value-of select="BulbSwitchingCycles"/></BulbSwitchingCycles></xsl:if>
                        <xsl:if test="string-length(BulbType) &gt; 0"><BulbType><xsl:value-of select="BulbType"/></BulbType></xsl:if>
                        <xsl:if test="string-length(BulbWattage) &gt; 0"><BulbWattage><xsl:value-of select="BulbWattage"/></BulbWattage></xsl:if>
                        <xsl:if test="string-length(CapType) &gt; 0"><CapType><xsl:value-of select="CapType"/></CapType></xsl:if>
                        <xsl:if test="string-length(CircuitBreakerInstallationType) &gt; 0"><CircuitBreakerInstallationType><xsl:value-of select="CircuitBreakerInstallationType"/></CircuitBreakerInstallationType></xsl:if>
                        <xsl:if test="Parentage!='parent'"><xsl:if test="string-length(Color) &gt; 0"><Color><xsl:value-of select="Color"/></Color></xsl:if></xsl:if>
                        <xsl:if test="Parentage!='parent'"><xsl:if test="string-length(ColorMap) &gt; 0"><ColorMap><xsl:value-of select="ColorMap"/></ColorMap></xsl:if></xsl:if>
                        <xsl:if test="string-length(ColorRenderingIndex) &gt; 0"><ColorRenderingIndex><xsl:value-of select="ColorRenderingIndex"/></ColorRenderingIndex></xsl:if>
                        <xsl:if test="string-length(ColorTemperature) &gt; 0 and string-length(ColorTemperatureUnitOfMeasure) &gt; 0"><xsl:text disable-output-escaping="yes">&lt;</xsl:text>ColorTemperature unitOfMeasure="<xsl:value-of select="ColorTemperatureUnitOfMeasure"/>"<xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:value-of select="ColorTemperature"/><xsl:text disable-output-escaping="yes">&lt;</xsl:text>/ColorTemperature<xsl:text disable-output-escaping="yes">&gt;</xsl:text></xsl:if>					
                        <xsl:if test="string-length(CountryOfOrigin) &gt; 0"><CountryOfOrigin><xsl:value-of select="CountryOfOrigin"/></CountryOfOrigin></xsl:if>
                        <xsl:if test="string-length(EnergyEfficiencyRating) &gt; 0"><EnergyEfficiencyRating><xsl:value-of select="EnergyEfficiencyRating"/></EnergyEfficiencyRating></xsl:if>
                        <xsl:if test="string-length(FanBladeColor) &gt; 0"><FanBladeColor><xsl:value-of select="FanBladeColor"/></FanBladeColor></xsl:if>
                        <xsl:if test="string-length(FinishType) &gt; 0"><FinishType><xsl:value-of select="FinishType"/></FinishType></xsl:if>
                        <xsl:if test="string-length(IncandescentEquivalentWattage) &gt; 0"><IncandescentEquivalentWattage><xsl:value-of select="IncandescentEquivalentWattage"/></IncandescentEquivalentWattage></xsl:if>
                        <xsl:if test="string-length(IncludedComponent1) &gt; 0"><IncludedComponent><xsl:value-of select="IncludedComponent1"/></IncludedComponent></xsl:if>
                        <xsl:if test="string-length(IncludedComponent2) &gt; 0"><IncludedComponent><xsl:value-of select="IncludedComponent2"/></IncludedComponent></xsl:if>
                        <xsl:if test="string-length(InternationalProtectionRating) &gt; 0"><InternationalProtectionRating><xsl:value-of select="InternationalProtectionRating"/></InternationalProtectionRating></xsl:if>
                        <xsl:if test="string-length(ItemShape) &gt; 0"><ItemShape><xsl:value-of select="ItemShape"/></ItemShape></xsl:if>
                        <xsl:if test="string-length(LampStartupTime) &gt; 0"><LampStartupTime><xsl:value-of select="LampStartupTime"/></LampStartupTime></xsl:if>
                        <xsl:if test="string-length(LampWarmupTime) &gt; 0"><LampWarmupTime><xsl:value-of select="LampWarmupTime"/></LampWarmupTime></xsl:if>
                        <xsl:if test="string-length(LightingMethod) &gt; 0"><LightingMethod><xsl:value-of select="LightingMethod"/></LightingMethod></xsl:if>
                        <xsl:if test="string-length(LightOutputLuminance) &gt; 0"><LightOutputLuminance><xsl:value-of select="LightOutputLuminance"/></LightOutputLuminance></xsl:if>
                        <xsl:if test="string-length(LightOutputLuminanceUnitOfMeasure) &gt; 0"><LightOutputLuminanceUnitOfMeasure><xsl:value-of select="LightOutputLuminanceUnitOfMeasure"/></LightOutputLuminanceUnitOfMeasure></xsl:if>
                        <xsl:if test="string-length(LumenMaintenanceFactor) &gt; 0"><LumenMaintenanceFactor><xsl:value-of select="LumenMaintenanceFactor"/></LumenMaintenanceFactor></xsl:if>
                        <xsl:if test="string-length(LuminousIntensity) &gt; 0"><LuminousIntensity><xsl:value-of select="LuminousIntensity"/></LuminousIntensity></xsl:if>
                        <xsl:if test="string-length(LuminousIntensityUnitOfMeasure) &gt; 0"><LuminousIntensityUnitOfMeasure><xsl:value-of select="LuminousIntensityUnitOfMeasure"/></LuminousIntensityUnitOfMeasure></xsl:if>
                        <xsl:if test="string-length(Material) &gt; 0"><Material><xsl:value-of select="Material"/></Material></xsl:if>
                        <xsl:if test="string-length(MaximumCurrent) &gt; 0"><MaximumCurrent><xsl:value-of select="MaximumCurrent"/></MaximumCurrent></xsl:if>
                        <xsl:if test="string-length(MaximumCurrentUnitOfMeasure) &gt; 0"><MaximumCurrentUnitOfMeasure><xsl:value-of select="MaximumCurrentUnitOfMeasure"/></MaximumCurrentUnitOfMeasure></xsl:if>
                        <xsl:if test="string-length(MaximumSupportedWattage) &gt; 0"><MaximumSupportedWattage><xsl:value-of select="MaximumSupportedWattage"/></MaximumSupportedWattage></xsl:if>
                        <xsl:if test="string-length(MercuryContent) &gt; 0"><MercuryContent><xsl:value-of select="MercuryContent"/></MercuryContent></xsl:if>
                        <xsl:if test="string-length(MercuryContentUnitOfMeasure) &gt; 0"><MercuryContentUnitOfMeasure><xsl:value-of select="MercuryContentUnitOfMeasure"/></MercuryContentUnitOfMeasure></xsl:if>
                        <xsl:if test="string-length(NumberOfBlades) &gt; 0"><NumberOfBlades><xsl:value-of select="NumberOfBlades"/></NumberOfBlades></xsl:if>
                        <xsl:if test="string-length(NumberOfBulbSockets) &gt; 0"><NumberOfBulbSockets><xsl:value-of select="NumberOfBulbSockets"/></NumberOfBulbSockets></xsl:if>
                        <xsl:if test="string-length(NumberOfStrands) &gt; 0"><NumberOfStrands><xsl:value-of select="NumberOfStrands"/></NumberOfStrands></xsl:if>
                        <xsl:if test="string-length(PlugInstallationType) &gt; 0"><PlugInstallationType><xsl:value-of select="PlugInstallationType"/></PlugInstallationType></xsl:if>
                        <xsl:if test="string-length(PlugType) &gt; 0"><PlugType><xsl:value-of select="PlugType"/></PlugType></xsl:if>
                        <xsl:if test="string-length(PowerSource) &gt; 0"><PowerSource><xsl:value-of select="PowerSource"/></PowerSource></xsl:if>
                        <xsl:if test="string-length(ShadeDiameter) &gt; 0"><ShadeDiameter><xsl:value-of select="ShadeDiameter"/></ShadeDiameter></xsl:if>
                        <xsl:if test="string-length(ShadeDiameterUnitOfMeasure) &gt; 0"><ShadeDiameterUnitOfMeasure><xsl:value-of select="ShadeDiameterUnitOfMeasure"/></ShadeDiameterUnitOfMeasure></xsl:if>
                        <xsl:if test="string-length(ShadeMaterial) &gt; 0"><ShadeMaterial><xsl:value-of select="ShadeMaterial"/></ShadeMaterial></xsl:if>
                        <xsl:if test="string-length(SpecialFeatures1) &gt; 0"><SpecialFeatures><xsl:value-of select="SpecialFeatures1"/></SpecialFeatures></xsl:if>
                        <xsl:if test="string-length(SpecialFeatures2) &gt; 0"><SpecialFeatures><xsl:value-of select="SpecialFeatures2"/></SpecialFeatures></xsl:if>
                        <xsl:if test="string-length(SpecificUses) &gt; 0"><SpecificUses><xsl:value-of select="SpecificUses"/></SpecificUses></xsl:if>
                        <xsl:if test="string-length(StrandDiameter) &gt; 0"><StrandDiameter><xsl:value-of select="StrandDiameter"/></StrandDiameter></xsl:if>
                        <xsl:if test="string-length(StrandDiameterUnitOfMeasure) &gt; 0"><StrandDiameterUnitOfMeasure><xsl:value-of select="StrandDiameterUnitOfMeasure"/></StrandDiameterUnitOfMeasure></xsl:if>
                        <xsl:if test="string-length(StyleName) &gt; 0"><StyleName><xsl:value-of select="StyleName"/></StyleName></xsl:if>
                        <xsl:if test="string-length(SwitchStyle) &gt; 0"><SwitchStyle><xsl:value-of select="SwitchStyle"/></SwitchStyle></xsl:if>
                        <xsl:if test="string-length(SwitchType) &gt; 0"><SwitchType><xsl:value-of select="SwitchType"/></SwitchType></xsl:if>
                        <xsl:if test="string-length(Voltage) &gt; 0"><Voltage><xsl:value-of select="Voltage"/></Voltage></xsl:if>
                        <xsl:if test="string-length(Wattage) &gt; 0"><Wattage><xsl:value-of select="Wattage"/></Wattage></xsl:if>
                        
                        <xsl:choose>	
                          <xsl:when test="cat_2 = 'Ampoules'"><xsl:text disable-output-escaping="yes">&lt;</xsl:text>/LightBulbs<xsl:text disable-output-escaping="yes">&gt;</xsl:text></xsl:when>
                          <xsl:when test="cat_2 = 'Electricité'"><xsl:text disable-output-escaping="yes">&lt;</xsl:text>/LightingAccessories<xsl:text disable-output-escaping="yes">&gt;</xsl:text></xsl:when>
                          <xsl:when test="cat_2 = 'Lampes Torche'"><xsl:text disable-output-escaping="yes">&lt;</xsl:text>/LightsAndFixtures<xsl:text disable-output-escaping="yes">&gt;</xsl:text></xsl:when>	   
                          <xsl:when test="cat_2 = 'Luminaires Extérieur'"><xsl:text disable-output-escaping="yes">&lt;</xsl:text>/LightsAndFixtures<xsl:text disable-output-escaping="yes">&gt;</xsl:text></xsl:when>
                          <xsl:when test="cat_2 = 'Luminaires Intérieur'"><xsl:text disable-output-escaping="yes">&lt;</xsl:text>/LightsAndFixtures<xsl:text disable-output-escaping="yes">&gt;</xsl:text></xsl:when>
                        </xsl:choose>
                      </ProductType>
                    </Lighting>
                  </ProductData>
                </xsl:when>
                
              </xsl:choose>
            </xsl:if>
            
            
            
            <xsl:if test="string-length(ASIN) != 0 and Details_on_if_ASIN = 'False'">
              <DescriptionData>
                <xsl:if test="string-length(Title) &gt; 0"><Title><xsl:value-of select="Title"/></Title></xsl:if>
                <xsl:if test="string-length(CountryOfOrigin) &gt; 0"><CountryOfOrigin><xsl:value-of select="CountryOfOrigin"/></CountryOfOrigin></xsl:if>
              </DescriptionData>
            </xsl:if> 
            
          </Product>
          
          <!--    ##################################################################### FIN PRODUCT DATA #####################################################################   -->
        </Message>
        
        
      </xsl:for-each>
      
      
    </AmazonEnvelope>
    
  </xsl:template>
  
</xsl:stylesheet> 