<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="route">
	<!-- ferry routes -->
	<rule e="way" k="route" v="ferry" zoom-max="11">
		<line stroke="#1E71C6" stroke-width="0.6" stroke-dasharray="10,5" stroke-linecap="butt" />
	</rule>
	<rule e="way" k="route" v="ferry" zoom-min="12">
		<line stroke="#1E71C6" stroke-width="0.3" stroke-dasharray="10,5" stroke-linecap="butt" />
		<pathText k="name" font-style="bold" font-size="10" dy="-2" fill="#1E71C6" stroke="#ffffff" stroke-width="1.0" />
	</rule>
</xsl:template>

</xsl:stylesheet>
