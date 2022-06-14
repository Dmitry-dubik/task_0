<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE stylesheet [
<!ENTITY UPPERCASE "ABCDEFGHIJKLMNOPQRSTUVWXYZ">
<!ENTITY LOWERCASE "abcdefghijklmnopqrstuvwxyz">
<!ENTITY UPPER_TO_LOWER " '&UPPERCASE;' , '&LOWERCASE;' ">
<!ENTITY LOWER_TO_UPPER " '&LOWERCASE;' , '&UPPERCASE;' ">
]>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
      <Lists>
      <h2>Names</h2>
            <Names>
                 <xsl:for-each select="Hotels/Hotel"> 
        
                <xsl:variable name="qstate" select="Address/State"> </xsl:variable>

                <xsl:variable name="qname" select="Name"> </xsl:variable>
            
                <xsl:if test="(contains(translate($qstate,&LOWER_TO_UPPER;), 'NEW YORK')) or (contains($qstate, 'NY'))">
                    <p>
                        <xsl:value-of select="$qname"/>
                    </p>
                </xsl:if>
    
        </xsl:for-each>
            </Names>
            <h2>Prices</h2>
            <Pirces>
                <xsl:for-each select="Hotels/Hotel"> 
        
                <xsl:variable name="qstate" select="Address/State"> </xsl:variable>
            
                <xsl:variable name="qprice" select="@Price"> </xsl:variable>
            
                <xsl:if test="(contains(translate($qstate,&LOWER_TO_UPPER;), 'NEW YORK')) or (contains($qstate, 'NY'))">
                     <p>
                        <xsl:value-of select="$qprice"/>
                     </p>
                 </xsl:if>
    
        </xsl:for-each>
            </Pirces>
            <h2>Addreses</h2>
            <Addreses>
                <xsl:for-each select="Hotels/Hotel"> 
            
                <xsl:variable name="qstate" select="Address/State"> </xsl:variable>
                
                <xsl:variable name="qaddress" select="Address/AddressLine"> </xsl:variable>
                
                <xsl:if test="(contains(translate($qstate,&LOWER_TO_UPPER;), 'NEW YORK')) or (contains($qstate, 'NY'))">
                    <p>
                        <xsl:value-of select="$qaddress"/>
                    </p>
                </xsl:if>
    
        </xsl:for-each>
            </Addreses>
      </Lists>
    </xsl:template>
</xsl:transform>