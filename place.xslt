<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="places">
	<!-- place -->
	<rule e="any" k="place" v="locality" zoom-min="15">
		<rule e="any" k="mountain_pass|natural|tourism" v="~">
			<caption k="name" priority="10" font-style="normal" font-family="sans_serif" font-size="8" fill="#000000" stroke="#ffffff" stroke-width="1.5" />
		</rule>
	</rule>

	<!-- place -->
	<rule e="node" k="place" v="*">
		<rule e="node" k="place" v="village" zoom-min="10" zoom-max="10" >
			<circle radius="3" fill="#D3D3D3" stroke="#9B9B9B" stroke-width="1.0" />
		</rule>
		<rule e="node" k="place" v="town" zoom-min="7" zoom-max="9" >
			<rule e="node" k="*" v="*" zoom-min="7" zoom-max="7" >
				<circle radius="2" fill="#f4f3e9" stroke="#9B9B9B" stroke-width="1.0" />
			</rule>
			<rule e="node" k="*" v="*" zoom-min="8" zoom-max="8" >
				<circle radius="3" fill="#f4f3e9" stroke="#9B9B9B" stroke-width="1.0" />
				<circle radius="1.1" stroke="#9B9B9B" stroke-width="1.0" />
			</rule>
			<rule e="node" k="*" v="*" zoom-min="9" zoom-max="9" >
				<circle radius="4" fill="#f4f3e9" stroke="#9B9B9B" stroke-width="1.0" />
				<circle radius="1.6" stroke="#9B9B9B" stroke-width="1.0" />
			</rule>
		</rule>
		<rule e="node" k="place" v="city" zoom-min="7" zoom-max="9" >
			<rule e="node" k="*" v="*" zoom-min="4" zoom-max="6" >
				<circle radius="2" fill="#D3D3D3" stroke="#8E8E8E" stroke-width="1.0" />
			</rule>
			<rule e="node" k="*" v="*" zoom-min="7" zoom-max="7" >
				<circle radius="2" fill="#f4f3e9" stroke="#8E8E8E" stroke-width="1.0" />
			</rule>
			<rule e="node" k="*" v="*" zoom-min="8" zoom-max="8" >
				<circle radius="4" fill="#f4f3e9" stroke="#8E8E8E" stroke-width="1.0" />
				<circle radius="1.8" fill="#8E8E8E" />
			</rule>
			<rule e="node" k="*" v="*" zoom-min="9" zoom-max="9" >
				<circle radius="5" fill="#f4f3e9" stroke="#8E8E8E" stroke-width="1.0" />
				<circle radius="2" fill="#8E8E8E" />
			</rule>
		</rule>
		<!-- captions -->
		<rule e="node" k="place" v="hamlet" zoom-min="11" zoom-max="15">
			<rule e="node" k="*" v="*" zoom-min="11" zoom-max="11">
				<caption k="name" font-family="default" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0" />
			</rule>
			<rule e="node" k="*" v="*" zoom-min="12" zoom-max="15">
				<caption k="name" font-family="default" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.5" />
			</rule>
		</rule>
		<rule e="node" k="place" v="village" zoom-min="9" zoom-max="15">
			<rule e="node" k="*" v="*" zoom-min="9" zoom-max="10">
				<caption k="name" font-family="default" font-size="9" fill="#000000" stroke="#ffffff" stroke-width="2.0" />
			</rule>
			<rule e="node" k="*" v="*" zoom-min="11" zoom-max="15">
				<caption k="name" font-family="default" font-style="bold" font-size="12" fill="#000000" stroke="#ffffff" stroke-width="2.5" />
			</rule>
		</rule>
		<rule e="node" k="place" v="suburb" zoom-min="11" zoom-max="15">
			<caption k="name" font-family="sans_serif" font-size="12" fill="#343434" stroke="#f8f3f3" stroke-width="2.0" />
		</rule>
		<rule e="node" k="place" v="town" zoom-min="7" zoom-max="13">
			<rule e="node" k="*" v="*" zoom-min="7" zoom-max="9">
				<caption k="name" dy="12" font-family="sans_serif" font-style="bold" font-size="11" fill="#000000" stroke="#ffffff" stroke-width="2.8" />
			</rule>
			<rule e="node" k="*" v="*" zoom-min="10" zoom-max="13">
				<caption k="name" font-family="sans_serif" font-style="bold" font-size="13" fill="#000000" stroke="#ffffff" stroke-width="3.0" />
			</rule>
		</rule>
		<rule e="node" k="place" v="city" zoom-max="11">
			<caption k="name" dy="15" font-family="sans_serif" font-style="bold" font-size="10" fill="#000000" stroke="#FFFFFF" stroke-width="3.0" />
		</rule>
		<rule e="node" k="place" v="islet" zoom-min="13"> <!-- wird nur von OpenAndroMaps unterstüzt -->
			<caption k="name" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0" />
		</rule>
		<rule e="node" k="place" v="island" zoom-min="7" zoom-max="13">
			<caption k="name" font-style="bold" font-size="12" fill="#000000" stroke="#ffffff" stroke-width="3.0" />
		</rule>
		<rule e="node" k="place" v="country" zoom-max="4">
			<caption k="name" font-style="bold" font-size="25" fill="#000000" stroke="#ffffff" stroke-width="2.0" />
		</rule>
	</rule>
</xsl:template>

</xsl:stylesheet>
