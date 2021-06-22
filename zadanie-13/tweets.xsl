<?xml version="1.0" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="tweetsResponse">
    <html>
      <style>
            table {
              font-family: arial, sans-serif;
              border-collapse: collapse;
              width: 100%;
            }
            
            td, th {
              border: 1px solid #dddddd;
              text-align: left;
              padding: 8px;
            }
            
            tr:nth-child(even) {
              background-color: #dddddd;
            }
      </style>
      <body>
        <table>
          <xsl:call-template name="header"/>
          <xsl:apply-templates select="tweet"/>
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template name="header">
    <th>id</th>
    <th>author</th>
    <th>date</th>
    <th>numberOfRetweets</th>
    <th>numberOfQuotes</th>
    <th>numberOfLikes</th>
    <th>length</th>
    <th>location</th>
  </xsl:template>
  <xsl:template match="tweet">
    <tr>
      <td>
        <xsl:value-of select="id"/>
      </td>
      <td>
        <xsl:value-of select="author"/>
      </td>
      <td>
        <xsl:value-of select="date"/>
      </td>
      <td>
        <xsl:value-of select="numberOfRetweets"/>
      </td>
      <td>
        <xsl:value-of select="numberOfQuotes"/>
      </td>
      <td>
        <xsl:value-of select="numberOfLikes"/>
      </td>
      <td>
        <xsl:value-of select="length"/>
      </td>
      <td>
        <xsl:value-of select="location"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>