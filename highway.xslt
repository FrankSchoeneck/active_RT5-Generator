<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<!-- road colors -->
<xsl:variable name="hw-motorway">#F7AA58</xsl:variable>
<xsl:variable name="hw-trunk">#FFE58F</xsl:variable>
<xsl:variable name="hw-primary">#FFE58F</xsl:variable>
<xsl:variable name="hw-secondary">#FFF2C7</xsl:variable>
<xsl:variable name="hw-tertiary">#ffffff</xsl:variable>
<xsl:variable name="hw-residential">#ffffff</xsl:variable>
<xsl:variable name="hw-unclassified">#ffffff</xsl:variable>
<xsl:variable name="hw-pedestrian">#f9ecfd</xsl:variable>
<xsl:variable name="hw-living">#ffffff</xsl:variable>
<xsl:variable name="hw-track">#53534e</xsl:variable>
<xsl:variable name="hw-service">#ffffff</xsl:variable>
<xsl:variable name="hw-cycleway">#ffffff</xsl:variable>
<xsl:variable name="hw-footway">#53534e</xsl:variable>
<xsl:variable name="hw-steps">#53534e</xsl:variable>
<xsl:variable name="hw-construction">#d0d0d0</xsl:variable>

<!-- road casing colors -->
<xsl:variable name="cs-motorway">#575757</xsl:variable>
<xsl:variable name="cs-trunk">#575757</xsl:variable>
<xsl:variable name="cs-primary">#575757</xsl:variable>
<xsl:variable name="cs-secondary">#575757</xsl:variable>
<xsl:variable name="cs-tertiary">#575757</xsl:variable>
<xsl:variable name="cs-residential">#575757</xsl:variable>
<xsl:variable name="cs-unclassified">#575757</xsl:variable>
<xsl:variable name="cs-pedestrian">#575757</xsl:variable>
<xsl:variable name="cs-living">#575757</xsl:variable>
<xsl:variable name="cs-track">#53534e</xsl:variable>
<xsl:variable name="cs-service">#575757</xsl:variable>
<xsl:variable name="cs-cycleway">#53534e</xsl:variable>
<xsl:variable name="cs-footway">#53534e</xsl:variable>
<xsl:variable name="cs-construction">#575757</xsl:variable>

<!-- road min zoom -->
<xsl:variable name="z-motorway">6</xsl:variable>
<xsl:variable name="z-motorway_link">11</xsl:variable>
<xsl:variable name="z-trunk">6</xsl:variable>
<xsl:variable name="z-trunk_link">11</xsl:variable>
<xsl:variable name="z-primary">9</xsl:variable>
<xsl:variable name="z-secondary">9</xsl:variable>
<xsl:variable name="z-tertiary">11</xsl:variable>
<xsl:variable name="z-residential">11</xsl:variable>
<xsl:variable name="z-pedestrian">11</xsl:variable>
<xsl:variable name="z-living">11</xsl:variable>
<xsl:variable name="z-service">11</xsl:variable>
<xsl:variable name="z-track">13</xsl:variable>
<xsl:variable name="z-cycleway">13</xsl:variable>
<xsl:variable name="z-footway">13</xsl:variable>
<xsl:variable name="z-construction">11</xsl:variable>

<!-- road pathText font-size -->
<xsl:variable name="fs-steps">7</xsl:variable>
<xsl:variable name="fs-footway">7</xsl:variable>
<xsl:variable name="fs-track">7</xsl:variable>
<xsl:variable name="fs-pedestrian">8</xsl:variable>
<xsl:variable name="fs-cycleway">7</xsl:variable>
<xsl:variable name="fs-service">8</xsl:variable>
<xsl:variable name="fs-living">8</xsl:variable>
<xsl:variable name="fs-residential">8</xsl:variable>
<xsl:variable name="fs-construction">8</xsl:variable>
<xsl:variable name="fs-tertiary">8</xsl:variable>
<xsl:variable name="fs-secondary">8</xsl:variable>
<xsl:variable name="fs-primary">9</xsl:variable>
<xsl:variable name="fs-trunk">9</xsl:variable>
<xsl:variable name="fs-motorway">12</xsl:variable>


<xsl:template name="highway">
	<rule e="any" k="highway" v="*">
		<rule e="any" k="area" v="~|no|false">
			<!-- bridge -->
			<rule e="way" k="bridge" v="yes|movable|true"> 
				<rule e="way" k="highway" v="construction" zoom-min="{$z-construction}">
					<line stroke="{$cs-construction}" stroke-width="0.8" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="motorway" zoom-min="{$z-motorway}">
					<line stroke="{$cs-motorway}" stroke-width="2.4" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="motorway_link" zoom-min="{$z-motorway_link}">
					<line stroke="{$cs-motorway}" stroke-width="2.0" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="trunk" zoom-min="{$z-trunk}">
					<line stroke="{$cs-trunk}" stroke-width="2.2" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="trunk_link" zoom-min="{$z-trunk_link}">
					<line stroke="{$cs-trunk}" stroke-width="2.0" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="primary|primary_link" zoom-min="{$z-primary}">
					<line stroke="{$cs-primary}" stroke-width="2.0" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="secondary|secondary_link" zoom-min="{$z-secondary}">
					<line stroke="{$cs-secondary}" stroke-width="2.0" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="tertiary|tertiary_link" zoom-min="{$z-tertiary}">
					<line stroke="{$cs-tertiary}" stroke-width="1.8" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="residential|unclassified" zoom-min="{$z-residential}">
					<line stroke="{$cs-residential}" stroke-width="1.2" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="living_street" zoom-min="{$z-living}">
					<line stroke="{$cs-living}" stroke-width="1.2" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="service" zoom-min="{$z-service}">
					  <line stroke="{$cs-service}" stroke-width="1.2" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}">
					<line stroke="{$cs-pedestrian}" stroke-width="1.5" stroke-linecap="butt"/>
				</rule>

<!--			<rule e="way" k="highway" v="bridleway|cycleway|footway|steps|path" zoom-min="{$z-footway}">
					<line stroke="#000000" stroke-width="0.7" stroke-linecap="butt" />
					<line stroke="#FFFFFF" stroke-width="0.5" stroke-linecap="butt" />
				</rule>
-->	
				<rule e="way" k="highway" v="track|byway" zoom-min="{$z-track}">
					<line stroke="{$cs-track}" stroke-width="1.1" stroke-linecap="butt" />
					<line stroke="#FFFFFF" stroke-width="0.8" stroke-linecap="butt" />
				</rule>
			</rule>
			
			<!-- tunnel -->
			<rule e="way" k="tunnel" v="yes">
				<rule e="way" k="highway" v="motorway" zoom-min="{$z-motorway}">
					<line stroke="#50FFD466" stroke-width="2.6" stroke-linecap="butt" />
					<line stroke="#707070" dy="1.3" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					<line stroke="#707070" dy="-1.3" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
				</rule>
				  <rule e="way" k="highway" v="motorway_link" zoom-min="{$z-motorway_link}">
					<line stroke="#50FFD466" stroke-width="1.4" stroke-linecap="butt" />
					<line stroke="#707070" dy="0.7" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					<line stroke="#707070" dy="-0.7" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
				  </rule>
				  <rule e="way" k="highway" v="trunk" zoom-min="{$z-trunk}">
					<line stroke="#50FFFFFF" stroke-width="1.4" stroke-linecap="butt" />
					<line stroke="#707070" dy="0.7" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					<line stroke="#707070" dy="-0.7" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
				  </rule>
				  <rule e="way" k="highway" v="trunk_link" zoom-min="{$z-trunk_link}">
					<line stroke="#50FFFFFF" stroke-width="1.4" stroke-linecap="butt" />
					<line stroke="#707070" dy="0.7" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					<line stroke="#707070" dy="-0.7" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
				  </rule>
				  <rule e="way" k="highway" v="primary|primary_link" zoom-min="{$z-primary}">
					<line stroke="#50FFFFFF" stroke-width="1.4" stroke-linecap="butt" />
					<line stroke="#707070" dy="0.7" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					<line stroke="#707070" dy="-0.7" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
				  </rule>
				  <rule e="way" k="highway" v="secondary|secondary_link" zoom-min="{$z-secondary}">
					<line stroke="#50FFFFFF" stroke-width="1.4" stroke-linecap="butt" />
					<line stroke="#707070" dy="0.7" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					<line stroke="#707070" dy="-0.7" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
				  </rule>
				  <rule e="way" k="highway" v="tertiary|tertiary_link" zoom-min="{$z-tertiary}">
					<line stroke="#50FFFFFF" stroke-width="1.4" stroke-linecap="butt" />
					<line stroke="#707070" dy="0.7" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					<line stroke="#707070" dy="-0.7" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
				  </rule>
				  <rule e="way" k="highway" v="residential|unclassified" zoom-min="{$z-residential}">
					<line stroke="#50FFFFFF" stroke-width="1.0" stroke-linecap="butt" />
					<line stroke="#707070" dy="0.5" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					<line stroke="#707070" dy="-0.5" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
				  </rule>
				  <rule e="way" k="highway" v="living" zoom-min="{$z-living}">
					<line stroke="#50FFFFFF" stroke-width="1.0" stroke-linecap="butt" />
					<line stroke="#707070" dy="0.5" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					<line stroke="#707070" dy="-0.5" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
				  </rule>
				  <rule e="way" k="highway" v="service" zoom-min="{$z-service}">
					<line stroke="#50FFFFFF" stroke-width="1.0" stroke-linecap="butt" />
					<line stroke="#707070" dy="0.5" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					<line stroke="#707070" dy="-0.5" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
				  </rule>
				  <rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}">
					<line stroke="#50FFFFFF" stroke-width="1.3" stroke-linecap="butt" />
					<line stroke="#707070" dy="0.65" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					<line stroke="#707070" dy="-0.65" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
				  </rule>
				  <rule e="way" k="highway" v="steps|footway|path|bridleway" zoom-min="{$z-footway}">
					<line stroke="#50FFFFFF" stroke-width="0.4" stroke-linecap="butt" />
					<line stroke="#707070" dy="0.2" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					<line stroke="#707070" dy="-0.2" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
				  </rule>
					<rule e="way" k="highway" v="track|byway" zoom-min="{$z-track}">
						<line stroke="#50FFFFFF" stroke-width="0.6" stroke-linecap="butt" />
						<line stroke="#3f3f3f" dy="0.3" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
						<line stroke="#3f3f3f" dy="-0.3" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					</rule>
					<rule e="way" k="highway" v="cycleway" zoom-min="{$z-cycleway}">
						<line stroke="#50FFFFFF" stroke-width="0.7" stroke-linecap="butt" />
						<line stroke="#707070" dy="0.35" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
						<line stroke="#707070" dy="-0.35" stroke-width="0.1" stroke-dasharray="3,3" stroke-linecap="butt" />
					</rule>
			</rule>
			
			<!-- not tunnel & not bridge-->
			<rule e="any" k="tunnel" v="~|no|false">
				<!-- casing -->
				<rule e="any" k="bridge" v="~|no|false">
					<!-- Wendehammer -->
					<rule e="node" k="highway" v="turning_circle|mini_roundabout" zoom-min="{$z-residential}" >
						<circle radius="1.2" scale-radius="true" fill="{$cs-residential}" />
					</rule>
					<!-- Tracks -->
					<rule e="way" k="highway" v="track|byway" zoom-min="{$z-track}">
						<!-- Schotterweg -->
						<rule e="way" k="tracktype" v="grade2">
							<line stroke="{$cs-track}" stroke-width="1.1" stroke-dasharray="8,4" stroke-linecap="butt"/>
						</rule>
						<!-- Teerweg -->
						<rule e="way" k="tracktype" v="grade1">
							<line stroke="{$cs-track}" stroke-width="1.1" stroke-linecap="butt"/>
						</rule>
					</rule>
					<!-- Radweg -->
					<rule e="way" k="highway" v="cycleway" zoom-min="{$z-cycleway}">
						<line stroke="{$cs-cycleway}" stroke-width="0.7" />
					</rule>
					<!-- Strasse im Bau -->
					<rule e="way" k="highway" v="construction" zoom-min="{$z-construction}">
						<line stroke="{$cs-construction}" stroke-width="1.2" stroke-linecap="round" />
					</rule>
					<!-- Zufahrtsstrase -->
					<rule e="way" k="highway" v="service|road" zoom-min="{$z-service}">
						<line stroke="{$cs-service}" stroke-width="1.2" stroke-linecap="round" />
					</rule>
					<!-- Wohnstrasse -->
					<rule e="way" k="highway" v="residential|unclassified" zoom-min="{$z-residential}">
						<line stroke="{$cs-residential}" stroke-width="1.2" stroke-linecap="round" />
					</rule>
					<rule e="way" k="highway" v="living_street" zoom-min="{$z-living}">
						<line stroke="{$cs-living}" stroke-width="1.2" stroke-linecap="round" />
					</rule>
					<!-- Busway -->
					<rule e="way" k="highway" v="busway" zoom-min="{$z-residential}">
						<line stroke="{$cs-residential}" stroke-width="1.2" stroke-linecap="round" />
					</rule>
					<!-- Private Wege -->
					<rule e="way" k="access" v="private|destination" zoom-min="{$z-living}">
						<rule e="way" k="highway" v="pedestrian|service|road|living_street|residential|unclassified|construction">
							<line stroke="#575757" stroke-width="1.2" stroke-linecap="round" />
						</rule>
					</rule>
					<!-- Private Wege ohne Zugang-->
					<rule e="way" k="access" v="acc_no" zoom-min="{$z-living}">
						<rule e="way" k="highway" v="pedestrian|service|road|living_street|residential|unclassified|construction">
							<line stroke="#C3C3C3" stroke-width="1.2" stroke-linecap="round" />
						</rule>
					</rule>
					<!-- Nebenstraßen -->
					<rule e="way" k="highway" v="tertiary|tertiary_link|raceway" zoom-min="{$z-tertiary}">
						<line stroke="{$cs-tertiary}" stroke-width="1.8" stroke-linecap="butt" />
					</rule>
					<!-- Landstraßen -->
					<rule e="way" k="highway" v="secondary|secondary_link" zoom-min="{$z-secondary}">
						<line stroke="{$cs-secondary}" stroke-width="2.0" stroke-linecap="butt" />
					</rule>
					<!-- Bundesstrassen -->
					<rule e="way" k="highway" v="primary" zoom-min="{$z-primary}">
						<line stroke="{$cs-primary}" stroke-width="2.2" stroke-linecap="butt" />
					</rule>
					<rule e="way" k="highway" v="primary_link" zoom-min="{$z-primary}">
						<line stroke="{$cs-primary}" stroke-width="2.0" stroke-linecap="butt" />
					</rule>
					<!-- Schnellstrassen -->
					<rule e="way" k="highway" v="trunk_link" zoom-min="{$z-trunk_link}">
						<line stroke="{$cs-trunk}" stroke-width="2.0" stroke-linecap="butt" />
					</rule>
					<rule e="way" k="highway" v="trunk" zoom-min="{$z-trunk}">
						<line stroke="{$cs-trunk}" stroke-width="2.2" stroke-linecap="butt" />
					</rule>
					<!-- Autobahnen -->
					<rule e="way" k="highway" v="motorway_link" zoom-min="{$z-motorway_link}">
						<line stroke="{$cs-motorway}" stroke-width="2.0" stroke-linecap="butt" />
					</rule>
					<rule e="way" k="highway" v="motorway" zoom-min="{$z-motorway}">
						<line stroke="{$cs-motorway}" stroke-width="2.4" stroke-linecap="butt" />
					</rule>
				</rule>

				<!-- core -->
				<rule e="node" k="highway" v="turning_circle|mini_roundabout" zoom-min="{$z-residential}">
					<circle radius="1.0" scale-radius="true" fill="{$hw-residential}" />
				</rule>
				<rule e="way" k="highway" v="construction" zoom-min="{$z-construction}">
				  <line stroke="{$hw-construction}" stroke-width="0.2" stroke-linecap="butt" stroke-dasharray="12,12" />
				</rule>
				<rule e="way" k="highway" v="steps" zoom-min="{$z-footway}">
					<line stroke="{$hw-steps}" stroke-width="0.6" stroke-dasharray="1.5,2.5" stroke-linecap="butt" scale="stroke"/>
					<rule e="way" k="*" v="*" zoom-min="16">
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-steps}" fill="#393935" stroke="#FFFFFF" stroke-width="2.0" />
					</rule>
				</rule>
				<rule e="way" k="highway" v="path|footway" zoom-min="{$z-footway}">
					<rule e="way" k="trail_visibility" v="~|excellent|good|intermediate">
						<rule e="way" k="sac_scale" v="~">
							<line stroke="{$hw-footway}" stroke-width="0.4" stroke-dasharray="8,6" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="sac_scale" v="T1|hiking"> <!-- DAV: gelb -->
							<line stroke="#ffff00" stroke-width="0.4" stroke-linecap="butt" scale="stroke"/>
							<line stroke="{$hw-footway}" stroke-width="0.4" stroke-dasharray="8,6" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="sac_scale" v="T2|mountain_hiking"> <!-- DAV: blau -->
							<line stroke="#7bcaff" stroke-width="0.4" stroke-linecap="butt" />
							<line stroke="{$hw-footway}" stroke-width="0.4" stroke-dasharray="8,6" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="sac_scale" v="T3|demanding_mountain_hiking"> <!-- DAV: rot -->
							<line stroke="#FF4C4C" stroke-width="0.4" stroke-linecap="butt" />
							<line stroke="{$hw-footway}" stroke-width="0.4" stroke-dasharray="8,6" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="sac_scale" v="T4|alpine_hiking"> <!-- DAV: schwarz -->
							<line stroke="#000000" stroke-width="0.4" stroke-dasharray="4,5" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="sac_scale" v="T5|demanding_alpine_hiking|T6|difficult_alpine_hiking"> <!-- DAV: schwarz -->
							<line stroke="#000000" stroke-width="0.4" stroke-dasharray="4,1,0.5,1,0.5,1" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="foot" v="ft_no"> <!-- Rote Markierung falls Weg nicht für Füßgänger -->
							<line stroke="#FF4000" stroke-width="0.4" stroke-dasharray="3,5" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="*" v="*" zoom-min="15">
							<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-footway}" fill="#393935" stroke="#FFFFFF" stroke-width="2.0" />
						</rule>
					</rule>
					<!-- schwer sichtbare Wege -->
					<rule e="way" k="trail_visibility" v="bad|horrible|no" zoom-min="13">
						<line stroke="#44747474" stroke-width="0.3" />
						<line stroke="{$hw-footway}" stroke-width="0.3" stroke-dasharray="2,6" stroke-linecap="butt" scale="stroke"/>           
					</rule>
				</rule>
				<!-- Tracks -->
				<rule e="way" k="highway" v="track|byway" zoom-min="{$z-track}">
					<!-- Wiesenweg|Unbefestigt -->
					<rule e="way" k="tracktype" v="grade4|grade5" zoom-min="12">
						<line stroke="{$hw-track}" stroke-width="0.4" stroke-dasharray="14,6" stroke-linecap="butt" scale="stroke"/>
					</rule>
					<!-- Feldweg -->
					<rule e="way" k="tracktype" v="grade3" zoom-min="12">
						<line stroke="{$hw-track}" stroke-width="0.4" />
					</rule>
					<!-- Teerweg|Schotterweg -->
					<rule e="way" k="tracktype" v="grade1|grade2" zoom-min="11">
						<line stroke="#ffffff" stroke-width="0.8" />
					</rule>
					<rule e="way" k="tracktype" v="~|no|false" zoom-min="11">
						<line stroke="{$hw-track}" stroke-width="0.4" />
					</rule>
					<rule e="way" k="foot" v="ft_no"> <!-- Rote Markierung falls Weg nicht für Füßgänger -->
						<line stroke="#FF4000" stroke-width="0.4" stroke-dasharray="3,5" stroke-linecap="butt" scale="stroke"/>
					</rule>
					<rule e="way" k="*" v="*" zoom-min="15">
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-track}" fill="#393935" stroke="#FFFFFF" stroke-width="2.0" />
					</rule>
				</rule>
				<!-- Klettersteige (via_ferrata) -->
				<rule e="way" k="via_ferrata_flag|via_ferrata_scale" v="set|yes|*" zoom-min="{$z-track}">
					<line stroke="#FF0000" stroke-width="0.4" stroke-linecap="butt"/>
					<line stroke="#000000" stroke-width="0.4" stroke-dasharray="4,1,0.5,1,0.5,1" stroke-linecap="butt" scale="stroke"/>
					<rule e="any" k="*" v="*" zoom-min="14">
						<symbol id="id_via_ferrata" src="file:/symbols/via_ferrata.svg" symbol-percent="80"/>
						<rule e="way" k="*" v="*" zoom-max="15">
							<caption symbol-id="id_via_ferrata" k="name" position="above" font-family="sans_serif" font-style="normal" font-size="9.0" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
						</rule>
						<rule e="way" k="*" v="*" zoom-min="15">
							<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-track}" fill="#393935" stroke="#FFFFFF" stroke-width="2.0" />
						</rule>
					</rule>
				</rule>
				<!-- Reitweg -->
				<rule e="way" k="highway" v="bridleway" zoom-min="{$z-track}">
					<line stroke="{$hw-track}" stroke-width="0.4" stroke-dasharray="2,6" stroke-linecap="butt" />
					<rule e="way" k="*" v="*" zoom-min="15">
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-track}" fill="#393935" stroke="#FFFFFF" stroke-width="2.0" />
					</rule>
				</rule>
				<!-- Radweg -->
				<rule e="way" k="highway" v="cycleway" zoom-min="{$z-cycleway}">
					<line stroke="{$hw-cycleway}" stroke-width="0.4" />
					<rule e="way" k="*" v="*" zoom-min="15">
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-cycleway}" fill="#393935" stroke="#FFFFFF" stroke-width="2.0" />
					</rule>
				</rule>
				<!-- Zufahrtsstrasse -->
				<rule e="way" k="highway" v="service|road" zoom-min="{$z-service}">
					<line stroke="{$hw-service}" stroke-width="0.8" />
					<rule e="way" k="*" v="*" zoom-min="16" >
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-service}" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Wohnstrasse -->
				<rule e="way" k="highway" v="living_street" zoom-min="{$z-living}">
					<line stroke="{$hw-living}" stroke-width="0.8" />
					<rule e="way" k="*" v="*" zoom-min="16" >
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-living}" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<rule e="way" k="highway" v="residential|unclassified" zoom-min="{$z-residential}">
					<line stroke="{$hw-residential}" stroke-width="0.8" />
					<rule e="way" k="*" v="*" zoom-min="16" >
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-residential}" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Busway -->
				<rule e="way" k="highway" v="busway" zoom-min="{$z-residential}">
					<line stroke="#DBDBDB" stroke-width="0.8" />
					<rule e="way" k="*" v="*" zoom-min="16" >
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-residential}" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Strasse im Bau -->
				<rule e="way" k="highway" v="construction" zoom-min="{$z-construction}">
					<line stroke="#d0d0d0" stroke-width="0.8" />
					<rule e="way" k="*" v="*" zoom-min="15">
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-construction}" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Private Wege -->
				<rule e="way" k="access" v="private|acc_no|destination" zoom-min="{$z-service}">
					<rule e="way" k="highway" v="turning_circle|mini_roundabout|pedestrian|service|road|living_street|residential|unclassified|construction">
						<line stroke="#DBDBDB" stroke-width="0.8" />
						<rule e="way" k="*" v="*" zoom-min="16" >
							<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-service}" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
						</rule>
					</rule>
					<rule e="way" k="highway" v="path|footway">
						<line stroke="#9F9F9F" stroke-width="0.4" stroke-dasharray="8,6" stroke-linecap="butt" scale="stroke"/>
						<rule e="way" k="*" v="*" zoom-min="16" >
							<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-service}" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
						</rule>
					</rule>
					<rule e="way" k="tracktype" v="grade1|grade2">
						<line stroke="#DBDBDB" stroke-width="0.8" />
						<rule e="way" k="*" v="*" zoom-min="16" >
							<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-service}" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
						</rule>
					</rule>
					<rule e="way" k="tracktype" v="grade3">
						<line stroke="#9F9F9F" stroke-width="0.4" />
						<rule e="way" k="*" v="*" zoom-min="16" >
							<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-service}" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
						</rule>
					</rule>
					<rule e="way" k="tracktype" v="grade4|grade5">
						<line stroke="#9F9F9F" stroke-width="0.4" stroke-dasharray="14,6" stroke-linecap="butt" scale="stroke"/>
						<rule e="way" k="*" v="*" zoom-min="16" >
							<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-service}" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
						</rule>
					</rule>
				</rule>

				<!-- Abzweige -->
				<rule e="way" k="highway" v="tertiary_link" zoom-min="{$z-tertiary}">
					<line stroke="{$hw-tertiary}" stroke-width="1.4" />
				</rule>
				<rule e="way" k="highway" v="secondary_link" zoom-min="{$z-secondary}">
					<line stroke="{$hw-secondary}" stroke-width="1.4" />
				</rule>
				<rule e="way" k="highway" v="primary_link" zoom-min="{$z-primary}">
					<line stroke="{$hw-primary}" stroke-width="1.4" />
				</rule>
				<rule e="way" k="highway" v="trunk_link" zoom-min="{$z-trunk_link}">
					<line stroke="{$hw-trunk}" stroke-width="1.4" />
				</rule>
				<rule e="way" k="highway" v="motorway_link" zoom-min="{$z-motorway_link}">
					<line stroke="{$hw-motorway}" stroke-width="1.4"/>
				</rule>

				<!-- Hauptstrasse -->
				<rule e="way" k="highway" v="tertiary|raceway" zoom-min="{$z-tertiary}">
					<line stroke="{$hw-tertiary}" stroke-width="1.4" />
					<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-tertiary}" fill="#000000" stroke="#FFFFFF" stroke-width="2.0" />
				</rule>
				<!-- Landstraßen -->
				<rule e="way" k="highway" v="secondary" zoom-min="{$z-secondary}">
					<line stroke="{$hw-secondary}" stroke-width="1.4" />
					<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-secondary}" fill="#000000" stroke="#FFFFFF" stroke-width="2.0" />
					<rule e="way" k="network|hknetwork" v="~" zoom-min="14"> <!-- Nötig damit bei OAM keine Radwege/Wanderwege Namen angezeigt werden -->
						<pathText k="ref" repeat-start="50" repeat-gap="200" font-family="sans_serif" font-style="bold" font-size="{$fs-secondary}" fill="#000000" stroke="#FFFFFF" stroke-width="2.0" />
					</rule>
				</rule>
				<!-- Bundesstrassen -->
				<rule e="way" k="highway" v="primary" zoom-min="{$z-primary}">
					<line stroke="{$hw-primary}" stroke-width="1.6" />
					<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-primary}" fill="#000000" stroke="#FFFFFF" stroke-width="2.0" />
					<rule e="way" k="network|hknetwork" v="~" zoom-min="14"> <!-- Nötig damit bei OAM keine Radwege/Wanderwege Namen angezeigt werden -->
						<pathText k="ref" repeat-start="50" repeat-gap="200" font-family="sans_serif" font-style="bold" font-size="{$fs-primary}" fill="#000000" stroke="#FFFFFF" stroke-width="2.0" />
					</rule>
				</rule>
				<!-- Schnellstrassen -->
				<rule e="way" k="highway" v="trunk" zoom-min="{$z-trunk}">
					<line stroke="{$hw-trunk}" stroke-width="1.6" />
					<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-trunk}" fill="#000000" stroke="#FFFFFF" stroke-width="2.0" />
					<rule e="way" k="network|hknetwork" v="~" zoom-min="14"> <!-- Nötig damit bei OAM keine Radwege/Wanderwege Namen angezeigt werden -->
						<pathText k="ref" repeat-start="50" repeat-gap="200" font-family="sans_serif" font-style="bold" font-size="{$fs-trunk}" fill="#000000" stroke="#FFFFFF" stroke-width="2.0" />
					</rule>
				</rule>
				<!-- Autobahnen -->
				<rule e="way" k="highway" v="motorway" zoom-min="{$z-motorway}">
					<line stroke="{$hw-motorway}" stroke-width="1.8" stroke-linecap="butt" />
					<pathText k="ref" repeat-start="50" repeat-gap="400" font-family="sans_serif" font-style="bold" font-size="{$fs-motorway}" fill="#000000" stroke="#FFFFFF" stroke-width="2.0" />
				</rule>
		
				<!-- Maut pflichtige werden mit roten Punkten versehen -->
				<rule e="way" k="toll" v="yes|tl_yes" zoom-min="12">
					<line stroke="#88DD0000" stroke-width="1.0" stroke-dasharray="1,12" stroke-linecap="round" />
				</rule>
				<!-- Wege wo der Zugang eine Lizenz oder eine Genehmigung verlangt -->
				<rule e="way" k="access" v="permit" zoom-min="12">
					<line stroke="#88DD0000" stroke-width="1.0" stroke-dasharray="1,12" stroke-linecap="round" />
				</rule>
				<!-- Symbole für Fahrtrichtung -->
				<rule e="way" k="oneway" v="yes|1" zoom-min="16">
					<lineSymbol src="file:/symbols/oneway_arrow.svg" symbol-percent="35" align-center="true" repeat="true" repeat-gap="100" repeat-start="2"/>
				</rule>
			</rule>
		</rule>
	</rule>
</xsl:template>

<xsl:template name="highway_area">
	<rule e="way" k="tunnel" v="~|no|false">
		<!-- Fussgängerzone -->
		<rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}" closed="no">
			<line stroke="{$cs-pedestrian}" stroke-width="1.3" />
			<line stroke="{$hw-pedestrian}" stroke-width="1.1" />
			<rule e="way" k="*" v="*" zoom-min="16">
				<pathText k="name" font-family="sans_serif" font-style="normal" font-size="{$fs-pedestrian}" fill="#393935" stroke="#FFFFFF" stroke-width="2.0" />
			</rule>
		</rule>
		<rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}" closed="yes">
			<area fill="{$hw-pedestrian}"/>
			<rule e="any" k="*" v="*" zoom-min="15">
				<caption k="name" font-style="bold" font-size="{$fs-pedestrian}" fill="#000000" stroke="#ffffff" stroke-width="3"/>
			</rule>
		</rule>
		
		<rule e="way" k="area" v="yes|true">
			<rule e="way" k="highway" v="*">
				<rule e="way" k="highway" v="footway|path" zoom-min="{$z-footway}">
					<area fill="{$hw-pedestrian}" stroke="#585858" stroke-width="0.1"/>
				</rule>
				<rule e="way" k="highway" v="service" zoom-min="{$z-service}">
					<area fill="{$hw-service}" stroke="{$cs-service}" stroke-width="0.1"/>
				</rule>
				<rule e="way" k="highway" v="unclassified" zoom-min="{$z-residential}">
					<area fill="{$hw-residential}" stroke="{$cs-residential}" stroke-width="0.1"/>
				</rule>
				<rule e="way" k="highway" v="residential" zoom-min="{$z-residential}">
					<area fill="{$hw-residential}" stroke="{$cs-residential}" stroke-width="0.1"/>
				</rule>
				<rule e="way" k="highway" v="road" zoom-min="{$z-residential}">
					<area fill="#ffffff"/>
				</rule>
				<rule e="way" k="highway" v="living_street" zoom-min="{$z-living}">
					<area fill="{$hw-living}" stroke="{$cs-living}" stroke-width="0.1"/>
				</rule>
				<rule e="way" k="highway" v="*" zoom-min="15">
				  <caption k="name" font-style="bold" font-size="{$fs-service}" fill="#000000" stroke="#ffffff" stroke-width="3"/>
				</rule>
			</rule>
		</rule>
    </rule>  
</xsl:template>

</xsl:stylesheet>
