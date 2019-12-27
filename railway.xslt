<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="railway_no_tunnel">
		<!-- platform (Bahnsteige)-->
		<rule e="way" k="railway|public_transport" v="platform" zoom-min="13" >
			<rule e="way" k="*" v="*" closed="yes">
				<area fill="#999999" />
			</rule>
			<rule e="way" k="*" v="*" closed="no">
				<line stroke="#999999" stroke-width="0.8" />
			</rule>
		</rule>

	<!-- railway (no tunnel) -->
	<rule e="way" k="railway" v="*">
		<rule e="way" k="tunnel" v="~|no">
			<rule e="way" k="railway" v="station" zoom-min="11">
				<area fill="#9b9b79" stroke="#707070" stroke-width="0.2" />
			</rule>

			<!-- railway bridge casings -->
			<rule e="way" k="bridge" v="yes|movable|true">
				<rule e="way" k="railway" v="tram">
					<line stroke="#000000" stroke-width="0.4" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="railway" v="subway">
					<line stroke="#000000" stroke-width="0.7" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="railway" v="funicular" zoom-min="12">
					<line stroke="#000000" stroke-width="2.0" stroke-linecap="butt" />
					<line stroke="#F7F7F7" stroke-width="1.8" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="railway" v="preserved" zoom-min="11">
					<line stroke="#000000" stroke-width="2.0" stroke-linecap="butt" />
					<line stroke="#F7F7F7" stroke-width="1.8" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="railway" v="rail|light_rail|narrow_gauge">
					<line stroke="#000000" stroke-width="2.2" stroke-linecap="butt" />
					<line stroke="#F7F7F7" stroke-width="2.0" stroke-linecap="butt" />
				</rule>
			</rule>

			<!-- railway casings and cores -->
			<!-- Eisenbahn, auch S-Bahn -->
			<rule e="way" k="railway" v="rail">
				<line stroke="#6D6D6D" stroke-width="1.1" stroke-linecap="butt" />
				<line stroke="#FFFFFF" stroke-width="0.6" stroke-linecap="butt" />
				<line stroke="#6D6D6D" stroke-width="2.0" stroke-dasharray="0.4,6" stroke-linecap="butt" />
			</rule>
			<!-- Straßenbahnen -->
			<rule e="way" k="railway" v="tram" zoom-min="11" cat="pub_transp">
				<line stroke="#90FC0101" stroke-width="0.3" stroke-linecap="butt" />
			</rule>
			<!-- U-Bahn -->
			<rule e="way" k="railway" v="subway" zoom-min="11" cat="pub_transp">
				<line stroke="#90FC0101" stroke-width="0.5" stroke-dasharray="4,4" stroke-linecap="butt" />
			</rule>
			<!-- Stadtbahn -->
			<rule e="way" k="railway" v="light_rail" zoom-min="10" >
				<line stroke="#6D6D6D" stroke-width="1.1" stroke-linecap="butt" />
				<line stroke="#FEFEFE" stroke-width="0.6" stroke-linecap="butt" />
				<line stroke="#6D6D6D" stroke-width="2.0" stroke-dasharray="0.3,5" stroke-linecap="butt" />
			</rule>
			<!-- Stadtbahn -->
			<rule e="way" k="railway" v="light_rail" zoom-min="11" cat="pub_transp">
				<line stroke="#FE4EFE" stroke-width="0.3" stroke-linecap="butt" />
			</rule>
			<!-- Schmalspurbahnen -->
			<rule e="way" k="railway" v="narrow_gauge" zoom-min="11">
				<line stroke="#6D6D6D" stroke-width="0.9" stroke-linecap="butt" />
				<line stroke="#FEFEFE" stroke-width="0.5" stroke-linecap="butt" />
				<line stroke="#6D6D6D" stroke-width="1.8" stroke-dasharray="0.4,6" stroke-linecap="butt" />
			</rule>
			<!-- Standseilbahn -->
			<rule e="way" k="railway" v="funicular" zoom-min="12">
				<line stroke="#6D6D6D" stroke-width="0.9" stroke-linecap="butt" />
				<line stroke="#FEFEFE" stroke-width="0.5" stroke-linecap="butt" />
				<line stroke="#6D6D6D" stroke-width="1.8" stroke-dasharray="0.4,6" stroke-linecap="butt" />
			</rule>
			<!-- Museumsbahn -->
			<rule e="way" k="railway" v="preserved" zoom-min="11">
				<line stroke="#6D6D6D" stroke-width="0.9" stroke-linecap="butt" />
				<line stroke="#FEFEFE" stroke-width="0.5" stroke-linecap="butt" />
				<line stroke="#6D6D6D" stroke-width="1.8" stroke-dasharray="0.4,6" stroke-linecap="butt" />
			</rule>
		</rule>
	</rule>
    </xsl:template>

    <xsl:template name="railway_tunnel">
		<!-- railway tunnel -->
		<rule e="way" k="tunnel" v="yes">
			<rule e="way" k="railway" v="subway" zoom-min="11" cat="pub_transp">
				<line stroke="#800000FF" stroke-width="0.5" stroke-dasharray="4,4" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="railway" v="tram|light_rail" cat="pub_transp">
				<line stroke="#90FC0101" stroke-width="0.3" stroke-dasharray="4,4" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="railway" v="narrow_gauge">
				<line stroke="#90FC0101" stroke-width="0.3" stroke-dasharray="4,4" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="railway" v="funicular|preserved">
				<line stroke="#3c3c3c" stroke-width="1.3" stroke-dasharray="6,5" stroke-linecap="butt" />
				<line stroke="#ffffff" stroke-width="1.0" stroke-dasharray="6,5" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="railway" v="rail">
				<line stroke="#3c3c3c" stroke-width="1.4" stroke-dasharray="6,5" stroke-linecap="butt" />
				<line stroke="#ffffff" stroke-width="1.0" stroke-dasharray="6,5" stroke-linecap="butt" />
			</rule>
		</rule>
    </xsl:template>

    <xsl:template name="railway_node">
		<rule e="node" k="railway" v="*" zoom-min="11" cat="pub_transp">
			<!-- Bahnhof -->
			<rule e="node" k="railway" v="station" zoom-min="11" zoom-max="12">
				<circle radius="3.5" fill="#CC0000" stroke="#FFFFFF" stroke-width="0.5" />
			</rule>
			<rule e="node" k="railway" v="station" zoom-min="13">
				<symbol id="id_station" src="file:/symbols/railway_station.svg" symbol-percent="70" />
				<rule e="node" k="*" v="*" zoom-min="14">
					<caption symbol-id="id_station" k="name" dy="-4" font-style="bold" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
				</rule>
			</rule>
			<!-- Straßenbahnhaltestelle -->
			<rule e="node" k="railway" v="tram_stop" zoom-min="12" zoom-max="14">
				<circle radius="3.5" fill="#CC0000" stroke="#FFFFFF" stroke-width="0.5" />
			</rule>
			<rule e="node" k="railway" v="tram_stop" zoom-min="15">
				<circle radius="5.0" fill="#CC0000" stroke="#FFFFFF" stroke-width="0.5" />
				<caption k="name" dy="13" font-style="bold" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
			</rule>
			<!-- Haltepunkt -->
			<rule e="node" k="railway" v="halt" zoom-min="12" zoom-max="13">
				<circle radius="3.5" fill="#CC0000" stroke="#FFFFFF" stroke-width="0.5" />
			</rule>
			<rule e="node" k="railway" v="halt" zoom-min="14">
				<circle radius="5.0" fill="#CC0000" stroke="#FFFFFF" stroke-width="0.5" />
				<caption k="name" dy="13" font-style="bold" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
			</rule>
		</rule>
    </xsl:template>

</xsl:stylesheet>
