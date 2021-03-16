<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

<xsl:template match="/">
<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
	<xsl:for-each select="*">
		<xsl:apply-templates select="."/>
	</xsl:for-each>
</math>
</xsl:template>
  
<xsl:template match="операнд">
	<mi><xsl:value-of select="."/></mi>
</xsl:template>
<xsl:template match="оператор">
	<mo><xsl:value-of select="."/></mo>
</xsl:template>
<xsl:template match="строка">
	<mrow>
		<xsl:for-each select="*">
			<xsl:apply-templates select="."/>
		</xsl:for-each>
	</mrow>
</xsl:template>
<xsl:template match="дробь">
	<mfrac>
		<xsl:for-each select="*">
			<xsl:apply-templates select="."/>
		</xsl:for-each>
	</mfrac>
</xsl:template>
<xsl:template match="число">
	<mn><xsl:value-of select="."/></mn>
</xsl:template>
<xsl:template match="корень">
	<mroot>
		<xsl:for-each select="*">
			<xsl:apply-templates select="."/>
		</xsl:for-each>
		<mn>2</mn>
	</mroot>
</xsl:template>
<xsl:template match="низверх">
	<munderover>
		<xsl:for-each select="*">
			<xsl:apply-templates select="."/>
		</xsl:for-each>
	</munderover>
</xsl:template>
<xsl:template match="верх">
	<msup>
		<xsl:for-each select="*">
			<xsl:apply-templates select="."/>
		</xsl:for-each>
	</msup>
</xsl:template>
<xsl:template match="низ">
	<msub>
		<xsl:for-each select="*">
			<xsl:apply-templates select="."/>
		</xsl:for-each>
	</msub>
</xsl:template>
  
</xsl:stylesheet>
