<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<!-- road colors -->
<xsl:variable name="hw-motorway">#FFD466</xsl:variable>
<xsl:variable name="hw-trunk">#fff486</xsl:variable>
<xsl:variable name="hw-primary">#fff486</xsl:variable>
<xsl:variable name="hw-secondary">#FEF8B9</xsl:variable>
<xsl:variable name="hw-tertiary">#FEF8B9</xsl:variable>
<xsl:variable name="hw-residential">#ffffff</xsl:variable>
<xsl:variable name="hw-unclassified">#ffffff</xsl:variable>
<xsl:variable name="hw-pedestrian">#fecbfe</xsl:variable>
<xsl:variable name="hw-living">#ffffff</xsl:variable>
<xsl:variable name="hw-track">#747474</xsl:variable>
<xsl:variable name="hw-service">#ffffff</xsl:variable>
<xsl:variable name="hw-cycleway">#ffffff</xsl:variable>
<xsl:variable name="hw-footway">#747474</xsl:variable>
<xsl:variable name="hw-steps">#747474</xsl:variable>
<xsl:variable name="hw-construction">#d0d0d0</xsl:variable>
<!-- road casing colors -->
<xsl:variable name="cs-motorway">#999999</xsl:variable>
<xsl:variable name="cs-trunk">#999999</xsl:variable>
<xsl:variable name="cs-primary">#999999</xsl:variable>
<xsl:variable name="cs-secondary">#999999</xsl:variable>
<xsl:variable name="cs-tertiary">#53534e</xsl:variable>
<xsl:variable name="cs-residential">#53534e</xsl:variable>
<xsl:variable name="cs-unclassified">#53534e</xsl:variable>
<xsl:variable name="cs-pedestrian">#53534e</xsl:variable>
<xsl:variable name="cs-living">#53534e</xsl:variable>
<xsl:variable name="cs-track">#53534e</xsl:variable>
<xsl:variable name="cs-service">#53534e</xsl:variable>
<xsl:variable name="cs-cycleway">#53534e</xsl:variable>
<xsl:variable name="cs-footway">#53534e</xsl:variable>
<xsl:variable name="cs-construction">#53534e</xsl:variable>

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
<xsl:variable name="z-service2">11</xsl:variable>
<xsl:variable name="z-track">11</xsl:variable>
<xsl:variable name="z-cycleway">12</xsl:variable>
<xsl:variable name="z-footway">12</xsl:variable>
<xsl:variable name="z-construction">11</xsl:variable>

<xsl:template name="highway">
	<rule e="any" k="highway" v="*">
		<rule e="any" k="area" v="~|no|false">
			<!-- bridge -->
			<rule e="way" k="bridge" v="yes|movable|true"> 
				<rule e="way" k="highway" v="construction" zoom-min="{$z-construction}">
					<line stroke="{$cs-construction}" stroke-width="0.8" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="motorway" zoom-min="{$z-motorway}">
					<line stroke="{$cs-motorway}" stroke-width="2.6" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="motorway_link" zoom-min="{$z-motorway_link}">
					<line stroke="{$cs-motorway}" stroke-width="1.6" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="trunk" zoom-min="{$z-trunk}">
					<line stroke="{$cs-trunk}" stroke-width="1.6" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="trunk_link" zoom-min="{$z-trunk_link}">
					<line stroke="{$cs-trunk}" stroke-width="1.6" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="primary|primary_link" zoom-min="{$z-primary}">
					<line stroke="{$cs-primary}" stroke-width="1.6" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="secondary|secondary_link" zoom-min="{$z-secondary}">
					<line stroke="{$cs-secondary}" stroke-width="1.6" stroke-linecap="butt"/>
				</rule>
				<rule e="way" k="highway" v="tertiary|tertiary_link" zoom-min="{$z-tertiary}">
					<line stroke="{$cs-tertiary}" stroke-width="1.6" stroke-linecap="butt"/>
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
				<rule e="way" k="highway" v="bridleway|cycleway|footway|steps|path" zoom-min="{$z-footway}">
					<line stroke="#000000" stroke-width="0.7" stroke-linecap="butt" />
					<line stroke="#FFFFFF" stroke-width="0.5" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="highway" v="track|byway" zoom-min="{$z-track}">
					<line stroke="#000000" stroke-width="0.9" stroke-linecap="butt" />
					<line stroke="#FFFFFF" stroke-width="0.7" stroke-linecap="butt" />
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
				<rule e="any" k="bridge" v="~|no|false">
					<!-- casing -->
					<rule e="node" k="highway" v="turning_circle|mini_roundabout" zoom-min="13" >
						<circle radius="1.0" scale-radius="true" fill="{$cs-residential}" />
					</rule>
					<!-- Tracks -->
					<rule e="way" k="highway" v="track|byway" zoom-min="{$z-track}">
						<!-- Schotterweg -->
						<rule e="way" k="tracktype" v="grade2">
							<line stroke="{$cs-track}" stroke-width="0.8" stroke-dasharray="8,4" stroke-linecap="butt"/>
						</rule>
						<!-- Teerweg -->
						<rule e="way" k="tracktype" v="grade1">
							<line stroke="{$cs-track}" stroke-width="0.8" stroke-linecap="butt"/>
						</rule>
					</rule>
					<!-- Fussgängerzone -->
					<rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}">
						<line stroke="{$cs-pedestrian}" stroke-width="1.3" />
					</rule>
					<!-- Radweg -->
					<rule e="way" k="highway" v="cycleway" zoom-min="{$z-cycleway}">
						<line stroke="{$cs-cycleway}" stroke-width="0.7" />
					</rule>
					<!-- Strasse im Bau -->
					<rule e="way" k="highway" v="construction" zoom-min="{$z-construction}">
						<line stroke="{$cs-construction}" stroke-width="1.0" stroke-linecap="round" />
					</rule>
					<!-- Zufahrtsstrase -->
					<rule e="way" k="highway" v="service|road" zoom-min="{$z-service}">
						<line stroke="{$cs-service}" stroke-width="1.0" stroke-linecap="round" />
					</rule>
					<!-- Wohnstrasse -->
					<rule e="way" k="highway" v="residential|unclassified" zoom-min="{$z-residential}">
						<line stroke="{$cs-residential}" stroke-width="1.0" stroke-linecap="round" />
					</rule>
					<rule e="way" k="highway" v="living_street" zoom-min="{$z-living}">
						<line stroke="{$cs-living}" stroke-width="1.0" stroke-linecap="round" />
					</rule>
					<!-- Nebenstraßen -->
					<rule e="way" k="highway" v="tertiary|tertiary_link|raceway" zoom-min="{$z-tertiary}">
						<line stroke="{$cs-tertiary}" stroke-width="1.4" stroke-linecap="butt" />
					</rule>
					<!-- Landstraßen -->
					<rule e="way" k="highway" v="secondary|secondary_link" zoom-min="{$z-secondary}">
						<line stroke="{$cs-secondary}" stroke-width="1.4" stroke-linecap="butt" />
					</rule>
					<!-- Bundesstrassen -->
					<rule e="way" k="highway" v="primary|primary_link" zoom-min="{$z-primary}">
						<line stroke="{$cs-primary}" stroke-width="1.4" stroke-linecap="butt" />
					</rule>
					<!-- Schnellstrassen -->
					<rule e="way" k="highway" v="trunk_link" zoom-min="{$z-trunk_link}">
						<line stroke="{$cs-trunk}" stroke-width="1.4" stroke-linecap="butt" />
					</rule>
					<rule e="way" k="highway" v="trunk" zoom-min="{$z-trunk}">
						<line stroke="{$cs-trunk}" stroke-width="1.4" stroke-linecap="butt" />
					</rule>
					<!-- Autobahnen -->
					<rule e="way" k="highway" v="motorway_link" zoom-min="{$z-motorway_link}">
						<line stroke="{$cs-motorway}" stroke-width="1.4" stroke-linecap="butt" />
					</rule>
					<rule e="way" k="highway" v="motorway" zoom-min="{$z-motorway}">
						<line stroke="{$cs-motorway}" stroke-width="2.6" stroke-linecap="butt" />
					</rule>
				</rule>

				<!-- core -->
				<rule e="node" k="highway" v="turning_circle|mini_roundabout" zoom-min="13">
					<circle radius="0.8" scale-radius="true" fill="{$hw-residential}" />
				</rule>
				<rule e="way" k="highway" v="construction" zoom-min="{$z-construction}">
				  <line stroke="{$hw-construction}" stroke-width="0.2" stroke-linecap="butt" stroke-dasharray="12,12" />
				</rule>
				<rule e="way" k="highway" v="steps" zoom-min="{$z-footway}">
					<line stroke="{$hw-steps}" stroke-width="0.4" stroke-dasharray="0.7,0.5" stroke-linecap="butt" scale="stroke"/>
					<rule e="way" k="*" v="*" zoom-min="13">
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="9" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<rule e="way" k="highway" v="path|footway" zoom-min="12">
					<rule e="way" k="trail_visibility" v="~|excellent|good|intermediate">
						<rule e="way" k="sac_scale" v="~">
							<line stroke="{$hw-footway}" stroke-width="0.4" stroke-dasharray="8,6" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="sac_scale" v="T1|hiking">
							<line stroke="{$hw-footway}" stroke-width="0.4" stroke-dasharray="8,6" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="sac_scale" v="T2|mountain_hiking">
							<line stroke="#3052FF" stroke-width="0.4" stroke-dasharray="8,6" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="sac_scale" v="T3|demanding_mountain_hiking">
							<line stroke="#FF0000" stroke-width="0.4" stroke-dasharray="8,6" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="sac_scale" v="T4|alpine_hiking">
							<line stroke="#000000" stroke-width="0.4" stroke-dasharray="8,6" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="sac_scale" v="T5|demanding_alpine_hiking|T6|difficult_alpine_hiking">
							<line stroke="#000000" stroke-width="0.4" stroke-dasharray="4,1,0.5,1,0.5,1" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="foot" v="ft_no"> <!-- Rote Markierung falls Weg nicht für Füßgänger -->
							<line stroke="#FF4000" stroke-width="0.4" stroke-dasharray="3,5" stroke-linecap="butt" scale="stroke"/>
						</rule>
						<rule e="way" k="*" v="*">
							<pathText k="name" font-family="sans_serif" font-style="normal" font-size="9" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
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
						<line stroke="{$hw-track}" stroke-width="0.4" stroke-dasharray="8,6" stroke-linecap="butt" scale="stroke"/>
					</rule>
					<!-- Feldweg -->
					<rule e="way" k="tracktype" v="grade3" zoom-min="12">
						<line stroke="{$hw-track}" stroke-width="0.4" />
					</rule>
					<!-- Teerweg|Schotterweg -->
					<rule e="way" k="tracktype" v="grade1|grade2" zoom-min="11">
						<line stroke="#ffffff" stroke-width="0.6" />
					</rule>
					<rule e="way" k="tracktype" v="~|no|false" zoom-min="11">
						<line stroke="{$hw-track}" stroke-width="0.4" />
					</rule>
					<rule e="way" k="foot" v="ft_no"> <!-- Rote Markierung falls Weg nicht für Füßgänger -->
						<line stroke="#FF4000" stroke-width="0.4" stroke-dasharray="3,5" stroke-linecap="butt" scale="stroke"/>
					</rule>
					<rule e="way" k="*" v="*">
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="9" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Klettersteige (via_ferrata) -->
				<rule e="way" k="via_ferrata_flag|via_ferrata_scale" v="set|yes|*" zoom-min="12">
					<symbol id="id_via_ferrata" src="file:/symbols/via_ferrata.svg" symbol-width="16"/>
					<line stroke="#FF0000" stroke-width="0.4" stroke-linecap="butt"/>
					<line stroke="#000000" stroke-width="0.4" stroke-dasharray="4,1,0.5,1,0.5,1" stroke-linecap="butt" scale="stroke"/>
					<rule e="any" k="*" v="*" zoom-min="13">
						<caption symbol-id="id_via_ferrata" k="name" position="above" font-family="sans_serif" font-style="normal" font-size="9.0" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="9.0" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Reitweg -->
				<rule e="way" k="highway" v="bridleway" zoom-min="13">
					<line stroke="{$hw-track}" stroke-width="0.4" stroke-dasharray="2,6" stroke-linecap="butt" />
					<rule e="way" k="*" v="*" zoom-min="13">
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="9" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Fussgängerzone -->
				<rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}">
					<line stroke="{$hw-pedestrian}" stroke-width="1.1" />
					<rule e="way" k="*" v="*" zoom-min="13">
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="10" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Radweg -->
				<rule e="way" k="highway" v="cycleway" zoom-min="{$z-cycleway}">
					<line stroke="{$hw-cycleway}" stroke-width="0.4" />
					<rule e="way" k="*" v="*" zoom-min="13">
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="8" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Zufahrtsstrasse -->
				<rule e="way" k="highway" v="service|road" zoom-min="{$z-service}">
					<line stroke="{$hw-service}" stroke-width="0.8" />
					<rule e="way" k="*" v="*" zoom-min="15" >
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="9" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Wohnstrasse -->
				<rule e="way" k="highway" v="living_street" zoom-min="{$z-living}">
					<line stroke="{$hw-living}" stroke-width="0.8" />
					<rule e="way" k="*" v="*" zoom-min="14" >
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="10" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<rule e="way" k="highway" v="residential|unclassified" zoom-min="{$z-residential}">
					<line stroke="{$hw-residential}" stroke-width="0.8" />
					<rule e="way" k="*" v="*" zoom-min="14" >
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="10" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Strasse im Bau -->
				<rule e="way" k="highway" v="construction" zoom-min="11">
					<line stroke="#d0d0d0" stroke-width="0.8" />
					<rule e="way" k="*" v="*" zoom-min="13">
						<pathText k="name" font-family="sans_serif" font-style="normal" font-size="10" fill="#393935" stroke="#FFFFFF" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Private Wege -->
				<rule e="way" k="access" v="private|acc_no|destination" zoom-min="12">
					<line stroke="#CCCCCC" stroke-width="0.8" />
				</rule>

				<!-- Abzweige -->
				<rule e="way" k="highway" v="tertiary_link" zoom-min="{$z-tertiary}">
					<line stroke="{$hw-tertiary}" stroke-width="1.0" />
				</rule>
				<rule e="way" k="highway" v="secondary_link" zoom-min="{$z-secondary}">
					<line stroke="{$hw-secondary}" stroke-width="1.0" />
				</rule>
				<rule e="way" k="highway" v="primary_link" zoom-min="{$z-primary}">
					<line stroke="{$hw-primary}" stroke-width="1.0" />
				</rule>
				<rule e="way" k="highway" v="trunk_link" zoom-min="{$z-trunk_link}">
					<line stroke="{$hw-trunk}" stroke-width="1.0" />
				</rule>
				<rule e="way" k="highway" v="motorway_link" zoom-min="{$z-motorway_link}">
					<line stroke="{$hw-motorway}" stroke-width="1.0"/>
				</rule>

				<!-- Hauptstrasse -->
				<rule e="way" k="highway" v="tertiary|raceway" zoom-min="{$z-tertiary}">
					<line stroke="{$hw-tertiary}" stroke-width="1.0" />
					<pathText k="name" font-family="sans_serif" font-style="normal" font-size="10" fill="#393935" stroke="#FEF8B9" stroke-width="3.0" />
				</rule>
				<!-- Landstraßen -->
				<rule e="way" k="highway" v="secondary" zoom-min="{$z-secondary}">
					<line stroke="{$hw-secondary}" stroke-width="1.0" />
					<pathText k="name" font-family="sans_serif" font-style="normal" font-size="10" fill="#393935" stroke="#FEF8B9" stroke-width="3.0" />
					<rule e="way" k="network|hknetwork" v="~" zoom-min="12"> <!-- Nötig damit bei OAM keine Radwege/Wanderwege Namen angezeigt werden -->
						<caption k="ref" font-family="sans_serif" font-style="normal" font-size="8" fill="#000000" stroke="#FEF8B9" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Bundesstrassen -->
				<rule e="way" k="highway" v="primary" zoom-min="{$z-primary}">
					<line stroke="{$hw-primary}" stroke-width="1.0" />
					<pathText k="name" font-family="sans_serif" font-style="normal" font-size="10" fill="#393935" stroke="#fff486" stroke-width="3.0" />
					<rule e="way" k="network|hknetwork" v="~" zoom-min="12"> <!-- Nötig damit bei OAM keine Radwege/Wanderwege Namen angezeigt werden -->
						<caption k="ref" font-family="sans_serif" font-style="normal" font-size="8" fill="#000000" stroke="#fff486" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Schnellstrassen -->
				<rule e="way" k="highway" v="trunk" zoom-min="{$z-trunk}">
					<line stroke="{$hw-trunk}" stroke-width="1.0" />
					<pathText k="name" font-family="sans_serif" font-style="normal" font-size="10" fill="#393935" stroke="#fff486" stroke-width="3.0" />
					<rule e="way" k="network|hknetwork" v="~" zoom-min="12"> <!-- Nötig damit bei OAM keine Radwege/Wanderwege Namen angezeigt werden -->
						<caption k="ref" font-family="sans_serif" font-style="normal" font-size="8" fill="#000000" stroke="#fff486" stroke-width="3.0" />
					</rule>
				</rule>
				<!-- Autobahnen -->
				<rule e="way" k="highway" v="motorway" zoom-min="{$z-motorway}">
					<line stroke="{$hw-motorway}" stroke-width="2.0" stroke-linecap="butt" />
					<caption k="ref" font-style="bold" font-size="10" fill="#FFFFFF" stroke="#296BB5" stroke-width="4" />
				</rule>
		
				<!-- Maut pflichtige werden mit roten Punkten versehen -->
				<rule e="way" k="toll" v="yes|tl_yes" zoom-min="12">
					<line stroke="#88DD0000" stroke-width="0.8" stroke-dasharray="1,12" stroke-linecap="round" />
				</rule>
				<!-- Wege wo der Zugang eine Lizenz oder eine Genehmigung verlangt -->
				<rule e="way" k="access" v="permit" zoom-min="12">
					<line stroke="#88DD0000" stroke-width="0.8" stroke-dasharray="1,12" stroke-linecap="round" />
				</rule>
			</rule>
		</rule>
	</rule>
</xsl:template>

<xsl:template name="highway_area">
    <rule cat="highway" e="way" k="area" v="yes|true">
		<rule e="way" k="highway" v="*">
            <rule e="way" k="highway" v="footway|path" zoom-min="{$z-footway}">
                <area fill="{$hw-footway}" stroke="{$cs-footway}" stroke-width="0.1"/>
            </rule>
            <rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}">
                <area fill="{$hw-pedestrian}" stroke="{$cs-pedestrian}" stroke-width="0.1"/>
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
            <rule e="way" k="*" v="*" zoom-min="{$z-service}">
              <caption k="name" font-style="bold" font-size="11" fill="#000000" stroke="#ffffff" stroke-width="3"/>
            </rule>
        </rule>
    </rule>  
</xsl:template>

</xsl:stylesheet>
