<?xml version="1.0" encoding="utf-8"?>

<!-- 
     
     This template will create an XML feed compliant with Amazon SP product publication
     Univers Ligthing : https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_1_9/Lighting.xsd
     
     Product Type : Candle
     
-->

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="../../../Product_Templates/templates.xsl"/>
  <xsl:output method="xml" indent="yes"/>
  
  <xsl:template name="ProductType_Candle">
    <ProductData>
      <Lighting>
        <ProductType>
          <Candle>
            
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'AcceptedVoltageFrequency'"/><xsl:with-param name="output_node_name" select="'AcceptedVoltageFrequency'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'BaseDiameter'"/><xsl:with-param name="output_node_name" select="'BaseDiameter'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'BaseType'"/><xsl:with-param name="output_node_name" select="'BaseType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'BladeColor'"/><xsl:with-param name="output_node_name" select="'BladeColor'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LightOutputLuminance'"/><xsl:with-param name="output_node_name" select="'LightOutputLuminance'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CapType'"/><xsl:with-param name="output_node_name" select="'CapType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Codabar'"/><xsl:with-param name="output_node_name" select="'Codabar'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ColorMap'"/><xsl:with-param name="output_node_name" select="'ColorMap'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Color'"/><xsl:with-param name="output_node_name" select="'Color'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ColorRenderingIndex'"/><xsl:with-param name="output_node_name" select="'ColorRenderingIndex'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ColorTemperature'"/><xsl:with-param name="output_node_name" select="'ColorTemperature'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ContainerType'"/><xsl:with-param name="output_node_name" select="'ContainerType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ContainsLiquidContents'"/><xsl:with-param name="output_node_name" select="'ContainsLiquidContents'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ControlMethod'"/><xsl:with-param name="output_node_name" select="'ControlMethod'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ControllerType'"/><xsl:with-param name="output_node_name" select="'ControllerType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CraftType'"/><xsl:with-param name="output_node_name" select="'CraftType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'EnergyEfficiencyRating'"/><xsl:with-param name="output_node_name" select="'EnergyEfficiencyRating'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'EnergyGuideAnnualOperatingCost'"/><xsl:with-param name="output_node_name" select="'EnergyGuideAnnualOperatingCost'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'EnergyGuideCostDisclosure'"/><xsl:with-param name="output_node_name" select="'EnergyGuideCostDisclosure'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'EuEnergyLabelEfficiencyClass'"/><xsl:with-param name="output_node_name" select="'EuEnergyLabelEfficiencyClass'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'FinishTypes'"/><xsl:with-param name="output_node_name" select="'FinishTypes'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'FixtureType'"/><xsl:with-param name="output_node_name" select="'FixtureType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'FulfillmentCenterSpecialStorage'"/><xsl:with-param name="output_node_name" select="'FulfillmentCenterSpecialStorage'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'IncandescentEquivalentWattage'"/><xsl:with-param name="output_node_name" select="'IncandescentEquivalentWattage'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'NumberofIncludedCameras'"/><xsl:with-param name="output_node_name" select="'NumberofIncludedCameras'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'InternationalProtectionRating'"/><xsl:with-param name="output_node_name" select="'InternationalProtectionRating'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'IsAssemblyRequired'"/><xsl:with-param name="output_node_name" select="'IsAssemblyRequired'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'IsExclusiveProduct'"/><xsl:with-param name="output_node_name" select="'IsExclusiveProduct'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'IsFragile'"/><xsl:with-param name="output_node_name" select="'IsFragile'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemDiameter'"/><xsl:with-param name="output_node_name" select="'ItemDiameter'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'DisplayDepth'"/><xsl:with-param name="output_node_name" select="'DisplayDepth'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemDisplayDiameter'"/><xsl:with-param name="output_node_name" select="'ItemDisplayDiameter'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemDisplayHeight'"/><xsl:with-param name="output_node_name" select="'ItemDisplayHeight'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'DisplayLength'"/><xsl:with-param name="output_node_name" select="'DisplayLength'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'DisplayVolume'"/><xsl:with-param name="output_node_name" select="'DisplayVolume'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'DisplayWeight'"/><xsl:with-param name="output_node_name" select="'DisplayWeight'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemDisplayWidth'"/><xsl:with-param name="output_node_name" select="'ItemDisplayWidth'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemShape'"/><xsl:with-param name="output_node_name" select="'ItemShape'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LanguageValue'"/><xsl:with-param name="output_node_name" select="'LanguageValue'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LegalComplianceCertificationRegulatoryOrganizationName'"/><xsl:with-param name="output_node_name" select="'LegalComplianceCertificationRegulatoryOrganizationName'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LightSourceDiameter'"/><xsl:with-param name="output_node_name" select="'LightSourceDiameter'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'BulbLength'"/><xsl:with-param name="output_node_name" select="'BulbLength'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LightSourceMechanicalLifeExpectancy'"/><xsl:with-param name="output_node_name" select="'LightSourceMechanicalLifeExpectancy'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'BulbLifeSpan'"/><xsl:with-param name="output_node_name" select="'BulbLifeSpan'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LightSourcePowerFactor'"/><xsl:with-param name="output_node_name" select="'LightSourcePowerFactor'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LightSourceSpecialFeatures'"/><xsl:with-param name="output_node_name" select="'LightSourceSpecialFeatures'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LightingSourceType'"/><xsl:with-param name="output_node_name" select="'LightingSourceType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LampWattage'"/><xsl:with-param name="output_node_name" select="'LampWattage'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LightingMethod'"/><xsl:with-param name="output_node_name" select="'LightingMethod'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LumenMaintenanceFactor'"/><xsl:with-param name="output_node_name" select="'LumenMaintenanceFactor'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LightIntensity'"/><xsl:with-param name="output_node_name" select="'LightIntensity'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MaterialComposition'"/><xsl:with-param name="output_node_name" select="'MaterialComposition'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Material'"/><xsl:with-param name="output_node_name" select="'Material'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MaximumCompatibleLightSourceWattage'"/><xsl:with-param name="output_node_name" select="'MaximumCompatibleLightSourceWattage'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MaximumWeightRecommendation'"/><xsl:with-param name="output_node_name" select="'MaximumWeightRecommendation'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MercuryContent'"/><xsl:with-param name="output_node_name" select="'MercuryContent'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ModelNumber'"/><xsl:with-param name="output_node_name" select="'ModelNumber'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ModelName'"/><xsl:with-param name="output_node_name" select="'ModelName'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'NumberOfBlades'"/><xsl:with-param name="output_node_name" select="'NumberOfBlades'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'NumberOfBoxes'"/><xsl:with-param name="output_node_name" select="'NumberOfBoxes'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'NumberOfLightSources'"/><xsl:with-param name="output_node_name" select="'NumberOfLightSources'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'NumberOfPieces'"/><xsl:with-param name="output_node_name" select="'NumberOfPieces'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'OperatingLife'"/><xsl:with-param name="output_node_name" select="'OperatingLife'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ArtistBiography'"/><xsl:with-param name="output_node_name" select="'ArtistBiography'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PatternName'"/><xsl:with-param name="output_node_name" select="'PatternName'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PlugType'"/><xsl:with-param name="output_node_name" select="'PlugType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PowerPlugType'"/><xsl:with-param name="output_node_name" select="'PowerPlugType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PowerSource'"/><xsl:with-param name="output_node_name" select="'PowerSource'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'RequiredProductComplianceCertificate'"/><xsl:with-param name="output_node_name" select="'RequiredProductComplianceCertificate'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Scent'"/><xsl:with-param name="output_node_name" select="'Scent'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ScrewHeadStyle'"/><xsl:with-param name="output_node_name" select="'ScrewHeadStyle'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ShadeColor'"/><xsl:with-param name="output_node_name" select="'ShadeColor'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ShadeDiameter'"/><xsl:with-param name="output_node_name" select="'ShadeDiameter'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ShadeMaterialType'"/><xsl:with-param name="output_node_name" select="'ShadeMaterialType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ShaftType'"/><xsl:with-param name="output_node_name" select="'ShaftType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'SpecialFeatures'"/><xsl:with-param name="output_node_name" select="'SpecialFeatures'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'SpecificUses'"/><xsl:with-param name="output_node_name" select="'SpecificUses'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'SpecificationMet'"/><xsl:with-param name="output_node_name" select="'SpecificationMet'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'StartUpTimeDescription'"/><xsl:with-param name="output_node_name" select="'StartUpTimeDescription'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'UVProtection'"/><xsl:with-param name="output_node_name" select="'UVProtection'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'VariationData'"/><xsl:with-param name="output_node_name" select="'VariationData'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LampWarmupTime'"/><xsl:with-param name="output_node_name" select="'LampWarmupTime'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'WarrantyDescription'"/><xsl:with-param name="output_node_name" select="'WarrantyDescription'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Wattage'"/><xsl:with-param name="output_node_name" select="'Wattage'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'WeightedAnnualEnergyConsumption'"/><xsl:with-param name="output_node_name" select="'WeightedAnnualEnergyConsumption'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'EmbellishmentFeature'"/><xsl:with-param name="output_node_name" select="'EmbellishmentFeature'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'EuEnergyEfficiencyRating'"/><xsl:with-param name="output_node_name" select="'EuEnergyEfficiencyRating'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'HeightFloorTop'"/><xsl:with-param name="output_node_name" select="'HeightFloorTop'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'HeightWidthSideToSide'"/><xsl:with-param name="output_node_name" select="'HeightWidthSideToSide'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'IsTradeItemOrderableUnit'"/><xsl:with-param name="output_node_name" select="'IsTradeItemOrderableUnit'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LeagueName'"/><xsl:with-param name="output_node_name" select="'LeagueName'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LegalComplianceCertificationCertifyingAuthorityName'"/><xsl:with-param name="output_node_name" select="'LegalComplianceCertificationCertifyingAuthorityName'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LegalComplianceCertificationDateOfIssue'"/><xsl:with-param name="output_node_name" select="'LegalComplianceCertificationDateOfIssue'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LegalComplianceCertificationExpirationDate'"/><xsl:with-param name="output_node_name" select="'LegalComplianceCertificationExpirationDate'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LegalComplianceCertificationGeographicJurisdiction'"/><xsl:with-param name="output_node_name" select="'LegalComplianceCertificationGeographicJurisdiction'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MapPolicy'"/><xsl:with-param name="output_node_name" select="'MapPolicy'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MaterialFeatures'"/><xsl:with-param name="output_node_name" select="'MaterialFeatures'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'OccasionType'"/><xsl:with-param name="output_node_name" select="'OccasionType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'OperatingTime'"/><xsl:with-param name="output_node_name" select="'OperatingTime'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'OperatingTimeUnit'"/><xsl:with-param name="output_node_name" select="'OperatingTimeUnit'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'RecommendedUsesForProduct'"/><xsl:with-param name="output_node_name" select="'RecommendedUsesForProduct'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'RegulationType'"/><xsl:with-param name="output_node_name" select="'RegulationType'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'RegulatoryComplianceCertificationValue'"/><xsl:with-param name="output_node_name" select="'RegulatoryComplianceCertificationValue'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'SubjectCharacter'"/><xsl:with-param name="output_node_name" select="'SubjectCharacter'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'TargetGender'"/><xsl:with-param name="output_node_name" select="'TargetGender'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'TeamName'"/><xsl:with-param name="output_node_name" select="'TeamName'"/> </xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Theme'"/><xsl:with-param name="output_node_name" select="'Theme'"/> </xsl:call-template>
            
          </Candle>
        </ProductType>
      </Lighting>  
    </ProductData>
    
  </xsl:template>
  
  
  
  
</xsl:stylesheet>