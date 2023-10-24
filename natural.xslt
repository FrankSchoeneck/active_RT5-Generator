<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:variable name="dy-peak-caption">3</xsl:variable>

<xsl:template name="natural_ways">
	<!-- natural -->
	<rule e="way" k="natural" v="*">
		<rule e="way" k="natural" v="*" zoom-min="6">
			<rule e="way" k="natural" v="glacier" closed="yes">
				<area fill="#50D3E9FF" />
				<area src="file:/patterns/glacier.svg" />
			</rule>
			<rule e="way" k="natural" v="grassland" closed="yes">
				<area fill="#E7E7E7" stroke="#b7c7b9" cat="Style_Summer"/>
				<area fill="#fcfdff" stroke="#b7c7b9" cat="Style_Winter"/>
			</rule>
			<rule e="way" k="natural" v="fell" closed="yes">
				<area fill="#D4E5EB" />
			</rule>
			<rule e="way" k="natural" v="rock" closed="yes">
				<area fill="#D4E5EB" />
				<area src="file:/patterns/rock.svg" symbol-width="32" />
			</rule>
			<rule e="way" k="natural" v="scree|shingle" closed="yes">
				<area fill="#D4E5EB" />
				<area src="file:/patterns/scree.svg" symbol-width="32" />
			</rule>
		</rule>
		
		<rule e="way" k="natural" v="*" zoom-min="10">
			<rule e="way" k="natural" v="sand">
				<area fill="#fffce4" />
			</rule>
			<rule e="way" k="natural" v="crater" closed="no">
				<line stroke="#8c4600" stroke-width="0.7" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="natural" v="crater" closed="yes">
				<area fill="#308c4600" />
			</rule>
		</rule>

		<rule e="way" k="natural" v="*" zoom-min="11">
			<rule e="way" k="natural" v="marsh|wetland" closed="yes" cat="Style_Summer">
				<area fill="#e0e5d6" />
				<area src="file:/patterns/marsh.svg" symbol-width="40" />
			</rule>
			<rule e="way" k="natural" v="marsh|wetland" closed="yes" cat="Style_Winter">
				<area fill="#fcfdff" />
				<area src="file:/patterns/marsh.svg" symbol-width="40" />
			</rule>
			<rule e="way" k="natural" v="beach" closed="yes">
				<area fill="#fffce4" />
			</rule>
			<rule e="way" k="natural" v="heath" closed="yes">
				<area fill="#DCE0DA" />
				<area src="file:/patterns/heath.svg" symbol-width="40" />
			</rule>
			<rule e="way" k="natural" v="scrub" closed="yes" cat="Style_Summer">
				<area fill="#e1edd5" />
			</rule>
			<rule e="way" k="natural" v="scrub" closed="yes" cat="Style_Winter">
				<area fill="#e8f2e2" />
			</rule>
		</rule>

		<rule e="way" k="natural" v="*" zoom-min="12">
			<rule e="way" k="natural" v="cliff|earth_bank" closed="no" cat="landscapefeat" > <!-- Steile Böschungen: Steilufer, Erosionsrinnen, Steilabhang. -->
				<line stroke="#70606060" stroke-width="1.0" stroke-linecap="butt" />
				<pathText k="name" font-style="bold" font-family="sans_serif" font-size="19" fill="#333333" stroke="#FFFFFF" stroke-width="1.5" />
				<rule e="way" k="natural" v="*" zoom-min="13">
					<lineSymbol dy="0.5" src="file:/symbols/cliff.svg" repeat="true" repeat-gap="1" repeat-start="1" rotate="true" position="center" symbol-percent="30" />
				</rule>		
			</rule>
			<rule e="way" k="natural" v="cliff|earth_bank" closed="yes" cat="landscapefeat"> <!-- Steile Böschungen: Steilufer, Erosionsrinnen, Steilabhang. -->
				<line stroke="#70606060" stroke-width="1.0" stroke-linecap="butt" />
				<caption k="name" font-style="bold_italic" font-family="sans_serif" font-size="19" fill="#333333" stroke="#FFFFFF" stroke-width="1.5" />
			</rule>
			<rule e="way" k="natural" v="crevasse" closed="no">
				<line stroke="#73dcff" stroke-width="0.7" stroke-linecap="butt" />
				<line stroke="#ff7396" stroke-width="0.5" stroke-dasharray="2,2" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="natural" v="crevasse" closed="yes">
				<line stroke="#73dcff" stroke-width="0.3" />
				<area fill="#50ff7396" />
			</rule>
			<rule e="way" k="natural" v="tree_row" cat="Style_Summer">
				<line stroke="#CBE0B3" stroke-width="0.7" stroke-linecap="round" />
			</rule>
			<rule e="way" k="natural" v="tree_row" cat="Style_Winter">
				<line stroke="#d9e3f4" stroke-width="0.7" stroke-linecap="round" />
			</rule>
		</rule>

		<!-- Natural captions -->
		<rule e="any" k="natural" v="valley|canyon|peninsula" zoom-min="11">
			<rule e="node" k="*" v="*">
				<caption k="name" font-style="italic" font-family="sans_serif" font-size="10" fill="#888888" stroke="#888888" stroke-width="0.8" />
			</rule>
			<rule e="way" k="*" v="*" zoom-max="13">
				<caption k="name" font-style="bold_italic" font-family="sans_serif" font-size="10" fill="#333333" stroke="#FFFFFF" stroke-width="0.8" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="14">
				<pathText k="name" font-style="bold_italic" font-family="sans_serif" font-size="10" fill="#333333" stroke="#FFFFFF" stroke-width="0.8" />
			</rule>
		</rule>
		<rule e="any" k="natural" v="bay" zoom-min="12">
			<caption k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#FFFFFF" stroke-width="1.5" />
		</rule>
		<rule e="way" k="natural" v="beach" zoom-min="15">
			<caption k="name" font-style="normal" font-family="sans_serif" font-size="8" fill="#333333" stroke="#FFFFFF" stroke-width="0.8" />
		</rule>
		<rule e="way" k="natural" v="heath|marsh|wetland|scrub" zoom-min="15">
			<caption k="name" font-style="normal" font-family="sans_serif" font-size="8" fill="#333333" stroke="#FFFFFF" stroke-width="0.8" />
		</rule>
	</rule>
</xsl:template>

<xsl:template name="natural_nodes">
	<rule e="node" k="natural" v="*">
		<!-- Berggipfel -->
		<rule e="node" k="natural" v="peak">
			<rule e="any" k="peak_dist" v="pd_1" zoom-min="7">
				<rule e="node" k="summit:cross" v="yes">
					<symbol id="id_peak_cross" src="file:/symbols/peak_cross.svg" symbol-percent="40"/>
					<rule e="node" k="*" v="*" zoom-min="9" >
						<caption symbol-id="id_peak_cross" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
					<rule e="node" k="*" v="*" zoom-min="10">
						<caption symbol-id="id_peak_cross" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
				</rule>
				<rule e="node" k="summit:cross" v="~|no">
					<symbol id="id_peak" src="file:/symbols/peak.svg" symbol-percent="40" />
					<rule e="node" k="*" v="*" zoom-min="9" >
						<caption symbol-id="id_peak" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
					<rule e="node" k="*" v="*" zoom-min="10">
						<caption symbol-id="id_peak" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_2" zoom-min="9">
				<rule e="node" k="summit:cross" v="yes">
					<symbol id="id_peak_cross" src="file:/symbols/peak_cross.svg" symbol-percent="40"/>
					<rule e="node" k="*" v="*" zoom-min="11" >
						<caption symbol-id="id_peak_cross" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
					<rule e="node" k="*" v="*" zoom-min="12">
						<caption symbol-id="id_peak_cross" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
				</rule>
				<rule e="node" k="summit:cross" v="~|no">
					<symbol id="id_peak" src="file:/symbols/peak.svg" symbol-percent="40" />
					<rule e="node" k="*" v="*" zoom-min="11" >
						<caption symbol-id="id_peak" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
					<rule e="node" k="*" v="*" zoom-min="12">
						<caption symbol-id="id_peak" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_3|~" zoom-min="10">
				<rule e="node" k="summit:cross" v="yes">
					<symbol id="id_peak_cross" src="file:/symbols/peak_cross.svg" symbol-percent="40"/>
					<rule e="node" k="*" v="*" zoom-min="11" >
						<caption symbol-id="id_peak_cross" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
					<rule e="node" k="*" v="*" zoom-min="12">
						<caption symbol-id="id_peak_cross" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
				</rule>
				<rule e="node" k="summit:cross" v="~|no">
					<symbol id="id_peak" src="file:/symbols/peak.svg" symbol-percent="40" />
					<rule e="node" k="*" v="*" zoom-min="11" >
						<caption symbol-id="id_peak" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
					<rule e="node" k="*" v="*" zoom-min="12">
						<caption symbol-id="id_peak" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_4" zoom-min="11">
				<rule e="node" k="summit:cross" v="yes">
					<symbol id="id_peak_cross" src="file:/symbols/peak_cross.svg" symbol-percent="40"/>
					<caption symbol-id="id_peak_cross" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					<rule e="node" k="*" v="*" zoom-min="12">
						<caption symbol-id="id_peak_cross" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
				</rule>
				<rule e="node" k="summit:cross" v="~|no">
					<symbol id="id_peak" src="file:/symbols/peak.svg" symbol-percent="40" />
					<caption symbol-id="id_peak" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					<rule e="node" k="*" v="*" zoom-min="12">
						<caption symbol-id="id_peak" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					</rule>
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_5" zoom-min="12">
				<rule e="node" k="summit:cross" v="yes">
					<symbol id="id_peak_cross" src="file:/symbols/peak_cross.svg" symbol-percent="40"/>
					<caption symbol-id="id_peak_cross" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					<caption symbol-id="id_peak_cross" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
				</rule>
				<rule e="node" k="summit:cross" v="~|no">
					<symbol id="id_peak" src="file:/symbols/peak.svg" symbol-percent="40" />
					<caption symbol-id="id_peak" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
					<caption symbol-id="id_peak" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.2" />
				</rule>
			</rule>
		</rule>
		
		<!-- Vulkane -->
		<rule e="node" k="natural" v="volcano">
			<rule e="any" k="peak_dist" v="pd_1" zoom-min="7">
				<symbol id="id_volcano" src="file:/symbols/volcano.svg" symbol-percent="70" />
				<rule e="node" k="*" v="*" zoom-min="11" >
					<caption symbol-id="id_volcano" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
				<rule e="node" k="*" v="*" zoom-min="12">
					<caption symbol-id="id_volcano" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_2" zoom-min="9">
				<symbol id="id_volcano" src="file:/symbols/volcano.svg" symbol-percent="70" />
				<rule e="node" k="*" v="*" zoom-min="11" >
					<caption symbol-id="id_volcano" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
				<rule e="node" k="*" v="*" zoom-min="12">
					<caption symbol-id="id_volcano" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_3|~" zoom-min="10">
				<symbol id="id_volcano" src="file:/symbols/volcano.svg" symbol-percent="70" />
				<rule e="node" k="*" v="*" zoom-min="11" >
					<caption symbol-id="id_volcano" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
				<rule e="node" k="*" v="*" zoom-min="12">
					<caption symbol-id="id_volcano" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_4" zoom-min="11">
				<symbol id="id_volcano" src="file:/symbols/volcano.svg" symbol-percent="70" />
				<caption symbol-id="id_volcano" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				<rule e="node" k="*" v="*" zoom-min="12">
					<caption symbol-id="id_volcano" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_5" zoom-min="12">
				<symbol id="id_volcano" src="file:/symbols/volcano.svg" symbol-percent="70" />
				<caption symbol-id="id_volcano" k="name" dy="{$dy-peak-caption}" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				<caption symbol-id="id_volcano" k="ele" dy="-{$dy-peak-caption}" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
			</rule>
		</rule>
	</rule>
	
	<rule e="any" k="natural" v="*" zoom-min="12">
		<rule e="any" k="natural" v="saddle" cat="landscapefeat">
			<rule e="any" k="dir_saddle" v="~" >
				<circle radius="1" scale-radius="true" fill="#CCCCCC" stroke="#666666" stroke-width="0.4" />
				<caption k="name" dy="-8" font-style="bold" font-size="10" fill="#797979" stroke="#ffffff" stroke-width="0.8" />
				<rule e="any" k="*" v="*" zoom-min="13">
					<caption k="ele" priority="-5" dy="11" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
				</rule>
			</rule>
			<rule e="any" k="dir_saddle" v="ds_0" >
				<symbol id="id_ds_0" src="file:/symbols/mountain_pass_0.svg" symbol-percent="80" />
				<caption symbol-id="id_ds_0" k="name" position="above" font-style="bold" font-size="10" fill="#797979" stroke="#ffffff" stroke-width="0.8" />
				<rule e="any" k="*" v="*" zoom-min="13">
					<caption k="ele" symbol-id="id_ds_0" position="below" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
				</rule>
			</rule>
			<rule e="any" k="dir_saddle" v="ds_45" >
				<symbol id="id_ds_45" src="file:/symbols/mountain_pass_45.svg" symbol-percent="80" />
				<caption symbol-id="id_ds_45" k="name" position="above" font-style="bold" font-size="10" fill="#797979" stroke="#ffffff" stroke-width="0.8" />
				<rule e="any" k="*" v="*" zoom-min="13">
					<caption k="ele" symbol-id="id_ds_45" position="below" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
				</rule>
			</rule>
			<rule e="any" k="dir_saddle" v="ds_90" >
				<symbol id="id_ds_90" src="file:/symbols/mountain_pass_90.svg" symbol-percent="80" />
				<caption symbol-id="id_ds_90" k="name" position="above" font-style="bold" font-size="10" fill="#797979" stroke="#ffffff" stroke-width="0.8" />
				<rule e="any" k="*" v="*" zoom-min="13">
					<caption k="ele" symbol-id="id_ds_90" position="below" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
				</rule>
			</rule>
			<rule e="any" k="dir_saddle" v="ds_135" >
				<symbol id="id_ds_135" src="file:/symbols/mountain_pass_135.svg" symbol-percent="80" />
				<caption symbol-id="id_ds_135" k="name" position="above" font-style="bold" font-size="10" fill="#797979" stroke="#ffffff" stroke-width="0.8" />
				<rule e="any" k="*" v="*" zoom-min="13">
					<caption k="ele" symbol-id="id_ds_135" position="below" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
				</rule>
			</rule>
		</rule>
		<rule e="node" k="natural" v="cave_entrance">
			<symbol id="id_cave_entrance" src="file:/symbols/cave_entrance.svg" symbol-percent="80" />
			<rule e="node" k="natural" v="*" zoom-min="15" >
				<caption symbol-id="id_cave_entrance" k="name" font-style="bold" font-family="sans_serif" font-size="8" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		<rule e="node" k="natural" v="rock|stone|nat_stone" cat="landscapefeat">
			<symbol id="id_rock" src="file:/symbols/rock.svg" symbol-percent="100" />
			<rule e="node" k="natural" v="*" zoom-min="15" >
				<caption symbol-id="id_rock" k="name" font-style="bold" font-family="sans_serif" font-size="8" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
			</rule>
		</rule>
		<rule e="node" k="natural" v="spring">
			<symbol src="file:/symbols/spring.svg" symbol-percent="80" />
		</rule>
	</rule>
</xsl:template>

</xsl:stylesheet>
