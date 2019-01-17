<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output 
    doctype-public="-//Apple//DTD PLIST 1.0//EN"
    doctype-system="http://www.apple.com/DTDs/PropertyList-1.0.dtd"
    indent="yes"/>
  <xsl:strip-space elements="*" />
  
 
  <xsl:param name="debug-path"/>
  <xsl:param name="script-path"/>
  
  <xsl:template match="dict">    
    <xsl:copy>
      <xsl:copy-of select="@*|*"/>
      <xsl:if test="$script-path">
        <key>Program</key>
        <string><xsl:value-of select="$script-path"/></string>
      </xsl:if>
      <xsl:if test="$debug-path">
        <key>StandardErrorPath</key>
        <string><xsl:value-of select="concat($debug-path, '/debug.stderr')"/></string>
        <key>StandardOutPath</key>
        <string><xsl:value-of select="concat($debug-path, '/debug.stdout')"/></string>
      </xsl:if>
    </xsl:copy>      
  </xsl:template>
  
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>  
</xsl:stylesheet>