<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<xsl:template name="boundary">
	<!-- NATIONAL PARK -->
	<rule e="way" k="boundary" v="national_park|protected_area" cat="boundaries_areas">
		<line stroke="#b0c68d" stroke-width="2.0" stroke-linecap="butt" />

		<!-- captions -->
		<rule e="way" k="boundary" v="national_park" zoom-min="10" zoom-max="15">
			<caption k="name" text-transform="uppercase" font-style="bold" font-size="10" position="center" fill="#FFFFFF" stroke="#688F37" stroke-width="2.5" text-wrap-width="120"/>
		</rule>
		<rule e="way" k="boundary" v="protected_area" zoom-min="13" zoom-max="15">
			<caption k="name" font-family="sans_serif" font-style="italic" font-size="10" position="center" fill="#000000" stroke="#ffffff" stroke-width="1.5" text-wrap-width="120"/>
		</rule>
	</rule>
</xsl:template>
</xsl:stylesheet>
