<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
		<html>
			<head>
				<title> Alumnos Aprobados </title>
				<link rel="stylesheet" href="notas.css"/>
			</head>
			<body>
				<h1>
					<xsl:value-of select="instituto/@nombre"/>
				</h1>
				<h2>
					Alumnos Aprobados
				</h2>
				<xsl:apply-templates select="//modulo"/>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="modulo">
		<div id="cicle_module">
			<b> CICLO: </b> <xsl:value-of select="./@ciclo"/>
			<br></br>
			<b> MODULO: </b> <xsl:value-of select="./@nombre"/>
		</div>
		<ul>
			<xsl:apply-templates/>
		</ul>
	</xsl:template>
	
	<xsl:template match="alumno[nota >= 5]">
		<li> <span>
			<xsl:value-of select="./nombre"/>
			</span>
			<xsl:text> </xsl:text>
			<b> <xsl:value-of select="./nota"/> </b>
		</li>
	</xsl:template>
	<xsl:template match="alumno[nota&lt;5]"></xsl:template>
</xsl:stylesheet>