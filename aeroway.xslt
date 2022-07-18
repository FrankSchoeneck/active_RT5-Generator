<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

	<xsl:template name="aeroway">
		<!-- runways casings and areas -->
		<rule e="way" k="aeroway" v="*" zoom-min="8">
			<rule e="way" k="aeroway" v="aerodrome" closed="yes" zoom-min="11" >
				<area fill="#DADECF" />
			</rule>
			<rule e="way" k="aeroway" v="apron" zoom-min="11" >
				<area fill="#CFCFCF" />
			</rule>
			<rule e="way" k="aeroway" v="terminal" zoom-min="11" >
				<area fill="#C7C7C7" stroke="#BFBFBF" stroke-width="0.1" />
			</rule>
			<rule e="way" k="aeroway" v="*" closed="yes">
				<rule e="way" k="aeroway" v="taxiway" zoom-min="10" >
					<area fill="#C9C9C9" stroke="#BFBFBF" stroke-width="0.1" />
				</rule>
				<rule e="way" k="aeroway" v="runway" zoom-min="8" >
					<area fill="#C9C9C9" stroke="#BFBFBF" stroke-width="0.1" />
				</rule>
			</rule>
			<rule e="way" k="aeroway" v="*" closed="no">
				<rule e="way" k="aeroway" v="taxiway" zoom-min="10" >
					<line stroke="#C9C9C9" stroke-width="2.4" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="aeroway" v="runway" zoom-min="8" >
					<line stroke="#C9C9C9" stroke-width="6.0" stroke-linecap="square" />
				</rule>
			</rule>

			<rule e="way" k="aeroway" v="aerodrome|apron|terminal" zoom-min="14">
				<caption k="name" font-family="sans_serif" font-style="normal" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
			<rule e="way" k="aeroway" v="taxiway|runway" zoom-min="14">
				<pathText k="ref" font-family="sans_serif" font-style="normal" font-size="8" fill="#333333" stroke="#FFFFFF" stroke-width="0.5" />
			</rule>
		</rule>
	</xsl:template>

</xsl:stylesheet>
