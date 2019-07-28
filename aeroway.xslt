<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

	<xsl:template name="aeroway">
		<!-- runways casings and areas -->
		<rule e="way" k="aeroway" v="*" zoom-min="8">
			<rule e="way" k="aeroway" v="aerodrome" closed="yes" zoom-min="11" >
				<area fill="#D1D1D1" />
			</rule>
			<rule e="way" k="aeroway" v="apron" zoom-min="11" >
				<area fill="#B5B5B5" />
			</rule>
			<rule e="way" k="aeroway" v="terminal" zoom-min="11" >
				<area fill="#999898" stroke="#858585" stroke-width="0.1" />
			</rule>
			<rule e="way" k="aeroway" v="*" closed="yes">
				<rule e="way" k="aeroway" v="taxiway" zoom-min="10" >
					<area stroke="#A8A6A6" fill="#FEFEFE" stroke-width="2.0" />
				</rule>
				<rule e="way" k="aeroway" v="runway" zoom-min="8" >
					<area stroke="#A8A6A6" fill="#FEFEFE" stroke-width="2.0" />
				</rule>
			</rule>
			<rule e="way" k="aeroway" v="*" closed="no">
				<rule e="way" k="aeroway" v="taxiway" zoom-min="10" >
					<line stroke="#A8A6A6" stroke-width="2.4" stroke-linecap="butt" />
					<line stroke="#FEFEFE" stroke-width="2.0" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="aeroway" v="runway" zoom-min="8" >
					<line stroke="#A8A6A6" stroke-width="6.0" stroke-linecap="square" />
					<line stroke="#FEFEFE" stroke-width="5.2" stroke-linecap="square" />
				</rule>
			</rule>

			<rule e="way" k="*" v="*" zoom-min="14">
				<caption k="name" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
	</xsl:template>

</xsl:stylesheet>
