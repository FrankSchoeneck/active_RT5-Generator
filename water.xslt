<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="waterways">
	<!-- waterways and water -->
	<rule e="way" k="waterway" v="*">
		<!-- drain = Abwassergraben, Abfluss -->
		<!-- ditch = Wassergraben -->
		<rule e="way" k="waterway" v="drain|ditch">
			<rule e="way" k="intermittent|seasonal" v="~">
				<line stroke="#59A0D8" stroke-width="0.4"  />
			</rule>
			<rule e="way" k="intermittent|seasonal" v="wwi_yes|seas_yes" zoom-min="13"> <!-- Beschreibt, nicht ständig Wasser führend, only OpenAndroMaps -->
				<line stroke="#59A0D8" stroke-width="0.4" stroke-dasharray="3,6" />
			</rule>
		</rule>
		<!-- Kanal -->
		<rule e="way" k="waterway" v="canal">
			<rule e="way" k="intermittent|seasonal" v="~">
				<line stroke="#59A0D8" stroke-width="1.0"  />
			</rule>
			<rule e="way" k="intermittent|seasonal" v="wwi_yes|seas_yes" zoom-min="13"> <!-- Beschreibt, nicht ständig Wasser führend, only OpenAndroMaps -->
				<line stroke="#59A0D8" stroke-width="1.3" stroke-dasharray="3,6" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="10">
				<pathText k="name" dy="-1" repeat-gap="300" font-style="normal" font-size="10" fill="#035FBC" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		<!-- Bach -->
		<rule e="way" k="waterway" v="stream" zoom-min="11">
			<rule e="way" k="*" v="*" zoom-min="11" zoom-max="12">
				<rule e="way" k="intermittent|seasonal" v="~">
					<line stroke="#59A0D8" stroke-width="0.4"  />
				</rule>
			</rule>
			<rule e="way" k="*" v="*" zoom-min="14">
				<rule e="way" k="intermittent|seasonal" v="~">
					<line stroke="#59A0D8" stroke-width="0.2"  />
				</rule>
				<rule e="way" k="intermittent|seasonal" v="wwi_yes|seas_yes"> <!-- Beschreibt, nicht ständig Wasser führend, only OpenAndroMaps -->
					<line stroke="#59A0D8" stroke-width="0.2" stroke-dasharray="3,6"  />
				</rule>
				<pathText k="name" dy="-1" repeat-gap="300" font-style="normal" font-size="9" fill="#035FBC" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		<!-- Fluss -->
		<rule e="way" k="waterway" v="river">
			<rule e="way" k="intermittent|seasonal" v="~">
				<line stroke="#60A4D9" stroke-width="2.0"  />
				<line stroke="#A2CBED" stroke-width="1.6"  />
			</rule>
			<rule e="way" k="intermittent|seasonal" v="wwi_yes|seas_yes"> <!-- Beschreibt, nicht ständig Wasser führend, only OpenAndroMaps -->
				<line stroke="#60A4D9" stroke-width="2.0" stroke-dasharray="3,6"  />
				<line stroke="#A2CBED" stroke-width="1.6"  />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="10">
				<pathText k="name" repeat-gap="300" font-style="normal" font-size="12" fill="#035FBC" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		<!-- Dock -->
		<rule e="way" k="waterway" v="dock">
			<area fill="#A2CBED" />
		</rule>
		<!-- Schleuse -->
		<rule e="way" k="lock" v="yes" zoom-min="12">
			<rule e="way" k="waterway" v="river">
				<line stroke="#000044" stroke-width="2.0" stroke-linecap="square" />
				<line stroke="#A2CBED" stroke-width="1.6" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="waterway" v="canal">
				<line stroke="#000044" stroke-width="1.6" stroke-linecap="square" />
				<line stroke="#A2CBED" stroke-width="1.2" stroke-linecap="butt" />
			</rule>
		</rule>
		<!-- Wehr -->
		<rule e="way" k="waterway" v="weir">
			<line stroke="#FFFEFE" stroke-width="0.3" />
		</rule>
		<!-- Staudamm oder Staumauer -->
		<rule e="way" k="waterway" v="dam" zoom-min="8">
			<area fill="#FFFEFE" />
			<rule e="way" k="*" v="*" zoom-min="14">
				<caption k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
	</rule>	
	<!-- Wasserfall -->
	<rule e="any" k="waterway|natural" v="waterfall" zoom-min="13">
		<symbol src="file:/symbols/waterfall.svg" symbol-width="16" />
	</rule>
	<!-- end of water -->
</xsl:template>

<xsl:template name="waterbodies">
	<!-- bodys of water-->
	<rule e="way" k="landuse|natural" v="reservoir|basin|water">
		<line stroke="#60A4D9" stroke-width="0.5" />
		<area fill="#A2CBED"/>
		<rule e="way" k="natural" v="water" zoom-min="14">
			<caption k="name" font-style="normal" font-size="10" fill="#035FBC" stroke="#ffffff" stroke-width="0.5"/>
		</rule>
	</rule>
	<!-- Breiter Fluss (muß hinter body of water gerendert werden) -->
	<rule e="way" k="waterway" v="riverbank">
		<area fill="#A2CBED" />
	</rule>	
</xsl:template>
</xsl:stylesheet>
