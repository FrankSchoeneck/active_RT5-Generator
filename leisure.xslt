<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<xsl:template name="leisure">
	<rule e="way" k="leisure" v="*" zoom-min="10">
		<rule e="way" k="leisure" v="sports_centre">
			<area fill="#D2DEA9" stroke="#6fc18e" stroke-width="0.1" />
		</rule>
		<rule e="way" k="leisure" v="stadium">
			<area fill="#D2DEA9" stroke="#6fc18e" stroke-width="0.1" />
		</rule>
		<rule e="way" k="leisure" v="pitch">
			<area fill="#C9D998" stroke="#6fc18e" stroke-width="0.1" />
		</rule>
		<rule e="way" k="leisure" v="water_park">
			<area fill="#DAE4BD" />
		</rule>
		<rule e="way" k="leisure" v="golf_course|common|green" >
			<area fill="#BAD5A6" />
		</rule>
		<rule e="way" k="leisure" v="garden" >
			<area fill="#c5d4ab" />
		</rule>
		<rule e="way" k="leisure" v="playground|playing_fields|dog_park" zoom-min="12">
			<area fill="#DBE4CD" stroke="#6fc18e" stroke-width="0.1" />
		</rule>
		<rule e="way" k="leisure" v="track|byway|ls_track" zoom-min="12">
			<area fill="#d8e1ba" stroke="#6fc18e" stroke-width="0.1" />
		</rule>
		<rule e="way" k="leisure" v="swimming_pool" zoom-min="11">
			<area fill="#B3DDFF" stroke="#6060ff" stroke-width="0.15" />
		</rule>

		<rule e="way" k="leisure" v="stadium|sports_centre|water_park|golf_course|playing_fields" zoom-min="15">
			<caption k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
		</rule>
	</rule>
</xsl:template>
</xsl:stylesheet>
