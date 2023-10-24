<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="contour_lines">
		<!-- Contour lines -->
		<rule e="way" k="contour_ext" v="*" zoom-max="9" cat="contourlines">
			<rule e="way" k="contour_ext" v="elevation_major">
				<line stroke="#A9641B" stroke-width="0.2" curve="cubic"/>
			</rule>
		</rule>
		<rule e="way" k="contour_ext" v="*" zoom-min="10" zoom-max="12" cat="contourlines">
			<rule e="way" k="contour_ext" v="elevation_medium">
				<line stroke="#A9641B" stroke-width="0.2" curve="cubic"/>
			</rule>
			<rule e="way" k="contour_ext" v="elevation_major">
				<line stroke="#A9641B" stroke-width="0.4" curve="cubic"/>
			</rule>
		</rule>
		<rule e="way" k="contour_ext" v="*" zoom-min="13" zoom-max="13" cat="contourlines">
			<rule e="way" k="contour_ext" v="elevation_medium">
				<line stroke="#A9641B" stroke-width="0.2" curve="cubic"/>
			</rule>
			<rule e="way" k="contour_ext" v="elevation_major">
				<line stroke="#A9641B" stroke-width="0.4" curve="cubic"/>
				<pathText k="ele" font-style="bold" font-size="7" fill="#A9641B" stroke="#e5ffffff" stroke-width="1" repeat-start="50" repeat-gap="150" text-orientation="left" />
			</rule>
		</rule>
		<rule e="way" k="contour_ext" v="*" zoom-min="14" zoom-max="14" cat="contourlines">
			<rule e="way" k="contour_ext" v="elevation_medium|elevation_major">
				<line stroke="#A9641B" stroke-width="0.2" curve="cubic"/>
				<pathText k="ele" font-style="bold" font-size="8" fill="#A9641B" stroke="#e5ffffff" stroke-width="1" repeat-start="50" repeat-gap="150" text-orientation="left" />
			</rule>
		</rule>
		<rule e="way" k="contour_ext" v="*" zoom-min="15" zoom-max="15" cat="contourlines">
			<rule e="way" k="contour_ext" v="elevation_minor" zoom-max="15">
				<line stroke="#A9641B" stroke-width="0.08" curve="cubic"/>
			</rule>
			<rule e="way" k="contour_ext" v="elevation_medium|elevation_major">
				<line stroke="#A9641B" stroke-width="0.25" curve="cubic"/>
				<pathText k="ele" font-style="bold" font-size="8" fill="#A9641B" stroke="#e5ffffff" stroke-width="1" repeat-start="100" repeat-gap="150" text-orientation="left" />
			</rule>
		</rule>
		<rule e="way" k="contour_ext" v="*" zoom-min="16" zoom-max="16" cat="contourlines">
			<rule e="way" k="contour_ext" v="elevation_minor">
				<line stroke="#A9641B" stroke-width="0.06" curve="cubic"/>
			</rule>
			<rule e="way" k="contour_ext" v="elevation_medium|elevation_major">
				<line stroke="#A9641B" stroke-width="0.2" curve="cubic"/>
				<pathText k="ele" font-style="bold" font-size="9" fill="#A9641B" stroke="#e5ffffff" stroke-width="2" repeat-start="200" repeat-gap="200" text-orientation="left" />
			</rule>
		</rule>
		<rule e="way" k="contour_ext" v="*" zoom-min="17" cat="contourlines">
			<rule e="way" k="contour_ext" v="elevation_minor">
				<line stroke="#A9641B" stroke-width="0.04" curve="cubic"/>
			</rule>
			<rule e="way" k="contour_ext" v="elevation_medium|elevation_major">
				<line stroke="#A9641B" stroke-width="0.15" curve="cubic"/>
				<pathText k="ele" font-style="bold" font-size="9" fill="#A9641B" stroke="#e5ffffff" stroke-width="2" repeat-start="200" repeat-gap="200" text-orientation="left" />
			</rule>
		</rule>

	</xsl:template>

</xsl:stylesheet>
