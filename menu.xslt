<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="menu">
		<stylemenu id="active_RT5" defaultvalue="OSM_Summer" defaultlang="de">
			<!-- overlays -->
			<layer id="L_hikingtrails" enabled="false" visible="false">
				<name lang="de" value="Wanderwege" />
				<name lang="en" value="Waymarked Trails" />
				<cat id="hikingtrails" />
			</layer>

			<layer id="L_trail_markings" enabled="false" visible="false">
				<name lang="de" value="Wegemarkierungen" />
				<name lang="en" value="Trail markings" />
				<cat id="trail_markings" />
			</layer>

			<layer id="L_hikingnodes" enabled="false" visible="false">
				<name lang="de" value="Wanderwege Knotenpunkte" />
				<name lang="en" value="Hiking Nodes" />
				<cat id="hikingnodes" />
			</layer>

			<layer id="L_contourlines" enabled="false" visible="false">
				<name lang="de" value="Höhenlinien" />
				<name lang="en" value="Contour lines" />
				<cat id="contourlines" />
			</layer>

			<layer id="L_boundaries_areas" enabled="true" visible="false">
				<name lang="de" value="Grenzen + geschützte Gebiete" />
				<name lang="en" value="Boundaries + protected areas" />
				<cat id="boundaries_areas" />
			</layer>

			<layer id="L_landscapefeat" enabled="true" visible="false">
				<name lang="de" value="Landschaftsmerkmale" />
				<name lang="en" value="landscape features" />
				<cat id="landscapefeat" />
			</layer>

			<layer id="L_parking" enabled="true" visible="false">
				<name lang="de" value="Parkplätze" />
				<name lang="en" value="Parking" />
				<cat id="parking" />
			</layer>

			<layer id="L_publictransport" enabled="true" visible="false">
				<name lang="de" value="Öffentlicher Verkehr" />
				<name lang="en" value="Public transport" />
				<cat id="pub_transp" />
			</layer>

			<layer id="L_restaurant" enabled="false" visible="false">
				<name lang="de" value="Restaurants + Cafés" />
				<name lang="en" value="Restaurants + Cafés" />
				<cat id="restaurant" />
			</layer>

			<layer id="L_emergency_access_point" enabled="false" visible="false">
				<name lang="de" value="Rettungspunkte" />
				<name lang="en" value="Emergency access points" />
				<cat id="emergency_access_point" />
			</layer>

			<!-- mapstyles -->
			<layer id="OSM_Summer" visible="true">
				<name lang="de" value="OSM Sommer" />
				<name lang="en" value="OSM Summer" />
				<overlay id="L_hikingtrails" />
				<overlay id="L_trail_markings" />
				<overlay id="L_hikingnodes" />
				<overlay id="L_contourlines" />
				<overlay id="L_boundaries_areas" />
				<overlay id="L_landscapefeat" />
				<overlay id="L_publictransport" />
				<overlay id="L_parking" />
				<overlay id="L_restaurant" />
				<overlay id="L_emergency_access_point" />
			</layer>

		</stylemenu>
    </xsl:template>

</xsl:stylesheet>
