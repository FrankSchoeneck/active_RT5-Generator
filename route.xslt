<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="route">
	<!-- ferry routes -->
	<rule e="way" k="route" v="ferry" zoom-max="11">
		<line stroke="#1E71C6" stroke-width="0.4" stroke-dasharray="6,5" stroke-linecap="butt" />
	</rule>
	<rule e="way" k="route" v="ferry" zoom-min="12">
		<line stroke="#1E71C6" stroke-width="0.2" stroke-dasharray="6,5" stroke-linecap="butt" />
		<pathText k="name" font-style="italic" font-size="10" dy="-1" fill="#1E71C6" stroke="#ffffff" stroke-width="0.5" />
	</rule>
</xsl:template>

</xsl:stylesheet>
