<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<xsl:template name="leisure">
	<rule e="way" k="leisure" v="*" zoom-min="10">
		<rule e="way" k="leisure" v="park" cat="Style_Summer">
			<area fill="#cce4ca" />
		</rule>
		<rule e="way" k="leisure" v="park" cat="Style_Winter">
			<area fill="#fcfdff" />
		</rule>
		<rule e="way" k="leisure" v="sports_centre" cat="Style_Summer">
			<area fill="#ebf3e2" stroke="#A3BAA5" stroke-width="0.2" />
		</rule>
		<rule e="way" k="leisure" v="sports_centre" cat="Style_Winter">
			<area fill="#fcfdff" stroke="#A3BAA5" stroke-width="0.2" />
		</rule>
		<rule e="way" k="leisure" v="stadium" cat="Style_Summer">
			<area fill="#e1eed8" stroke="#A3BAA5" stroke-width="0.2" />
		</rule>
		<rule e="way" k="leisure" v="stadium" cat="Style_Winter">
			<area fill="#fcfdff" stroke="#A3BAA5" stroke-width="0.2" />
		</rule>
		<rule e="way" k="leisure" v="pitch" cat="Style_Summer">
			<area fill="#ebf3e2" stroke="#B7C7B9" stroke-width="0.2" />
		</rule>
		<rule e="way" k="leisure" v="pitch" cat="Style_Winter">
			<area fill="#fcfdff" stroke="#B7C7B9" stroke-width="0.2" />
		</rule>
		<rule e="way" k="leisure" v="water_park" cat="Style_Summer">
			<area fill="#cadab1" />
		</rule>
		<rule e="way" k="leisure" v="water_park" cat="Style_Winter">
			<area fill="#fcfdff" />
		</rule>
		<rule e="way" k="leisure" v="golf_course|common|green" >
			<area fill="#E2ECC5" />
		</rule>
		<rule e="way" k="leisure" v="garden" cat="Style_Summer">
			<area fill="#dde7c0" />
		</rule>
		<rule e="way" k="leisure" v="garden" cat="Style_Winter">
			<area fill="#fcfdff" />
		</rule>
		<rule e="way" k="leisure" v="playground|playing_fields|dog_park" zoom-min="12" cat="Style_Summer">
			<area fill="#cadab1" stroke="#B7C7B9" stroke-width="0.1" />
		</rule>
		<rule e="way" k="leisure" v="playground|playing_fields|dog_park" zoom-min="12" cat="Style_Winter">
			<area fill="#fcfdff" stroke="#B7C7B9" stroke-width="0.1" />
		</rule>
		<rule e="way" k="leisure" v="track|byway|ls_track" zoom-min="12" cat="Style_Summer">
			<area fill="#f0f7d2" />
		</rule>
		<rule e="way" k="leisure" v="track|byway|ls_track" zoom-min="12" cat="Style_Winter">
			<area fill="#ffffff" />
		</rule>
		<rule e="way" k="leisure" v="swimming_pool" zoom-min="11">
			<area fill="#A2CBED" stroke="#5FA3D6" stroke-width="0.15" />
		</rule>
		<rule e="way" k="leisure" v="common" zoom-min="15">
			<caption k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
		</rule>
		<rule e="way" k="leisure" v="park|stadium|sports_centre|water_park|golf_course|playing_fields" zoom-min="15">
			<caption k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
		</rule>
	</rule>
</xsl:template>
</xsl:stylesheet>
