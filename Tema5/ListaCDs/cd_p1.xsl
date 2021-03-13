<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1>Discos mudicales</h1>
            <table border="1">
                <tr bgcolor="#707887">
                    <th>Titulo</th>
                    <th>Artista</th>
                    <th>Sello</th>
                    <th>Año de publicación</th>
                    <th>Canciones</th>
                </tr>
                <xsl:for-each select="cdteca/cd">
                <tr>
                    <td><xsl:value-of select="titulo"/></td>
                    <td><xsl:value-of select="artista"/></td>
                    <td><xsl:value-of select="sello"/></td>
                    <td><xsl:value-of select="anyo"/></td>
                    <td>
                        <ol>
                            <xsl:for-each select="cancion">
                            <li><xsl:value-of select="."/></li>
                            </xsl:for-each>
                        </ol>
                    </td>
                </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
