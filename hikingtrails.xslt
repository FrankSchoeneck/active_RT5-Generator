<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:variable name="osmc-bcg-sym-prio">2</xsl:variable>
<xsl:variable name="osmc-bcg-sym-perc">50</xsl:variable>
<xsl:variable name="osmc-frg-sym-prio">3</xsl:variable>
<xsl:variable name="osmc-frg-sym-perc">50</xsl:variable>
<xsl:variable name="osmc-wmtl_1-font-size">9</xsl:variable>
<xsl:variable name="osmc-wmtl_3-font-size">8</xsl:variable>

<xsl:variable name="iwn_color">#b02c21</xsl:variable>
<xsl:variable name="iwn_color2">#50b02c21</xsl:variable>
<xsl:variable name="nwn_color">#3247d1</xsl:variable>
<xsl:variable name="nwn_color2">#503247d1</xsl:variable>
<xsl:variable name="rwn_color">#eda518</xsl:variable>
<xsl:variable name="rwn_color2">#50eda518</xsl:variable>
<xsl:variable name="lwn_color">#d01ab8</xsl:variable>
<xsl:variable name="lwn_color2">#50d01ab8</xsl:variable>

<xsl:variable name="color-width">0.7</xsl:variable>

<xsl:template name="hikingtrails">
	<!-- HIKING TRAILS
		iwn = International ( > 500 km, Europäischer Fernwanderweg)
		nwn = nationaler Fernweg (200..500 km, mehrere Bundesländer/quer durch ein BL)
		rwn = Regionalweg (50..200 km, mehrere Landkreise/Kantone).
		lwn = Lokaler Weg ( < 50 km, in einem Landkreis, eine mehrere Gemeinden)
	-->
	<!-- cat Wanderwege Transparent (Darstellung gemäß Outdooractive) -->
	<rule e="way" k="hknetwork" v="*" cat="hikingtrails_transp">
		<rule e="way" k="hknetwork" v="iwn|nwn" zoom-min="5" zoom-max="9">
			<line stroke="#F2221E" stroke-width="1.8" />
			<line stroke="#E7B3B3" stroke-width="1.3" />
		</rule>

		<rule e="way" k="hknetwork" v="iwn|nwn" zoom-min="10" zoom-max="11">
			<line stroke="#95F2221E" stroke-width="3.0" />
			<line stroke="#95E7B3B3" stroke-width="2.0" />
		</rule>
		<rule e="way" k="hknetwork" v="lwn|rwn" zoom-min="10" zoom-max="11">
			<line stroke="#95db8c8c" stroke-width="2.0" />
		</rule>

		<rule e="way" k="hknetwork" v="iwn|nwn|lwn|rwn" zoom-min="12">
			<line dy="-0.6" stroke="#80e60707" stroke-width="0.2" />
			<line stroke="#60f66966" stroke-width="1.0" />
			<line dy="0.6" stroke="#80e60707" stroke-width="0.2" />
		</rule>

		<!-- TEXT TO PATH -->
		<rule e="way" k="hknetwork" v="iwn|nwn" zoom-min="11">
			<pathText k="ref" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" />
		</rule>
		<rule e="way" k="hknetwork" v="rwn|lwn" zoom-min="12">
			<pathText k="ref" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" />
		</rule>
	</rule>

	<!-- cat Wanderwege Farbig -->
	<rule e="way" k="hknetwork" v="*" cat="hikingtrails_color">
		<!-- Wanderwege die kein Farb-Tag haben (Darstellung gemäß Waymarked Trails) -->
		<rule e="way" k="osmc_color" v="~">
			<rule e="way" k="hknetwork" v="*" zoom-min="5" zoom-max="10">
				<rule e="way" k="hknetwork" v="iwn">
					<line stroke="{$iwn_color}" stroke-width="{$color-width}" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="hknetwork" v="nwn">
					<line stroke="{$nwn_color}" stroke-width="{$color-width}" stroke-linecap="butt"/>
				</rule>
			</rule>
		
			<rule e="way" k="hknetwork" v="rwn" zoom-min="10" zoom-max="10">
				<line stroke="{$rwn_color}" stroke-width="{$color-width}" stroke-linecap="butt"/>
			</rule>

			<rule e="way" k="hknetwork" v="*" zoom-min="11" zoom-max="16">
				<rule e="way" k="hknetwork" v="iwn">
					<line dy="-{$color-width}" stroke="{$iwn_color}" stroke-width="{$color-width}" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="hknetwork" v="nwn">
					<line dy="-{$color-width}" stroke="{$nwn_color}" stroke-width="{$color-width}" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="hknetwork" v="rwn">
					<line dy="{$color-width}" stroke="{$rwn_color}" stroke-width="{$color-width}" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="hknetwork" v="lwn">
					<line dy="{$color-width}" stroke="{$lwn_color}" stroke-width="{$color-width}" stroke-linecap="butt"/>
				</rule>
			</rule>

			<rule e="way" k="hknetwork" v="*" zoom-min="17">
				<rule e="way" k="hknetwork" v="iwn">
					<line dy="-{$color-width}" stroke="{$iwn_color2}" stroke-width="{$color-width}" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="hknetwork" v="nwn">
					<line dy="-{$color-width}" stroke="{$nwn_color2}" stroke-width="{$color-width}" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="hknetwork" v="rwn">
					<line dy="{$color-width}" stroke="{$rwn_color2}" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="hknetwork" v="lwn">
					<line dy="{$color-width}" stroke="{$lwn_color2}" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
			</rule>
		</rule>
		
		<!-- HIKING PATH OSMC:COLOR --> 
		<rule e="way" k="osmc_color" v="*">
			<rule e="way" k="osmc_color" v="*" zoom-min="10" zoom-max="16">
				<rule e="way" k="osmc_color" v="wmco_blue|blue">
					<line dy="{$color-width}" stroke="#0026ff" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_yellow|yellow">
					<line dy="{$color-width}" stroke="#DEC90A" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_green|green">
					<line dy="-{$color-width}" stroke="#267f00" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_red|red">
					<line dy="-{$color-width}" stroke="#EA3200" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_black|black">
					<line dy="{$color-width}" stroke="#000000" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_white|white">
					<line dy="-{$color-width}" stroke="#EDEDED" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_purple|purple">
					<line dy="{$color-width}" stroke="#fe67fe" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_orange|orange">
					<line dy="{$color-width}" stroke="#ff8000" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
			</rule>

			<rule e="way" k="osmc_color" v="*" zoom-min="17">
				<rule e="way" k="osmc_color" v="wmco_blue|blue">
					<line dy="{$color-width}" stroke="#500026ff" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_yellow|yellow">
					<line dy="{$color-width}" stroke="#50F2DB0A" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_green|green">
					<line dy="-{$color-width}" stroke="#50267f00" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_red|red">
					<line dy="-{$color-width}" stroke="#50EA3200" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_black|black">
					<line dy="{$color-width}" stroke="#50000000" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_white|white">
					<line dy="-{$color-width}" stroke="#50EDEDED" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_purple|purple">
					<line dy="{$color-width}" stroke="#50fe67fe" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="osmc_color" v="wmco_orange|orange">
					<line dy="{$color-width}" stroke="#50ff8000" stroke-width="{$color-width}" stroke-linecap="butt" />
				</rule>
			</rule>
		</rule>

		<!-- TEXT TO PATH -->
		<rule e="way" k="hknetwork" v="iwn|nwn" zoom-min="11" >
			<pathText k="ref" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" />
		</rule>
		<rule e="way" k="hknetwork" v="rwn" zoom-min="12">
			<pathText k="ref" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" />
		</rule>
		<rule e="way" k="hknetwork" v="lwn" zoom-min="13">
			<pathText k="ref" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" />
		</rule>
	</rule>

	<!-- hiking nodes, OpenAndroMaps only-->
	<rule e="node" k="hike_node" v="*" zoom-min="13" cat="hikingnodes">
		<circle radius="7.5" scale-radius="false" fill="#ffffff" stroke="#009900" stroke-width="1.5" />
		<caption k="addr:housenumber" priority="{$osmc-frg-sym-prio}" position="center" font-style="bold" font-size="9" fill="#009900" stroke="#E5FFFFFF" stroke-width="2.0" />
	</rule>

	<!-- HIKING PATH OSMC:SYMBOL für OpenAndroMaps -->
	<rule e="any" k="osmc" v="osmc_yes" zoom-min="14" cat="trail_markings"> <!-- rule für cat=Wegemarkierungen -->
		<!-- ================= OSMC_BACKGROUND ======================== -->
		<rule e="any" k="osmc_background" v="wmbg_black" >
			<symbol src="file:/osmc/bcg_black.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_black_circle">
			<symbol src="file:/osmc/bcg_black_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_blue">
			<symbol src="file:/osmc/bcg_blue.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_blue_circle">
			<symbol src="file:/osmc/bcg_blue_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_blue_frame">
			<symbol src="file:/osmc/bcg_blue_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_blue_round">
			<symbol src="file:/osmc/bcg_blue_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_brown">
			<symbol src="file:/osmc/bcg_brown.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_green">
			<symbol src="file:/osmc/bcg_green.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_green_circle">
			<symbol src="file:/osmc/bcg_green_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_green_frame">
			<symbol src="file:/osmc/bcg_green_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_green_round">
			<symbol src="file:/osmc/bcg_green_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_orange">
			<symbol src="file:/osmc/bcg_orange.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_purple">
			<symbol src="file:/osmc/bcg_purple.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_red">
			<symbol src="file:/osmc/bcg_red.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_red_circle">
			<symbol src="file:/osmc/bcg_red_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_red_frame">
			<symbol src="file:/osmc/bcg_red_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_red_round">
			<symbol src="file:/osmc/bcg_red_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_white">
			<symbol src="file:/osmc/bcg_white.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_white_circle">
			<symbol src="file:/osmc/bcg_white_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_white_round">
			<symbol src="file:/osmc/bcg_white_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_yellow">
			<symbol src="file:/osmc/bcg_yellow.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_yellow_circle">
			<symbol src="file:/osmc/bcg_yellow_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_yellow_frame">
			<symbol src="file:/osmc/bcg_yellow_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>

		<!-- ================= OSMC_FOREGROUND ======================== -->
		<!-- =============== FRG BLUE ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_blue_arch">
			<symbol src="file:/osmc/frg_blue_arch.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_l">
			<symbol src="file:/osmc/frg_blue_L.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_bar">
			<symbol src="file:/osmc/frg_blue_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_bowl" >
			<symbol src="file:/osmc/frg_blue_bowl.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_circle" >
			<symbol src="file:/osmc/frg_blue_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_corner" >
			<symbol src="file:/osmc/frg_blue_corner.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_cross" >
			<symbol src="file:/osmc/frg_blue_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_diamond" >
			<symbol src="file:/osmc/frg_blue_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_dot" >
			<symbol src="file:/osmc/frg_blue_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_fork" >
			<symbol src="file:/osmc/frg_blue_fork.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_lower" >
			<symbol src="file:/osmc/frg_blue_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_pointer" >
			<symbol src="file:/osmc/frg_blue_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_rectangle" >
			<symbol src="file:/osmc/frg_blue_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_right" >
			<symbol src="file:/osmc/frg_blue_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_slash" >
			<symbol src="file:/osmc/frg_blue_slash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_stripe" >
			<symbol src="file:/osmc/frg_blue_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_triangle" >
			<symbol src="file:/osmc/frg_blue_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_triangle_turned" >
			<symbol src="file:/osmc/frg_blue_triangle_turned.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_turned_t" >
			<symbol src="file:/osmc/frg_blue_turned_T.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_x" >
			<symbol src="file:/osmc/frg_blue_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<!-- =============== FRG RED ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_red_arch" >
			<symbol src="file:/osmc/frg_red_arch.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_backslash" >
			<symbol src="file:/osmc/frg_red_backslash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_bar" >
			<symbol src="file:/osmc/frg_red_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_circle" >
			<symbol src="file:/osmc/frg_red_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_corner" >
			<symbol src="file:/osmc/frg_red_corner.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_crest" >
			<symbol src="file:/osmc/frg_red_crest.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_cross" >
			<symbol src="file:/osmc/frg_red_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_diamond" >
			<symbol src="file:/osmc/frg_red_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_dot" >
			<symbol src="file:/osmc/frg_red_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_drop" >
			<symbol src="file:/osmc/frg_red_drop.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_drop_line" >
			<symbol src="file:/osmc/frg_red_drop_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_hiker" >
			<symbol src="file:/osmc/frg_red_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_fork" >
			<symbol src="file:/osmc/frg_red_fork.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_l" >
			<symbol src="file:/osmc/frg_red_L.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_lower" >
			<symbol src="file:/osmc/frg_red_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_pointer" >
			<symbol src="file:/osmc/frg_red_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_rectangle" >
			<symbol src="file:/osmc/frg_red_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_right" >
			<symbol src="file:/osmc/frg_red_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_slash" >
			<symbol src="file:/osmc/frg_red_slash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_stripe" >
			<symbol src="file:/osmc/frg_red_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_triangle" >
			<symbol src="file:/osmc/frg_red_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_triangle_turned" >
			<symbol src="file:/osmc/frg_red_triangle_turned.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_turned_t" >
			<symbol src="file:/osmc/frg_red_turned_T.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_x" >
			<symbol src="file:/osmc/frg_red_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<!-- =============== FRG YELLOW ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_arch" >
			<symbol src="file:/osmc/frg_yellow_arch.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_backslash" >
			<symbol src="file:/osmc/frg_yellow_backslash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_bar" >
			<symbol src="file:/osmc/frg_yellow_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_bowl" >
			<symbol src="file:/osmc/frg_yellow_bowl.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_circle" >
			<symbol src="file:/osmc/frg_yellow_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_corner" >
			<symbol src="file:/osmc/frg_yellow_corner.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_cross" >
			<symbol src="file:/osmc/frg_yellow_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_diamond" >
			<symbol src="file:/osmc/frg_yellow_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_dot" >
			<symbol src="file:/osmc/frg_yellow_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_hiker" >
			<symbol src="file:/osmc/frg_yellow_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_fork" >
			<symbol src="file:/osmc/frg_yellow_fork.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_l" >
			<symbol src="file:/osmc/frg_yellow_L.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_lower" >
			<symbol src="file:/osmc/frg_yellow_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_pointer" >
			<symbol src="file:/osmc/frg_yellow_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_rectangle" >
			<symbol src="file:/osmc/frg_yellow_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_rectangle_line" >
			<symbol src="file:/osmc/frg_yellow_rectangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_right" >
			<symbol src="file:/osmc/frg_yellow_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_slash" >
			<symbol src="file:/osmc/frg_yellow_slash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_stripe" >
			<symbol src="file:/osmc/frg_yellow_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_triangle" >
			<symbol src="file:/osmc/frg_yellow_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_turned_t" >
			<symbol src="file:/osmc/frg_yellow_turned_T.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_x" >
			<symbol src="file:/osmc/frg_yellow_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<!-- =============== FRG BLACK	 ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_black_arch" >
			<symbol src="file:/osmc/frg_black_arch.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_bar" >
			<symbol src="file:/osmc/frg_black_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_circle" >
			<symbol src="file:/osmc/frg_black_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_crest" >
			<symbol src="file:/osmc/frg_black_crest.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_cross" >
			<symbol src="file:/osmc/frg_black_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_diamond" >
			<symbol src="file:/osmc/frg_black_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_dot" >
			<symbol src="file:/osmc/frg_black_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_fork" >
			<symbol src="file:/osmc/frg_black_fork.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_horse" >
			<symbol src="file:/osmc/frg_black_horse.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_pointer" >
			<symbol src="file:/osmc/frg_black_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_rectangle" >
			<symbol src="file:/osmc/frg_black_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_rectangle_line" >
			<symbol src="file:/osmc/frg_black_rectangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_red_diamond" >
			<symbol src="file:/osmc/frg_black_red_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_right" >
			<symbol src="file:/osmc/frg_black_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_triangle" >
			<symbol src="file:/osmc/frg_black_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_triangle_line" >
			<symbol src="file:/osmc/frg_black_triangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_x" >
			<symbol src="file:/osmc/frg_black_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<!-- =============== FRG GREEN ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_green_arch" >
			<symbol src="file:/osmc/frg_green_arch.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_backslash" >
			<symbol src="file:/osmc/frg_green_backslash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_bar" >
			<symbol src="file:/osmc/frg_green_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_bowl" >
			<symbol src="file:/osmc/frg_green_bowl.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_circle" >
			<symbol src="file:/osmc/frg_green_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_corner" >
			<symbol src="file:/osmc/frg_green_corner.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_cross" >
			<symbol src="file:/osmc/frg_green_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_diamond" >
			<symbol src="file:/osmc/frg_green_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_dot" >
			<symbol src="file:/osmc/frg_green_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_drop_line" >
			<symbol src="file:/osmc/frg_green_drop_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_hiker" >
			<symbol src="file:/osmc/frg_green_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_fork" >
			<symbol src="file:/osmc/frg_green_fork.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_horse" >
			<symbol src="file:/osmc/frg_green_horse.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_l" >
			<symbol src="file:/osmc/frg_green_L.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_lower" >
			<symbol src="file:/osmc/frg_green_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_pointer" >
			<symbol src="file:/osmc/frg_green_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_rectangle" >
			<symbol src="file:/osmc/frg_green_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_right" >
			<symbol src="file:/osmc/frg_green_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_slash" >
			<symbol src="file:/osmc/frg_green_slash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_stripe" >
			<symbol src="file:/osmc/frg_green_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_triangle" >
			<symbol src="file:/osmc/frg_green_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_triangle_line" >
			<symbol src="file:/osmc/frg_green_triangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_triangle_turned" >
			<symbol src="file:/osmc/frg_green_triangle_turned.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_turned_t" >
			<symbol src="file:/osmc/frg_green_turned_T.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_x" >
			<symbol src="file:/osmc/frg_green_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<!-- =============== FRG WHITE	 ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_white_arch" >
			<symbol src="file:/osmc/frg_white_arch.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_bar" >
			<symbol src="file:/osmc/frg_white_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_circle" >
			<symbol src="file:/osmc/frg_white_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_cross" >
			<symbol src="file:/osmc/frg_white_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_diamond" >
			<symbol src="file:/osmc/frg_white_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_diamond_line" >
			<symbol src="file:/osmc/frg_white_diamond_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_dot" >
			<symbol src="file:/osmc/frg_white_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_hiker" >
			<symbol src="file:/osmc/frg_white_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_lower" >
			<symbol src="file:/osmc/frg_white_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_pointer" >
			<symbol src="file:/osmc/frg_white_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_rectangle" >
			<symbol src="file:/osmc/frg_white_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_rectangle_line" >
			<symbol src="file:/osmc/frg_white_rectangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_red_diamond" >
			<symbol src="file:/osmc/frg_white_red_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_right" >
			<symbol src="file:/osmc/frg_white_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_stripe" >
			<symbol src="file:/osmc/frg_white_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_triangle" >
			<symbol src="file:/osmc/frg_white_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_triangle_line" >
			<symbol src="file:/osmc/frg_white_triangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_turned_t" >
			<symbol src="file:/osmc/frg_white_turned_T.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_x" >
			<symbol src="file:/osmc/frg_white_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<!-- =============== FRG SYMBOLS	 ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_ammonit">
			<symbol src="file:/osmc/frg_ammonit.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_heart">
			<symbol src="file:/osmc/frg_heart.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_hiker">
			<symbol src="file:/osmc/frg_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_mine">
			<symbol src="file:/osmc/frg_mine.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_bar">
			<symbol src="file:/osmc/frg_orange_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_diamond_line">
			<symbol src="file:/osmc/frg_orange_diamond_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_dot">
			<symbol src="file:/osmc/frg_orange_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_right" >
			<symbol src="file:/osmc/frg_orange_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_shell">
			<symbol src="file:/osmc/frg_shell.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_shell_modern">
			<symbol src="file:/osmc/frg_shell_modern.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_tower">
			<symbol src="file:/osmc/frg_tower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_wolfshook">
			<symbol src="file:/osmc/frg_wolfshook.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>

		<!-- Text in Wanderwegemarkierung, OpenAndroMaps only -->
		<rule e="any" k="osmc_foreground" v="~|no|false"> <!-- nur wenn foreground nichts enthält -->
			<rule e="any" k="osmc_textcolor" v="~|wmtc_black|wmtc_brown|wmtc_purple|wmtc_red|wmtc_green|wmtc_blue|wmtc_orange">
				<rule e="any" k="osmc_text_len" v="wmtl_1|wmtl_2">
					<caption k="name" priority="{$osmc-frg-sym-prio}" display="always" font-size="{$osmc-wmtl_1-font-size}" position="center" font-style="bold" fill="#000000" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
				<rule e="any" k="osmc_text_len" v="wmtl_3|wmtl_4">
					<caption k="name" priority="{$osmc-frg-sym-prio}" display="always" font-size="{$osmc-wmtl_3-font-size}" position="center" font-style="bold" fill="#000000" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
			</rule>
			<rule e="any" k="osmc_textcolor" v="wmtc_grey|wmtc_white|wmtc_yellow">
				<rule e="any" k="osmc_text_len" v="wmtl_1|wmtl_2">
					<caption k="name" priority="{$osmc-frg-sym-prio}" display="always" font-size="{$osmc-wmtl_1-font-size}" position="center" font-style="bold" fill="#FFFFFF" stroke="#E5000000" stroke-width="1.0" />
				</rule>
				<rule e="any" k="osmc_text_len" v="wmtl_3|wmtl_4">
					<caption k="name" priority="{$osmc-frg-sym-prio}" display="always" font-size="{$osmc-wmtl_3-font-size}" position="center" font-style="bold" fill="#FFFFFF" stroke="#E5000000" stroke-width="1.0" />
				</rule>
			</rule>
		</rule>
	</rule>
</xsl:template>

</xsl:stylesheet>
