<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">
  <link rel="stylesheet" type="text/css" href="europe.css"/>

<html>
<head>
</head>
<body>

<!-- Правила преобразования XML-документа в HTML -->

<table>
<tr>
	<td class ='title'>Страна</td>
	<td class ='title'>Столица</td>
	<td class ='title'>Население</td>
	<td class ='title'>Площадь</td>
</tr>
<xsl:for-each select="//Страна">
<xsl:sort order="ascending" select="Название"/>
<xsl:if test="Площадь &lt; 200">
<tr>
    <td><xsl:value-of select="Название"/></td>
    <td><xsl:value-of select="Столица"/></td>
	<td class = 'number'><xsl:value-of select="Население"/></td>
	<td class = 'number'><xsl:value-of select="Площадь"/></td>
</tr>
</xsl:if>
</xsl:for-each>
</table>

<!-- ........................................... --> 

</body>
</html>

  </xsl:template>
</xsl:stylesheet>
