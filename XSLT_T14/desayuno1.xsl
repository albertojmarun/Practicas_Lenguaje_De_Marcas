<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/carta">
    <xsl:text disable-output-escaping="yes"> &lt;!DOCTYPE html&gt; </xsl:text>
        <html lang="es">
            <head>
                <link rel="stylesheet" href="desayuno.css"/>
            </head>
            <body>
                <table>
                    <th> Nombre </th>
                    <th> Precio </th>
                    <xsl:for-each select="desayuno">
                        <tr>
                        <xsl:choose>
                            <xsl:when test="precio&lt;5">
                                <xsl:element name="td">
                                    <xsl:attribute name="class"> less_than </xsl:attribute>
                                    <xsl:value-of select="nombre"/>
                                </xsl:element>
                            </xsl:when>
                            <xsl:when test="precio>=5">
                                <td class="greater_than">
                                    <xsl:value-of select="nombre"/>
                                </td>
                            </xsl:when>
                        </xsl:choose>
                            
                            <td> <xsl:value-of select="precio"/> </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>