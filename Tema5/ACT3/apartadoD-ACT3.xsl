<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:for-each select="raiz/registro">
            <xsl:sort select="fecha/@when" order="ascending" data-type="text"/>
            <xsl:text>&#xA;</xsl:text>(<xsl:value-of select="id"/>) <xsl:value-of select="titulo"/> <xsl:text>, </xsl:text> <xsl:value-of select="fecha/@when"/><xsl:text>&#xA;</xsl:text>
            <xsl:for-each select="texto/p">
                <xsl:value-of select="."/><xsl:text>&#xA;</xsl:text>
            </xsl:for-each><xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>