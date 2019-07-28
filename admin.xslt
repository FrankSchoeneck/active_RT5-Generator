<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <!-- https://wiki.openstreetmap.org/wiki/Tag:boundary%3Dadministrative#10_admin_level_values_for_specific_countries -->
  <xsl:template name="admin">
   	<!-- non-physical boundaries -->
	<rule e="way" k="admin_level" v="*" cat="boundaries_areas">
		<!-- admin_level 4 = Bundesländergrenze, 5 = Regierungsbezirke, 6 = Kreisgrenzen -->
		<rule e="way" k="admin_level" v="4|5|6" zoom-max="12">
				<line stroke="#995499" stroke-width="1.5" stroke-dasharray="15,5,4,5" stroke-linecap="butt" />
				<line stroke="#995499" stroke-width="3" stroke-dasharray="1,13,1,14" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="admin_level" v="4|5|6" zoom-min="13" zoom-max="18">
			<line stroke="#995499" stroke-width="0.6" stroke-dasharray="15,5,4,5" stroke-linecap="butt" />
			<line stroke="#995499" stroke-width="2" stroke-dasharray="1,13,1,14" stroke-linecap="butt" />
			<pathText k="name" dy="-2" font-style="normal" font-family="sans_serif" font-size="12" fill="#995499" stroke="#ffffff" stroke-width="2.0" />
		</rule>
		<!-- admin_level 2 = Staatsgrenze -->
		<rule e="way" k="admin_level" v="2" zoom-max="12">
			<line stroke="#60995499" stroke-width="12" stroke-linecap="butt" />
			<line stroke="#995499" stroke-width="1.5" stroke-dasharray="15,5,4,5" stroke-linecap="butt" />
			<line stroke="#995499" stroke-width="3" stroke-dasharray="1,13,1,14" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="admin_level" v="2" zoom-min="13" zoom-max="18">
			<line stroke="#60995499" stroke-width="6" stroke-linecap="butt" />
			<line stroke="#995499" stroke-width="0.75" stroke-dasharray="15,5,2,5" stroke-linecap="butt" />
			<line stroke="#995499" stroke-width="2" stroke-dasharray="0.5,14,0.5,12" stroke-linecap="butt" />
			<pathText k="name" dy="-6" font-style="normal" font-family="sans_serif" font-size="12" fill="#995499" stroke="#ffffff" stroke-width="2.0" />
		</rule>
	</rule>
  </xsl:template>

</xsl:stylesheet>
