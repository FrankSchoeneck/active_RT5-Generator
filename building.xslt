<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

	<xsl:template name="buildings">
		<!-- um Basilika bei OAM darzustellen -->
		<rule e="way" k="building" v="~" zoom-min="12" zoom-max="13">
			<rule e="way" k="amenity" v="place_of_worship">
				<area fill="#b2b2b2" />
			</rule>
		</rule>
		<rule e="way" k="building" v="~" zoom-min="14">
			<rule e="way" k="amenity" v="place_of_worship">
				<area fill="#999999" stroke="#818181" stroke-width="0.1" />
			</rule>
		</rule>
		<rule e="way" k="building" v="~" zoom-min="17">
			<rule e="way" k="amenity" v="place_of_worship">
				<caption k="name" position="below" dy="8" font-style="bold" font-family="sans_serif" font-size="8" fill="#333333" stroke="#ffffff" stroke-width="1.0" />
			</rule>
		</rule>
		
		<!-- building -->
		<rule e="way" k="building" v="*" zoom-min="12" zoom-max="13">
			<area fill="#b2b2b2" />
		</rule>
		<rule e="way" k="building" v="*" zoom-min="14">
			<area fill="#999999" stroke="#818181" stroke-width="0.1" />
		</rule>
		<rule e="way" k="building" v="construction" zoom-min="12" zoom-max="13"> <!-- only OpenAndroMaps -->
			<area fill="#cccccc" />
		</rule>
		<rule e="way" k="building" v="construction" zoom-min="14"> <!-- only OpenAndroMaps -->
			<area fill="#cccccc" stroke="#818181" stroke-width="0.1" />
			<line stroke="#C0F8F8F8" stroke-width="0.2" stroke-dasharray="2,2" />
		</rule>
		<rule e="way" k="building" v="*" zoom-min="17">
			<caption k="name" position="below" dy="8" font-style="bold" font-family="sans_serif" font-size="8" fill="#333333" stroke="#ffffff" stroke-width="1.0" />
		</rule>
		
		<!-- house numbers -->
		<rule e="any" k="*" v="*" zoom-min="17">
			<caption k="addr:housenumber" font-style="normal" font-size="8" fill="#424251" />
		</rule>
	</xsl:template>
</xsl:stylesheet>