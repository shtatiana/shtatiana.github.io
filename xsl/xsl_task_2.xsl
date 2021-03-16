<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

<xsl:template match="/">
	<xsl:variable name="width">
    	<xsl:value-of select="/root/графика/@ширина"/>
  	</xsl:variable>
  	<xsl:variable name="height">
    	<xsl:value-of select="/root/графика/@высота"/>
  	</xsl:variable>
	<svg width="{$width}" height="{$height}">
	<xsl:apply-templates select="/root/графика/эллипс"/>
	</svg>
</xsl:template>

<xsl:template match="эллипс">
	<xsl:variable name="color">
    	<xsl:value-of select="./@заливка"/>
  	</xsl:variable>
  <xsl:variable name="line">
    	<xsl:value-of select="./@ободок"/>
  	</xsl:variable>
  <xsl:variable name="b_line">
    	<xsl:value-of select="./@ширина-ободка"/>
  	</xsl:variable>
  <xsl:variable name="ry">
    	<xsl:value-of select="./@ry"/>
  	</xsl:variable>
  <xsl:variable name="cy">
    	<xsl:value-of select="./@cy"/>
  	</xsl:variable>
  <xsl:variable name="rx">
    	<xsl:value-of select="./@rx"/>
  	</xsl:variable>
  <xsl:variable name="cx">
    	<xsl:value-of select="./@cx"/>
  	</xsl:variable>
	<ellipse cx="{$cx}" cy="{$cy}" rx="{$rx}" ry="{$ry}" style="fill:{$color}; stroke:{$line}; stroke-width:{$b_line}"/>
</xsl:template>

</xsl:stylesheet>
