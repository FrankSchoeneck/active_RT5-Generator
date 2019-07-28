<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

	<xsl:template name="tourism_areas">
		<!-- tourism areas -->
		<rule e="way" k="tourism" v="*">
			<!-- tourism zoom > 11 -->
			<rule e="way" k="tourism" v="*" zoom-min="11">
				<rule e="way" k="tourism" v="camp_site|zoo">
					<area fill="#E5E5C5" stroke="#6fc18e" stroke-width="0.15" />
				</rule>
			</rule>

			<!-- tourism zoom > 12 -->
			<rule e="way" k="tourism" v="*" zoom-min="12">
				<rule e="way" k="tourism" v="picnic_site" >
					<area fill="#c7f1a3" />
				</rule>
				<rule e="way" k="tourism" v="attraction" >
					<area fill="#e0e0e0" stroke="#707070" stroke-width="0.15"/>
				</rule>
			</rule>

			<!-- tourism captions -->
			<rule e="way" k="tourism" v="zoo" zoom-min="13">
				<caption k="name" font-style="normal" font-family="sans_serif" font-size="12" fill="#333333" stroke="#FFFFFF" stroke-width="1.5" />
			</rule>
			<rule e="way" k="tourism" v="attraction" zoom-min="15">
				<caption k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
			</rule>
		</rule>
	</xsl:template>
	
	<xsl:template name="tourism_nodes">
		<!-- tourism -->
		<rule e="any" k="tourism" v="*">
			<rule e="any" k="tourism" v="*" zoom-min="12">
				<rule e="any" k="tourism" v="camp_site">
					<symbol id="id_camp_site" src="file:/symbols/campSite.svg" symbol-width="13" />
					<rule e="any" k="*" v="*" zoom-min="14">
						<caption symbol-id="id_camp_site" k="name" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="1.5" />
					</rule>
				</rule>
				<rule e="any" k="tourism" v="alpine_hut">
					<symbol id="id_alpine_hut" src="file:/symbols/alpine_hut.svg" symbol-width="16" display="always" />
					<caption symbol-id="id_alpine_hut" k="name" position="above" font-style="bold" font-size="10" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
					<caption symbol-id="id_alpine_hut" k="ele" position="below" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="2.0" />
				</rule>
				<rule e="any" k="tourism" v="museum">
					<symbol id="id_museum" src="file:/symbols/museum.svg" symbol-width="13" />
					<rule e="any" k="tourism" v="*" zoom-min="15">
						<caption symbol-id="id_museum" k="name" font-style="bold" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
					</rule>
				</rule>
			</rule>

			<rule e="any" k="tourism" v="*" zoom-min="13">
				<rule e="node" k="tourism" v="viewpoint">
					<symbol id="id_viewpoint" src="file:/symbols/viewpoint.svg" symbol-width="20" />
					<caption symbol-id="id_viewpoint" k="name" position="below" font-style="bold" font-size="8" fill="#797979" stroke="#ffffff" stroke-width="1.5" />
				</rule>
				<rule e="any" k="tourism" v="information" >
					<rule e="any" k="information" v="office|information_office">
						<symbol id="id_office" src="file:/symbols/information_office.svg" display="always" symbol-percent="60" />
						<caption symbol-id="id_office" k="name" font-style="bold" font-size="7" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
					</rule>
				</rule>
			</rule>

			<rule e="node" k="tourism" v="information" zoom-min="14">
				<rule e="node" k="information" v="guidepost">
					<symbol id="id_guidepost" src="file:/symbols/guidepost.svg" symbol-percent="70" />
					<rule e="node" k="information" v="*" zoom-min="15">
						<caption symbol-id="id_guidepost" k="name" font-style="bold_italic" font-size="8" fill="#333333" stroke="#ffffff" stroke-width="2.0" />
					</rule>
				</rule>
			</rule>
			
			<rule e="any" k="tourism" v="picnic_site" zoom-min="15">
				<symbol id="id_picnic_table" src="file:/symbols/picnic_site.svg" symbol-percent="70" />
				<rule e="any" k="*" v="*" zoom-min="16">
					<caption symbol-id="id_picnic_table" k="name" font-style="bold" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
				</rule>
			</rule>
			
			<rule e="any" k="information" v="map|board" zoom-min="14">
				<symbol src="file:/symbols/information.svg" symbol-percent="60" />
			</rule>
		</rule>
	</xsl:template>

</xsl:stylesheet>