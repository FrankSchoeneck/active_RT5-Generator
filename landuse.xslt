<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="landuse">
	<!-- city and industrial areas -->
	<rule e="way" k="highway|landuse" v="*" zoom-min="8">
		<rule e="way" k="landuse" v="residential|construction">
			<area fill="#e0e0e0" />
		</rule>
		<rule e="way" k="landuse" v="commercial">
			<area fill="#c6c6c6" stroke="#c6c6c6" stroke-width="0.2" />
		</rule>
		<rule e="way" k="landuse" v="retail|garages|greenfield">
			<area fill="#D5D5D5" stroke="#e4e4e4" stroke-width="0.2" />
		</rule>
		<rule e="way" k="landuse" v="farmyard">
			<area fill="#f5f4ee" stroke="#e4e4e4" stroke-width="0.2" />
		</rule>
		<rule e="way" k="landuse" v="industrial|brownfield|railway">
			<area fill="#f2f2f2" stroke="#e4e4e4" stroke-width="0.2" />
		</rule>
		<rule e="way" k="landuse" v="landfill|quarry">
			<area fill="#C4C4C4" stroke="#556b2f" stroke-width="0.2" />
		</rule>
		<rule e="way" k="landuse" v="allotments">
			<area fill="#dce4cd" stroke="#556b2f" stroke-width="0.2" />
		</rule>
	</rule>

	<!-- render park before wood -->
	<rule e="way" k="leisure|landuse" v="park|village_green" zoom-min="11">
		<area fill="#BAD5A6" stroke="#6fc18e" />
	</rule>
	<rule e="way" k="leisure|landuse" v="recreation_ground" zoom-min="11">
		<area fill="#F6F4E1" stroke="#6fc18e" />
	</rule>

	<!-- park captions -->
	<rule e="way" k="leisure|landuse" v="park|village_green|recreation_ground" zoom-min="15">
		<caption k="name" font-style="normal" font-size="10" fill="#1f5c1b" stroke="#FFFFFF" stroke-width="1.5" />
	</rule>

	<!-- wood -->
	<rule e="way" k="natural|landuse" v="forest|wood" zoom-min="8">
		<rule e="way" k="*" v="*" >
			<rule e="way" k="*" v="*" zoom-max="10">
				<area fill="#D4DAA4" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="11">
				<area fill="#D4DAA4" />
				<rule e="any" k="wood|leaf_type" v="coniferous|needleleaved">
					<area src="file:/patterns/wood_coniferous_transparent.svg" symbol-width="40" />
				</rule>
				<rule e="any" k="wood|leaf_type" v="deciduous|broadleaved">
					<area src="file:/patterns/wood_deciduous_transparent.svg" symbol-width="40" />
				</rule>
				<rule e="any" k="wood|leaf_type" v="~|mixed|leafless">
					<area src="file:/patterns/wood_mixed_transparent.svg" symbol-width="40" />
				</rule>
			</rule>
		</rule>
		
		<!-- wood captions -->
		<rule e="way" k="boundary" v="~" >
			<rule e="way" k="*" v="*" zoom-min="13">
				<caption k="name" font-style="bold" font-size="10" fill="#164526" stroke="#FFFFFF" stroke-width="2.0" />
			</rule>
		</rule>
	</rule>
	
	<!-- farmland -->
	<rule e="way" k="landuse" v="farm|farmland">
		<area fill="#EDE6C4" />
	</rule>
	
	<!-- military -->
	<rule e="way" k="landuse" v="military" zoom-min="8" closed="yes">
		<area fill="#D2BCB9" />
	</rule>
	
	<rule e="way" k="landuse" v="grass" zoom-min="10" closed="yes">
		<area fill="#faf8e5" />
	</rule>
	<rule e="way" k="landuse" v="vineyard" zoom-min="10" closed="yes">
		<area fill="#c9d9a8" />
		<rule e="way" k="*" v="*" zoom-min="13">
			<area src="file:/patterns/vineyard.svg" symbol-percent="50" />
		</rule>
	</rule>

	<rule e="way" k="landuse" v="meadow" zoom-min="12" closed="yes">
		<area fill="#faf8e5" />
		<area src="file:/patterns/medow.svg" />
	</rule>
	<rule e="way" k="landuse" v="cemetery" zoom-min="12" closed="yes">
		<area fill="#E6E6C5" stroke="#e4e4e4" stroke-width="0.2" />
		<area src="file:/patterns/cemetery.svg" />
	</rule>
	
	<!-- amenity -->
	<rule e="way" k="amenity" v="school|college|university">
		<area fill="#E8D7D5" stroke="#e4e4e4" stroke-width="0.15" />
	</rule>

</xsl:template>
</xsl:stylesheet>
