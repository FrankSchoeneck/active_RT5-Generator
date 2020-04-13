<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="amenity_ways">
	<!-- amenity -->
	<rule e="way" k="amenity" v="hospital" zoom-min="12">
		<area fill="#F2D9D7" stroke="#DBBDBA" stroke-width="0.2" />
	</rule>

	<rule e="any" k="amenity" v="parking" zoom-min="13">
		<area fill="#E2E2E2" stroke="#707070" stroke-width="0.2" />
		<rule e="any" k="access" v="private|acc_no|permit|permissive" cat="parking">
			<area src="file:/patterns/access-private.svg" symbol-percent="70" />
			<symbol src="file:/symbols/parking_private.svg" symbol-percent="50" />
		</rule>
		<rule e="any" k="access" v="destination" cat="parking">
			<area src="file:/patterns/access-destination.svg" symbol-percent="70" />
			<symbol src="file:/symbols/parking_private.svg" symbol-percent="50" />
		</rule>
		<rule e="any" k="access" v="~|yes|public" cat="parking">
			<symbol src="file:/symbols/parking.svg" symbol-percent="50" />
		</rule>
	</rule>
		
	<rule e="way" k="amenity" v="grave_yard" zoom-min="14">
		<area fill="#AACAAE" stroke="#e4e4e4" stroke-width="0.2" />
		<area src="file:/patterns/cemetery.svg" />
	</rule>
</xsl:template>

<xsl:template name="amenity_nodes">
	<rule e="any" k="amenity" v="*">
		<!-- Amenity POIs -->
		<rule e="any" k="amenity" v="hospital" zoom-min="12">
			<symbol id="id_hospital" src="file:/symbols/hospital.svg" symbol-width="14" />
			<rule e="any" k="amenity" v="*" zoom-min="16">
				<caption symbol-id="id_hospital" k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
			</rule>
		</rule>
		
		<rule e="any" k="amenity" v="place_of_worship" zoom-min="12">
			<rule e="any" k="religion" v="christian">
				<rule e="any" k="building" v="cathedral|church|yes|~">
					<symbol id="place_of_worship_christian" src="file:/symbols/church.svg" symbol-width="16" />
					<rule e="any" k="building" v="*" zoom-min="17">
						<caption symbol-id="place_of_worship_christian" k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.0" />
					</rule>
				</rule>
				<rule e="any" k="building" v="chapel">
					<symbol id="place_of_worship_chapel" src="file:/symbols/chapel.svg" symbol-width="16" />
					<rule e="any" k="building" v="*" zoom-min="17">
						<caption symbol-id="place_of_worship_chapel" k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.0" />
					</rule>
				</rule>
			</rule>
			<rule e="any" k="religion" v="jewish">
				<symbol id="id_jewish" src="file:/symbols/synagogue.svg" symbol-width="12" />
				<rule e="any" k="building" v="*" zoom-min="17">
					<caption symbol-id="id_jewish" k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.0" />
				</rule>
			</rule>
			<rule e="any" k="religion" v="muslim|moslem">
				<symbol id="id_muslim" src="file:/symbols/muslim.svg" symbol-width="14" />
				<rule e="any" k="building" v="*" zoom-min="17">
					<caption symbol-id="id_muslim" k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.0" />
				</rule>
			</rule>
			<rule e="any" k="religion" v="buddhist">
				<symbol id="id_buddhist" src="file:/symbols/buddhist.svg" symbol-width="14" />
				<rule e="any" k="building" v="*" zoom-min="17">
					<caption symbol-id="id_buddhist" k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.0" />
				</rule>
			</rule>
		</rule>
		
		<rule e="any" k="amenity" v="bus_station" zoom-min="13" cat="pub_transp">
			<symbol id="id_bus_station" src="file:/symbols/bus_station.svg" symbol-percent="70" />
			<rule e="any" k="amenity" v="*" zoom-min="15" cat="pub_transp">
				<caption symbol-id="id_bus_station" k="name" font-style="normal" font-family="sans_serif" font-size="8" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
			</rule>
		</rule>
		
		<rule e="any" k="amenity" v="shelter" zoom-min="14">
			<symbol id="id_shelter" src="file:/symbols/shelter.svg" symbol-percent="70" display="always" />
			<rule e="any" k="amenity" v="*" zoom-min="15">
				<caption symbol-id="id_shelter" k="name" position="below" font-style="bold" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="0.5" />
			</rule>
		</rule>
		
		<rule e="node" k="amenity" v="drinking_water" zoom-min="15">
			<symbol src="file:/symbols/drinking_water.svg" symbol-percent="60" />
		</rule>

		<rule e="any" k="amenity" v="hunting_stand" zoom-min="14">
			<symbol src="file:/symbols/hunting_stand.svg" symbol-percent="70" />
		</rule>
		
		<rule e="node" k="amenity" v="restaurant" cat="restaurant" zoom-min="14">
			<symbol id="id_restaurant" src="file:/symbols/restaurant.svg"  symbol-percent="60" />
			<rule e="node" k="amenity" v="*" zoom-min="17" cat="restaurant">
				<caption symbol-id="id_restaurant" k="name" font-style="bold" font-family="sans_serif" font-size="8" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
			</rule>
		</rule>
		
		<rule e="node" k="amenity" v="cafe" cat="restaurant" zoom-min="14">
			<symbol id="id_cafe" src="file:/symbols/cafe.svg" symbol-percent="60" />
			<rule e="node" k="amenity" v="*" zoom-min="17" cat="restaurant">
				<caption symbol-id="id_cafe" k="name" font-style="bold" font-family="sans_serif" font-size="8" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
			</rule>
		</rule>
		
		<rule e="any" k="amenity" v="fountain" zoom-min="14">
			<symbol src="file:/symbols/fountain.svg" symbol-percent="60" />
		</rule>

		<rule e="any" k="amenity" v="bench" zoom-min="15">
			<symbol src="file:/symbols/bench.svg" symbol-percent="60" display="always" />
		</rule>
		
		<rule e="any" k="amenity" v="toilets" zoom-min="15">
			<symbol src="file:/symbols/toilets.svg" symbol-percent="60" />
		</rule>
	</rule>
</xsl:template>

</xsl:stylesheet>
