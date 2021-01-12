<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="power">
	<!-- Power areas and lines -->
	<rule e="way" k="power" v="*" zoom-min="11">
		<!-- power generator -->
		<rule e="way" k="power" v="generator" >
			<area fill="#DBDCDC" />
		</rule>
		<!-- power station -->
		<rule e="way" k="power" v="station|sub_station|substation" >
			<area fill="#C7C7C7" />
		</rule>
		<!--power line -->
		<rule e="way" k="power" v="line" zoom-min="12" cat="landscapefeat">
			<line stroke="#727272" stroke-width="0.2" stroke-linecap="butt" />
			<line stroke="#727272" stroke-width="1.3" stroke-dasharray="0,20,0.6,50" stroke-linecap="butt" />
			<line stroke="#727272" stroke-width="0.6" stroke-dasharray="0.3,40,0.3,30" />
		</rule>
		<rule e="way" k="power" v="minor_line" zoom-min="13" cat="landscapefeat"> <!-- OpenAndroMaps only-->
			<line stroke="#727272" stroke-width="0.2" stroke-linecap="butt" />
			<line stroke="#727272" stroke-width="0.6" stroke-dasharray="0.3,40,0.3,30" />
		</rule>
	</rule>
	
	<!-- power generator -->
	<rule e="node" k="power" v="generator" zoom-min="13">
		<rule e="node" k="generator:source" v="wind" >
			<symbol id = "power_generator_wind" src="file:/symbols/power_generator_wind.svg" symbol-percent="100" />
			<rule e="node" k="*" v="*" zoom-min="15" >
				<caption symbol-id="power_generator_wind" k="name" position="below" font-style="bold" font-family="sans_serif" font-size="8" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
			</rule>
		</rule>
	</rule>
</xsl:template>

</xsl:stylesheet>
