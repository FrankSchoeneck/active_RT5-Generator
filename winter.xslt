<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="winter">
<!--
	http://www.senotto.de/index.html?Tipps%20und%20Tricks&Tipps_Tricks/GPS/OAM_Winter/OAM_Winter.html
    Wintersport Ergänzungen                   peter@danninger.eu      V2.8            28.01.2022
    identisch für Elevate & Elements
    Hintergrundinformation:
    Derzeit werden nur Linien abhängig vom Zoomfaktor skaliert, dazugehörige Symbole und Texte aber nicht.
    Das sieht beim Zoomen häßlich aus, außerdem ist der Skalierungsfaktor nicht flexibel: Math.pow (1.5, zoomLevel - 12)

  Diese Wintersport-Tags stehen zur Verfügung:

  piste:type          downhill    classic       Piste                   breite Linie    (Farbe: difficulty)
  piste:type          downhill    backcountry   Skitouren-Abfahrt       breite Linie    (Farbe: difficulty, weisse Ringe)
  piste:type          nordic      unbekannt     Langlauf                doppelte Linie  (Farbe: difficulty + weisse Punkte)
  piste:type          nordic      classic       Langlauf                doppelte Linie  (Farbe: difficulty + weiss gepunktet)
  piste:type          nordic      skating       Langlauf                doppelte Linie  (Farbe: difficulty + weiss gestrichelt)
  piste:type          nordic   classic+skating  Langlauf                doppelte Linie  (Farbe: difficulty + weiss Strich + Punkte)
  piste:type          skitour                   Schitour                Ringe           (Farbe: difficulty)
  piste:type          sled        classic       Rodeln (Natur-Bahn)     Dreiecke lila
  piste:type          sled        backcountry   Rodeln (unpräpariert)   Dreiecke lila/weiss
  piste:type          sleigh                    Motor/Hundeschlitten    Dreiecke violett/weiss
  piste:type          hike        classic       Winter-Wanderung        Vierecke violett/weiss
  piste:type          hike        backcountry   Schneeschuh-Wanderung   Vierecke lila
  piste:type          ice_skate                 Eislaufbahn             Linie cyan/blau gestrichelt (Fläche cyan)
  leisure             ice_rink                  Eislaufplatz            Linie cyan/blau gestrichelt (Fläche cyan)
  piste:type          playground                Schischul-Piste         Linie grün (Fläche grün)
  piste:type          snow_park                 Schnee-Park (Rampen)    Linie orange (Fläche gelb)
  piste:type          halfpipe                  Halfpipe                Linie gelb/orange gestrichelt (Fläche gelb)
  man_made            piste:halfpipe            Halfpipe                Linie gelb/orange gestrichelt (Fläche gelb) ===> ab V5 entfernen

  piste:difficulty    novice                    grün
  piste:difficulty    easy                      blau
  piste:difficulty    intermediate              rot
  piste:difficulty    advanced                  schwarz
  piste:difficulty    expert                    orange                  (nordic:  schwarz + Achtung-Symbol)
  piste:difficulty    freeride                  gelb + Achtung-Symbol   (nordic:  schwarz + Achtung-Symbol)
  piste:difficulty    ?                         lila                    (kein Symbol, da oft gefunden)

  piste:grooming      classic                   Winter-Wanderung, Langlauf klassisch
                                                Abfahrtspiste klassisch (Default), Naturrodelbahn (Default)
  piste:grooming      scooter                   Langlauf klassisch, aber engere Spur
  piste:grooming      skating                   Langlauf skating
  piste:grooming      classic+skating           Langlauf classic und skating
  piste:grooming      classic;skating           Langlauf classic und skating
  piste:grooming      backcountry               Schneeschuh-Wanderung, Skitouren-Abfahrt (downhill unpräpariert, weisse Ringe)
                                                Rodelbahn unpräpariert, (Loipe unpräpariert)
  Sonderfarben:       #FFBB00   orange
                      9F009F    violett
  -->

  <!-- Schipisten (downhill) (Linie), siehe Ski-Piste-way.ods -->

  <rule cat="skipiste" e="way" k="piste:type" v="downhill" closed="no" zoom-min="13">
    <!-- nur für Test: <caption k="piste:difficulty" font-size="6" dy="-4" priority="100" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3"/> -->
    <!-- nur für Test: <caption k="piste:grooming" font-size="6" dy="-12" priority="100" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3"/> -->

    <rule e="way" k="piste:difficulty" v="novice">                              <!-- Anfänger-Piste: grün -->
      <line stroke="#6600FF00" stroke-width="6" dy="-8" scale="none" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_lila.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-91" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-90" repeat-start="50" repeat-gap="150" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-93" repeat-start="75" repeat-gap="350" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="easy">                                <!-- Einfache Piste: blau -->
      <line stroke="#660000FF" stroke-width="6" dy="-8" scale="none" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_orange.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-91" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-90" repeat-start="50" repeat-gap="150" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-93" repeat-start="75" repeat-gap="350" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="intermediate">                        <!-- Mittelschwere Mittelschwere Piste: rot -->
      <line stroke="#66FF0000" stroke-width="6" dy="-8" scale="none" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_cyan.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-91" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-90" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-93" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="advanced">                            <!-- Schwere Piste: schwarz -->
      <line stroke="#66000000" stroke-width="6" dy="-8" scale="none" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_orange.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-191" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-90" repeat-start="50" repeat-gap="150" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-93" repeat-start="75" repeat-gap="350" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="expert">                              <!-- Sehr schwere Piste: orange mit rotem Rand-->
      <line stroke="#66FFBB00" stroke-width="6" dy="-8" scale="none" />
      <line stroke="#88FF0000" stroke-width="1" dy="-5.5" scale="none" />
      <line stroke="#88FF0000" stroke-width="1" dy="-10.5" scale="none" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_blau.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-91" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-90" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-93" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="freeride">                            <!-- Extreme Piste: gelb mit rotem Rand, mit Achtung-Symbol -->
      <line stroke="#66FFFF00" stroke-width="6" dy="-8" scale="none" />
      <line stroke="#88FF0000" stroke-width="1" dy="-5.5" scale="none" />
      <line stroke="#88FF0000" stroke-width="1" dy="-10.5" scale="none" />
      <lineSymbol src="file:/symbols_winter/w_achtung.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-80" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_blau.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-91" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-90" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-93" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="~">                                   <!-- Piste unbekannter Schwierigkeit: lila -->
      <line stroke="#66FF00FF" stroke-width="6" dy="-8" scale="none" />
      <!-- kein Symbol, da viele Pisten ohne Angabe -->
      <!-- <lineSymbol src="file:/symbols_winter/w_unbekannt_cyan.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-80" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" /> -->
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_gruen.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-151" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-150" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-152" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <!-- Schitourenabfahrt -->
    <rule e="way" k="piste:grooming" v="backcountry">                           <!-- Piste unpräpariert, Skitouren-Abfahrt: zusätzlich weisse Ringe  -->
      <lineSymbol src="file:/symbols_winter/w_circle_weiss_ring.svg" symbol-height="8" symbol-width="8" dy="-8" scale="none" priority="-92" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
  </rule>

  <!-- Schischul-Pisten-Fläche, identisch Anfänger Schipisten Fläche grün, Ski-Piste-area.ods -->

  <rule cat="schischule" e="way" k="piste:type" v="playground" closed="yes" zoom-min="13">
    <line stroke="#6600FF00" stroke-width="1" dy="0" scale="none" />
    <area fill="#3300FF00" />
    <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
      <lineSymbol src="file:/symbols_winter/w_skipiste_lila.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-96" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-95" repeat-start="50" repeat-gap="150" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
      <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-98" repeat-start="75" repeat-gap="350" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
  </rule>

  <!-- Schipisten (downhill) (Fläche), Ski-Piste-area.ods -->

  <rule cat="skipiste" e="way" k="piste:type" v="downhill" closed="yes" zoom-min="13">
    <!-- nur für Test: <caption k="piste:difficulty" font-size="6" dy="-4" priority="100" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3"/> -->
    <!-- nur für Test: <caption k="piste:grooming" font-size="6" dy="+4" priority="100" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3"/> -->

    <rule e="way" k="piste:difficulty" v="novice">                              <!-- Anfänger-Pisten-Fläche: grün -->
      <line stroke="#6600FF00" stroke-width="1" dy="0" scale="none" />
      <area fill="#3300FF00" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_lila.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-96" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-95" repeat-start="50" repeat-gap="150" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-98" repeat-start="75" repeat-gap="350" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="easy">                                <!-- Einfache Pisten-Fläche: blau -->
      <line stroke="#660000FF" stroke-width="1" dy="0" scale="none" />
      <area fill="#330000FF" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_orange.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-96" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-95" repeat-start="50" repeat-gap="150" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-98" repeat-start="75" repeat-gap="350" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="intermediate">                        <!-- Mittelschwere Pisten-Fläche: rot -->
      <line stroke="#66FF0000" stroke-width="1" dy="0" scale="none" />
      <area fill="#33FF0000" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_cyan.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-96" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-95" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-98" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="advanced">                            <!-- Schwere Pisten-Fläche: schwarz -->
      <line stroke="#66000000" stroke-width="1" dy="0" scale="none" />
      <area fill="#33000000" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_orange.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-96" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-95" repeat-start="50" repeat-gap="150" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-98" repeat-start="75" repeat-gap="350" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="expert">                              <!-- Sehr schwere Pisten-Fläche: orange -->
      <line stroke="#66FFBB00" stroke-width="1" dy="0" scale="none" />
      <area fill="#33FFBB00" />                                                 <!-- orange gefüllt -->
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_blau.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-96" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-95" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-98" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="freeride">                            <!-- Extreme Pisten-Fläche: orange, mit Achtung-Symbol  -->
      <line stroke="#66FFBB00" stroke-width="2" dy="0" scale="none" />
      <area fill="#33FFFF00" />                                                 <!-- gelb gefüllt -->
      <lineSymbol src="file:/symbols_winter/w_achtung.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-80" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_blau.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-96" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-95" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-98" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="~">                                   <!-- Pisten-Fläche, unbekannte Schwierigkeit: lila  -->
      <line stroke="#66FF00FF" stroke-width="1" dy="0" scale="none" />
      <area fill="#33FF00FF" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skipiste_gruen.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-96" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <!-- kein Symbol, da viele Pisten ohne Angabe -->
      <!-- <lineSymbol src="file:/symbols_winter/w_unbekannt_cyan.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-83" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" /> -->
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-95" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-98" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <!-- Schitourenabfahrt -->
    <rule e="way" k="piste:grooming" v="backcountry">                           <!-- Piste unpräpariert, Skitouren-Abfahrt: zusätzlich weisse Ringe  -->
      <lineSymbol src="file:/symbols_winter/w_circle_weiss_ring.svg" symbol-height="8" symbol-width="8" dy="0" scale="none" priority="-97" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
  </rule>

  <!-- Schitouren (skitour) (Linie), siehe Ski-Tour-way.ods -->

  <rule cat="skitour" e="way" k="piste:type" v="skitour" closed="no" zoom-min="13">
    <!-- nur für Test: <caption k="piste:difficulty" font-size="6" dy="+4" priority="100" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3"/> -->
    <!-- nur für Test: <caption k="piste:grooming" font-size="6" dy="+12" priority="100" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3"/> -->

    <rule e="way" k="piste:difficulty" v="novice">                              <!-- Anfänger-Ski-Tour:  grüne Ringe -->
      <line stroke="#4400FF00" stroke-width="6" dy="+8" scale="none" />
      <lineSymbol src="file:/symbols_winter/w_circle_gruen_ring.svg" symbol-height="8" symbol-width="8" dy="+8" scale="none" priority="-102" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_lila.svg" symbol-height="24" symbol-width="24" dy="+8" scale="none" priority="-101" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="+8" scale="none" display="always" priority="-100" repeat-start="50" repeat-gap="150" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+19" scale="none" display="always" priority="-103" repeat-start="75" repeat-gap="350" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="easy">                                <!-- Einfache Ski-Tour:  blaue Ringe -->
      <line stroke="#440000FF" stroke-width="6" dy="+8" scale="none" />
      <lineSymbol src="file:/symbols_winter/w_circle_blau_ring.svg" symbol-height="8" symbol-width="8" dy="+8" scale="none" priority="-102" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_orange.svg" symbol-height="24" symbol-width="24" dy="+8" scale="none" priority="-101" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="+8" scale="none" display="always" priority="-100" repeat-start="50" repeat-gap="150" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+19" scale="none" display="always" priority="-103" repeat-start="75" repeat-gap="350" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="intermediate">                        <!-- Mittelschwere Ski-Tour:  rote Ringe -->
      <line stroke="#44FF0000" stroke-width="6" dy="+8" scale="none" />
      <lineSymbol src="file:/symbols_winter/w_circle_rot_ring.svg" symbol-height="8" symbol-width="8" dy="+8" scale="none" priority="-102" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_cyan.svg" symbol-height="24" symbol-width="24" dy="+8" scale="none" priority="-101" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="+8" scale="none" display="always" priority="-100" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+19" scale="none" display="always" priority="-103" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="advanced">                            <!-- Schwere Ski-Tour:  schwarze Ringe -->
      <line stroke="#44000000" stroke-width="6" dy="+8" scale="none" />
      <lineSymbol src="file:/symbols_winter/w_circle_schwarz_ring.svg" symbol-height="8" symbol-width="8" dy="+8" scale="none" priority="-102" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_orange.svg" symbol-height="24" symbol-width="24" dy="+8" scale="none" priority="-101" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="+8" scale="none" display="always" priority="-100" repeat-start="50" repeat-gap="150" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+19" scale="none" display="always" priority="-103" repeat-start="75" repeat-gap="350" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="expert">                              <!-- Sehr schwere Ski-Tour:  orange Ringe -->
      <line stroke="#44FFBB00" stroke-width="6" dy="+8" scale="none" />
      <lineSymbol src="file:/symbols_winter/w_circle_orange_ring.svg" symbol-height="8" symbol-width="8" dy="+8" scale="none" priority="-102" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_blau.svg" symbol-height="24" symbol-width="24" dy="+8" scale="none" priority="-101" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="+8" scale="none" display="always" priority="-100" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+19" scale="none" display="always" priority="-103" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="freeride">                            <!-- Extreme Ski-Tour:  orange Ringe auf gelber Linie mit orangen Rand , mit Achtung-Symbol -->
      <line stroke="#44FFFF00" stroke-width="6" dy="+8" scale="none" />
      <line stroke="#88FFBB00" stroke-width="1" dy="+5.5" scale="none" />
      <line stroke="#88FFBB00" stroke-width="1" dy="+10.5" scale="none" />
      <lineSymbol src="file:/symbols_winter/w_circle_orange_ring.svg" symbol-height="8" symbol-width="8" dy="+8" scale="none" priority="-102" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <lineSymbol src="file:/symbols_winter/w_achtung.svg" symbol-height="24" symbol-width="24" dy="+8" scale="none" priority="-80" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_blau.svg" symbol-height="24" symbol-width="24" dy="+8" scale="none" priority="-101" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="+8" scale="none" display="always" priority="-100" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+19" scale="none" display="always" priority="-103" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="~">                                   <!-- Ski-Tour:  unbekannte Schwierigkeit, lila Ringe -->
      <!-- Wegen evtl. Doubletten #22 statt #44 und modifizierte priority/repeat-Werte -->
      <line stroke="#22FF00FF" stroke-width="6" dy="+8" scale="none" />
      <lineSymbol src="file:/symbols_winter/w_circle_lila_ring.svg" symbol-height="8" symbol-width="8" dy="+8" scale="none" priority="-108" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <!-- kein Symbol, da viele Touren ohne Angabe -->
      <!-- <lineSymbol src="file:/symbols_winter/w_unbekannt_cyan.svg" symbol-height="24" symbol-width="24" dy="+8" scale="none" priority="-85" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" /> -->
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_gruen.svg" symbol-height="24" symbol-width="24" dy="+8" scale="none" priority="-107" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="+8" scale="none" display="always" priority="-106" repeat-start="75" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+19" scale="none" display="always" priority="-109" repeat-start="200" repeat-gap="450" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
  </rule>

  <!-- Schitouren (skitour) (Fläche), siehe Ski-Tour-area.ods -->

  <rule cat="skitour" e="way" k="piste:type" v="skitour" closed="yes" zoom-min="13">
    <!-- nur für Test: <caption k="piste:difficulty" font-size="6" dy="-4" priority="100" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3"/> -->
    <!-- nur für Test: <caption k="piste:grooming" font-size="6" dy="+4" priority="100" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3"/> -->

    <rule e="way" k="piste:difficulty" v="novice">                              <!-- Anfänger-Ski-Touren-Fläche:  grüne Ringe -->
      <line stroke="#5500FF00" stroke-width="1" dy="0" scale="none" />
      <area fill="#3300FF00" />
      <lineSymbol src="file:/symbols_winter/w_circle_gruen_ring.svg" symbol-height="8" symbol-width="8" dy="0" scale="none" priority="-107" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_lila.svg" symbol-height="24" symbol-width="24" dy="0" priority="-106" scale="none" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-105" repeat-start="50" repeat-gap="150" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+11" scale="none" display="always" priority="-108" repeat-start="75" repeat-gap="350" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="easy">                                <!-- Einfache Ski-Touren-Fläche:  blaue Ringe -->
      <line stroke="#550000FF" stroke-width="1" dy="0" scale="none" />
      <area fill="#330000FF" />
      <lineSymbol src="file:/symbols_winter/w_circle_blau_ring.svg" symbol-height="8" symbol-width="8" dy="0" scale="none" priority="-107" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_orange.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-106" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-105" repeat-start="50" repeat-gap="150" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+11" scale="none" display="always" priority="-108" repeat-start="75" repeat-gap="350" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="intermediate">                        <!-- Mittelschwere Ski-Touren-Fläche:  rote Ringe -->
      <line stroke="#55FF0000" stroke-width="1" dy="0" scale="none" />
      <area fill="#33FF0000" />
      <lineSymbol src="file:/symbols_winter/w_circle_rot_ring.svg" symbol-height="8" symbol-width="8" dy="0" scale="none" priority="-107" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_cyan.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-106" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-105" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+11" scale="none" display="always" priority="-108" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="advanced">                            <!-- Schwere Ski-Touren-Fläche:  schwarze Ringe -->
      <line stroke="#55000000" stroke-width="1" dy="0" scale="none" />
      <area fill="#33000000" />
      <lineSymbol src="file:/symbols_winter/w_circle_schwarz_ring.svg" symbol-height="8" symbol-width="8" dy="0" scale="none" priority="-107" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_orange.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-106" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-105" repeat-start="50" repeat-gap="150" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+11" scale="none" display="always" priority="-108" repeat-start="75" repeat-gap="350" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="expert">                              <!-- Sehr schwere Ski-Touren-Fläche:  orange Ringe -->
      <line stroke="#66FFBB00" stroke-width="1" dy="0" scale="none" />
      <area fill="#33FFBB00" />                                                 <!-- orange Fläche -->
      <lineSymbol src="file:/symbols_winter/w_circle_orange_ring.svg" symbol-height="8" symbol-width="8" dy="0" scale="none" priority="-107" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_blau.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-106" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-105" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+11" scale="none" display="always" priority="-108" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="freeride">                            <!-- Extreme Ski-Touren-Fläche:  orange Ringe auf gelber Linie, mit Achtung-Symbol -->
      <line stroke="#66FFBB00" stroke-width="2" dy="0" scale="none" />
      <area fill="#33FFFF00" />                                                 <!-- gelbe Fläche -->
      <lineSymbol src="file:/symbols_winter/w_circle_orange_ring.svg" symbol-height="8" symbol-width="8" dy="0" scale="none" priority="-107" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <lineSymbol src="file:/symbols_winter/w_achtung.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-80" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_blau.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-106" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-105" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+11" scale="none" display="always" priority="-108" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:difficulty" v="~">                                   <!-- Ski-Touren-Fläche:  unbekannte Schwierigkeit, lila Ringe -->
      <line stroke="#55FF00FF" stroke-width="1" dy="0" scale="none" />
      <area fill="#33FF00FF" />
      <lineSymbol src="file:/symbols_winter/w_circle_lila_ring.svg" symbol-height="8" symbol-width="8" dy="0" scale="none" priority="-107" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <!-- kein Symbol, da viele Touren ohne Angabe -->
      <!-- <lineSymbol src="file:/symbols_winter/w_unbekannt_cyan.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-87" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" /> -->
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_skitour_gruen.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-106" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-105" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="+11" scale="none" display="always" priority="-108" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
  </rule>

  <!-- Langlauf Loipen (nordic) (nur Linie), siehe Ski-Langlauf.ods -->

  <rule cat="skiloipe" e="way" k="piste:type" v="nordic" zoom-min="13">
    <!-- nur für Test: <caption k="piste:difficulty" font-size="6" dy="-4" priority="100" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3"/> -->
    <!-- nur für Test: <caption k="piste:grooming" font-size="6" dy="-12" priority="100" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3"/> -->

    <!-- Anfänger Langlauf-Loipe:  gruen -->
    <rule e="way" k="piste:difficulty" v="novice">
      <rule e="way" k="piste:grooming" v="~">                                                                 <!-- Loipe, Spur unbekannt -->
        <line stroke="#AA00FF00" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="5,40" />             <!-- .... weisse Punkte -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_lila.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="classic|scooter">                                                   <!-- Klassische Loipe -->
        <line stroke="#AA00FF00" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="5,5" />              <!-- .... weiss gepunktet -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_lila.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="skating">                                                           <!-- Skating Loipe -->
        <line stroke="#AA00FF00" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="40,5" />             <!-- .... weiss gestrichelt -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_lila.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="classic+skating|classic;skating">                                   <!-- Klassische und Skating Loipe -->
        <line stroke="#AA00FF00" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="40,5,5,5,5,5,5,5" /> <!-- .... weiss Strich-Punkt-Punkt -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_lila.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#00FF00" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
    </rule>

    <!-- Einfache Langlauf-Loipe:  blau -->
    <rule e="way" k="piste:difficulty" v="easy">
      <rule e="way" k="piste:grooming" v="~">                                                                 <!-- Loipe, Spur unbekannt -->
        <line stroke="#AA0000FF" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="5,40" />             <!-- .... weisse Punkte -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_orange.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="classic|scooter">                                                   <!-- Klassische Loipe -->
        <line stroke="#AA0000FF" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="5,5" />              <!-- .... weiss gepunktet -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_orange.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="skating">                                                           <!-- Skating Loipe -->
        <line stroke="#AA0000FF" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="40,5" />             <!-- .... weiss gestrichelt -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_orange.svg" symbol-height="24" symbol-width="24" dy="-8" priority="-111" scale="none" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="classic+skating|classic;skating">                                   <!-- Klassische und Skating Loipe -->
        <line stroke="#AA0000FF" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="40,5,5,5,5,5,5,5" /> <!-- .... weiss Strich-Punkt-Punkt -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_orange.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
    </rule>

    <!-- Mittelschwere Langlauf-Loipe:  rot -->
    <rule e="way" k="piste:difficulty" v="intermediate">
      <rule e="way" k="piste:grooming" v="~">                                                                 <!-- Loipe, Spur unbekannt -->
        <line stroke="#AAFF0000" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="5,40" />             <!-- .... weisse Punkte -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_cyan.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="classic|scooter">                                                   <!-- Klassische Loipe -->
        <line stroke="#AAFF0000" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="5,5" />              <!-- .... weiss gepunktet -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_cyan.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="skating">                                                           <!-- Skating Loipe -->
        <line stroke="#AAFF0000" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="40,5" />             <!-- .... weiss gestrichelt -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_cyan.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="classic+skating|classic;skating">                                   <!-- Klassische und Skating Loipe -->
        <line stroke="#AAFF0000" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="40,5,5,5,5,5,5,5" /> <!-- .... weiss Strich-Punkt-Punkt -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_cyan.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF0000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
    </rule>

    <!-- Schwere Langlauf-Loipe:  schwarz -->
    <rule e="way" k="piste:difficulty" v="advanced">
      <rule e="way" k="piste:grooming" v="~">                                                                 <!-- Loipe, Spur unbekannt -->
        <line stroke="#AA000000" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFF00" stroke-width="2" dy="-8" scale="none" stroke-dasharray="5,40" />             <!-- .... gelb gestrichelt -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_orange.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="classic|scooter">                                                   <!-- Klassische Loipe -->
        <line stroke="#AA000000" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFF00" stroke-width="2" dy="-8" scale="none" stroke-dasharray="5,5" />              <!-- .... gelb gepunktet -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_orange.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="skating">                                                           <!-- Skating Loipe -->
        <line stroke="#AA000000" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFF00" stroke-width="2" dy="-8" scale="none" stroke-dasharray="40,5" />             <!-- .... gelb Strichpunkt -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_orange.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="classic+skating|classic;skating">                                   <!-- Klassische und Skating Loipe -->
        <line stroke="#AA000000" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFF00" stroke-width="2" dy="-8" scale="none" stroke-dasharray="40,5,5,5,5,5,5,5" /> <!-- .... gelb Strich-Punkt-Punkt -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_orange.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
    </rule>

    <!-- Sehr schwere bzw. extreme Langlauf-Loipe:  schwarz (mit Achtung-Symbol) -->
    <rule e="way" k="piste:difficulty" v="expert|freeride">
      <rule e="way" k="piste:grooming" v="~">                                                                 <!-- Loipe, Spur unbekannt -->
        <line stroke="#AA000000" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFF00" stroke-width="2" dy="-8" scale="none" stroke-dasharray="5,40" />             <!-- .... gelb gestrichelt -->
        <lineSymbol src="file:/symbols_winter/w_achtung.svg" symbol-height="24" symbol-width="24" dy="-8" priority="-80" scale="none" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_orange.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="classic|scooter">                                                   <!-- Klassische Loipe -->
        <line stroke="#AA000000" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFF00" stroke-width="2" dy="-8" scale="none" stroke-dasharray="5,5" />              <!-- .... gelb gepunktet -->
        <lineSymbol src="file:/symbols_winter/w_achtung.svg" symbol-height="24" symbol-width="24" dy="-8" priority="-80" scale="none" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_orange.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="skating">                                                           <!-- Skating Loipe -->
        <line stroke="#AA000000" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFF00" stroke-width="2" dy="-8" scale="none" stroke-dasharray="40,5" />             <!-- .... gelb Strichpunkt -->
        <lineSymbol src="file:/symbols_winter/w_achtung.svg" symbol-height="24" symbol-width="24" dy="-8" priority="-80" scale="none" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_orange.svg" symbol-height="24" symbol-width="24" dy="-19" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="classic+skating|classic;skating">                                   <!-- Klassische und Skating Loipe -->
        <line stroke="#AA000000" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFF00" stroke-width="2" dy="-8" scale="none" stroke-dasharray="40,5,5,5,5,5,5,5" /> <!-- .... gelb Strich-Punkt-Punkt -->
        <lineSymbol src="file:/symbols_winter/w_achtung.svg" symbol-height="24" symbol-width="24" dy="-8" priority="-80" scale="none" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_orange.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-111" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-110" repeat-start="50" repeat-gap="150" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-113" repeat-start="75" repeat-gap="350" font-style="italic" fill="#000000" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
    </rule>

    <!-- Langlauf-Loipe, Schwierigkeit unbekannt:  lila, evtl. eine Doublette, #33 bzw. #66 statt #AA -->
    <rule e="way" k="piste:difficulty" v="~">
      <rule e="way" k="piste:grooming" v="~">                                                                 <!-- Loipe, Spur unbekannt -->
        <!--
          evtl. eine Doublette, daher nur ganz dezent anzeigen, #33 bzw. #66 statt #AA
          den Namen aber normal anzeigen, da dieser beim Original manchmal fehlt Ursache für die Doublette
        -->
        <line stroke="#33FF00FF" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="5,40" />             <!-- .... weisse Punkte -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_gruen.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-116" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-115" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-118" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="classic|scooter">                                                   <!-- Klassische Loipe -->
        <line stroke="#66FF00FF" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="5,5" />              <!-- .... weiss gepunktet -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_gruen.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-116" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-115" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-118" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="skating">                                                           <!-- Skating Loipe -->
        <line stroke="#66FF00FF" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="40,5" />             <!-- .... weiss gestrichelt -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_gruen.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-116" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-115" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-118" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <rule e="way" k="piste:grooming" v="classic+skating|classic;skating">                                   <!-- Klassische und Skating Loipe -->
        <line stroke="#66FF00FF" stroke-width="6" dy="-8" scale="none" />
        <line stroke="#AAFFFFFF" stroke-width="2" dy="-8" scale="none" stroke-dasharray="40,5,5,5,5,5,5,5" /> <!-- .... weiss Strich-Punkt-Punkt -->
        <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
          <lineSymbol src="file:/symbols_winter/w_langlauf_gruen.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-116" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
        </rule>
        <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
          <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-115" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
        <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
          <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-118" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
        </rule>
      </rule>
      <!-- kein Symbol, da viele Touren ohne Angabe -->
      <!-- <lineSymbol src="file:/symbols_winter/w_unbekannt_cyan.svg" symbol-height="24" symbol-width="24" dy="-6" scale="none" priority="-80" repeat-start="10" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" /> -->
    </rule>
  </rule>

  <!-- Winter / Schneeschuh-Wanderung (hike) (keine Flächen), siehe Winterwandern.ods -->
  <rule cat="schneeschuh" e="way" k="piste:type" v="hike" zoom-min="13">
    <rule e="way" k="piste:grooming" v="classic">                                                   <!-- Winter-Wanderung:  violett-weisse 4-Ecke -->
      <line stroke="#449F009F" stroke-width="6" dy="-8" scale="none" />
      <lineSymbol src="file:/symbols_winter/w_4eck_violett_weiss.svg" symbol-height="8" symbol-width="8" dy="-8" scale="none" priority="-122" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_winterwandern_cyan.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-121" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-120" repeat-start="50" repeat-gap="150" font-style="italic" fill="#9F009F" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-124" repeat-start="75" repeat-gap="350" font-style="italic" fill="#9F009F" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:grooming" v="backcountry|~">                                             <!-- Schneeschuh-Wanderung:  lila 4-Eck-Frames -->
      <line stroke="#44FF00FF" stroke-width="6" dy="-8" scale="none" />
      <lineSymbol src="file:/symbols_winter/w_4eck_lila_frame.svg" symbol-height="8" symbol-width="8" dy="-8" scale="none" priority="-122" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_schneeschuh_cyan.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-121" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-120" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-124" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
  </rule>

  <!-- Rodel-Bahn (sled), siehe Rodel-Tour-way.ods bzw. siehe Rodel-Tour-area.ods -->
  <rule cat="rodeln" e="way" k="piste:type" v="sled" closed="no" zoom-min="13">
    <rule e="way" k="piste:grooming" v="classic|~">                                                 <!-- Natur Rodel-Bahn: lila Dreieck Frames -->
      <line stroke="#44FF00FF" stroke-width="6" dy="-8" scale="none" />
      <lineSymbol src="file:/symbols_winter/w_3eck_lila_frame.svg" symbol-height="8" symbol-width="8" dy="-8" scale="none" priority="-132" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_rodel_cyan.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-131" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-130" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-134" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:grooming" v="backcountry">                                               <!-- unpräparierte Rodel-Bahn: lila Dreieck weiss gefüllt -->
      <line stroke="#44FF00FF" stroke-width="6" dy="-8" scale="none" />
      <lineSymbol src="file:/symbols_winter/w_3eck_lila_weiss.svg" symbol-height="8" symbol-width="8" dy="-8" scale="none" priority="-132" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_rodel_cyan.svg" symbol-height="24" symbol-width="24" dy="-8" scale="none" priority="-131" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="-8" scale="none" display="always" priority="-130" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-19" scale="none" display="always" priority="-134" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
  </rule>
  <rule cat="rodeln" e="way" k="piste:type" v="sled" closed="yes" zoom-min="13">
    <rule e="way" k="piste:grooming" v="classic|~">                                                 <!-- Natur Rodel-Fläche: lila Dreieck Frames -->
      <line stroke="#55FF00FF" stroke-width="1" dy="0" scale="none" />
      <area fill="#33FF00FF" />
      <lineSymbol src="file:/symbols_winter/w_3eck_lila_frame.svg" symbol-height="8" symbol-width="8" dy="0" scale="none" priority="-137" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_rodel_cyan.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-136" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-135" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-139" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
    <rule e="way" k="piste:grooming" v="backcountry">                                               <!-- unpräparierte Rodel-Fläche: lila Dreieck weiss gefüllt -->
      <line stroke="#55FF00FF" stroke-width="1" dy="0" scale="none" />
      <area fill="#33FF00FF" />
      <lineSymbol src="file:/symbols_winter/w_3eck_lila_weiss.svg" symbol-height="8" symbol-width="8" dy="0" scale="none" priority="-137" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
      <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
        <lineSymbol src="file:/symbols_winter/w_rodel_cyan.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-136" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
      </rule>
      <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
        <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-135" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
      <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
        <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-139" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FF00FF" stroke="#E5FFFFFF" stroke-width="3" />
      </rule>
    </rule>
  </rule>

  <!-- Hunde/Motor-Schlitten (sleigh), siehe Rodel-Tour-way.ods bzw. siehe Rodel-Tour-area.ods -->
  <rule cat="hundeschlitten" e="way" k="piste:type" v="sleigh" closed="no" zoom-min="13">           <!-- Hunde/Motor-Schlitten: violette Dreiecke -->
    <line stroke="#449F009F" stroke-width="6" dy="+8" scale="none" />
    <lineSymbol src="file:/symbols_winter/w_3eck_violett.svg" symbol-height="8" symbol-width="8" dy="+8" scale="none" priority="-142" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
    <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
      <lineSymbol src="file:/symbols_winter/w_hundeschlitten_cyan.svg" symbol-height="24" symbol-width="24" dy="+8" scale="none" priority="-141" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
    <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
      <pathText k="ref" font-size="8" dy="+8" scale="none" display="always" priority="-140" repeat-start="50" repeat-gap="150" font-style="italic" fill="#9F009F" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
    <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
      <pathText k="name" font-size="6" dy="+19" scale="none" display="always" priority="-144" repeat-start="75" repeat-gap="350" font-style="italic" fill="#9F009F" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
  </rule>
  <rule cat="hundeschlitten" e="way" k="piste:type" v="sleigh" closed="yes" zoom-min="13">          <!-- Hunde/Motor-Schlitten Fläche: violette Dreiecke -->
    <line stroke="#559F009F" stroke-width="1" dy="0" scale="none" />
    <area fill="#339F009F" />
    <lineSymbol src="file:/symbols_winter/w_3eck_violett.svg" symbol-height="8" symbol-width="8" dy="0" scale="none" priority="-147" repeat-start="0" repeat-gap="20" align-center="true" repeat="true" symbol-percent="100" />
    <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
      <lineSymbol src="file:/symbols_winter/w_hundeschlitten_cyan.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-146" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
    <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
      <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-145" repeat-start="50" repeat-gap="150" font-style="italic" fill="#9F009F" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
    <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
      <pathText k="name" font-size="6" dy="+11" scale="none" display="always" priority="-149" repeat-start="75" repeat-gap="350" font-style="italic" fill="#9F009F" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
  </rule>

  <!-- Eislaufen (ice_skate), siehe Eislauf.ods -->
  <rule cat="eislaufen" e="way" k="piste:type" v="ice_skate" closed="no" zoom-min="13">             <!-- Eislauf-Tour cyan/blau gestrichelt -->
    <line stroke="#AA00FFFF" stroke-width="6" dy="0" scale="none" stroke-dasharray="10,10" />
    <line stroke="#AA0000FF" stroke-width="6" dy="0" scale="none" stroke-dasharray="0,10,10,0" />
    <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
      <lineSymbol src="file:/symbols_winter/w_eislauf_orange.svg" dy="0" symbol-height="24" symbol-width="24" scale="none" priority="-151" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
    <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
      <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-150" repeat-start="50" repeat-gap="150" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
    <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
      <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-153" repeat-start="75" repeat-gap="350" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
  </rule>
  <rule cat="eislaufen" e="way" k="piste:type" v="ice_skate" closed="yes" zoom-min="13">            <!-- Eislauf-Fläche + Linie cyan/blau gestrichelt -->
    <line stroke="#AA00FFFF" stroke-width="2" dy="0" scale="none" stroke-dasharray="10,10" />
    <line stroke="#AA0000FF" stroke-width="2" dy="0" scale="none" stroke-dasharray="0,10,10,0" />
    <area fill="#3300FFFF" />                                                                       <!-- Eislauf-Fläche cyan -->
    <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
      <lineSymbol src="file:/symbols_winter/w_eislauf_orange.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-156" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
    <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
      <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-155" repeat-start="50" repeat-gap="150" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
    <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
      <pathText k="name" font-size="6" dy="11" scale="none" display="always" priority="-158" repeat-start="75" repeat-gap="350" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
  </rule>
  <rule cat="eislaufen" e="any" k="leisure" v="ice_rink" closed="any" zoom-min="13">                <!-- Linie cyan/blau gestrichelt -->
    <line stroke="#AA00FFFF" stroke-width="2" dy="0" scale="none" stroke-dasharray="10,10" />
    <line stroke="#AA0000FF" stroke-width="2" dy="0" scale="none" stroke-dasharray="0,10,10,0" />
    <area fill="#3300FFFF" />                                                                       <!-- Eislauf-Fläche cyan -->
    <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
      <lineSymbol src="file:/symbols_winter/w_eislauf_orange.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-156" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
    <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
      <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-155" repeat-start="50" repeat-gap="150" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
    <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
      <pathText k="name" font-size="6" dy="11" scale="none" display="always" priority="-158" repeat-start="75" repeat-gap="350" font-style="italic" fill="#0000FF" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
  </rule>

  <!-- Schneepark, Rampen (snow_park) (nur Fläche), siehe Halfpipe.ods -->
  <rule cat="schneepark" e="way" k="piste:type" v="snow_park" closed="any" zoom-min="13">           <!-- Linie gelb/orange gestrichelt -->
    <line stroke="#AAFFFF00" stroke-width="2" dy="0" scale="none" stroke-dasharray="10,10" />
    <line stroke="#AAFFBB00" stroke-width="2" dy="0" scale="none" stroke-dasharray="0,10,10,0" />
    <area fill="#33FFFF00" />                                                                       <!-- Fläche gelb gefüllt -->
    <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
      <lineSymbol src="file:/symbols_winter/w_halfpipe_cyan.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-161" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
    <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
      <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-2160" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
    <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
      <pathText k="name" font-size="6" dy="11" scale="none" display="always" priority="-163" repeat-start="75" repeat-gap="350" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
  </rule>

  <!-- Halfpipe (Linie, Fläche) bis Mapsforge V4 ===> evtl. ab V5 entfernen, siehe Halfpipe.ods -->
  <rule cat="halfpipe" e="way" k="man_made" v="piste:halfpipe" closed="no" zoom-min="13">           <!-- Linie gelb/orange gestrichelt -->
    <line stroke="#AAFFFF00" stroke-width="6" dy="0" scale="none" stroke-dasharray="10,10" />
    <line stroke="#AAFFBB00" stroke-width="6" dy="0" scale="none" stroke-dasharray="0,10,10,0" />
    <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
      <lineSymbol src="file:/symbols_winter/w_halfpipe_cyan.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-161" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
    <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
      <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-160" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
    <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
      <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-163" repeat-start="50"  repeat-gap="500" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
  </rule>
  <rule cat="halfpipe" e="way" k="man_made" v="piste:halfpipe" closed="yes" zoom-min="13">          <!-- Linie gelb/orange gestrichelt -->
    <line stroke="#AAFFFF00" stroke-width="2" dy="0" scale="none" stroke-dasharray="10,10" />
    <line stroke="#AAFFBB00" stroke-width="2" dy="0" scale="none" stroke-dasharray="0,10,10,0" />
    <area fill="#33FFFF00" />                                                                       <!-- Fläche gelb gefüllt -->
    <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
      <lineSymbol src="file:/symbols_winter/w_halfpipe_cyan.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-166" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
    <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
      <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-165" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
    <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
      <pathText k="name" font-size="6" dy="11" scale="none" display="always" priority="-168" repeat-start="50"  repeat-gap="500" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
  </rule>

  <!-- Halfpipe (Linie, Fläche) ab Mapsforge V5, siehe Halfpipe.ods -->
  <rule cat="halfpipe" e="way" k="piste:type" v="halfpipe" closed="no" zoom-min="13">               <!-- Linie gelb/orange gestrichelt -->
    <line stroke="#AAFFFF00" stroke-width="6" dy="0" scale="none" stroke-dasharray="10,10" />
    <line stroke="#AAFFBB00" stroke-width="6" dy="0" scale="none" stroke-dasharray="0,10,10,0" />
    <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
      <lineSymbol src="file:/symbols_winter/w_halfpipe_cyan.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-161" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
    <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
      <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-160" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
    <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
      <pathText k="name" font-size="6" dy="-11" scale="none" display="always" priority="-163" repeat-start="75"  repeat-gap="350" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
  </rule>
  <rule cat="halfpipe" e="way" k="piste:type" v="halfpipe" closed="yes" zoom-min="13">              <!-- Linie gelb/orange gestrichelt -->
    <line stroke="#AAFFFF00" stroke-width="2" dy="0" scale="none" stroke-dasharray="10,10" />
    <line stroke="#AAFFBB00" stroke-width="2" dy="0" scale="none" stroke-dasharray="0,10,10,0" />
    <area fill="#33FFFF00" />                                                                       <!-- Fläche gelb gefüllt -->
    <rule cat="winter_symbol" e="way" k="*" v="*" zoom-min="14">
      <lineSymbol src="file:/symbols_winter/w_halfpipe_cyan.svg" symbol-height="24" symbol-width="24" dy="0" scale="none" priority="-166" repeat-start="0" repeat-gap="100" align-center="true" repeat="true" symbol-percent="100" />
    </rule>
    <rule cat="winter_reference" e="way" k="*" v="*" zoom-min="14">
      <pathText k="ref" font-size="8" dy="0" scale="none" display="always" priority="-165" repeat-start="50" repeat-gap="150" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
    <rule cat="winter_namen" e="way" k="*" v="*" zoom-min="14">
      <pathText k="name" font-size="6" dy="11" scale="none" display="always" priority="-168" repeat-start="50"  repeat-gap="500" font-style="italic" fill="#FFBB00" stroke="#E5FFFFFF" stroke-width="3" />
    </rule>
  </rule>

  <!-- Ende Wintersport-Ergänzungen -->
</xsl:template>

</xsl:stylesheet>
