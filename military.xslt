<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="military_ways">
	<rule e="way" k="military" v="*" zoom-min="11">
		<rule e="way" k="military" v="airfield|naval_base" >
			<area fill="#D2BCB9" />
		</rule>
		<rule e="way" k="military" v="bunker|bunker_disused" >
			<symbol src="file:/symbols/bunker.svg" symbol-width="11" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="14">
			<caption k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#E57A7A" stroke="#ffffff" stroke-width="2.0" />
		</rule>
	</rule>
</xsl:template>

<xsl:template name="military_nodes">
	<rule e="node" k="military" v="bunker|bunker_disused" zoom-min="12" >
		<symbol src="file:/symbols/bunker.svg" symbol-width="11" />
	</rule>
</xsl:template>

</xsl:stylesheet>
