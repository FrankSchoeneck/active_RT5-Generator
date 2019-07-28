<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="aerial">
		<!-- aerial ways -->
		<rule e="way" k="aerialway" v="*" zoom-min="10">
			<rule e="way" k="*" v="*" zoom-min="10" zoom-max="12">
				<rule e="way" k="aerialway" v="cable_car">
					<line stroke="#202020" stroke-width="0.5" stroke-linecap="butt" />
					<line stroke="#202020" stroke-width="2.0" stroke-dasharray="15,20" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="aerialway" v="chair_lift">
					<line stroke="#202020" stroke-width="0.6" stroke-linecap="butt" />
					<lineSymbol src="file:/symbols/drag_lift.svg" symbol-width="12" repeat="true" repeat-gap="6" />
				</rule>
				<rule e="way" k="aerialway" v="goods">
					<line stroke="#74746B" stroke-width="0.6" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="aerialway" v="gondola">
					<line stroke="#202020" stroke-width="0.6" stroke-linecap="butt" />
					<line stroke="#202020" stroke-width="2.5" stroke-dasharray="1,10" />
				</rule>
				<rule e="way" k="aerialway" v="drag_lift|zip_line">
					<line stroke="#202020" stroke-width="0.4" stroke-linecap="butt" />
				</rule>
			</rule>
			<rule e="way" k="*" v="*" zoom-min="13" >
				<rule e="way" k="aerialway" v="cable_car">
					<line stroke="#202020" stroke-width="0.5" stroke-linecap="butt" />
					<lineSymbol src="file:/symbols/cable_car.svg" symbol-width="18" repeat="true" repeat-gap="40" />
				</rule>
				<rule e="way" k="aerialway" v="chair_lift">
					<line stroke="#202020" stroke-width="0.4" stroke-linecap="butt" />
					<lineSymbol src="file:/symbols/chair_lift.svg" symbol-width="20" repeat="true" repeat-gap="40" />
				</rule>
				<rule e="way" k="aerialway" v="goods">
					<line stroke="#74746B" stroke-width="0.4" stroke-linecap="butt" />
					<lineSymbol src="file:/symbols/goods.svg" symbol-width="18" repeat="true" repeat-gap="40" />
				</rule>
				<rule e="way" k="aerialway" v="gondola">
					<line stroke="#74746B" stroke-width="0.5" stroke-linecap="butt" />
					<lineSymbol src="file:/symbols/gondola.svg" symbol-width="16" repeat="true" repeat-gap="50" />
				</rule>
				<rule e="way" k="aerialway" v="drag_lift">
					<line stroke="#202020" stroke-width="0.4" stroke-linecap="butt" />
					<lineSymbol src="file:/symbols/drag_lift.svg" symbol-width="16" repeat="true" repeat-gap="10" />
				</rule>
				<rule e="way" k="aerialway" v="zip_line">
					<line stroke="#202020" stroke-width="0.4" stroke-linecap="butt" />
				</rule>
			</rule>
			<rule e="way" k="aerialway" v="*" zoom-min="11">
				<pathText k="name" dy="-6" font-style="bold" font-size="10" fill="#606060" stroke="#E5FFFFFF" stroke-width="3.0" display="always" />
			</rule>
		</rule>
    </xsl:template>

</xsl:stylesheet>
