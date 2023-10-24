<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="places">
	<!-- place -->
	<rule e="any" k="place" v="locality" zoom-min="15">
		<rule e="any" k="mountain_pass|natural|tourism" v="~">
			<caption k="name" priority="10" font-style="normal" font-family="sans_serif" font-size="8" fill="#000000" stroke="#ffffff" stroke-width="1.5" text-wrap-width="110" />
		</rule>
	</rule>

	<!-- place -->
	<!-- Stadt/Kleinstadt -->	
	<rule e="node" k="place" v="town" zoom-min="8" zoom-max="8" >
		<circle radius="2" fill="#f4f3e9" stroke="#9B9B9B" stroke-width="1.0" />
	</rule>
	<rule e="node" k="place" v="town" zoom-min="9" zoom-max="9" >
		<circle radius="3" fill="#f4f3e9" stroke="#9B9B9B" stroke-width="1.0" />
		<circle radius="1.1" stroke="#9B9B9B" stroke-width="1.0" />
	</rule>
	<!-- Hauptstadt/Großstadt -->
	<rule e="node" k="place" v="city" zoom-min="4" zoom-max="7" >
		<circle radius="2" fill="#D3D3D3" stroke="#8E8E8E" stroke-width="1.0" />
	</rule>
	<rule e="node" k="place" v="city" zoom-min="8" zoom-max="8" >
		<circle radius="2" fill="#f4f3e9" stroke="#8E8E8E" stroke-width="1.0" />
	</rule>
	<rule e="node" k="place" v="city" zoom-min="9" zoom-max="9" >
		<circle radius="4" fill="#f4f3e9" stroke="#8E8E8E" stroke-width="1.0" />
		<circle radius="1.8" fill="#8E8E8E" />
	</rule>
			
	<!-- captions -->
	<!-- kleine Siedlung oder Weiler -->
	<rule e="node" k="place" v="hamlet" zoom-min="13" zoom-max="15">
		<caption k="name" font-family="default" font-style="normal" font-size="12" fill="#000000" stroke="#ffffff" stroke-width="1.2" />
	</rule>
	<!-- Dorf -->
	<rule e="node" k="place" v="village" zoom-min="10" zoom-max="11">
		<caption k="name" font-family="default" font-size="12" fill="#000000" stroke="#ffffff" stroke-width="1.2" />
	</rule>
	<rule e="node" k="place" v="village" zoom-min="12" zoom-max="15">
		<caption k="name" font-family="default" font-style="bold" font-size="12" fill="#000000" stroke="#ffffff" stroke-width="1.2" />
	</rule>
	<!-- Stadtteil -->
	<rule e="node" k="place" v="suburb" zoom-min="12" zoom-max="14">
		<caption k="name" font-family="default" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0" />
	</rule>
	<!-- Stadt/Kleinstadt -->
	<rule e="node" k="place" v="town" zoom-min="8" zoom-max="9">
		<caption k="name" dy="12" font-family="sans_serif" font-style="normal" font-size="12" fill="#000000" stroke="#ffffff" stroke-width="2.0" />
	</rule>
	<rule e="node" k="place" v="town" zoom-min="10" zoom-max="13">
		<caption k="name" font-family="sans_serif" font-style="bold" font-size="14" fill="#000000" stroke="#ffffff" stroke-width="2.0" />
	</rule>

	
	<!-- Hauptstadt/Großstadt -->
	<rule e="node" k="place" v="city" zoom-min="7" zoom-max="9">
		<caption k="name" dy="15" font-family="sans_serif" font-style="bold" font-size="16" fill="#000000" stroke="#FFFFFF" stroke-width="2.0" />
	</rule>
	<rule e="node" k="place" v="city" zoom-min="10" zoom-max="12">
		<caption k="name" dy="15" font-family="sans_serif" font-style="bold" font-size="22" fill="#000000" stroke="#FFFFFF" stroke-width="2.0" />
	</rule>
	
	
	<rule e="node" k="place" v="islet" zoom-min="13"> <!-- wird nur von OpenAndroMaps unterstüzt -->
		<caption k="name" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0" />
	</rule>
	
	
	<rule e="node" k="place" v="island" zoom-min="7" zoom-max="13">
		<caption k="name" font-style="bold" font-size="12" fill="#000000" stroke="#ffffff" stroke-width="3.0" />
	</rule>
	
	<!-- Bundesland -->
	<rule e="node" k="place" v="state" zoom-min="6" zoom-max="8" cat="boundaries_areas">
		<caption k="name" font-style="bold" font-size="20" fill="#000000" stroke="#FFFFFF" stroke-width="3.0" text-transform="uppercase" />
	</rule>
	
	<!-- Staat -->
	<rule e="node" k="place" v="country" zoom-max="7" cat="boundaries_areas">
		<caption k="name" font-style="bold" font-size="25" fill="#000000" stroke="#FFFFFF" stroke-width="3.0" text-transform="uppercase" />
	</rule>
		
</xsl:template>

</xsl:stylesheet>
