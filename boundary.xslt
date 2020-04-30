<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<xsl:template name="boundary">
	<!-- NATIONAL PARK -->
	<rule e="way" k="boundary" v="national_park|protected_area" cat="boundaries_areas">
		<rule e="way" k="protect_class" v="1|2|3|4|~">
			<area fill="#2034972d" />
		</rule>
		<rule e="way" k="protect_class" v="1|2|3|4|~" zoom-min="14">
			<line stroke="#6bb96c" stroke-width="0.8" stroke-linecap="butt" />
		</rule>

		<!-- captions -->
		<rule e="way" k="boundary" v="national_park|protect_class" zoom-min="13" zoom-max="15">
			<caption k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#164526" stroke="#ffffff" stroke-width="1.5" />
		</rule>

		<!-- Deaktivert da es in Mapsforge Probleme mit den Kachelgrenzen gibt -->
<!--		<rule e="way" k="boundary" v="national_park|protect_class" zoom-min="15">
			<pathText k="name" font-style="normal" font-family="sans_serif" font-size="9" fill="#164526" stroke="#ffffff" stroke-width="1.5" />
		</rule>
-->		
	</rule>
</xsl:template>
</xsl:stylesheet>
