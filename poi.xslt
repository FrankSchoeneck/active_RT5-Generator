<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="poi">
	<!-- Bushaltestellen -->
	<rule e="node" k="highway" v="bus_stop" zoom-min="14" cat="pub_transp">
		<symbol id="id_bus_stop" src="file:/symbols/bus_stop.svg" symbol-width="12" />
		<rule e="node" k="highway" v="*" zoom-min="17">
			<caption symbol-id="id_bus_stop" k="name" dy="-4" font-style="bold" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
		</rule>
	</rule>
		
	<!-- Rettungspunkte (only for OpenAndroMaps) -->
	<rule e="any" k="highway" v="emergency_access_point" zoom-min="14" cat="emergency_access_point">
		<symbol id="id_emergency_access_point" src="file:/symbols/emergency_access_point.svg" symbol-percent="60" display="always" />
		<rule e="any" k="*" v="*" zoom-min="16">
			<caption symbol-id="id_emergency_access_point" k="name" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#DA0092" stroke="#FFFFFF" stroke-width="1.5" />
			<!--OAM Transform ref to addr:housenumber -->
			<caption symbol-id="id_emergency_access_point" k="addr:housenumber" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#DA0092" stroke="#FFFFFF" stroke-width="1.5" />
		</rule>
	</rule>

	<!-- leisure -->
	<rule e="any" k="leisure" v="playground" zoom-min="16">
		<symbol id="id_playground" src="file:/symbols/playground.svg"  symbol-percent="100" />
		<rule e="any" k="*" v="*" zoom-min="16">
			<caption symbol-id="id_playground" k="name" dy="-4" font-style="bold" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
		</rule>
	</rule>
	<rule e="node" k="leisure" v="picnic_table" zoom-min="16">
		<symbol id="id_picnic_table" src="file:/symbols/picnic_site.svg" symbol-percent="70" />
		<rule e="any" k="*" v="*" zoom-min="16">
			<caption symbol-id="id_picnic_table" k="name" dy="-4" font-style="bold" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
		</rule>
	</rule>

	<!-- man_made -->
	<rule e="any" k="man_made" v="lighthouse" zoom-min="12">
		<symbol id="id_lighthouse" src="file:/symbols/lighthouse.svg" symbol-width="12" />
		<rule e="way" k="*" v="*" zoom-min="15">
			<caption symbol-id="id_lighthouse" k="name" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
		</rule>
	</rule>
	<rule e="node" k="man_made" v="adit|adit_disused" zoom-min="12">
		<symbol src="file:/symbols/cave_entrance.svg" symbol-width="16" />
	</rule>
	<rule e="any" k="man_made" v="mineshaft" zoom-min="12">
		<symbol src="file:/symbols/mineshaft.svg" symbol-width="14" />
	</rule>
	<rule e="node" k="man_made" v="cross" zoom-min="12">
		<symbol src="file:/symbols/cross.svg" symbol-width="18" />
	</rule>
	<rule e="node" k="man_made" v="cairn" zoom-min="13" cat="landscapefeat"> <!-- Nur bei OpenAndroMaps -->
		<symbol src="file:/symbols/cairn.svg" symbol-width="20" />
	</rule>

	<!-- tower -->
	<rule e="node" k="tower" v="*" zoom-min="12">
		<rule e="node" k="tower" v="communication" >
			<symbol id="id_communication" src="file:/symbols/tower_communication.svg" symbol-width="18" />
			<caption symbol-id="id_communication" k="name" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.0" />
		</rule>
		<rule e="node" k="tower" v="~|observation" >
			<symbol id="id_observation" src="file:/symbols/tower_observation.svg" symbol-width="9" />
			<rule e="any" k="*" v="*" zoom-min="15">
				<caption symbol-id="id_observation" k="name" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.0" />
			</rule>
		</rule>
	</rule>

	<!-- water_well (Brunnen), only OpenAndroMaps -->
	<rule e="any" k="man_made" v="water_well" zoom-min="15">
		<rule e="any" k="drinking_water" v="yes">
			<symbol id="id_drinking_water_yes" src="file:/symbols/water_well_drinking.svg" symbol-percent="60" />
			<rule e="any" k="*" v="*" zoom-min="16">
				<caption symbol-id="id_drinking_water_yes" k="name" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.0" />
			</rule>
		</rule>
		<rule e="any" k="drinking_water" v="no|~">
			<symbol id="id_drinking_water_no" src="file:/symbols/water_well.svg" symbol-percent="60" />
			<rule e="any" k="*" v="*" zoom-min="16">
				<caption symbol-id="id_drinking_water_no" k="name" font-style="normal" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.0" />
			</rule>
		</rule>
	</rule>

	<!-- military -->
	<rule e="node" k="military" v="bunker|bunker_disused" zoom-min="12" >
		<symbol src="file:/symbols/bunker.svg" symbol-percent="70" />
	</rule>
	
	<!-- mountain_pass -->
	<rule e="any" k="mountain_pass" v="yes" zoom-min="12" cat="landscapefeat">
		<rule e="any" k="dir_saddle" v="~" >
			<circle radius="1" scale-radius="true" fill="#CCCCCC" stroke="#666666" stroke-width="0.4" />
			<caption k="name" dy="-8" font-style="bold" font-size="10" fill="#797979" stroke="#ffffff" stroke-width="0.8" />
			<rule e="any" k="*" v="*" zoom-min="13">
				<caption k="ele" priority="-5" dy="11" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
			</rule>
		</rule>
		<rule e="any" k="dir_saddle" v="ds_0" >
			<symbol id="id_ds_0" src="file:/symbols/mountain_pass_0.svg" symbol-width="16" />
			<caption symbol-id="id_ds_0" k="name" position="above" font-style="bold" font-size="10" fill="#797979" stroke="#ffffff" stroke-width="0.8" />
			<rule e="any" k="*" v="*" zoom-min="13">
				<caption k="ele" symbol-id="id_ds_0" position="below" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
			</rule>
		</rule>
		<rule e="any" k="dir_saddle" v="ds_45" >
			<symbol id="id_ds_45" src="file:/symbols/mountain_pass_45.svg" symbol-width="16" />
			<caption symbol-id="id_ds_45" k="name" position="above" font-style="bold" font-size="10" fill="#797979" stroke="#ffffff" stroke-width="0.8" />
			<rule e="any" k="*" v="*" zoom-min="13">
				<caption k="ele" symbol-id="id_ds_45" position="below" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
			</rule>
		</rule>
		<rule e="any" k="dir_saddle" v="ds_90" >
			<symbol id="id_ds_90" src="file:/symbols/mountain_pass_90.svg" symbol-width="16" />
			<caption symbol-id="id_ds_90" k="name" position="above" font-style="bold" font-size="10" fill="#797979" stroke="#ffffff" stroke-width="0.8" />
			<rule e="any" k="*" v="*" zoom-min="13">
				<caption k="ele" symbol-id="id_ds_90" position="below" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
			</rule>
		</rule>
		<rule e="any" k="dir_saddle" v="ds_135" >
			<symbol id="id_ds_135" src="file:/symbols/mountain_pass_135.svg" symbol-width="16" />
			<caption symbol-id="id_ds_135" k="name" position="above" font-style="bold" font-size="10" fill="#797979" stroke="#ffffff" stroke-width="0.8" />
			<rule e="any" k="*" v="*" zoom-min="13">
				<caption k="ele" symbol-id="id_ds_135" position="below" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
			</rule>
		</rule>
	</rule>

	<!-- safety_rope, ladder, rungs -->
	<rule e="any" k="safety_rope|ladder|rungs" v="*" zoom-min="13">
		<rule e="any" k="safety_rope" v="sr_yes" >
			<symbol src="file:/symbols/safety_rope.svg" display="always" symbol-width="16" />
		</rule>
		<rule e="any" k="ladder" v="ld_yes" >
			<symbol src="file:/symbols/ladder.svg" display="always" symbol-width="16" />
		</rule>
		<rule e="any" k="rungs" v="rn_yes" >
			<symbol src="file:/symbols/rungs.svg" display="always" symbol-width="16" />
		</rule>
	<rule e="way" k="safety_rope|ladder|rungs" v="sr_yes|ld_yes|rn_yes" zoom-min="14">
		<line stroke="#BFBFBF" stroke-width="1.4" stroke-dasharray="1,5" stroke-linecap="round" />
		<line stroke="#000000" stroke-width="0.8" stroke-dasharray="1,5" stroke-linecap="round" />
	</rule>

	</rule>

	<!-- aerialway -->
	<rule e="any" k="aerialway" v="station" zoom-min="13">
		<caption k="name" font-style="bold" font-size="8.0" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
	</rule>
</xsl:template>

</xsl:stylesheet>
