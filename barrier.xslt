<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <xsl:template name="barrier">
		<!-- wall, barries -->
		<rule e="way" k="barrier" v="*" zoom-min="14">
			<rule e="way" k="barrier" v="fence|city_wall">
				<line stroke="#545454" stroke-width="0.05" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="barrier" v="wall">
				<line stroke="#C3C3C3" stroke-width="0.5" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="barrier" v="retaining_wall">
				<line stroke="#888888" stroke-width="0.05" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="barrier" v="hedge" cat="Style_Summer">
				<line stroke="#CBE0B3" stroke-width="0.6" stroke-linecap="round" />
			</rule>
			<rule e="way" k="barrier" v="hedge" cat="Style_Winter">
				<line stroke="#d9e3f4" stroke-width="0.6" stroke-linecap="round" />
			</rule>

		</rule>

		<!-- barrier -->
		<rule e="node" k="barrier" v="gate" zoom-min="15">
			<symbol src="file:/symbols/gate.svg"  symbol-percent="65" />
		</rule>
		<rule e="node" k="barrier" v="lift_gate" zoom-min="16">
			<symbol src="file:/symbols/lift_gate.svg"  symbol-percent="65" />
		</rule>
    </xsl:template>
</xsl:stylesheet>
