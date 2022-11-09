<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="../../../Product_Templates/templates.xsl"/>
    <xsl:output method="xml" indent="yes"/>
    
    <!-- product_type_selector -->
    <xsl:template name="candle_product_type_fields">
        
        <xsl:call-template name="simple_field"><xsl:with-param name="input_node_name" select="'AcceptedVoltageFrequency'"/><xsl:with-param name="output_node_name" as="" select="'AcceptedVoltageFrequency'"/> </xsl:call-template>
        
        <!-- 
             <xsd:element minOccurs="0" name="AcceptedVoltageFrequency">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="100v_240v_50hz_60hz"/>
             <xsd:enumeration value="220v_240v_60hz"/>
             <xsd:enumeration value="220v_240v_50hz"/>
             <xsd:enumeration value="100v_120v_60hz"/>
             <xsd:enumeration value="100v_120v_50hz"/>
             <xsd:enumeration value="100v_240v_60hz"/>
             <xsd:enumeration value="100v_240v_50hz"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="BaseDiameter" type="LengthDimension"/>
             <xsd:element minOccurs="0" name="BaseType" type="HundredString"/>
             <xsd:element minOccurs="0" name="BladeColor" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="LightOutputLuminance" type="LuminancePositiveIntegerDimension"/>
             <xsd:element minOccurs="0" name="CapType" type="HundredString"/>
             <xsd:element minOccurs="0" name="Codabar" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="ColorMap" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="Color" type="SuperLongStringNotNull"/>
             <xsd:element minOccurs="0" name="ColorRenderingIndex" type="xsd:positiveInteger"/>
             <xsd:element minOccurs="0" name="ColorTemperature" type="TemperatureRatingDimension"/>
             <xsd:element maxOccurs="10" minOccurs="0" name="CompatibleDevices" type="StringNotNull"/>
             <xsd:element maxOccurs="5" minOccurs="0" name="ConnectivityProtocol" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="ContainerType" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="ContainsLiquidContents">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="true"/>
             <xsd:enumeration value="false"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="ControlMethod">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="voice"/>
             <xsd:enumeration value="application"/>
             <xsd:enumeration value="touch"/>
             <xsd:enumeration value="remote"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="ControllerType" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="CraftType" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="EnergyEfficiencyRating" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="EnergyGuideAnnualOperatingCost" type="xsd:decimal"/>
             <xsd:element minOccurs="0" name="EnergyGuideCostDisclosure">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="2007_natural_gas"/>
             <xsd:enumeration value="2007_electricity"/>
             <xsd:enumeration value="2012_oil"/>
             <xsd:enumeration value="2007_propane"/>
             <xsd:enumeration value="2012_electricity"/>
             <xsd:enumeration value="2012_dishwasher"/>
             <xsd:enumeration value="2007_clothes_washer"/>
             <xsd:enumeration value="2012_propane"/>
             <xsd:enumeration value="2007_dishwasher"/>
             <xsd:enumeration value="2007_oil"/>
             <xsd:enumeration value="2012_natural_gas"/>
             <xsd:enumeration value="2012_clothes_washer"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="EuEnergyLabelEfficiencyClass">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="a_plus_plus_plus_to_d"/>
             <xsd:enumeration value="a_plus_plus_to_g"/>
             <xsd:enumeration value="a_plus_to_g"/>
             <xsd:enumeration value="a_plus_to_f"/>
             <xsd:enumeration value="a_to_g"/>
             <xsd:enumeration value="a_plus_plus_plus_to_g"/>
             <xsd:enumeration value="a_plus_plus_to_e"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="FinishTypes" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="FixtureType" type="String"/>
             <xsd:element minOccurs="0" name="FulfillmentCenterSpecialStorage" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="IncandescentEquivalentWattage" type="xsd:positiveInteger"/>
             <xsd:element minOccurs="0" name="NumberofIncludedCameras" type="LongString"/>
             <xsd:element minOccurs="0" name="InternationalProtectionRating" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="IsAssemblyRequired">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="true"/>
             <xsd:enumeration value="false"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="IsExclusiveProduct">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="true"/>
             <xsd:enumeration value="false"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="IsFragile">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="true"/>
             <xsd:enumeration value="false"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="ItemDiameter" type="LengthDimension"/>
             <xsd:element minOccurs="0" name="DisplayDepth" type="LengthDimension"/>
             <xsd:element minOccurs="0" name="ItemDisplayDiameter" type="LengthDimension"/>
             <xsd:element minOccurs="0" name="ItemDisplayHeight" type="LengthDimension"/>
             <xsd:element minOccurs="0" name="DisplayLength" type="LengthDimension"/>
             <xsd:element minOccurs="0" name="DisplayVolume" type="VolumeDimension"/>
             <xsd:element minOccurs="0" name="DisplayWeight" type="WeightDimension"/>
             <xsd:element minOccurs="0" name="ItemDisplayWidth" type="LengthDimension"/>
             <xsd:element minOccurs="0" name="ItemShape" type="HundredString"/>
             <xsd:element minOccurs="0" name="LanguageValue">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="german"/>
             <xsd:enumeration value="aragonese"/>
             <xsd:enumeration value="sidamo"/>
             <xsd:enumeration value="altaic_languages"/>
             <xsd:enumeration value="luo"/>
             <xsd:enumeration value="papuan_languages"/>
             <xsd:enumeration value="khotanese"/>
             <xsd:enumeration value="kinyarwanda"/>
             <xsd:enumeration value="elamite"/>
             <xsd:enumeration value="hausa"/>
             <xsd:enumeration value="dutch"/>
             <xsd:enumeration value="old_french"/>
             <xsd:enumeration value="classical_syriac"/>
             <xsd:enumeration value="flemish"/>
             <xsd:enumeration value="kokborok"/>
             <xsd:enumeration value="songhai_languages"/>
             <xsd:enumeration value="nepali"/>
             <xsd:enumeration value="makasar"/>
             <xsd:enumeration value="ancient_greek"/>
             <xsd:enumeration value="sardinian"/>
             <xsd:enumeration value="niger_kordofanian_languages"/>
             <xsd:enumeration value="chinook_jargon"/>
             <xsd:enumeration value="cayuga"/>
             <xsd:enumeration value="castillian"/>
             <xsd:enumeration value="old_irish"/>
             <xsd:enumeration value="persian"/>
             <xsd:enumeration value="aleut"/>
             <xsd:enumeration value="jula"/>
             <xsd:enumeration value="siksika"/>
             <xsd:enumeration value="pohnpeian"/>
             <xsd:enumeration value="nzima"/>
             <xsd:enumeration value="chiricahua"/>
             <xsd:enumeration value="siswati"/>
             <xsd:enumeration value="sumerian"/>
             <xsd:enumeration value="north_american_indian_languages"/>
             <xsd:enumeration value="pidgin_english"/>
             <xsd:enumeration value="minangkabau"/>
             <xsd:enumeration value="dravidian_languages"/>
             <xsd:enumeration value="gorontalo"/>
             <xsd:enumeration value="slovak"/>
             <xsd:enumeration value="hebrew"/>
             <xsd:enumeration value="sasak"/>
             <xsd:enumeration value="northern_sami"/>
             <xsd:enumeration value="ekajuk"/>
             <xsd:enumeration value="chechen"/>
             <xsd:enumeration value="selkup"/>
             <xsd:enumeration value="kirundi"/>
             <xsd:enumeration value="braj"/>
             <xsd:enumeration value="celtic_languages"/>
             <xsd:enumeration value="bengali"/>
             <xsd:enumeration value="azerbaijani"/>
             <xsd:enumeration value="upper_sorbian"/>
             <xsd:enumeration value="sorbian_languages"/>
             <xsd:enumeration value="scots"/>
             <xsd:enumeration value="afrikaans"/>
             <xsd:enumeration value="sami"/>
             <xsd:enumeration value="umbundu"/>
             <xsd:enumeration value="australian_languages"/>
             <xsd:enumeration value="assyrian"/>
             <xsd:enumeration value="navaho"/>
             <xsd:enumeration value="khoisan_languages"/>
             <xsd:enumeration value="chamic_languages"/>
             <xsd:enumeration value="lithuanian"/>
             <xsd:enumeration value="bambara"/>
             <xsd:enumeration value="vietnamese"/>
             <xsd:enumeration value="bini"/>
             <xsd:enumeration value="maltese"/>
             <xsd:enumeration value="slave_athapascan"/>
             <xsd:enumeration value="mandar"/>
             <xsd:enumeration value="susu"/>
             <xsd:enumeration value="lule_sami"/>
             <xsd:enumeration value="apache_languages"/>
             <xsd:enumeration value="artificial_languages"/>
             <xsd:enumeration value="algonquian_languages"/>
             <xsd:enumeration value="bikol"/>
             <xsd:enumeration value="sanskrit"/>
             <xsd:enumeration value="tuvinian"/>
             <xsd:enumeration value="bihari"/>
             <xsd:enumeration value="wakashan_languages"/>
             <xsd:enumeration value="gaelic_scots"/>
             <xsd:enumeration value="tatar"/>
             <xsd:enumeration value="luba_katanga"/>
             <xsd:enumeration value="kumyk"/>
             <xsd:enumeration value="welsh"/>
             <xsd:enumeration value="chinese"/>
             <xsd:enumeration value="japanese"/>
             <xsd:enumeration value="beja"/>
             <xsd:enumeration value="norwegian_bokmal"/>
             <xsd:enumeration value="tzeltal"/>
             <xsd:enumeration value="tiv"/>
             <xsd:enumeration value="angika"/>
             <xsd:enumeration value="scots_gaelic"/>
             <xsd:enumeration value="garo"/>
             <xsd:enumeration value="otomian_languages"/>
             <xsd:enumeration value="north_ndebele"/>
             <xsd:enumeration value="dhivehi"/>
             <xsd:enumeration value="aramaic"/>
             <xsd:enumeration value="rarotongan"/>
             <xsd:enumeration value="setswana"/>
             <xsd:enumeration value="kanuri"/>
             <xsd:enumeration value="mon_khmer_languages"/>
             <xsd:enumeration value="haryanvi"/>
             <xsd:enumeration value="zaza"/>
             <xsd:enumeration value="lushai"/>
             <xsd:enumeration value="ijo_languages"/>
             <xsd:enumeration value="zande_languages"/>
             <xsd:enumeration value="indic"/>
             <xsd:enumeration value="sandawe"/>
             <xsd:enumeration value="fon"/>
             <xsd:enumeration value="ndonga"/>
             <xsd:enumeration value="xhosa"/>
             <xsd:enumeration value="judeo_persian"/>
             <xsd:enumeration value="taiwanese_chinese"/>
             <xsd:enumeration value="karen_languages"/>
             <xsd:enumeration value="bribri"/>
             <xsd:enumeration value="marathi"/>
             <xsd:enumeration value="sinhalese"/>
             <xsd:enumeration value="inuktitut"/>
             <xsd:enumeration value="tigre"/>
             <xsd:enumeration value="slovene"/>
             <xsd:enumeration value="choctaw"/>
             <xsd:enumeration value="ga"/>
             <xsd:enumeration value="northern_frisian"/>
             <xsd:enumeration value="yugoslavian"/>
             <xsd:enumeration value="mirandese"/>
             <xsd:enumeration value="nauru"/>
             <xsd:enumeration value="spanish"/>
             <xsd:enumeration value="somali"/>
             <xsd:enumeration value="dakota"/>
             <xsd:enumeration value="syriac"/>
             <xsd:enumeration value="french_canadian"/>
             <xsd:enumeration value="lower_sorbian"/>
             <xsd:enumeration value="punjabi"/>
             <xsd:enumeration value="inari_sami"/>
             <xsd:enumeration value="gwichin"/>
             <xsd:enumeration value="inuktitun"/>
             <xsd:enumeration value="erzya"/>
             <xsd:enumeration value="cushitic_languages"/>
             <xsd:enumeration value="kikuyu"/>
             <xsd:enumeration value="quechua"/>
             <xsd:enumeration value="nilo_saharan_languages"/>
             <xsd:enumeration value="sino_tibetan"/>
             <xsd:enumeration value="kalaallisut"/>
             <xsd:enumeration value="asturian"/>
             <xsd:enumeration value="romance"/>
             <xsd:enumeration value="pampanga"/>
             <xsd:enumeration value="fanti"/>
             <xsd:enumeration value="bislama"/>
             <xsd:enumeration value="bahasa"/>
             <xsd:enumeration value="aromanian"/>
             <xsd:enumeration value="madurese"/>
             <xsd:enumeration value="pedi"/>
             <xsd:enumeration value="norwegian"/>
             <xsd:enumeration value="herero"/>
             <xsd:enumeration value="yoruba"/>
             <xsd:enumeration value="ottoman_turkish"/>
             <xsd:enumeration value="latin"/>
             <xsd:enumeration value="middle_english"/>
             <xsd:enumeration value="gilbertese"/>
             <xsd:enumeration value="french"/>
             <xsd:enumeration value="georgian"/>
             <xsd:enumeration value="portuguese_brazilian"/>
             <xsd:enumeration value="old_provencal"/>
             <xsd:enumeration value="tamashek"/>
             <xsd:enumeration value="serbian"/>
             <xsd:enumeration value="marshallese"/>
             <xsd:enumeration value="kru_languages"/>
             <xsd:enumeration value="kashubian"/>
             <xsd:enumeration value="chhattisgarhi"/>
             <xsd:enumeration value="kosraean"/>
             <xsd:enumeration value="hindi"/>
             <xsd:enumeration value="esperanto"/>
             <xsd:enumeration value="kazakh"/>
             <xsd:enumeration value="gayo"/>
             <xsd:enumeration value="afghan_pashtu"/>
             <xsd:enumeration value="rapanui"/>
             <xsd:enumeration value="ewondo"/>
             <xsd:enumeration value="egyptian"/>
             <xsd:enumeration value="gibberish"/>
             <xsd:enumeration value="khmer"/>
             <xsd:enumeration value="banda_languages"/>
             <xsd:enumeration value="hungarian"/>
             <xsd:enumeration value="moksha"/>
             <xsd:enumeration value="creek"/>
             <xsd:enumeration value="luiseno"/>
             <xsd:enumeration value="karelian"/>
             <xsd:enumeration value="greenlandic"/>
             <xsd:enumeration value="samoan"/>
             <xsd:enumeration value="romansch"/>
             <xsd:enumeration value="berber"/>
             <xsd:enumeration value="cree"/>
             <xsd:enumeration value="gothic"/>
             <xsd:enumeration value="nyamwezi"/>
             <xsd:enumeration value="magahi"/>
             <xsd:enumeration value="shona"/>
             <xsd:enumeration value="lunda"/>
             <xsd:enumeration value="uzbek"/>
             <xsd:enumeration value="arawak"/>
             <xsd:enumeration value="friulian"/>
             <xsd:enumeration value="fiji"/>
             <xsd:enumeration value="turkmen"/>
             <xsd:enumeration value="old_persian"/>
             <xsd:enumeration value="shan"/>
             <xsd:enumeration value="latvian"/>
             <xsd:enumeration value="old_english"/>
             <xsd:enumeration value="tsonga"/>
             <xsd:enumeration value="faroese"/>
             <xsd:enumeration value="votic"/>
             <xsd:enumeration value="ossetian"/>
             <xsd:enumeration value="iroquoian_languages"/>
             <xsd:enumeration value="yupik_languages"/>
             <xsd:enumeration value="dargwa"/>
             <xsd:enumeration value="papiamento"/>
             <xsd:enumeration value="phoenician"/>
             <xsd:enumeration value="mandingo"/>
             <xsd:enumeration value="delaware"/>
             <xsd:enumeration value="low_german"/>
             <xsd:enumeration value="lao"/>
             <xsd:enumeration value="mongolian"/>
             <xsd:enumeration value="telugu"/>
             <xsd:enumeration value="abkhazian"/>
             <xsd:enumeration value="chagatai"/>
             <xsd:enumeration value="achinese"/>
             <xsd:enumeration value="udmurt"/>
             <xsd:enumeration value="siouan_languages"/>
             <xsd:enumeration value="malagasy"/>
             <xsd:enumeration value="pashto"/>
             <xsd:enumeration value="thai"/>
             <xsd:enumeration value="efik"/>
             <xsd:enumeration value="luxembourgish"/>
             <xsd:enumeration value="bodo"/>
             <xsd:enumeration value="gbaya"/>
             <xsd:enumeration value="kara_kalpak"/>
             <xsd:enumeration value="eastern_frisian"/>
             <xsd:enumeration value="nepal_bhasa"/>
             <xsd:enumeration value="malay"/>
             <xsd:enumeration value="germanic_languages"/>
             <xsd:enumeration value="tsimshian"/>
             <xsd:enumeration value="hokkien"/>
             <xsd:enumeration value="adangme"/>
             <xsd:enumeration value="dogri"/>
             <xsd:enumeration value="lamba"/>
             <xsd:enumeration value="sogdian"/>
             <xsd:enumeration value="scandanavian_languages"/>
             <xsd:enumeration value="middle_french"/>
             <xsd:enumeration value="afrihili"/>
             <xsd:enumeration value="estonian"/>
             <xsd:enumeration value="sichuan_yi"/>
             <xsd:enumeration value="portuguese_creole"/>
             <xsd:enumeration value="igbo"/>
             <xsd:enumeration value="awadhi"/>
             <xsd:enumeration value="ukranian"/>
             <xsd:enumeration value="interlingua"/>
             <xsd:enumeration value="gahrwali"/>
             <xsd:enumeration value="mizo"/>
             <xsd:enumeration value="interlingue"/>
             <xsd:enumeration value="cantonese_chinese"/>
             <xsd:enumeration value="albanian"/>
             <xsd:enumeration value="italian"/>
             <xsd:enumeration value="adygei"/>
             <xsd:enumeration value="korean"/>
             <xsd:enumeration value="khasi"/>
             <xsd:enumeration value="tupi_languages"/>
             <xsd:enumeration value="lojban"/>
             <xsd:enumeration value="ewe"/>
             <xsd:enumeration value="gullah"/>
             <xsd:enumeration value="simplified_chinese"/>
             <xsd:enumeration value="prakrit_languages"/>
             <xsd:enumeration value="akan"/>
             <xsd:enumeration value="kashmiri"/>
             <xsd:enumeration value="bosnian"/>
             <xsd:enumeration value="klingon"/>
             <xsd:enumeration value="tai_languages"/>
             <xsd:enumeration value="dzongkha"/>
             <xsd:enumeration value="belgian"/>
             <xsd:enumeration value="manipuri"/>
             <xsd:enumeration value="lapp"/>
             <xsd:enumeration value="guarani"/>
             <xsd:enumeration value="valencian"/>
             <xsd:enumeration value="sangho"/>
             <xsd:enumeration value="yapese"/>
             <xsd:enumeration value="zuni"/>
             <xsd:enumeration value="kuanyama"/>
             <xsd:enumeration value="bhutani"/>
             <xsd:enumeration value="english"/>
             <xsd:enumeration value="sign_language"/>
             <xsd:enumeration value="czech"/>
             <xsd:enumeration value="hawaiian"/>
             <xsd:enumeration value="south_ndebele"/>
             <xsd:enumeration value="palauan"/>
             <xsd:enumeration value="geez"/>
             <xsd:enumeration value="austronesian"/>
             <xsd:enumeration value="tahitian"/>
             <xsd:enumeration value="ladino"/>
             <xsd:enumeration value="dinka"/>
             <xsd:enumeration value="komi"/>
             <xsd:enumeration value="bhojpuri"/>
             <xsd:enumeration value="old_norse"/>
             <xsd:enumeration value="walloon"/>
             <xsd:enumeration value="central_american_indian_languages"/>
             <xsd:enumeration value="javanese"/>
             <xsd:enumeration value="belarusian"/>
             <xsd:enumeration value="tibetan"/>
             <xsd:enumeration value="zulu"/>
             <xsd:enumeration value="cherokee"/>
             <xsd:enumeration value="swahili"/>
             <xsd:enumeration value="iranian_languages"/>
             <xsd:enumeration value="himachali_languages"/>
             <xsd:enumeration value="oriya"/>
             <xsd:enumeration value="galibi_carib"/>
             <xsd:enumeration value="middle_irish"/>
             <xsd:enumeration value="icelandic"/>
             <xsd:enumeration value="classical_newari"/>
             <xsd:enumeration value="baltic_languages"/>
             <xsd:enumeration value="kamba"/>
             <xsd:enumeration value="twi"/>
             <xsd:enumeration value="afro_asiatic_languages"/>
             <xsd:enumeration value="gujarati"/>
             <xsd:enumeration value="nyankole"/>
             <xsd:enumeration value="baluchi"/>
             <xsd:enumeration value="uighur"/>
             <xsd:enumeration value="occitan"/>
             <xsd:enumeration value="pangasinan"/>
             <xsd:enumeration value="semitic_languages"/>
             <xsd:enumeration value="sundanese"/>
             <xsd:enumeration value="nko"/>
             <xsd:enumeration value="tamil"/>
             <xsd:enumeration value="gondi"/>
             <xsd:enumeration value="judeo_arabic"/>
             <xsd:enumeration value="arapaho"/>
             <xsd:enumeration value="micmac"/>
             <xsd:enumeration value="mohawk"/>
             <xsd:enumeration value="yao"/>
             <xsd:enumeration value="sranan_tongo"/>
             <xsd:enumeration value="farsi"/>
             <xsd:enumeration value="bliss"/>
             <xsd:enumeration value="gallegan"/>
             <xsd:enumeration value="buryat"/>
             <xsd:enumeration value="manx"/>
             <xsd:enumeration value="tagalog"/>
             <xsd:enumeration value="assamese"/>
             <xsd:enumeration value="kurukh"/>
             <xsd:enumeration value="swiss_german"/>
             <xsd:enumeration value="scandinavian_languages"/>
             <xsd:enumeration value="old_high_german"/>
             <xsd:enumeration value="mandarin_chinese"/>
             <xsd:enumeration value="polish"/>
             <xsd:enumeration value="kabyle"/>
             <xsd:enumeration value="galician"/>
             <xsd:enumeration value="mayan"/>
             <xsd:enumeration value="ukrainian"/>
             <xsd:enumeration value="bamileke_languages"/>
             <xsd:enumeration value="zenaga"/>
             <xsd:enumeration value="kalmyk"/>
             <xsd:enumeration value="ojibwa"/>
             <xsd:enumeration value="tereno"/>
             <xsd:enumeration value="karachay_balkar"/>
             <xsd:enumeration value="yakut"/>
             <xsd:enumeration value="filipino"/>
             <xsd:enumeration value="rajasthani"/>
             <xsd:enumeration value="aymara"/>
             <xsd:enumeration value="kawi"/>
             <xsd:enumeration value="manchu"/>
             <xsd:enumeration value="traditional_chinese"/>
             <xsd:enumeration value="romanian"/>
             <xsd:enumeration value="limburgan"/>
             <xsd:enumeration value="southern_sami"/>
             <xsd:enumeration value="burmese"/>
             <xsd:enumeration value="armenian"/>
             <xsd:enumeration value="breton"/>
             <xsd:enumeration value="hmong"/>
             <xsd:enumeration value="indo_european"/>
             <xsd:enumeration value="middle_high_german"/>
             <xsd:enumeration value="ido"/>
             <xsd:enumeration value="sindhi"/>
             <xsd:enumeration value="bulgarian"/>
             <xsd:enumeration value="neapolitan"/>
             <xsd:enumeration value="kachin"/>
             <xsd:enumeration value="dogrib"/>
             <xsd:enumeration value="moldavian"/>
             <xsd:enumeration value="mongo"/>
             <xsd:enumeration value="blin"/>
             <xsd:enumeration value="ugaritic"/>
             <xsd:enumeration value="hiri_motu"/>
             <xsd:enumeration value="soninke"/>
             <xsd:enumeration value="tok_pisin"/>
             <xsd:enumeration value="osage"/>
             <xsd:enumeration value="romany"/>
             <xsd:enumeration value="byelorussian"/>
             <xsd:enumeration value="maharati"/>
             <xsd:enumeration value="duala"/>
             <xsd:enumeration value="american_sign_language"/>
             <xsd:enumeration value="marwari"/>
             <xsd:enumeration value="sicilian"/>
             <xsd:enumeration value="akkadian"/>
             <xsd:enumeration value="timne"/>
             <xsd:enumeration value="tumbuka"/>
             <xsd:enumeration value="greek"/>
             <xsd:enumeration value="basa"/>
             <xsd:enumeration value="kabardian"/>
             <xsd:enumeration value="southern_sotho"/>
             <xsd:enumeration value="haida"/>
             <xsd:enumeration value="basque"/>
             <xsd:enumeration value="chipewyan"/>
             <xsd:enumeration value="serbo-croatian"/>
             <xsd:enumeration value="finnish"/>
             <xsd:enumeration value="venda"/>
             <xsd:enumeration value="avaric"/>
             <xsd:enumeration value="croatian"/>
             <xsd:enumeration value="hittite"/>
             <xsd:enumeration value="southern_altai"/>
             <xsd:enumeration value="salishan_languages"/>
             <xsd:enumeration value="mari"/>
             <xsd:enumeration value="mende"/>
             <xsd:enumeration value="nahuatl"/>
             <xsd:enumeration value="haitian"/>
             <xsd:enumeration value="maori"/>
             <xsd:enumeration value="sukuma"/>
             <xsd:enumeration value="corsican"/>
             <xsd:enumeration value="ingush"/>
             <xsd:enumeration value="nyoro"/>
             <xsd:enumeration value="washo"/>
             <xsd:enumeration value="none"/>
             <xsd:enumeration value="romansh"/>
             <xsd:enumeration value="inupiaq"/>
             <xsd:enumeration value="mossi"/>
             <xsd:enumeration value="buginese"/>
             <xsd:enumeration value="pali"/>
             <xsd:enumeration value="inupiak"/>
             <xsd:enumeration value="nias"/>
             <xsd:enumeration value="vai"/>
             <xsd:enumeration value="kumaoni"/>
             <xsd:enumeration value="russian"/>
             <xsd:enumeration value="chichewa"/>
             <xsd:enumeration value="lahnda"/>
             <xsd:enumeration value="nogai"/>
             <xsd:enumeration value="french_creole"/>
             <xsd:enumeration value="iban"/>
             <xsd:enumeration value="manobo_languages"/>
             <xsd:enumeration value="nubian_languages"/>
             <xsd:enumeration value="pig_latin"/>
             <xsd:enumeration value="cornish"/>
             <xsd:enumeration value="walamo"/>
             <xsd:enumeration value="afar"/>
             <xsd:enumeration value="yiddish"/>
             <xsd:enumeration value="bantu"/>
             <xsd:enumeration value="avestan"/>
             <xsd:enumeration value="grebo"/>
             <xsd:enumeration value="irish"/>
             <xsd:enumeration value="kannada"/>
             <xsd:enumeration value="niuean"/>
             <xsd:enumeration value="acoli"/>
             <xsd:enumeration value="unknown"/>
             <xsd:enumeration value="norwegian_nynorsk"/>
             <xsd:enumeration value="arabic"/>
             <xsd:enumeration value="dari"/>
             <xsd:enumeration value="multilingual"/>
             <xsd:enumeration value="indonesian"/>
             <xsd:enumeration value="danish"/>
             <xsd:enumeration value="philippine_languages"/>
             <xsd:enumeration value="chamorro"/>
             <xsd:enumeration value="tetum"/>
             <xsd:enumeration value="tonga_nyasa"/>
             <xsd:enumeration value="lingala"/>
             <xsd:enumeration value="zhuang"/>
             <xsd:enumeration value="batak"/>
             <xsd:enumeration value="zapotec"/>
             <xsd:enumeration value="caddo"/>
             <xsd:enumeration value="catalan"/>
             <xsd:enumeration value="cebuano"/>
             <xsd:enumeration value="skolt_sami"/>
             <xsd:enumeration value="kirghiz"/>
             <xsd:enumeration value="munda_languages"/>
             <xsd:enumeration value="old_slavonic"/>
             <xsd:enumeration value="ganda"/>
             <xsd:enumeration value="serer"/>
             <xsd:enumeration value="lezghian"/>
             <xsd:enumeration value="tlingit"/>
             <xsd:enumeration value="hupa"/>
             <xsd:enumeration value="unqualified"/>
             <xsd:enumeration value="provencal"/>
             <xsd:enumeration value="chuukese"/>
             <xsd:enumeration value="cambodian"/>
             <xsd:enumeration value="caucasian_languages"/>
             <xsd:enumeration value="slovakian"/>
             <xsd:enumeration value="waray"/>
             <xsd:enumeration value="fang"/>
             <xsd:enumeration value="swedish"/>
             <xsd:enumeration value="maithili"/>
             <xsd:enumeration value="alsatian"/>
             <xsd:enumeration value="kutenai"/>
             <xsd:enumeration value="wolof"/>
             <xsd:enumeration value="bashkir"/>
             <xsd:enumeration value="luba_lulua"/>
             <xsd:enumeration value="fulah"/>
             <xsd:enumeration value="kpelle"/>
             <xsd:enumeration value="slavic"/>
             <xsd:enumeration value="kurdish"/>
             <xsd:enumeration value="turkish"/>
             <xsd:enumeration value="cheyenne"/>
             <xsd:enumeration value="macedonian"/>
             <xsd:enumeration value="tokelau"/>
             <xsd:enumeration value="tigrinya"/>
             <xsd:enumeration value="santali"/>
             <xsd:enumeration value="crimean_tatar"/>
             <xsd:enumeration value="south_american_indian"/>
             <xsd:enumeration value="lozi"/>
             <xsd:enumeration value="ainu"/>
             <xsd:enumeration value="sesotho"/>
             <xsd:enumeration value="mapudungun"/>
             <xsd:enumeration value="athapascan_languages"/>
             <xsd:enumeration value="coptic"/>
             <xsd:enumeration value="pahlavi"/>
             <xsd:enumeration value="malayalam"/>
             <xsd:enumeration value="chuvash"/>
             <xsd:enumeration value="urdu"/>
             <xsd:enumeration value="land_dayak_languages"/>
             <xsd:enumeration value="portuguese"/>
             <xsd:enumeration value="latin_spanish"/>
             <xsd:enumeration value="bemba"/>
             <xsd:enumeration value="oromo"/>
             <xsd:enumeration value="frisian"/>
             <xsd:enumeration value="amharic"/>
             <xsd:enumeration value="kongo"/>
             <xsd:enumeration value="chibcha"/>
             <xsd:enumeration value="masai"/>
             <xsd:enumeration value="iloko"/>
             <xsd:enumeration value="hiligaynon"/>
             <xsd:enumeration value="finno_ugrian"/>
             <xsd:enumeration value="tuvalu"/>
             <xsd:enumeration value="tajik"/>
             <xsd:enumeration value="volapuk"/>
             <xsd:enumeration value="balinese"/>
             <xsd:enumeration value="kimbundu"/>
             <xsd:enumeration value="creole"/>
             <xsd:enumeration value="middle_dutch"/>
             <xsd:enumeration value="tonga"/>
             <xsd:enumeration value="tulu"/>
             <xsd:enumeration value="samaritan"/>
             <xsd:enumeration value="konkani"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="LegalComplianceCertificationRegulatoryOrganizationName" type="xsd:string"/>
             <xsd:element minOccurs="0" name="LightSourceDiameter" type="LengthDimension"/>
             <xsd:element minOccurs="0" name="BulbLength" type="LengthDimension"/>
             <xsd:element minOccurs="0" name="LightSourceMechanicalLifeExpectancy" type="xsd:decimal"/>
             <xsd:element minOccurs="0" name="BulbLifeSpan" type="TimeIntegerDimension"/>
             <xsd:element minOccurs="0" name="LightSourcePowerFactor" type="xsd:decimal"/>
             <xsd:element minOccurs="0" name="LightSourceSpecialFeatures" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="LightingSourceType">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="flourescent"/>
             <xsd:enumeration value="hmi"/>
             <xsd:enumeration value="tungsten"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="LampWattage" type="xsd:positiveInteger"/>
             <xsd:element minOccurs="0" name="LightingMethod" type="String"/>
             <xsd:element minOccurs="0" name="LumenMaintenanceFactor" type="xsd:decimal"/>
             <xsd:element minOccurs="0" name="LightIntensity" type="Dimension"/>
             <xsd:element minOccurs="0" name="MaterialComposition" type="String"/>
             <xsd:element minOccurs="0" name="Material" type="StringNotNull"/>
             <xsd:element maxOccurs="5" minOccurs="0" name="MaterialTypeFree" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="MaximumCompatibleLightSourceWattage" type="WattageDimension"/>
             <xsd:element minOccurs="0" name="MaximumWeightRecommendation" type="PositiveWeightDimension"/>
             <xsd:element minOccurs="0" name="MercuryContent" type="WeightDimension"/>
             <xsd:element minOccurs="0" name="ModelNumber" type="FortyStringNotNull"/>
             <xsd:element minOccurs="0" name="ModelName" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="NumberOfBlades" type="xsd:positiveInteger"/>
             <xsd:element minOccurs="0" name="NumberOfBoxes" type="xsd:positiveInteger"/>
             <xsd:element minOccurs="0" name="NumberOfLightSources" type="PositiveInteger"/>
             <xsd:element minOccurs="0" name="NumberOfPieces" type="xsd:positiveInteger"/>
             <xsd:element minOccurs="0" name="OperatingLife" type="TimeDimension"/>
             <xsd:element minOccurs="0" name="ArtistBiography" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="PatternName" type="StringNotNull"/>
             <xsd:element maxOccurs="20" minOccurs="0" name="PlatinumKeywords" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="PlugType" type="HundredString"/>
             <xsd:element minOccurs="0" name="PowerPlugType">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="type_d_3pin_in"/>
             <xsd:enumeration value="type_n_3pin_br"/>
             <xsd:enumeration value="type_k_3pin_dk"/>
             <xsd:enumeration value="no_plug"/>
             <xsd:enumeration value="type_e_2pin_fr"/>
             <xsd:enumeration value="type_i_3pin_au"/>
             <xsd:enumeration value="type_a_2pin_jp"/>
             <xsd:enumeration value="type_cef_2pin_eu"/>
             <xsd:enumeration value="type_h_3pin_il"/>
             <xsd:enumeration value="type_c_2pin_eu"/>
             <xsd:enumeration value="type_j_3pin_ch"/>
             <xsd:enumeration value="type_a_2pin_na_jp"/>
             <xsd:enumeration value="type_b_3pin_jp"/>
             <xsd:enumeration value="type_a_2pin_na"/>
             <xsd:enumeration value="type_i_3pin_au_cn"/>
             <xsd:enumeration value="type_cee716_europlug"/>
             <xsd:enumeration value="type_f_2pin_de_es"/>
             <xsd:enumeration value="type_m_3pin_za"/>
             <xsd:enumeration value="type_g_3pin_uk"/>
             <xsd:enumeration value="type_b_3pin_na_jp"/>
             <xsd:enumeration value="type_bs_2pin_uk"/>
             <xsd:enumeration value="16_a_5_pin"/>
             <xsd:enumeration value="32_a_5_pin"/>
             <xsd:enumeration value="type_ef_2pin_eu"/>
             <xsd:enumeration value="type_b_3pin_na"/>
             <xsd:enumeration value="type_l_3pin_it"/>
             <xsd:enumeration value="type_f_2pin_de"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="PowerSource" type="FortyStringNotNull"/>
             <xsd:element minOccurs="0" name="RequiredProductComplianceCertificate" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="Scent" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="ScrewHeadStyle" type="MediumString"/>
             <xsd:element minOccurs="0" name="ShadeColor" type="String"/>
             <xsd:element minOccurs="0" name="ShadeDiameter" type="LengthDimension"/>
             <xsd:element minOccurs="0" name="ShadeMaterialType" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="ShaftType" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="SpecialFeatures" type="String"/>
             <xsd:element minOccurs="0" name="SpecificUses">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="travel"/>
             <xsd:enumeration value="hiking-and-outdoors"/>
             <xsd:enumeration value="hunting-and-shooting"/>
             <xsd:enumeration value="sports"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="SpecificationMet" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="StartUpTimeDescription" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="UVProtection" type="xsd:positiveInteger"/>
             <xsd:element minOccurs="0" name="VariationData">
             <xsd:complexType>
             <xsd:sequence>
             <xsd:element name="VariationTheme">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="color"/>
             <xsd:enumeration value="colorsize"/>
             <xsd:enumeration value="stylename-size"/>
             <xsd:enumeration value="sizename-colorname"/>
             <xsd:enumeration value="size-scent"/>
             <xsd:enumeration value="voltage"/>
             <xsd:enumeration value="size_name"/>
             <xsd:enumeration value="wattage"/>
             <xsd:enumeration value="sizename-stylename"/>
             <xsd:enumeration value="size"/>
             <xsd:enumeration value="scent"/>
             <xsd:enumeration value="stylename"/>
             <xsd:enumeration value="color_name"/>
             <xsd:enumeration value="size-unitcount"/>
             <xsd:enumeration value="sizename-stylename-colorname"/>
             <xsd:enumeration value="patternname-color"/>
             <xsd:enumeration value="stylename-displaylength"/>
             <xsd:enumeration value="style_name"/>
             <xsd:enumeration value="displaylength-stylename"/>
             <xsd:enumeration value="diameter"/>
             <xsd:enumeration value="patternname"/>
             <xsd:enumeration value="displaylength-material"/>
             <xsd:enumeration value="displaywidth-displayheight"/>
             <xsd:enumeration value="numberofitems-stylename"/>
             <xsd:enumeration value="model"/>
             <xsd:enumeration value="itemweight"/>
             <xsd:enumeration value="sizename-numberofitems"/>
             <xsd:enumeration value="patternname-displaywidth"/>
             <xsd:enumeration value="shape"/>
             <xsd:enumeration value="patternname-stylename"/>
             <xsd:enumeration value="material-size"/>
             <xsd:enumeration value="stylename-displaywidth"/>
             <xsd:enumeration value="number_of_items"/>
             <xsd:enumeration value="heightwidth"/>
             <xsd:enumeration value="model-stylename-partnumber"/>
             <xsd:enumeration value="displaywidth-material"/>
             <xsd:enumeration value="numberofitems"/>
             <xsd:enumeration value="size-displaywidth"/>
             <xsd:enumeration value="stylename-model-materialtype-sizename-numberofitems-partnumber"/>
             <xsd:enumeration value="displaylength-patternname"/>
             <xsd:enumeration value="pattern"/>
             <xsd:enumeration value="material-color"/>
             <xsd:enumeration value="heightsize"/>
             <xsd:enumeration value="stylename-material"/>
             <xsd:enumeration value="teamname-sizename"/>
             <xsd:enumeration value="displaylength-size"/>
             <xsd:enumeration value="displayheight"/>
             <xsd:enumeration value="stylename-patternname-sizename"/>
             <xsd:enumeration value="material-displayheight"/>
             <xsd:enumeration value="stylename-patternname"/>
             <xsd:enumeration value="displaylength"/>
             <xsd:enumeration value="colorname-numberofitems"/>
             <xsd:enumeration value="material-displaywidth"/>
             <xsd:enumeration value="material-patternname"/>
             <xsd:enumeration value="patternname-material"/>
             <xsd:enumeration value="model-sizename"/>
             <xsd:enumeration value="colorwattage"/>
             <xsd:enumeration value="stylename-color"/>
             <xsd:enumeration value="size-patternname"/>
             <xsd:enumeration value="material-displaylength"/>
             <xsd:enumeration value="size-displaylength"/>
             <xsd:enumeration value="sizestyle"/>
             <xsd:enumeration value="designshape"/>
             <xsd:enumeration value="material-stylename"/>
             <xsd:enumeration value="colorname-scentname"/>
             <xsd:enumeration value="patternname-size"/>
             <xsd:enumeration value="color-stylename"/>
             <xsd:enumeration value="stylename-unitcount"/>
             <xsd:enumeration value="patternname-displaylength"/>
             <xsd:enumeration value="colorshape"/>
             <xsd:enumeration value="sizename-colorname-numberofitems"/>
             <xsd:enumeration value="color-material"/>
             <xsd:enumeration value="displaylength-displayheight"/>
             <xsd:enumeration value="patternname-displayheight"/>
             <xsd:enumeration value="material"/>
             <xsd:enumeration value="stylename-model-numberofitems-partnumber"/>
             <xsd:enumeration value="displaywidth-size"/>
             <xsd:enumeration value="size-displayheight"/>
             <xsd:enumeration value="heightstyle"/>
             <xsd:enumeration value="width"/>
             <xsd:enumeration value="size-material"/>
             <xsd:enumeration value="shapesize"/>
             <xsd:enumeration value="color-patternname"/>
             <xsd:enumeration value="displaylength-displaywidth"/>
             <xsd:enumeration value="teamname"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element name="Parentage">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="parent"/>
             <xsd:enumeration value="child"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             </xsd:sequence>
             </xsd:complexType>
             </xsd:element>
             <xsd:element minOccurs="0" name="LampWarmupTime" type="MediumStringNotNull"/>
             <xsd:element minOccurs="0" name="WarrantyDescription" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="Wattage" type="WattageDimension"/>
             <xsd:element minOccurs="0" name="WeightedAnnualEnergyConsumption" type="EnergyConsumptionDimension"/>
             <xsd:element minOccurs="0" name="EmbellishmentFeature" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="EuEnergyEfficiencyRating">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="a"/>
             <xsd:enumeration value="b"/>
             <xsd:enumeration value="c"/>
             <xsd:enumeration value="d"/>
             <xsd:enumeration value="e"/>
             <xsd:enumeration value="not_rated"/>
             <xsd:enumeration value="f"/>
             <xsd:enumeration value="g"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="HeightFloorTop" type="LengthDimension"/>
             <xsd:element minOccurs="0" name="HeightWidthSideToSide" type="LengthDimension"/>
             <xsd:element minOccurs="0" name="IsTradeItemOrderableUnit">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="true"/>
             <xsd:enumeration value="false"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="LeagueName" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="LegalComplianceCertificationCertifyingAuthorityName" type="xsd:string"/>
             <xsd:element minOccurs="0" name="LegalComplianceCertificationDateOfIssue" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="LegalComplianceCertificationExpirationDate" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="LegalComplianceCertificationGeographicJurisdiction" type="xsd:string"/>
             <xsd:element minOccurs="0" name="MapPolicy">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="policy_10"/>
             <xsd:enumeration value="policy_6"/>
             <xsd:enumeration value="policy_5"/>
             <xsd:enumeration value="policy_11"/>
             <xsd:enumeration value="policy_8"/>
             <xsd:enumeration value="policy_7"/>
             <xsd:enumeration value="policy_9"/>
             <xsd:enumeration value="policy_2"/>
             <xsd:enumeration value="policy_1"/>
             <xsd:enumeration value="policy_4"/>
             <xsd:enumeration value="policy_3"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="MaterialFeatures" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="OccasionType" type="MediumStringNotNull"/>
             <xsd:element minOccurs="0" name="OperatingTime" type="xsd:decimal"/>
             <xsd:element minOccurs="0" name="OperatingTimeUnit">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="seconds"/>
             <xsd:enumeration value="hours"/>
             <xsd:enumeration value="months"/>
             <xsd:enumeration value="weeks"/>
             <xsd:enumeration value="minutes"/>
             <xsd:enumeration value="days"/>
             <xsd:enumeration value="years"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="RecommendedUsesForProduct" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="RegulationType">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="fda_510_k"/>
             <xsd:enumeration value="health_canada_pcp_reg_no"/>
             <xsd:enumeration value="certificate_of_conformity"/>
             <xsd:enumeration value="ised_hvin"/>
             <xsd:enumeration value="health_canada_npn"/>
             <xsd:enumeration value="cdpr_pest_id"/>
             <xsd:enumeration value="health_canada_din_hm"/>
             <xsd:enumeration value="wasda_pest_id"/>
             <xsd:enumeration value="health_canada_din"/>
             <xsd:enumeration value="ised_certification_reg_no"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="RegulatoryComplianceCertificationValue" type="xsd:string"/>
             <xsd:element minOccurs="0" name="SubjectCharacter" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="TargetGender">
             <xsd:simpleType>
             <xsd:restriction base="xsd:string">
             <xsd:enumeration value="unisex"/>
             <xsd:enumeration value="female"/>
             <xsd:enumeration value="male"/>
             </xsd:restriction>
             </xsd:simpleType>
             </xsd:element>
             <xsd:element minOccurs="0" name="TeamName" type="StringNotNull"/>
             <xsd:element minOccurs="0" name="Theme" type="StringNotNull"/>
             
        -->
        
        
    </xsl:template>
    
    
    
    
</xsl:stylesheet>