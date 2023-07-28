<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:variable name="osmc-bcg-sym-prio">2</xsl:variable>
<xsl:variable name="osmc-bcg-sym-perc">45</xsl:variable>
<xsl:variable name="osmc-frg-sym-prio">3</xsl:variable>
<xsl:variable name="osmc-frg-sym-perc">45</xsl:variable>
<xsl:variable name="osmc-wmtl-prio">4</xsl:variable>
<xsl:variable name="osmc-wmtl_1-font-size">7</xsl:variable>
<xsl:variable name="osmc-wmtl_3-font-size">6</xsl:variable>

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
	<rule e="way" k="network|hknetwork" v="*" cat="hikingtrails">
		<rule e="way" k="network|hknetwork" v="iwn|nwn" zoom-min="5" zoom-max="9">
			<line stroke="#F2221E" stroke-width="1.8" />
			<line stroke="#E7B3B3" stroke-width="1.3" />
		</rule>

		<rule e="way" k="network|hknetwork" v="iwn|nwn" zoom-min="10" zoom-max="11">
			<line stroke="#95F2221E" stroke-width="3.0" />
			<line stroke="#95E7B3B3" stroke-width="2.0" />
		</rule>
		<rule e="way" k="network|hknetwork" v="own|lwn|rwn" zoom-min="10" zoom-max="11">
			<line stroke="#95db8c8c" stroke-width="2.0" />
		</rule>

		<rule e="way" k="network|hknetwork" v="own|iwn|nwn|lwn|rwn" zoom-min="12">
			<line dy="-0.6" stroke="#80e60707" stroke-width="0.2" />
			<line stroke="#60f66966" stroke-width="1.0" />
			<line dy="0.6" stroke="#80e60707" stroke-width="0.2" />
		</rule>

		<!-- TEXT TO PATH -->
		<rule e="way" k="network|hknetwork" v="own|lwn" zoom-min="13">
			<pathText k="ref_hike" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" repeat-start="50" repeat-gap="300" />
		</rule>
		<rule e="way" k="network|hknetwork" v="rwn" zoom-min="13">
			<pathText k="ref_hike" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" repeat-start="30" repeat-gap="100" />
		</rule>
		<rule e="way" k="network|hknetwork" v="nwn" zoom-min="11">
			<pathText k="ref_hike" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" repeat-start="50" repeat-gap="300" />
		</rule>
		<rule e="way" k="network|hknetwork" v="iwn" zoom-min="11">
			<pathText k="ref_hike" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" repeat-start="50" repeat-gap="300" />
		</rule>
	</rule>

	<!-- hiking nodes, OpenAndroMaps only-->
	<rule e="node" k="hike_node" v="*" zoom-min="13" cat="hikingnodes">
		<circle radius="7.5" scale-radius="false" fill="#ffffff" stroke="#009900" stroke-width="1.5" />
		<caption k="addr:housenumber" priority="{$osmc-frg-sym-prio}" position="center" font-style="bold" font-size="9" fill="#009900" stroke="#E5FFFFFF" stroke-width="2.0" />
	</rule>

	<!-- HIKING PATH OSMC:SYMBOL für OpenAndroMaps -->
	<rule e="any" k="osmc" v="yes|osmc_yes" zoom-min="14" cat="trail_markings"> <!-- rule für cat=Wegemarkierungen -->
		<!-- Wenn background nichts enthält -->
		<rule e="any" k="osmc_background" v="~|no|false">
			<symbol src="file:/osmc/bcg_white.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		
		<!-- ================= OSMC_BACKGROUND ======================== -->
		<rule e="any" k="osmc_background" v="wmbg_black|black" >
			<symbol src="file:/osmc/bcg_black.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_black_circle|black_circle">
			<symbol src="file:/osmc/bcg_black_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_black_frame|black_frame">
			<symbol src="file:/osmc/bcg_black_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_black_round|black_round">
			<symbol src="file:/osmc/bcg_black_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		
		<rule e="any" k="osmc_background" v="wmbg_blue|blue">
			<symbol src="file:/osmc/bcg_blue.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_blue_circle|blue_circle">
			<symbol src="file:/osmc/bcg_blue_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_blue_frame|blue_frame">
			<symbol src="file:/osmc/bcg_blue_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_blue_round|blue_round">
			<symbol src="file:/osmc/bcg_blue_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		
		<rule e="any" k="osmc_background" v="wmbg_brown|brown">
			<symbol src="file:/osmc/bcg_brown.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_brown_circle|brown_circle">
			<symbol src="file:/osmc/bcg_brown_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_brown_frame|brown_frame">
			<symbol src="file:/osmc/bcg_brown_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_brown_round|brown_round">
			<symbol src="file:/osmc/bcg_brown_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		
		<rule e="any" k="osmc_background" v="wmbg_green|green">
			<symbol src="file:/osmc/bcg_green.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_green_circle|green_circle">
			<symbol src="file:/osmc/bcg_green_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_green_frame|green_frame">
			<symbol src="file:/osmc/bcg_green_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_green_round|green_round">
			<symbol src="file:/osmc/bcg_green_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		
		<rule e="any" k="osmc_background" v="wmbg_orange|orange">
			<symbol src="file:/osmc/bcg_orange.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_orange_circle|orange_circle">
			<symbol src="file:/osmc/bcg_orange_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_orange_frame|orange_frame">
			<symbol src="file:/osmc/bcg_orange_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_orange_round|orange_round">
			<symbol src="file:/osmc/bcg_orange_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		
		<rule e="any" k="osmc_background" v="wmbg_purple|purple">
			<symbol src="file:/osmc/bcg_purple.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_purple_circle|purple_circle">
			<symbol src="file:/osmc/bcg_purple_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_purple_frame|purple_frame">
			<symbol src="file:/osmc/bcg_purple_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_purple_round|purple_round">
			<symbol src="file:/osmc/bcg_purple_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		
		<rule e="any" k="osmc_background" v="wmbg_red|red">
			<symbol src="file:/osmc/bcg_red.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_red_circle|red_circle">
			<symbol src="file:/osmc/bcg_red_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_red_frame|red_frame">
			<symbol src="file:/osmc/bcg_red_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_red_round|red_round">
			<symbol src="file:/osmc/bcg_red_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		
		<rule e="any" k="osmc_background" v="wmbg_white|white">
			<symbol src="file:/osmc/bcg_white.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_white_circle|white_circle">
			<symbol src="file:/osmc/bcg_white_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_white_frame|white_frame">
			<symbol src="file:/osmc/bcg_white_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_white_round|white_round">
			<symbol src="file:/osmc/bcg_white_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		
		<rule e="any" k="osmc_background" v="wmbg_yellow|yellow">
			<symbol src="file:/osmc/bcg_yellow.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_yellow_circle|yellow_circle">
			<symbol src="file:/osmc/bcg_yellow_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_yellow_frame|yellow_frame">
			<symbol src="file:/osmc/bcg_yellow_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_yellow_round|yellow_round">
			<symbol src="file:/osmc/bcg_yellow_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		
		<rule e="any" k="osmc_background" v="wmbg_gray|gray">
			<symbol src="file:/osmc/bcg_gray.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_gray_circle|gray_circle">
			<symbol src="file:/osmc/bcg_gray_circle.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_gray_frame|gray_frame">
			<symbol src="file:/osmc/bcg_gray_frame.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_background" v="wmbg_gray_round|gray_round">
			<symbol src="file:/osmc/bcg_gray_round.svg" display="always" priority="{$osmc-bcg-sym-prio}" symbol-percent="{$osmc-bcg-sym-perc}" />
		</rule>
		

		<!-- ================= OSMC_FOREGROUND ======================== -->
		<!-- =============== FRG BLUE ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_blue_arch|blue_arch">
			<symbol src="file:/osmc/frg_blue_arch.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_backslash|blue_backslash" >
			<symbol src="file:/osmc/frg_blue_backslash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_bar|blue_bar">
			<symbol src="file:/osmc/frg_blue_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_bowl|blue_bowl" >
			<symbol src="file:/osmc/frg_blue_bowl.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_circle|blue_circle" >
			<symbol src="file:/osmc/frg_blue_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_corner|blue_corner" >
			<symbol src="file:/osmc/frg_blue_corner.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_cross|blue_cross" >
			<symbol src="file:/osmc/frg_blue_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_diamond|blue_diamond" >
			<symbol src="file:/osmc/frg_blue_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_dot|blue_dot" >
			<symbol src="file:/osmc/frg_blue_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_fork|blue_fork" >
			<symbol src="file:/osmc/frg_blue_fork.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_hiker|blue_hiker" >
			<symbol src="file:/osmc/frg_blue_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_l|blue_l">
			<symbol src="file:/osmc/frg_blue_L.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_lower|blue_lower" >
			<symbol src="file:/osmc/frg_blue_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_pointer|blue_pointer" >
			<symbol src="file:/osmc/frg_blue_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_rectangle|blue_rectangle" >
			<symbol src="file:/osmc/frg_blue_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_right|blue_right" >
			<symbol src="file:/osmc/frg_blue_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_slash|blue_slash" >
			<symbol src="file:/osmc/frg_blue_slash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_stripe|blue_stripe" >
			<symbol src="file:/osmc/frg_blue_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_triangle|blue_triangle" >
			<symbol src="file:/osmc/frg_blue_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_triangle_line|blue_triangle_line" >
			<symbol src="file:/osmc/frg_blue_triangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_triangle_turned|blue_triangle_turned" >
			<symbol src="file:/osmc/frg_blue_triangle_turned.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_turned_t|blue_turned_t" >
			<symbol src="file:/osmc/frg_blue_turned_T.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_blue_x|blue_x" >
			<symbol src="file:/osmc/frg_blue_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		
		<!-- =============== FRG RED ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_red_arch|red_arch" >
			<symbol src="file:/osmc/frg_red_arch.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_backslash|red_backslash" >
			<symbol src="file:/osmc/frg_red_backslash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_bar|red_bar" >
			<symbol src="file:/osmc/frg_red_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_circle|red_circle" >
			<symbol src="file:/osmc/frg_red_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_corner|red_corner" >
			<symbol src="file:/osmc/frg_red_corner.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_crest|red_crest" >
			<symbol src="file:/osmc/frg_red_crest.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_cross|red_cross" >
			<symbol src="file:/osmc/frg_red_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_diamond|red_diamond" >
			<symbol src="file:/osmc/frg_red_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_diamond_line|red_diamond_line" >
			<symbol src="file:/osmc/frg_red_diamond_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_dot|red_dot" >
			<symbol src="file:/osmc/frg_red_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_drop|red_drop" >
			<symbol src="file:/osmc/frg_red_drop.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_drop_line|red_drop_line" >
			<symbol src="file:/osmc/frg_red_drop_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_fork|red_fork" >
			<symbol src="file:/osmc/frg_red_fork.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_hiker|red_hiker" >
			<symbol src="file:/osmc/frg_red_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_l|red_l" >
			<symbol src="file:/osmc/frg_red_L.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_lower|red_lower" >
			<symbol src="file:/osmc/frg_red_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_pointer|red_pointer" >
			<symbol src="file:/osmc/frg_red_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_rectangle|red_rectangle" >
			<symbol src="file:/osmc/frg_red_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_right|red_right" >
			<symbol src="file:/osmc/frg_red_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_shell|red_shell" >
			<symbol src="file:/osmc/frg_red_shell.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_slash|red_slash" >
			<symbol src="file:/osmc/frg_red_slash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_stripe|red_stripe" >
			<symbol src="file:/osmc/frg_red_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_triangle|red_triangle" >
			<symbol src="file:/osmc/frg_red_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_triangle_line|red_triangle_line" >
			<symbol src="file:/osmc/frg_red_triangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_triangle_turned|red_triangle_turned" >
			<symbol src="file:/osmc/frg_red_triangle_turned.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_turned_t|red_turned_t" >
			<symbol src="file:/osmc/frg_red_turned_T.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_wheel|red_wheel" >
			<symbol src="file:/osmc/frg_red_wheel.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_red_x|red_x" >
			<symbol src="file:/osmc/frg_red_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		
		<!-- =============== FRG YELLOW ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_arch|yellow_arch" >
			<symbol src="file:/osmc/frg_yellow_arch.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_backslash|yellow_backslash" >
			<symbol src="file:/osmc/frg_yellow_backslash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_bar|yellow_bar" >
			<symbol src="file:/osmc/frg_yellow_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_bowl|yellow_bowl" >
			<symbol src="file:/osmc/frg_yellow_bowl.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_circle|yellow_circle" >
			<symbol src="file:/osmc/frg_yellow_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_corner|yellow_corner" >
			<symbol src="file:/osmc/frg_yellow_corner.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_cross|yellow_cross" >
			<symbol src="file:/osmc/frg_yellow_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_diamond|yellow_diamond" >
			<symbol src="file:/osmc/frg_yellow_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_diamond_line|yellow_diamond_line" >
			<symbol src="file:/osmc/frg_yellow_diamond_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_dot|yellow_dot" >
			<symbol src="file:/osmc/frg_yellow_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_fork|yellow_fork" >
			<symbol src="file:/osmc/frg_yellow_fork.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_hexagon|yellow_hexagon" >
			<symbol src="file:/osmc/frg_yellow_hexagon.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_hiker|yellow_hiker" >
			<symbol src="file:/osmc/frg_yellow_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_l|yellow_l" >
			<symbol src="file:/osmc/frg_yellow_L.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_lower|yellow_lower" >
			<symbol src="file:/osmc/frg_yellow_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_pointer|yellow_pointer" >
			<symbol src="file:/osmc/frg_yellow_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_rectangle|yellow_rectangle" >
			<symbol src="file:/osmc/frg_yellow_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_rectangle_line|yellow_rectangle_line" >
			<symbol src="file:/osmc/frg_yellow_rectangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_right|yellow_right" >
			<symbol src="file:/osmc/frg_yellow_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_shell|yellow_shell" >
			<symbol src="file:/osmc/frg_yellow_shell.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_slash|yellow_slash" >
			<symbol src="file:/osmc/frg_yellow_slash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_stripe|yellow_stripe" >
			<symbol src="file:/osmc/frg_yellow_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_triangle|yellow_triangle" >
			<symbol src="file:/osmc/frg_yellow_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_triangle_line|yellow_triangle_line" >
			<symbol src="file:/osmc/frg_yellow_triangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_triangle_turned|yellow_triangle_turned" >
			<symbol src="file:/osmc/frg_yellow_triangle_turned.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_turned_t|yellow_turned_t" >
			<symbol src="file:/osmc/frg_yellow_turned_T.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_yellow_x|yellow_x" >
			<symbol src="file:/osmc/frg_yellow_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		
		<!-- =============== FRG BLACK	 ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_black_arch|black_arch|arch" >
			<symbol src="file:/osmc/frg_black_arch.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_backslash|black_backslash|backslash" >
			<symbol src="file:/osmc/frg_black_backslash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_bar|black_bar|bar" >
			<symbol src="file:/osmc/frg_black_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_circle|black_circle|circle" >
			<symbol src="file:/osmc/frg_black_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_corner|black_corner|corner" >
			<symbol src="file:/osmc/frg_black_corner.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_crest|black_crest|crest" >
			<symbol src="file:/osmc/frg_black_crest.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_cross|black_cross|cross" >
			<symbol src="file:/osmc/frg_black_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_diamond|black_diamond|diamond" >
			<symbol src="file:/osmc/frg_black_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_diamond_line|black_diamond_line|diamond_line" >
			<symbol src="file:/osmc/frg_black_diamond_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_dot|black_dot|dot" >
			<symbol src="file:/osmc/frg_black_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_fork|black_fork|fork" >
			<symbol src="file:/osmc/frg_black_fork.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_hiker|black_hiker|hiker" >
			<symbol src="file:/osmc/frg_black_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_horse|black_horse|horse" >
			<symbol src="file:/osmc/frg_black_horse.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_lower|black_horse|horse" >
			<symbol src="file:/osmc/frg_black_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_pointer|black_pointer|pointer" >
			<symbol src="file:/osmc/frg_black_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_rectangle|black_rectangle|rectangle" >
			<symbol src="file:/osmc/frg_black_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_rectangle_line|black_rectangle_line|rectangle_line" >
			<symbol src="file:/osmc/frg_black_rectangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_red_diamond|black_red_diamond" >
			<symbol src="file:/osmc/frg_black_red_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_right|black_right|right" >
			<symbol src="file:/osmc/frg_black_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_stripe|black_stripe|stripe" >
			<symbol src="file:/osmc/frg_black_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_triangle|black_triangle|triangle" >
			<symbol src="file:/osmc/frg_black_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_triangle_line|black_triangle_line|triangle_line" >
			<symbol src="file:/osmc/frg_black_triangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_turned_t|black_turned_t|turned_t" >
			<symbol src="file:/osmc/frg_black_turned_T.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_black_x|black_x|x" >
			<symbol src="file:/osmc/frg_black_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		
		<!-- =============== FRG GREEN ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_green_arch|green_arch" >
			<symbol src="file:/osmc/frg_green_arch.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_backslash|green_backslash" >
			<symbol src="file:/osmc/frg_green_backslash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_bar|green_bar" >
			<symbol src="file:/osmc/frg_green_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_bowl|green_bowl" >
			<symbol src="file:/osmc/frg_green_bowl.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_circle|green_circle" >
			<symbol src="file:/osmc/frg_green_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_corner|green_corner" >
			<symbol src="file:/osmc/frg_green_corner.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_cross|green_cross" >
			<symbol src="file:/osmc/frg_green_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_diamond|green_diamond" >
			<symbol src="file:/osmc/frg_green_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_diamond_line|green_diamond_line" >
			<symbol src="file:/osmc/frg_green_diamond_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_dot|green_dot" >
			<symbol src="file:/osmc/frg_green_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_drop_line|green_drop_line" >
			<symbol src="file:/osmc/frg_green_drop_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_fork|green_fork" >
			<symbol src="file:/osmc/frg_green_fork.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_hiker|green_hiker" >
			<symbol src="file:/osmc/frg_green_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_horse|green_horse" >
			<symbol src="file:/osmc/frg_green_horse.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_l|green_l" >
			<symbol src="file:/osmc/frg_green_L.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_lower|green_lower" >
			<symbol src="file:/osmc/frg_green_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_pointer|green_pointer" >
			<symbol src="file:/osmc/frg_green_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_rectangle|green_rectangle" >
			<symbol src="file:/osmc/frg_green_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_right|green_right" >
			<symbol src="file:/osmc/frg_green_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_slash|green_slash" >
			<symbol src="file:/osmc/frg_green_slash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_stripe|green_stripe" >
			<symbol src="file:/osmc/frg_green_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_triangle|green_triangle" >
			<symbol src="file:/osmc/frg_green_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_triangle_line|green_triangle_line" >
			<symbol src="file:/osmc/frg_green_triangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_triangle_turned|green_triangle_turned" >
			<symbol src="file:/osmc/frg_green_triangle_turned.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_turned_t|green_turned_t" >
			<symbol src="file:/osmc/frg_green_turned_T.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_wheel|green_wheel" >
			<symbol src="file:/osmc/frg_green_wheel.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_green_x|green_x" >
			<symbol src="file:/osmc/frg_green_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		
		<!-- =============== FRG WHITE	 ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_white_arch|white_arch" >
			<symbol src="file:/osmc/frg_white_arch.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_backslash|white_backslash" >
			<symbol src="file:/osmc/frg_white_backslash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_bar|white_bar" >
			<symbol src="file:/osmc/frg_white_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_circle|white_circle" >
			<symbol src="file:/osmc/frg_white_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_corner|white_corner" >
			<symbol src="file:/osmc/frg_white_corner.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_cross|white_cross" >
			<symbol src="file:/osmc/frg_white_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_diamond|white_diamond" >
			<symbol src="file:/osmc/frg_white_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_diamond_line|white_diamond_line" >
			<symbol src="file:/osmc/frg_white_diamond_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_dot|white_dot" >
			<symbol src="file:/osmc/frg_white_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_hiker|white_hiker" >
			<symbol src="file:/osmc/frg_white_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_lower|white_lower" >
			<symbol src="file:/osmc/frg_white_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_pointer|white_pointer" >
			<symbol src="file:/osmc/frg_white_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_rectangle|white_rectangle" >
			<symbol src="file:/osmc/frg_white_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_rectangle_line|white_rectangle_line" >
			<symbol src="file:/osmc/frg_white_rectangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_red_diamond|white_red_diamond" >
			<symbol src="file:/osmc/frg_white_red_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_right|white_right" >
			<symbol src="file:/osmc/frg_white_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_slash|white_slash" >
			<symbol src="file:/osmc/frg_white_slash.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_stripe|white_stripe" >
			<symbol src="file:/osmc/frg_white_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_triangle|white_triangle" >
			<symbol src="file:/osmc/frg_white_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_triangle_line|white_triangle_line" >
			<symbol src="file:/osmc/frg_white_triangle_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_triangle_turned|white_triangle_turned" >
			<symbol src="file:/osmc/frg_white_triangle_turned.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_turned_t|white_turned_t" >
			<symbol src="file:/osmc/frg_white_turned_T.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_white_x|white_x" >
			<symbol src="file:/osmc/frg_white_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>

		<!-- =============== FRG BROWN	 ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_brown_bar|brown_bar" >
			<symbol src="file:/osmc/frg_brown_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_brown_diamond|brown_diamond" >
			<symbol src="file:/osmc/frg_brown_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_brown_dot|brown_dot" >
			<symbol src="file:/osmc/frg_brown_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_brown_hiker|brown_hiker" >
			<symbol src="file:/osmc/frg_brown_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_brown_lower|brown_lower" >
			<symbol src="file:/osmc/frg_brown_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_brown_pointer|brown_pointer" >
			<symbol src="file:/osmc/frg_brown_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_brown_rectangle|brown_rectangle" >
			<symbol src="file:/osmc/frg_brown_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_brown_stripe|brown_stripe" >
			<symbol src="file:/osmc/frg_brown_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_brown_x|brown_x" >
			<symbol src="file:/osmc/frg_brown_x.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>

		<!-- =============== FRG GRAY	 ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_gray_bar|gray_bar" >
			<symbol src="file:/osmc/frg_gray_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_gray_pointer|gray_pointer" >
			<symbol src="file:/osmc/frg_gray_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_gray_triangle|gray_triangle" >
			<symbol src="file:/osmc/frg_gray_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>

		<!-- =============== FRG ORANGE ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_orange_bar|orange_bar" >
			<symbol src="file:/osmc/frg_orange_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_circle|orange_circle" >
			<symbol src="file:/osmc/frg_orange_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_cross|orange_cross" >
			<symbol src="file:/osmc/frg_orange_cross.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_diamond|orange_diamond" >
			<symbol src="file:/osmc/frg_orange_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_diamond_line|orange_diamond_line" >
			<symbol src="file:/osmc/frg_orange_diamond_line.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_dot|orange_dot" >
			<symbol src="file:/osmc/frg_orange_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_hexagon|orange_hexagon" >
			<symbol src="file:/osmc/frg_orange_hexagon.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_hiker|orange_hiker" >
			<symbol src="file:/osmc/frg_orange_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_lower|orange_lower" >
			<symbol src="file:/osmc/frg_orange_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_pointer|orange_pointer" >
			<symbol src="file:/osmc/frg_orange_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_rectangle|orange_rectangle" >
			<symbol src="file:/osmc/frg_orange_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_right|orange_right" >
			<symbol src="file:/osmc/frg_orange_right.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_stripe|orange_stripe" >
			<symbol src="file:/osmc/frg_orange_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_orange_triangle|orange_triangle" >
			<symbol src="file:/osmc/frg_orange_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>

		<!-- =============== FRG PURPLE ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_purple_bar|purple_bar" >
			<symbol src="file:/osmc/frg_purple_bar.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_purple_circle|purple_circle" >
			<symbol src="file:/osmc/frg_purple_circle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_purple_diamond|purple_diamond" >
			<symbol src="file:/osmc/frg_purple_diamond.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_purple_dot|purple_dot" >
			<symbol src="file:/osmc/frg_purple_dot.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_purple_lower|purple_lower" >
			<symbol src="file:/osmc/frg_purple_lower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_purple_pointer|purple_pointer" >
			<symbol src="file:/osmc/frg_purple_pointer.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_purple_rectangle|purple_rectangle" >
			<symbol src="file:/osmc/frg_purple_rectangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_purple_stripe|purple_stripe" >
			<symbol src="file:/osmc/frg_purple_stripe.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_purple_triangle|purple_triangle" >
			<symbol src="file:/osmc/frg_purple_triangle.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		
		<!-- =============== FRG SYMBOLS	 ================ -->
		<rule e="any" k="osmc_foreground" v="wmfg_ammonit|wmfg_ammonit">
			<symbol src="file:/osmc/frg_ammonit.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_bridleway|bridleway">
			<symbol src="file:/osmc/frg_bridleway.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_heart|heart">
			<symbol src="file:/osmc/frg_heart.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_hiker|hiker">
			<symbol src="file:/osmc/frg_hiker.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_mine|mine">
			<symbol src="file:/osmc/frg_mine.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_shell|shell">
			<symbol src="file:/osmc/frg_shell.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_shell_modern|shell_modern">
			<symbol src="file:/osmc/frg_shell_modern.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_tower|tower">
			<symbol src="file:/osmc/frg_tower.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>
		<rule e="any" k="osmc_foreground" v="wmfg_wolfshook|wolfshook">
			<symbol src="file:/osmc/frg_wolfshook.svg" display="always" priority="{$osmc-frg-sym-prio}" symbol-percent="{$osmc-frg-sym-perc}" />
		</rule>

		<!-- Text in Wanderwegemarkierung, OpenAndroMaps only -->
		<rule e="any" k="osmc_foreground" v="~|no|false"> <!-- nur wenn foreground nichts enthält -->
			<rule e="any" k="osmc_textcolor" v="~|wmtc_black">
				<rule e="any" k="osmc_text_len" v="wmtl_1|wmtl_2">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_1-font-size}" font-style="bold" fill="#000000" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
				<rule e="any" k="osmc_text_len" v="wmtl_3|wmtl_4|wmtl_5">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_3-font-size}" font-style="bold" fill="#000000" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
			</rule>
			<rule e="any" k="osmc_textcolor" v="wmtc_red">
				<rule e="any" k="osmc_text_len" v="wmtl_1|wmtl_2">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_1-font-size}" font-style="bold" fill="#FF3333" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
				<rule e="any" k="osmc_text_len" v="wmtl_3|wmtl_4|wmtl_5">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_3-font-size}" font-style="bold" fill="#FF3333" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
			</rule>
			<rule e="any" k="osmc_textcolor" v="wmtc_green">
				<rule e="any" k="osmc_text_len" v="wmtl_1|wmtl_2">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_1-font-size}" font-style="bold" fill="#267F00" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
				<rule e="any" k="osmc_text_len" v="wmtl_3|wmtl_4|wmtl_5">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_3-font-size}" font-style="bold" fill="#267F00" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
			</rule>
			<rule e="any" k="osmc_textcolor" v="wmtc_blue">
				<rule e="any" k="osmc_text_len" v="wmtl_1|wmtl_2">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_1-font-size}" font-style="bold" fill="#0242C1" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
				<rule e="any" k="osmc_text_len" v="wmtl_3|wmtl_4|wmtl_5">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_3-font-size}" font-style="bold" fill="#0242C1" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
			</rule>
			<rule e="any" k="osmc_textcolor" v="wmtc_brown">
				<rule e="any" k="osmc_text_len" v="wmtl_1|wmtl_2">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_1-font-size}" font-style="bold" fill="#BC6823" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
				<rule e="any" k="osmc_text_len" v="wmtl_3|wmtl_4|wmtl_5">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_3-font-size}" font-style="bold" fill="#BC6823" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
			</rule>
			<rule e="any" k="osmc_textcolor" v="wmtc_orange">
				<rule e="any" k="osmc_text_len" v="wmtl_1|wmtl_2">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_1-font-size}" font-style="bold" fill="#EB8D00" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
				<rule e="any" k="osmc_text_len" v="wmtl_3|wmtl_4|wmtl_5">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_3-font-size}" font-style="bold" fill="#EB8D00" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
			</rule>
			<rule e="any" k="osmc_textcolor" v="wmtc_purple">
				<rule e="any" k="osmc_text_len" v="wmtl_1|wmtl_2">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_1-font-size}" font-style="bold" fill="#C17FFF" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
				<rule e="any" k="osmc_text_len" v="wmtl_3|wmtl_4|wmtl_5">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_3-font-size}" font-style="bold" fill="#C17FFF" stroke="#E5FFFFFF" stroke-width="1.0" />
				</rule>
			</rule>
			<rule e="any" k="osmc_textcolor" v="wmtc_white">
				<rule e="any" k="osmc_text_len" v="wmtl_1|wmtl_2">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_1-font-size}" font-style="bold" fill="#FFFFFF" stroke="#E5000000" stroke-width="1.0" />
				</rule>
				<rule e="any" k="osmc_text_len" v="wmtl_3|wmtl_4|wmtl_5">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_3-font-size}" font-style="bold" fill="#FFFFFF" stroke="#E5000000" stroke-width="1.0" />
				</rule>
			</rule>
			<rule e="any" k="osmc_textcolor" v="wmtc_yellow">
				<rule e="any" k="osmc_text_len" v="wmtl_1|wmtl_2">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_1-font-size}" font-style="bold" fill="#F2DB0A" stroke="#E5000000" stroke-width="1.0" />
				</rule>
				<rule e="any" k="osmc_text_len" v="wmtl_3|wmtl_4|wmtl_5">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_3-font-size}" font-style="bold" fill="#F2DB0A" stroke="#E5000000" stroke-width="1.0" />
				</rule>
			</rule>
			<rule e="any" k="osmc_textcolor" v="wmtc_grey">
				<rule e="any" k="osmc_text_len" v="wmtl_1|wmtl_2">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_1-font-size}" font-style="bold" fill="#CCCCCC" stroke="#E5000000" stroke-width="1.0" />
				</rule>
				<rule e="any" k="osmc_text_len" v="wmtl_3|wmtl_4|wmtl_5">
					<caption k="name" priority="{$osmc-wmtl-prio}" display="always" font-size="{$osmc-wmtl_3-font-size}" font-style="bold" fill="#CCCCCC" stroke="#E5000000" stroke-width="1.0" />
				</rule>
			</rule>
		</rule>
	</rule>
</xsl:template>

</xsl:stylesheet>
