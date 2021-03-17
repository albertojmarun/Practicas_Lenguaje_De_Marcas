<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <carta>
            <xsl:apply-templates/>
        </carta>
    </xsl:template>
    <xsl:template match="desayuno">
        <desayuno>
            <xsl:attribute name="calorias">
                <xsl:value-of select="calorias"/>
            </xsl:attribute>
            <nombre>
                <xsl:value-of select="nombre"/>
            </nombre>
            <precio>
                <xsl:value-of select="precio"/>
            </precio>
            <descripcion>
                <xsl:value-of select="descripcion"/>
            </descripcion>
            <xsl:element name="precio_con_iva">
                    <xsl:value-of select="precio"/>
                </xsl:element>
        </desayuno>
    </xsl:template>
</xsl:stylesheet>