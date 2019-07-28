<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="natural_ways">
	<!-- natural -->
	<rule e="way" k="natural" v="*">
		<rule e="way" k="natural" v="*" zoom-min="6">
			<rule e="way" k="natural" v="glacier" closed="yes">
				<area fill="#50D3E9FF" />
				<area src="file:/patterns/glacier.svg" />
			</rule>
			<rule e="way" k="natural" v="grassland" closed="yes">
				<area fill="#faf8e5" />
				<area src="file:/patterns/medow.svg" />
			</rule>
			<rule e="way" k="natural" v="fell" closed="yes">
				<area fill="#dae2cb" />
			</rule>
			<rule e="way" k="natural" v="rock" closed="yes">
				<area fill="#dddddd" />
				<area src="file:/patterns/rock.svg" symbol-width="32" />
			</rule>
			<rule e="way" k="natural" v="scree|shingle" closed="yes">
				<area fill="#dddddd" />
				<area src="file:/patterns/scree.svg" symbol-width="32" />
			</rule>
		</rule>
		
		<rule e="way" k="natural" v="*" zoom-min="10">
			<rule e="way" k="natural" v="crater" closed="no">
				<line stroke="#8c4600" stroke-width="0.7" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="natural" v="crater" closed="yes">
				<area fill="#308c4600" />
			</rule>
		</rule>

		<rule e="way" k="natural" v="*" zoom-min="11">
			<rule e="way" k="natural" v="marsh|wetland" closed="yes">
				<area src="file:/patterns/marsh.svg" symbol-width="16" />
			</rule>
			<rule e="way" k="natural" v="beach" closed="yes">
				<area fill="#f4e3be" />
			</rule>
			<rule e="way" k="natural" v="heath" closed="yes">
				<area fill="#faf8e5" />
				<area src="file:/patterns/heath.svg" />
			</rule>
			<rule e="way" k="natural" v="scrub" closed="yes">
				<area fill="#faf8e5" />
				<area src="file:/patterns/scrub.svg" symbol-width="16" />
			</rule>
		</rule>

		<rule e="way" k="natural" v="*" zoom-min="12">
			<rule e="way" k="natural" v="cliff" closed="no" cat="landscapefeat" >
				<line stroke="#70606060" stroke-width="1.0" stroke-dasharray="1.8,2" stroke-linecap="butt"/>
				<pathText k="name" font-style="bold" font-family="sans_serif" font-size="19" fill="#333333" stroke="#FFFFFF" stroke-width="1.5" />
				<rule e="way" k="natural" v="*" zoom-min="13">
					<lineSymbol dy="0.5" src="file:/symbols/cliff.svg" repeat="true" repeat-gap="1" repeat-start="1" rotate="true" align-center="true" symbol-width="6" symbol-height="10" />
				</rule>		
			</rule>
			<rule e="way" k="natural" v="cliff" closed="yes" cat="landscapefeat">
				<line stroke="#70606060" stroke-width="1.0" stroke-dasharray="1.8,2" stroke-linecap="butt" />
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
		<rule e="any" k="natural" v="bay" zoom-min="11">
			<caption k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#595959" stroke="#FFFFFF" stroke-width="1.5" />
		</rule>
		<rule e="way" k="natural" v="beach" zoom-min="13">
			<caption k="name" font-style="normal" font-family="sans_serif" font-size="8" fill="#a98663" />
		</rule>
		<rule e="way" k="natural" v="heath|marsh|wetland" zoom-min="14">
			<caption k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#797979" />
		</rule>
	</rule>
</xsl:template>

<xsl:template name="natural_nodes">
	<rule e="node" k="natural" v="*">
		<!-- Berggipfel -->
		<rule e="node" k="natural" v="peak">
			<rule e="any" k="peak_dist" v="pd_1" zoom-min="7">
				<rule e="node" k="summit:cross" v="yes">
					<symbol id="id_peak_cross" src="file:/symbols/peak_cross.svg" symbol-width="14" symbol-height="17" />
					<rule e="node" k="*" v="*" zoom-min="9" >
						<caption symbol-id="id_peak_cross" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
					<rule e="node" k="*" v="*" zoom-min="10">
						<caption symbol-id="id_peak_cross" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
				</rule>
				<rule e="node" k="summit:cross" v="~|no">
					<symbol id="id_peak" src="file:/symbols/peak.svg" symbol-width="14" />
					<rule e="node" k="*" v="*" zoom-min="9" >
						<caption symbol-id="id_peak" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
					<rule e="node" k="*" v="*" zoom-min="10">
						<caption symbol-id="id_peak" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_2" zoom-min="9">
				<rule e="node" k="summit:cross" v="yes">
					<symbol id="id_peak_cross" src="file:/symbols/peak_cross.svg" symbol-width="14" symbol-height="17" />
					<rule e="node" k="*" v="*" zoom-min="11" >
						<caption symbol-id="id_peak_cross" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
					<rule e="node" k="*" v="*" zoom-min="12">
						<caption symbol-id="id_peak_cross" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
				</rule>
				<rule e="node" k="summit:cross" v="~|no">
					<symbol id="id_peak" src="file:/symbols/peak.svg" symbol-width="14" />
					<rule e="node" k="*" v="*" zoom-min="11" >
						<caption symbol-id="id_peak" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
					<rule e="node" k="*" v="*" zoom-min="12">
						<caption symbol-id="id_peak" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_3|~" zoom-min="10">
				<rule e="node" k="summit:cross" v="yes">
					<symbol id="id_peak_cross" src="file:/symbols/peak_cross.svg" symbol-width="14" symbol-height="17" />
					<rule e="node" k="*" v="*" zoom-min="11" >
						<caption symbol-id="id_peak_cross" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
					<rule e="node" k="*" v="*" zoom-min="12">
						<caption symbol-id="id_peak_cross" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
				</rule>
				<rule e="node" k="summit:cross" v="~|no">
					<symbol id="id_peak" src="file:/symbols/peak.svg" symbol-width="14" />
					<rule e="node" k="*" v="*" zoom-min="11" >
						<caption symbol-id="id_peak" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
					<rule e="node" k="*" v="*" zoom-min="12">
						<caption symbol-id="id_peak" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_4" zoom-min="11">
				<rule e="node" k="summit:cross" v="yes">
					<symbol id="id_peak_cross" src="file:/symbols/peak_cross.svg" symbol-width="14" symbol-height="17" />
					<caption symbol-id="id_peak_cross" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					<rule e="node" k="*" v="*" zoom-min="12">
						<caption symbol-id="id_peak_cross" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
				</rule>
				<rule e="node" k="summit:cross" v="~|no">
					<symbol id="id_peak" src="file:/symbols/peak.svg" symbol-width="14" />
					<caption symbol-id="id_peak" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					<rule e="node" k="*" v="*" zoom-min="12">
						<caption symbol-id="id_peak" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					</rule>
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_5" zoom-min="12">
				<rule e="node" k="summit:cross" v="yes">
					<symbol id="id_peak_cross" src="file:/symbols/peak_cross.svg" symbol-width="14" symbol-height="17" />
					<caption symbol-id="id_peak_cross" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					<caption symbol-id="id_peak_cross" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
				<rule e="node" k="summit:cross" v="~|no">
					<symbol id="id_peak" src="file:/symbols/peak.svg" symbol-width="14" />
					<caption symbol-id="id_peak" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
					<caption symbol-id="id_peak" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
			</rule>
		</rule>
		
		<!-- Vulkane -->
		<rule e="node" k="natural" v="volcano">
			<rule e="any" k="peak_dist" v="pd_1" zoom-min="7">
				<symbol id="id_volcano" src="file:/symbols/volcano.svg" symbol-width="14" />
				<rule e="node" k="*" v="*" zoom-min="11" >
					<caption symbol-id="id_volcano" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
				<rule e="node" k="*" v="*" zoom-min="12">
					<caption symbol-id="id_volcano" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_2" zoom-min="9">
				<symbol id="id_volcano" src="file:/symbols/volcano.svg" symbol-width="14" />
				<rule e="node" k="*" v="*" zoom-min="11" >
					<caption symbol-id="id_volcano" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
				<rule e="node" k="*" v="*" zoom-min="12">
					<caption symbol-id="id_volcano" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_3|~" zoom-min="10">
				<symbol id="id_volcano" src="file:/symbols/volcano.svg" symbol-width="14" />
				<rule e="node" k="*" v="*" zoom-min="11" >
					<caption symbol-id="id_volcano" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
				<rule e="node" k="*" v="*" zoom-min="12">
					<caption symbol-id="id_volcano" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_4" zoom-min="11">
				<symbol id="id_volcano" src="file:/symbols/volcano.svg" symbol-width="14" />
				<caption symbol-id="id_volcano" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				<rule e="node" k="*" v="*" zoom-min="12">
					<caption symbol-id="id_volcano" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				</rule>
			</rule>
			<rule e="any" k="peak_dist" v="pd_5" zoom-min="12">
				<symbol id="id_volcano" src="file:/symbols/volcano.svg" symbol-width="14" />
				<caption symbol-id="id_volcano" k="name" position="above" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
				<caption symbol-id="id_volcano" k="ele" position="below" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.8" />
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
		<rule e="node" k="natural" v="cave_entrance">
			<symbol id="id_cave_entrance" src="file:/symbols/cave_entrance.svg" symbol-width="12" />
			<rule e="node" k="natural" v="*" zoom-min="14" >
				<caption symbol-id="id_cave_entrance" k="name" font-style="bold" font-family="sans_serif" font-size="12" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		<rule e="node" k="natural" v="tree" zoom-min="14" cat="landscapefeat">
			<symbol id="id_tree" src="file:/symbols/tree.svg" symbol-width="10" />
			<rule e="node" k="natural" v="*" zoom-min="16" >
				<caption symbol-id="id_tree" k="name" font-style="normal" font-family="sans_serif" font-size="8" fill="#164526" stroke="#FFFFFF" stroke-width="0.5" />
			</rule>
		</rule>
		<rule e="node" k="natural" v="rock|stone|nat_stone" cat="landscapefeat">
			<symbol id="id_rock" src="file:/symbols/rock.svg" symbol-width="16" />
			<rule e="node" k="natural" v="*" zoom-min="14" >
				<caption symbol-id="id_rock" k="name" font-style="bold" font-family="sans_serif" font-size="12" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		<rule e="node" k="natural" v="spring">
			<symbol src="file:/symbols/spring.svg" symbol-width="16" />
		</rule>
	</rule>
</xsl:template>

</xsl:stylesheet>
