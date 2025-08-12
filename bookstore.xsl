<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
  <xsl:template match="/">
    <html>
    <head>
        <title>Bookstore</title>
        <style>
            table { border-collapse: collapse; width: 70%; margin: 20px auto; }
            th, td { border: 1px solid #333; padding: 10px; text-align: left; }
            th { background-color: #f2f2f2; }
        </style>
    </head>
    <body>
        <h2 style="text-align:center;">📚 Book List</h2>
        <table>
          <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
            <th>Genre</th>
          </tr>
          <xsl:for-each select="bookstore/book">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="genre"/></td>
            </tr>
          </xsl:for-each>
        </table>
    </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
