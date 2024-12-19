<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="menu">
		<stylemenu id="active_RT5" defaultvalue="Style_Summer" defaultlang="de">
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

			<layer id="L_hotel" enabled="false" visible="false">
				<name lang="de" value="Hotels + Unterkünfte" />
				<name lang="en" value="Hotels + Accommodation" />
				<cat id="hotel" />
			</layer>

			<layer id="L_hillshading" enabled="false" visible="false">
				<name lang="de" value="Geländerelief" />
				<name lang="en" value="Hillshading" />
				<cat id="hillshading" />
			</layer>

		    <!-- Wintersport-Menü-Ergänzungen (peter@danninger.eu) -->
			<layer id="L_skipiste" enabled="true">	<!-- downhill, playground (Fläche, Linie, Relation) -->
				<name lang="de" value="Ski-Piste" />	<!-- Abfahrtspiste, Schischule -->
				<name lang="en" value="Downhill skiing" />
				<cat id="skipiste" />
				<cat id="schischule" />
			</layer>
			<layer id="L_skitour" enabled="true">	<!-- skitour (Fläche, Linie, Relation) -->
				<name lang="de" value="Ski-Tour" />	<!-- Schitour, nur Aufstieg -->
				<name lang="en" value="Ski tour" />	<!-- Abfahrt als downhill / backcountry taggen -->
				<cat id="skitour" />
			</layer>
			<layer id="L_skiloipe" enabled="true">	<!-- nordic  (Linie, Relation) -->
				<name lang="de" value="Ski-Langlauf" />	<!-- Langlauf-Loipe -->
				<name lang="en" value="Crosscountry skiing" />
				<cat id="skiloipe" />
			</layer>
			<layer id="L_schneeschuh" enabled="true">	<!-- hike (Linie, Relation), auch Winterwanderung -->
				<name lang="de" value="Schneeschuh/Winter-Wanderung" />	<!-- Winter- / Schneeschuh-Wanderung -->
				<name lang="en" value="Snowshoe/winter hiking" />
				<cat id="schneeschuh" />
			</layer>
			<layer id="L_rodeln" enabled="true">	<!-- sled (Fläche, Linie, Relation) -->
				<name lang="de" value="Rodeln" />	<!-- Rodeln -->
				<name lang="en" value="Sledding" />
				<cat id="rodeln" />
			</layer>
			<layer id="L_hundeschlitten" enabled="true">	<!-- Sleigh (Fläche, Linie, Relation) -->
				<name lang="de" value="Hunde/Motor-Schlitten" />	<!-- Hunde- bzw. Motorschlitten -->
				<name lang="en" value="Dog/Motor sleigh" />
				<cat id="hundeschlitten" />
			</layer>
			<layer id="L_eislaufen" enabled="true">	<!-- ice_skate (Fläche, Linie, Relation) -->
				<name lang="de" value="Eislaufen" />	<!-- Eislaufen -->
				<name lang="en" value="Ice skating" />
				<cat id="eislaufen" />
			</layer>
			<layer id="L_schneepark" enabled="true">	<!-- snow_park, Halfpipe (Fläche) -->
				<name lang="de" value="Schneepark, Halfpipe" />	<!-- Schneepark, Halfpipe, Rampen -->
				<name lang="en" value="Snow park, Halfpipe" />
				<cat id="schneepark" />
				<cat id="halfpipe" />
			</layer>
		  	<layer id="L_winter_reference" enabled="true">       <!-- Wintertouren: Referenz/Nummer anzeigen -->
				<name lang="de" value="Wintertouren Nummer anzeigen" />
				<name lang="en" value="Show wintertour number" />
				<cat id="winter_reference" />
			</layer>
			<layer id="L_winter_namen" enabled="false">	<!-- Wintertouren: Namen anzeigen -->
				<name lang="de" value="Wintertouren Namen anzeigen" />
				<name lang="en" value="Show wintertour names" />
				<cat id="winter_namen" />
			</layer>
			<layer id="L_winter_symbol" enabled="false">	<!-- Wintertouren: Symbole anzeigen -->
				<name lang="de" value="Wintertouren Symbole anzeigen" />
				<name lang="en" value="Show wintertour icons" />
				<cat id="winter_symbol" />
			</layer>
			<!-- Ende Wintersport-Menü-Ergänzungen (peter@danninger.eu) -->


			<!-- mapstyles -->
			<layer id="Style_Summer" visible="true">
				<name lang="de" value="Sommer" />
				<name lang="en" value="Summer" />
				<overlay id="L_hikingtrails" />
				<overlay id="L_trail_markings" />
				<overlay id="L_contourlines" />
				<overlay id="L_boundaries_areas" />
				<overlay id="L_landscapefeat" />
				<overlay id="L_publictransport" />
				<overlay id="L_parking" />
				<overlay id="L_restaurant" />
				<overlay id="L_hotel" />
				<overlay id="L_hillshading" />
				<cat id="Style_Summer" />
			</layer>
			<layer id="Style_Winter" visible="true">
				<name lang="de" value="Winter" />
				<name lang="en" value="Winter" />
				<overlay id="L_skipiste" />
				<overlay id="L_skitour" />
				<overlay id="L_skiloipe" />
				<overlay id="L_schneeschuh" />
				<overlay id="L_rodeln" />
				<overlay id="L_hundeschlitten" />
				<overlay id="L_eislaufen" />
				<overlay id="L_schneepark" />
				<overlay id="L_winter_reference" />
				<overlay id="L_winter_namen" />
				<overlay id="L_winter_symbol" />
				<overlay id="L_hikingtrails" />
				<overlay id="L_trail_markings" />
				<overlay id="L_contourlines" />
				<overlay id="L_landscapefeat" />
				<overlay id="L_publictransport" />
				<overlay id="L_parking" />
				<overlay id="L_restaurant" />
				<overlay id="L_hotel" />
				<cat id="Style_Winter" />
			</layer>

		</stylemenu>
		
		 <!-- hillshading -->
		<hillshading cat="hillshading" zoom-min="9" zoom-max="17" />
		
    </xsl:template>

</xsl:stylesheet>
