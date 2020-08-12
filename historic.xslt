<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="historic_ways">
	<rule e="way" k="historic" v="*" zoom-min="10">
		<rule e="way" k="historic" v="archaeological_site"> <!-- Historische Wälle/Schanzen -->
			<area fill="#DBDBDB" stroke="#C3C3C3" stroke-width="0.1" />
			<rule e="way" k="building" v="~" zoom-min="12">	<!-- nur dargestellt, wenn es kein Gebäude ist -->
				<line stroke="#70606060" stroke-width="0.2" stroke-dasharray="4,4" stroke-linecap="butt"/>
			</rule>
		</rule>
		<rule e="way" k="historic" v="wayside_shrine"> <!-- Bildstock -->
			<area fill="#DBDBDB" stroke="#818181" stroke-width="0.1" />
		</rule>
	</rule>
</xsl:template>

<xsl:template name="historic_nodes">
	<rule e="any" k="historic" v="*" zoom-min="11">
		<rule e="any" k="historic" v="castle">
			<symbol id="id_castle" src="file:/symbols/castle.svg" symbol-width="14" />
			<rule e="any" k="*" v="*" zoom-min="15">
				<caption symbol-id="id_castle" k="name" dy="-4" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		<rule e="any" k="historic" v="ruins">
			<symbol id="id_ruins" src="file:/symbols/ruins.svg" symbol-width="12" />
			<rule e="any" k="*" v="*" zoom-min="15">
				<caption symbol-id="id_ruins" k="name" dy="-4" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		<rule e="any" k="historic" v="wayside_cross|wayside_shrine" zoom-min="12" >
			<symbol src="file:/symbols/wayside_cross.svg" symbol-width="8" />
		</rule>
		<rule e="any" k="historic" v="monument" zoom-min="12" >
			<symbol id="id_monument" src="file:/symbols/monument.svg" symbol-width="12" />
			<rule e="any" k="*" v="*" zoom-min="15" >
				<caption symbol-id="id_monument" k="name" dy="-4" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		<rule e="any" k="historic" v="memorial" zoom-min="13" >
			<symbol id="id_memorial" src="file:/symbols/memorial.svg" symbol-width="12" />
			<rule e="any" k="*" v="*" zoom-min="15" >
				<caption symbol-id="id_memorial" k="name" dy="-4" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		<rule e="any" k="historic" v="mine" zoom-min="12">
			<symbol id="id_mine" src="file:/symbols/mineshaft.svg" symbol-width="14" />
			<rule e="any" k="historic" v="*" zoom-min="16" >
				<caption symbol-id="id_mine" k="name" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		<rule e="any" k="historic" v="archaeological_site" zoom-min="14" >
			<symbol id="id_archaeological_site" src="file:/symbols/archaeological_site.svg" symbol-percent="60" />
			<rule e="any" k="historic" v="*" zoom-min="16" >
				<caption symbol-id="id_archaeological_site" k="name" dy="-4" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		<rule e="any" k="historic" v="boundary_stone" zoom-min="14" > <!-- only for OpenAndroMaps -->
			<symbol src="file:/symbols/boundary_stone.svg" symbol-width="6" />
		</rule>
	</rule>
</xsl:template>

</xsl:stylesheet>
