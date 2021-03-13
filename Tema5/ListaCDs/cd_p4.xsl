<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name="tiempo">180</xsl:variable>
<xsl:template match="/">
    <html>
        <body>
            <h1>Canciones de duración menor de <xsl:value-of select="$tiempo"/> segundos</h1>
            <table border="1">
                <tr bgcolor="#707887">
                    <th>Titulo</th>
                    <th>Artista</th>
                    <th>Sello</th>
                    <th>Año de publicación</th>
                    <th>Canciones</th>
                </tr>
                <xsl:for-each select="cdteca/cd/cancion">
                <xsl:if test="@tiempo &lt; 180">
                <tr> 
                    <td><xsl:value-of select="../titulo"/></td>
                    <td><xsl:value-of select="../artista"/></td>
                    <td><xsl:value-of select="../sello"/></td>
                    <td><xsl:value-of select="../anyo"/></td>
                    <td><xsl:value-of select="."/></td>
                    <td><xsl:value-of select="@tiempo"/></td>
                </tr>
                </xsl:if>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>