<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:include href="templates.xsl"/>
    <xsl:output method="xml" indent="yes"/>
    
    
    
    <!-- Product.xsd : DescriptionData -->
    <xsl:template name="DescriptionData_Template">
        
        
        
        <DescriptionData>
            
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Title'"/><xsl:with-param name="output_node_name" select="'Title'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Brand'"/><xsl:with-param name="output_node_name" select="'Brand'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Designer'"/><xsl:with-param name="output_node_name" select="'Designer'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Description'"/><xsl:with-param name="output_node_name" select="'Description'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'BulletPoint'"/><xsl:with-param name="output_node_name" select="'BulletPoint'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemDimensions'"/><xsl:with-param name="output_node_name" select="'ItemDimensions'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PackageDimensions'"/><xsl:with-param name="output_node_name" select="'PackageDimensions'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PackageWeight'"/><xsl:with-param name="output_node_name" select="'PackageWeight'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ShippingWeight'"/><xsl:with-param name="output_node_name" select="'ShippingWeight'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MerchantCatalogNumber'"/><xsl:with-param name="output_node_name" select="'MerchantCatalogNumber'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MSRP'"/><xsl:with-param name="output_node_name" select="'MSRP'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MSRPWithTax'"/><xsl:with-param name="output_node_name" select="'MSRPWithTax'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MaxOrderQuantity'"/><xsl:with-param name="output_node_name" select="'MaxOrderQuantity'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'SerialNumberRequired'"/><xsl:with-param name="output_node_name" select="'SerialNumberRequired'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Prop65'"/><xsl:with-param name="output_node_name" select="'Prop65'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CPSIAWarning'"/><xsl:with-param name="output_node_name" select="'CPSIAWarning'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CPSIAWarningDescription'"/><xsl:with-param name="output_node_name" select="'CPSIAWarningDescription'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LegalDisclaimer'"/><xsl:with-param name="output_node_name" select="'LegalDisclaimer'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Manufacturer'"/><xsl:with-param name="output_node_name" select="'Manufacturer'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MfrPartNumber'"/><xsl:with-param name="output_node_name" select="'MfrPartNumber'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'SearchTerms'"/><xsl:with-param name="output_node_name" select="'SearchTerms'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PlatinumKeywords'"/><xsl:with-param name="output_node_name" select="'PlatinumKeywords'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Memorabilia'"/><xsl:with-param name="output_node_name" select="'Memorabilia'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Autographed'"/><xsl:with-param name="output_node_name" select="'Autographed'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'UsedFor'"/><xsl:with-param name="output_node_name" select="'UsedFor'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemType'"/><xsl:with-param name="output_node_name" select="'ItemType'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'OtherItemAttributes'"/><xsl:with-param name="output_node_name" select="'OtherItemAttributes'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'TargetAudience'"/><xsl:with-param name="output_node_name" select="'TargetAudience'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'SubjectContent'"/><xsl:with-param name="output_node_name" select="'SubjectContent'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'IsGiftWrapAvailable'"/><xsl:with-param name="output_node_name" select="'IsGiftWrapAvailable'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'IsGiftMessageAvailable'"/><xsl:with-param name="output_node_name" select="'IsGiftMessageAvailable'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PromotionKeywords'"/><xsl:with-param name="output_node_name" select="'PromotionKeywords'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'IsDiscontinuedByManufacturer'"/><xsl:with-param name="output_node_name" select="'IsDiscontinuedByManufacturer'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'DeliveryScheduleGroupID'"/><xsl:with-param name="output_node_name" select="'DeliveryScheduleGroupID'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'DeliveryChannel'"/><xsl:with-param name="output_node_name" select="'DeliveryChannel'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ExternalProductInformation'"/><xsl:with-param name="output_node_name" select="'ExternalProductInformation'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MaxAggregateShipQuantity'"/><xsl:with-param name="output_node_name" select="'MaxAggregateShipQuantity'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'RecommendedBrowseNode'"/><xsl:with-param name="output_node_name" select="'RecommendedBrowseNode'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'MerchantShippingGroupName'"/><xsl:with-param name="output_node_name" select="'MerchantShippingGroupName'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'FEDAS_ID'"/><xsl:with-param name="output_node_name" select="'FEDAS_ID'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'TSDAgeWarning'"/><xsl:with-param name="output_node_name" select="'TSDAgeWarning'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'TSDWarning'"/><xsl:with-param name="output_node_name" select="'TSDWarning'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'TSDLanguage'"/><xsl:with-param name="output_node_name" select="'TSDLanguage'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'OptionalPaymentTypeExclusion'"/><xsl:with-param name="output_node_name" select="'OptionalPaymentTypeExclusion'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'DistributionDesignation'"/><xsl:with-param name="output_node_name" select="'DistributionDesignation'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ExternalTestingCertification'"/><xsl:with-param name="output_node_name" select="'ExternalTestingCertification'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Battery'"/><xsl:with-param name="output_node_name" select="'Battery'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'BatteryCellType'"/><xsl:with-param name="output_node_name" select="'BatteryCellType'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'BatteryWeight'"/><xsl:with-param name="output_node_name" select="'BatteryWeight'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'NumberOfLithiumMetalCells'"/><xsl:with-param name="output_node_name" select="'NumberOfLithiumMetalCells'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'NumberOfLithiumIonCells'"/><xsl:with-param name="output_node_name" select="'NumberOfLithiumIonCells'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LithiumBatteryPackaging'"/><xsl:with-param name="output_node_name" select="'LithiumBatteryPackaging'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LithiumBatteryEnergyContent'"/><xsl:with-param name="output_node_name" select="'LithiumBatteryEnergyContent'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LithiumBatteryWeight'"/><xsl:with-param name="output_node_name" select="'LithiumBatteryWeight'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemWeight'"/><xsl:with-param name="output_node_name" select="'ItemWeight'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemVolume'"/><xsl:with-param name="output_node_name" select="'ItemVolume'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'FlashPoint'"/><xsl:with-param name="output_node_name" select="'FlashPoint'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'GHSClassificationClass'"/><xsl:with-param name="output_node_name" select="'GHSClassificationClass'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'SupplierDeclaredDGHZRegulation'"/><xsl:with-param name="output_node_name" select="'SupplierDeclaredDGHZRegulation'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'HazmatUnitedNationsRegulatoryID'"/><xsl:with-param name="output_node_name" select="'HazmatUnitedNationsRegulatoryID'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'SafetyDataSheetURL'"/><xsl:with-param name="output_node_name" select="'SafetyDataSheetURL'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CaliforniaProposition65ComplianceType'"/><xsl:with-param name="output_node_name" select="'CaliforniaProposition65ComplianceType'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CaliforniaProposition65ChemicalNames1'"/><xsl:with-param name="output_node_name" select="'CaliforniaProposition65ChemicalNames1'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CaliforniaProposition65ChemicalNames2'"/><xsl:with-param name="output_node_name" select="'CaliforniaProposition65ChemicalNames2'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CaliforniaProposition65ChemicalNames3'"/><xsl:with-param name="output_node_name" select="'CaliforniaProposition65ChemicalNames3'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CaliforniaProposition65ChemicalNames4'"/><xsl:with-param name="output_node_name" select="'CaliforniaProposition65ChemicalNames4'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CaliforniaProposition65ChemicalNames5'"/><xsl:with-param name="output_node_name" select="'CaliforniaProposition65ChemicalNames5'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Voltage'"/><xsl:with-param name="output_node_name" select="'Voltage'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ExternalRollingNoise'"/><xsl:with-param name="output_node_name" select="'ExternalRollingNoise'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'DepartmentName'"/><xsl:with-param name="output_node_name" select="'DepartmentName'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'FcStorageMethod'"/><xsl:with-param name="output_node_name" select="'FcStorageMethod'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'FcShelfLife'"/><xsl:with-param name="output_node_name" select="'FcShelfLife'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'FdaPremarketApprovalNumberPma'"/><xsl:with-param name="output_node_name" select="'FdaPremarketApprovalNumberPma'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'FormFactor'"/><xsl:with-param name="output_node_name" select="'FormFactor'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PlanExpirationDate'"/><xsl:with-param name="output_node_name" select="'PlanExpirationDate'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ActiveIngredients'"/><xsl:with-param name="output_node_name" select="'ActiveIngredients'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ProductExpirationType'"/><xsl:with-param name="output_node_name" select="'ProductExpirationType'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PitchCircleDiameter'"/><xsl:with-param name="output_node_name" select="'PitchCircleDiameter'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PEGIRating'"/><xsl:with-param name="output_node_name" select="'PEGIRating'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'USKRating'"/><xsl:with-param name="output_node_name" select="'USKRating'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'AssemblyInstructions'"/><xsl:with-param name="output_node_name" select="'AssemblyInstructions'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'SizeName'"/><xsl:with-param name="output_node_name" select="'SizeName'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'SizeMap'"/><xsl:with-param name="output_node_name" select="'SizeMap'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'SoftwareMediaFormat'"/><xsl:with-param name="output_node_name" select="'SoftwareMediaFormat'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CountryOfOrigin'"/><xsl:with-param name="output_node_name" select="'CountryOfOrigin'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemTypeName'"/><xsl:with-param name="output_node_name" select="'ItemTypeName'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ManufacturerContactInformation'"/><xsl:with-param name="output_node_name" select="'ManufacturerContactInformation'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Importer'"/><xsl:with-param name="output_node_name" select="'Importer'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ImporterContactInformation'"/><xsl:with-param name="output_node_name" select="'ImporterContactInformation'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PackerContactInformation'"/><xsl:with-param name="output_node_name" select="'PackerContactInformation'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'UnitCount'"/><xsl:with-param name="output_node_name" select="'UnitCount'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'PPUCountType'"/><xsl:with-param name="output_node_name" select="'PPUCountType'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LotOfferingExpirationDate'"/><xsl:with-param name="output_node_name" select="'LotOfferingExpirationDate'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'HardwarePlatform'"/><xsl:with-param name="output_node_name" select="'HardwarePlatform'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'StyleName'"/><xsl:with-param name="output_node_name" select="'StyleName'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LegalComplianceCertificationMetadata'"/><xsl:with-param name="output_node_name" select="'LegalComplianceCertificationMetadata'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LegalComplianceCertificationStatus'"/><xsl:with-param name="output_node_name" select="'LegalComplianceCertificationStatus'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'LegalComplianceCertificationValue'"/><xsl:with-param name="output_node_name" select="'LegalComplianceCertificationValue'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ImportDesignation'"/><xsl:with-param name="output_node_name" select="'ImportDesignation'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'IsExpirationDatedProduct'"/><xsl:with-param name="output_node_name" select="'IsExpirationDatedProduct'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'AmazonMaturityRating'"/><xsl:with-param name="output_node_name" select="'AmazonMaturityRating'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'IdentityPackage'"/><xsl:with-param name="output_node_name" select="'IdentityPackage'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CanShipInOriginalContainer'"/><xsl:with-param name="output_node_name" select="'CanShipInOriginalContainer'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemUnitOfMeasureUnit'"/><xsl:with-param name="output_node_name" select="'ItemUnitOfMeasureUnit'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemUnitOfMeasureValue'"/><xsl:with-param name="output_node_name" select="'ItemUnitOfMeasureValue'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ItemUnitOfMeasureDimension'"/><xsl:with-param name="output_node_name" select="'ItemUnitOfMeasureDimension'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'TaxTreatmentValue'"/><xsl:with-param name="output_node_name" select="'TaxTreatmentValue'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'TaxClassificationCodeValue'"/><xsl:with-param name="output_node_name" select="'TaxClassificationCodeValue'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'TaxLegalProceedingSourceValue'"/><xsl:with-param name="output_node_name" select="'TaxLegalProceedingSourceValue'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'TaxLegalProceedingIdentification'"/><xsl:with-param name="output_node_name" select="'TaxLegalProceedingIdentification'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'InvoiceLegalCitation'"/><xsl:with-param name="output_node_name" select="'InvoiceLegalCitation'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ExTipi'"/><xsl:with-param name="output_node_name" select="'ExTipi'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'NcmCode'"/><xsl:with-param name="output_node_name" select="'NcmCode'"/></xsl:call-template>
            <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'ContributorSupplyChainRole'"/><xsl:with-param name="output_node_name" select="'ContributorSupplyChainRole'"/></xsl:call-template>
            
        </DescriptionData>
        
        
    </xsl:template>
    
    <!-- When ASIN, DescriptionData minimized -->
    <xsl:template name="DescriptionDataASIN_Template">
        <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'Title'"/><xsl:with-param name="output_node_name" select="'Title'"/></xsl:call-template>
        <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'CountryOfOrigin'"/><xsl:with-param name="output_node_name" select="'CountryOfOrigin'"/></xsl:call-template>
    </xsl:template>
    
    
</xsl:stylesheet>