<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">
<html>
	<TABLE width="770" >
		<!--<TR STYLE="font-size:14px; font-family:Arial, Helvetica, sans-serif; font-weight:bold">
			<TD>Symbol</TD>
			<TD>Date</TD>	 
			<TD>Time</TD>
			<TD>Trade</TD>
			<TD>% Chg</TD>
			<TD>Bid</TD>
			<TD>Ask</TD> 
			<TD>Volume</TD>
			<TD>High</TD>
			<TD>Low</TD>
		</TR>-->
    
		<xsl:for-each select="StockQuotes/Stock">
		<TR >
			<TD>
				<xsl:value-of select="Symbol" />
			</TD>
			<!--<TD>
				<xsl:value-of select="Date" />
			</TD>	
			<TD>
				<xsl:value-of select="Time" />
			</TD>-->
			<TD>
				<xsl:value-of select="Last" />
			</TD>
			<TD>
				<xsl:value-of select="Change" /> 
			</TD>
      <td class="td-graph">
      </td>
			<!--<TD>
				<xsl:value-of select="Bid" />
			</TD>
			<TD>
				<xsl:value-of select="Ask" />
			</TD>
			<TD>	 
				<xsl:value-of select="Volume" /> 
			</TD>
			<TD>
				<xsl:value-of select="High" />
			</TD>
			<TD>
				<xsl:value-of select="Low" />
			</TD> -->
      </TR>
		</xsl:for-each>
	</TABLE>
</html>
</xsl:template>
</xsl:stylesheet>