<?xml-stylesheet type="text/xsl" href="active_RT5.xslt"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme"
			xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
			
    <xsl:include href="menu.xslt" />
    <xsl:include href="contour.xslt" />
    <xsl:include href="building.xslt" />
    <xsl:include href="highway.xslt" />
    <xsl:include href="railway.xslt" />
    <xsl:include href="aeroway.xslt" />
    <xsl:include href="landuse.xslt" />
    <xsl:include href="water.xslt" />
    <xsl:include href="admin.xslt" />
    <xsl:include href="place.xslt" />
    <xsl:include href="hikingtrails.xslt" />
    <xsl:include href="tourism.xslt" />
    <xsl:include href="natural.xslt" />    
    <xsl:include href="aerial.xslt" />
    <xsl:include href="barrier.xslt" />
	<xsl:include href="amenity.xslt" />
    <xsl:include href="poi.xslt" />
	<xsl:include href="power.xslt" />
	<xsl:include href="historic.xslt" />
	<xsl:include href="military.xslt" />
	<xsl:include href="boundary.xslt" />
	<xsl:include href="leisure.xslt" />
	<xsl:include href="areas.xslt" />
	<xsl:include href="man_made.xslt" />
	<xsl:include href="route.xslt" />
<xsl:template match="/">

<rendertheme xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
			xsi:schemaLocation="http://mapsforge.org/renderTheme ../renderTheme-V5.xsd"
			version="5" map-background-outside="#dddddd" map-background="#FAFBFC">

	<xsl:comment>
		active RT5 (active RenderTheme Version 5)
		Mapsforge Rendertheme for Apps with Mapsforge support and Openandromaps
		
		by LocusUser#1 (Frank Schöneck)
		Contact: LocusUser1@gmx.de
		
		inspiriert from Outdooractive.com map, style OSM-Summer
	</xsl:comment> 

	<xsl:call-template name="menu"/>
	<xsl:call-template name="areas"/>
	<xsl:call-template name="landuse"/>
	<xsl:call-template name="leisure"/>
	<xsl:call-template name="tourism_areas"/>
	<xsl:call-template name="natural_ways"/>
	<xsl:call-template name="waterways"/>
	<xsl:call-template name="waterbodies"/>
	<xsl:call-template name="amenity_ways"/>
	<xsl:call-template name="admin"/>
	<xsl:call-template name="contour_lines"/>
	<xsl:call-template name="aeroway"/>
	<xsl:call-template name="highway_area"/>
	<xsl:call-template name="railway_tunnel"/>
	<xsl:call-template name="railway_no_tunnel"/>
	<xsl:call-template name="buildings"/>
	<xsl:call-template name="highway"/>	
	<xsl:call-template name="railway_node"/>
	<xsl:call-template name="military_ways"/>
	<xsl:call-template name="historic_ways"/>
	<xsl:call-template name="route"/>
	<xsl:call-template name="power"/>
	<xsl:call-template name="places"/>
	<xsl:call-template name="boundary"/>
	<xsl:call-template name="aerial"/>
	<xsl:call-template name="man_made"/>
	<xsl:call-template name="barrier"/>
	<xsl:call-template name="natural_nodes"/>
	<xsl:call-template name="amenity_nodes"/>
	<xsl:call-template name="building_nodes"/>
	<xsl:call-template name="historic_nodes"/>
	<xsl:call-template name="military_nodes"/>
	<xsl:call-template name="tourism_nodes"/>
	<xsl:call-template name="poi"/>
	<xsl:call-template name="hikingtrails"/>
</rendertheme>

</xsl:template>
</xsl:stylesheet>
