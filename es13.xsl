<?xml version="1.0" encoding="UTF-8"?>
 <!--studente: Matteo Gallini
    matricola: 559716
    corso: codifica di testi 2019-20-->
 <!-- Costruire un foglio di stile XSLT con alcune regole di trasformazione e lanciare il comando xsltproc sul terminale-->
 <xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:tei="http://www.tei-c.org/ns/1.0"
xmlns="http://www.w3.org/1999/xhtml">
 <xsl:output method="html" encoding="UTF-8" indent="yes" />
 <xsl:template match="/tei:TEI">
	 <html>
		 <head>
			 <title>Prova Lettere Bellini</title>
		 </head>
	 <h1>Header Tei</h1>
	 <h2></h2>
	 </html>
	 <xsl:apply-templates/>
 </xsl:template>
  <xsl:template match="tei:text">
	 <p><b>Solo un paragrafo</b></p>
	 <xsl:apply-templates/>
 </xsl:template>
  <xsl:template match="tei:teiHeader/tei:sourceDesc">
	 <h1>Info sorgente</h1>
	 <xsl:apply-templates/>
 </xsl:template>
 <xsl:template match="tei:text/tei:body">
	 <h1>Sono il corpo del testo</h1>
	 <xsl:apply-templates/>
 </xsl:template>   
 <xsl:template match="tei:div">
	 <i><p><xsl:value-of select="@type"/></p></i>
	 <xsl:apply-templates/>
 </xsl:template>
</xsl:stylesheet>
