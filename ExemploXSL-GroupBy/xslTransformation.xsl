<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <receipts>
    <xsl:for-each-group select="receipts/receipt" group-by="id">
      <receipt>
        <id><xsl:value-of select="id"/></id>
        <products>
          <xsl:for-each select="current-group()">
            <product><xsl:value-of select="product"/></product>
          </xsl:for-each>
        </products>
      </receipt>
    </xsl:for-each-group>
  </receipts>
</xsl:template>

</xsl:stylesheet>