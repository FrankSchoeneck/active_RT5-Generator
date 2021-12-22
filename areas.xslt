<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

	<xsl:template name="areas">
		<!-- Render sea -->
		<rule e="way" k="natural" v="sea">
			<area fill="#A2CBED" />
		</rule>
		<rule e="way" k="natural" v="nosea">
			<area fill="#FFFEFE" />
		</rule>

		<!-- coastline -->
		<rule e="way" k="natural" v="coastline">
			<rule e="way" k="*" v="*" closed="no" zoom-max="12">
				<line stroke="#699FC4" stroke-width="1.0" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="13">
				<line stroke="#699FC4" stroke-width="0.3" />
			</rule>
		</rule>

		<!-- sport -->
		<rule e="way" k="sport" v="*" zoom-min="12">
			<area fill="#F0F7D2" />
		</rule>
	
	</xsl:template>

</xsl:stylesheet>
