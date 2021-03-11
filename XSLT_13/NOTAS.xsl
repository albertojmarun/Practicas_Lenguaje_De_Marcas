<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:strip-space elements="notas del instituto"/>
	<xsl:template match="/">
		Listado de notas:
		<xsl:apply-templates select="//modulo[@nombre='LLMM']"/>
	</xsl:template>
	<xsl:template match="alumno[nota>='5']">
		<xsl:value-of select="nombre"/>
		<xsl:text> algo </xsl:text>
	</xsl:template>
</xsl:stylesheet>