<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="contour_lines">
		<!-- Contour lines -->
		<rule e="way" k="contour_ext" v="*" zoom-min="6" cat="contourlines">
			<!-- contour lines level 6 & 7 -->
			<rule e="way" k="contour_ext" v="*" zoom-max="7">
				<rule e="way" k="contour_ext" v="elevation_major">
					<line stroke="#A9641B" stroke-width="0.2" />
				</rule>
			</rule>
			<!-- contour lines level 8, 9 ,10 &11 -->
			<rule e="way" k="contour_ext" v="*" zoom-min="8" zoom-max="11">
				<rule e="way" k="contour_ext" v="elevation_medium">
					<line stroke="#A9641B" stroke-width="0.1" />
				</rule>
				<rule e="way" k="contour_ext" v="elevation_major">
					<line stroke="#A9641B" stroke-width="0.2" />
				</rule>
			</rule>
			<!-- contour lines level 12 and above -->
			<rule e="way" k="contour_ext" v="*" zoom-min="12">
				<rule e="way" k="contour_ext" v="elevation_minor">   
					<line stroke="#A9641B" stroke-width="0.1" />
				</rule>
				<rule e="way" k="contour_ext" v="elevation_medium|elevation_major">   
					<line stroke="#A9641B" stroke-width="0.2" />
				</rule>   
			</rule>
			
			<rule e="way" k="contour_ext" v="elevation_medium|elevation_major" zoom-min="13">
				<pathText k="ele" rotate="false" font-style="bold" font-size="8" fill="#A9641B" stroke="#a0ffffff" stroke-width="1" />
			</rule>

		</rule>
	</xsl:template>

</xsl:stylesheet>
