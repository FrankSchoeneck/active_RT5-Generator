<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="contour_lines">
		<!-- Contour lines -->
		<rule e="way" k="contour_ext" v="*" zoom-min="6" cat="contourlines">
			<!-- contour lines level 6 & 7 -->
			<rule e="way" k="contour_ext" v="*" zoom-max="7">
				<rule e="way" k="contour_ext" v="elevation_major">
					<line stroke="#A9641B" stroke-width="0.22" />
				</rule>
			</rule>
			<!-- contour lines level 8, 9 &10 -->
			<rule e="way" k="contour_ext" v="*" zoom-min="8" zoom-max="10">
				<rule e="way" k="contour_ext" v="elevation_medium">
					<line stroke="#A9641B" stroke-width="0.15" />
				</rule>
				<rule e="way" k="contour_ext" v="elevation_major">
					<line stroke="#A9641B" stroke-width="0.3" />
				</rule>
			</rule>
			<!-- contour lines level 11 -->
			<rule e="way" k="contour_ext" v="*" zoom-min="11" zoom-max="11">
				<rule e="way" k="contour_ext" v="elevation_medium">   
					<line stroke="#A9641B" stroke-width="0.12" />
				</rule>
				<rule e="way" k="contour_ext" v="elevation_major">   
					<line stroke="#A9641B" stroke-width="0.24" />
				</rule>
			</rule>
			<!-- contour lines level 12-->
			<rule e="way" k="contour_ext" v="*" zoom-min="12" zoom-max="12">
				<rule e="way" k="contour_ext" v="elevation_minor">   
					<line stroke="#A9641B" stroke-width="0.07" />
				</rule>
				<rule e="way" k="contour_ext" v="elevation_medium|elevation_major">   
					<line stroke="#A9641B" stroke-width="0.14" />
					<pathText k="ele" font-style="bold" font-size="10" fill="#A9641B" stroke="#a0ffffff" stroke-width="1.5" /> <!-- ab V5 um rotate="false" ergänzen ?-->
				</rule>   
			</rule>
			<!-- contour lines level 13-->
			<rule e="way" k="contour_ext" v="*" zoom-min="13" zoom-max="13">
				<rule e="way" k="contour_ext" v="elevation_minor" zoom-max="13">   
					<line stroke="#A9641B" stroke-width="0.075" />
				</rule>
				<rule e="way" k="contour_ext" v="elevation_medium|elevation_major">   
					<line stroke="#A9641B" stroke-width="0.15" />
					<pathText k="ele" font-style="bold" font-size="10" fill="#A9641B" stroke="#a0ffffff" stroke-width="1.5" /> <!-- ab V5 um rotate="false" ergänzen ?-->
				</rule>
			</rule>
			<!-- contour lines level 14 & 15 -->
			<rule e="way" k="contour_ext" v="*" zoom-min="14" zoom-max="15">
				<rule e="way" k="contour_ext" v="elevation_minor">   
					<line stroke="#A9641B" stroke-width="0.0525" />
				</rule>
				<rule e="way" k="contour_ext" v="elevation_medium|elevation_major">   
					<line stroke="#A9641B" stroke-width="0.105" />
					<pathText k="ele" font-style="bold" font-size="11" fill="#A9641B" stroke="#a0ffffff" stroke-width="2" /> <!-- ab V5 um rotate="false" ergänzen ?-->
				</rule>
			</rule>   
			<!-- contour lines level 16 and above -->
			<rule e="way" k="contour_ext" v="*" zoom-min="16">
				<rule e="way" k="contour_ext" v="elevation_minor">   
					<line stroke="#A9641B" stroke-width="0.0375" />
				</rule>
				<rule e="way" k="contour_ext" v="elevation_medium|elevation_major">   
					<line stroke="#A9641B" stroke-width="0.075" />
					<pathText k="ele" font-style="bold" font-size="12" fill="#A9641B" stroke="#a0ffffff" stroke-width="2" /> <!-- ab V5 um rotate="false" ergänzen ?-->
				</rule>
			</rule>
		</rule>
	</xsl:template>

</xsl:stylesheet>
