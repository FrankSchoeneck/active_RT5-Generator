<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:variable name="osmc-bcg-sym-prio">209</xsl:variable>
<xsl:variable name="osmc-bcg-sym-perc">45</xsl:variable>
<xsl:variable name="osmc-frg-sym-prio">210</xsl:variable>
<xsl:variable name="osmc-frg-sym-perc">45</xsl:variable>
<xsl:variable name="osmc-dy">0</xsl:variable>
<xsl:variable name="osmc-position">center</xsl:variable>
<xsl:variable name="osmc-repeat-gap">400</xsl:variable>
<xsl:variable name="osmc-repeat-start">40</xsl:variable>
<xsl:variable name="osmc-rotate">false</xsl:variable>
<xsl:variable name="osmc-symbol-orientation">up</xsl:variable>
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
	<rule e="way" k="network" v="*" cat="hikingtrails">
		<rule e="way" k="network" v="iwn|nwn" zoom-min="5" zoom-max="9">
			<line stroke="#F2221E" stroke-width="1.8" />
			<line stroke="#E7B3B3" stroke-width="1.3" />
		</rule>

		<rule e="way" k="network" v="iwn|nwn" zoom-min="10" zoom-max="11">
			<line stroke="#95F2221E" stroke-width="3.0" />
			<line stroke="#95E7B3B3" stroke-width="2.0" />
		</rule>
		<rule e="way" k="network" v="lwn|rwn" zoom-min="10" zoom-max="11">
			<line stroke="#95db8c8c" stroke-width="2.0" />
		</rule>

		<rule e="way" k="network" v="iwn|nwn|lwn|rwn" zoom-min="12">
			<line dy="-0.6" stroke="#80e60707" stroke-width="0.2" />
			<line stroke="#60f66966" stroke-width="1.0" />
			<line dy="0.6" stroke="#80e60707" stroke-width="0.2" />
		</rule>

		<!-- TEXT TO PATH -->
		<rule e="way" k="network" v="lwn" zoom-min="13">
			<pathText k="name" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" repeat-start="50" repeat-gap="300" />
		</rule>
		<rule e="way" k="network" v="rwn" zoom-min="13">
			<pathText k="name" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" repeat-start="30" repeat-gap="100" />
		</rule>
		<rule e="way" k="network" v="nwn" zoom-min="11">
			<pathText k="name" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" repeat-start="50" repeat-gap="300" />
		</rule>
		<rule e="way" k="network" v="iwn" zoom-min="11">
			<pathText k="name" dy="-1.5" font-style="bold" font-size="8" fill="#631f1f" stroke="#ffffff" stroke-width="2.0" repeat-start="50" repeat-gap="300" />
		</rule>
	</rule>

	<!-- HIKING PATH OSMC:SYMBOL -->
	<rule e="way" k="route" v="hiking|foot" zoom-min="14" cat="trail_markings"> <!-- rule für cat=Wegemarkierungen -->
		<rule e="way" k="osmc" v="yes">
			<!--display only elements with defined foreground to avoid empty backgroud symbols-->
			<rule e="way" k="osmc_foreground" v="*">
				<rule e="way" k="osmc_order" v="~|1|2" closed="any">
					<!-- =============== BLUE ================ -->
					<rule e="any" k="osmc_foreground" v="blue_arch">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_arch.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_backslash" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_backslash.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_bar">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_bar.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_bowl" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_bowl.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_circle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_circle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_corner" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_corner.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_cross" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_cross.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_diamond" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_diamond.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_dot" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_dot.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_fork" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_fork.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_hiker" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_hiker.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_l">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_L.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_lower" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_lower.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_pointer" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_pointer.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_rectangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_rectangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_right" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_right.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_slash" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_slash.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_stripe" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_stripe.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_triangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_triangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_triangle_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_triangle_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_triangle_turned" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_triangle_turned.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_turned_t" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_turned_T.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="blue_x" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_blue_x.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					
					<rule e="any" k="osmc_background" v="blue">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_blue.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="blue_circle">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_blue_circle.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="blue_frame">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_blue_frame.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="blue_round">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_blue_round.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>

					
					<!-- =============== RED ================ -->
					<rule e="any" k="osmc_foreground" v="red_arch" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_arch.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_backslash" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_backslash.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_bar" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_bar.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_circle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_circle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_corner" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_corner.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_crest" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_crest.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_cross" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_cross.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_diamond" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_diamond.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_diamond_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_diamond_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_dot" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_dot.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_drop" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_drop.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_drop_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_drop_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_fork" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_fork.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_hiker" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_hiker.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_l" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_L.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_lower" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_lower.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_pointer" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_pointer.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_rectangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_rectangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_right" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_right.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_shell" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_shell.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_slash" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_slash.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_stripe" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_stripe.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_triangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_triangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_triangle_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_triangle_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_triangle_turned" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_triangle_turned.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_turned_t" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_turned_T.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_wheel" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_wheel.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="red_x" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_red_x.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					
					<rule e="any" k="osmc_background" v="red">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_red.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="red_circle">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_red_circle.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="red_frame">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_red_frame.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="red_round">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_red_round.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>

					
					<!-- =============== YELLOW ================ -->
					<rule e="any" k="osmc_foreground" v="yellow_arch" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_arch.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_backslash" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_backslash.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_bar" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_bar.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_bowl" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_bowl.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_circle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_circle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_corner" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_corner.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_cross" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_cross.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_diamond" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_diamond.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_diamond_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_diamond_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_dot" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_dot.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_fork" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_fork.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_hexagon" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_hexagon.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_hiker" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_hiker.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_l" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_L.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_lower" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_lower.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_pointer" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_pointer.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_rectangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_rectangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_rectangle_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_rectangle_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_right" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_right.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_shell" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_shell.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_slash" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_slash.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_stripe" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_stripe.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_triangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_triangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_triangle_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_triangle_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_triangle_turned" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_triangle_turned.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_turned_t" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_turned_T.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="yellow_x" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_yellow_x.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>

					<rule e="any" k="osmc_background" v="yellow">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_yellow.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="yellow_circle">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_yellow_circle.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="yellow_frame">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_yellow_frame.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="yellow_round">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_yellow_round.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>

					
					<!-- =============== BLACK	 ================ -->
					<rule e="any" k="osmc_foreground" v="black_arch|arch" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_arch.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_backslash|backslash" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_backslash.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_bar|bar" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_bar.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_circle|circle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_circle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_corner|corner" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_corner.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_crest|crest" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_crest.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_cross|cross" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_cross.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_diamond|diamond" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_diamond.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_diamond_line|diamond_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_diamond_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_dot|dot" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_dot.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_fork|fork" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_fork.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_hiker|hiker" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_hiker.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_horse|horse" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_horse.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_horse|horse" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_lower.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_pointer|pointer" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_pointer.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_rectangle|rectangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_rectangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_rectangle_line|rectangle_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_rectangle_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_red_diamond" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_red_diamond.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_right|right" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_right.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_stripe|stripe" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_stripe.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_triangle|triangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_triangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_triangle_line|triangle_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_triangle_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_turned_t|turned_t" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_turned_T.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="black_x|x" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_black_x.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>

					<rule e="any" k="osmc_background" v="black" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_black.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="black_circle">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_black_circle.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="black_frame">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_black_frame.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="black_round">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_black_round.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>

					
					<!-- =============== GREEN ================ -->
					<rule e="any" k="osmc_foreground" v="green_arch" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_arch.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_backslash" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_backslash.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_bar" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_bar.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_bowl" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_bowl.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_circle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_circle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_corner" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_corner.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_cross" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_cross.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_diamond" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_diamond.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_diamond_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_diamond_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_dot" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_dot.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_drop_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_drop_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_fork" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_fork.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_hiker" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_hiker.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_horse" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_horse.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_l" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_L.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_lower" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_lower.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_pointer" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_pointer.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_rectangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_rectangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_right" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_right.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_slash" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_slash.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_stripe" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_stripe.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_triangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_triangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_triangle_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_triangle_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_triangle_turned" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_triangle_turned.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_turned_t" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_turned_T.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_wheel" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_wheel.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="green_x" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_green_x.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					
					<rule e="any" k="osmc_background" v="green">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_green.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="green_circle">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_green_circle.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="green_frame">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_green_frame.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="green_round">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_green_round.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>

					
					<!-- =============== WHITE	 ================ -->
					<rule e="any" k="osmc_foreground" v="white_arch" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_arch.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_backslash" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_backslash.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_bar" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_bar.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_circle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_circle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_corner" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_corner.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_cross" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_cross.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_diamond" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_diamond.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_diamond_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_diamond_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_dot" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_dot.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_hiker" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_hiker.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_lower" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_lower.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_pointer" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_pointer.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_rectangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_rectangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_rectangle_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_rectangle_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_red_diamond" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_red_diamond.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_right" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_right.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_slash" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_slash.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_stripe" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_stripe.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_triangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_triangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_triangle_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_triangle_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_triangle_turned" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_triangle_turned.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_turned_t" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_turned_T.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="white_x" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_white_x.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>

					<rule e="any" k="osmc_background" v="white">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_white.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="white_circle">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_white_circle.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="white_frame">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_white_frame.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="white_round">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_white_round.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>


					<!-- =============== BROWN	 ================ -->
					<rule e="any" k="osmc_foreground" v="brown_bar" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_brown_bar.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="brown_diamond" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_brown_diamond.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="brown_dot" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_brown_dot.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="brown_hiker" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_brown_hiker.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="brown_lower" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_brown_lower.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="brown_pointer" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_brown_pointer.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="brown_rectangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_brown_rectangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="brown_stripe" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_brown_stripe.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="brown_x" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_brown_x.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>

					<rule e="any" k="osmc_background" v="brown">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_brown.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="brown_circle">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_brown_circle.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="brown_frame">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_brown_frame.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="brown_round">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_brown_round.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>


					<!-- =============== GRAY	 ================ -->
					<rule e="any" k="osmc_foreground" v="gray_bar" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_gray_bar.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="gray_pointer" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_gray_pointer.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="gray_triangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_gray_triangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>

					<rule e="any" k="osmc_background" v="gray">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_gray.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="gray_circle">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_gray_circle.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="gray_frame">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_gray_frame.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="gray_round">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_gray_round.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>


					<!-- =============== ORANGE ================ -->
					<rule e="any" k="osmc_foreground" v="orange_bar" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_bar.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_circle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_circle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_cross" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_cross.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_diamond" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_diamond.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_diamond_line" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_diamond_line.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_dot" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_dot.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_hexagon" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_hexagon.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_hiker" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_hiker.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_lower" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_lower.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_pointer" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_pointer.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_rectangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_rectangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_right" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_right.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_stripe" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_stripe.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="orange_triangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_orange_triangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					
					<rule e="any" k="osmc_background" v="orange">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_orange.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="orange_circle">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_orange_circle.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="orange_frame">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_orange_frame.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="orange_round">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_orange_round.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>


					<!-- =============== PURPLE ================ -->
					<rule e="any" k="osmc_foreground" v="purple_bar" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_purple_bar.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="purple_circle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_purple_circle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="purple_diamond" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_purple_diamond.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="purple_dot" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_purple_dot.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="purple_lower" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_purple_lower.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="purple_pointer" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_purple_pointer.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="purple_rectangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_purple_rectangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="purple_stripe" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_purple_stripe.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="purple_triangle" >
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_purple_triangle.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					
					<rule e="any" k="osmc_background" v="purple">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_purple.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="purple_circle">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_purple_circle.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="purple_frame">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_purple_frame.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_background" v="purple_round">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/bcg_purple_round.svg" symbol-percent="{$osmc-bcg-sym-perc}" position="{$osmc-position}" priority="{$osmc-bcg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>

					
					<!-- =============== SYMBOLS	 ================ -->
					<rule e="any" k="osmc_foreground" v="ammonit">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_ammonit.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="bridleway">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_bridleway.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="heart">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_heart.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="hiker">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_hiker.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="mine">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_mine.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="shell">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_shell.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="shell_modern">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_shell_modern.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="tower">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_tower.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
					<rule e="any" k="osmc_foreground" v="wolfshook">
						<lineSymbol display="always" dy="{$osmc-dy}" scale="none" src="file:/osmc/frg_wolfshook.svg" symbol-percent="{$osmc-frg-sym-perc}" position="{$osmc-position}" priority="{$osmc-frg-sym-prio}" repeat="true" repeat-gap="{$osmc-repeat-gap}" repeat-start="{$osmc-repeat-start}" rotate="{$osmc-rotate}" symbol-orientation="{$osmc-symbol-orientation}"/>
					</rule>
				</rule>
			</rule>
		</rule>
	</rule>
</xsl:template>

</xsl:stylesheet>
