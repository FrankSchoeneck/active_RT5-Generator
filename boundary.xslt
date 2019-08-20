<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<xsl:template name="boundary">
	<!-- NATIONAL PARK -->
	<rule e="way" k="boundary" v="national_park|protected_area" cat="boundaries_areas">
		<rule e="way" k="protect_class" v="1|~" zoom-max="11">
			<area fill="#2034972d" stroke="#818181" stroke-width="0.01"/>
		</rule>
		<rule e="way" k="protect_class" v="1|~" zoom-min="12">
			<line stroke="#6bb96c" stroke-width="0.8" stroke-linecap="butt" />
		</rule>

		<!-- captions -->
		<rule e="way" k="boundary" v="national_park" zoom-min="12" zoom-max="14">
			<caption k="name" font-style="normal" font-family="sans_serif" font-size="9" fill="#164526" stroke="#ffffff" stroke-width="2.0" />
		</rule>
		<rule e="way" k="protect_class" v="1|~" zoom-min="15">
			<pathText k="name" font-style="normal" font-family="sans_serif" font-size="9" fill="#164526" stroke="#ffffff" stroke-width="2.0" />
		</rule>
	</rule>
</xsl:template>
</xsl:stylesheet>
