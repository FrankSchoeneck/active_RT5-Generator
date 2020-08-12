<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="man_made">
	<!-- Deich|Damm, only OpenAndroMaps -->
	<rule e="way" k="man_made|embankment" v="dyke|embankment|emb_yes" zoom-min="12" cat="landscapefeat">
		<line stroke="#6D6D6D" dy="2.2" stroke-width="1.5" stroke-dasharray="0.5,5" stroke-linecap="butt" />
		<line stroke="#6D6D6D" dy="1.5" stroke-width="0.2" stroke-linecap="butt" />
		<line stroke="#6D6D6D" dy="-1.5" stroke-width="0.2" stroke-linecap="butt" />
		<line stroke="#6D6D6D" dy="-2.2" stroke-width="1.5" stroke-dasharray="0.5,5" stroke-linecap="butt" />
	</rule>

	<!-- cutline (Schneise im Wald) -->
	<rule e="way" k="man_made" v="cutline" zoom-min="11">
		<rule e="way" k="*" v="*" closed="no">
			<line stroke="#90EEEFEC" stroke-width="1.4" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" closed="yes">
			<area fill="#90EEEFEC" />
		</rule>
	</rule>

	<!-- man_made features -->
	<rule e="way" k="man_made" v="*" zoom-min="12">
		<rule e="way" k="man_made" v="pier" zoom-min="13">
			<rule e="way" k="*" v="*" closed="no">
				<line stroke="#E7E7E7" stroke-width="0.6" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" closed="yes">
				<area fill="#E7E7E7" stroke="#d0d0d0" stroke-width="0.2" />
			</rule>
		</rule>
		<rule e="way" k="man_made" v="groyne" zoom-min="13"> <!-- Nur bei OpenAndroMaps -->
			<line stroke="#E7E7E7" stroke-width="0.6" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="man_made" v="watermill" zoom-min="12">
			<symbol id="id_watermill" src="file:/symbols/watermill.svg" symbol-width="18" />
			<rule e="way" k="*" v="*" zoom-min="15">
				<caption symbol-id="id_watermill" k="name" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
			</rule>
		</rule>
		<rule e="way" k="man_made" v="windmill" zoom-min="12">
			<symbol id="id_windmill" src="file:/symbols/windmill.svg" symbol-width="12" />
			<rule e="way" k="*" v="*" zoom-min="15">
				<caption symbol-id="id_windmill" k="name" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
			</rule>
		</rule>
	</rule>
</xsl:template>

</xsl:stylesheet>
