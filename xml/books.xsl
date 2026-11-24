<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Bookstore Information</title>
<style>
body {
font-family: Arial, sans-serif;
background-color: #f2f2f2;
padding: 30px;
}
h2 {
text-align: center;
color: darkblue;
}
table {
width: 90%;
margin: auto;
border-collapse: collapse;
background-color: white;
}
th, td {
border: 1px solid black;
padding: 12px;
text-align: center;
}
th {
background-color: navy;
color: white;
}
</style>
</head>
<body>
<h2>Bookstore Information</h2>
<table>
<tr>
<th>Title</th>
<th>Author</th>
<th>Year</th>
<th>Price</th>
<th>Category</th>
</tr>
<xsl:for-each select="bookstore/book">
<tr>
<td>
<xsl:value-of select="title"/>
</td>
<td>
<xsl:value-of select="author"/>
</td>
<td>
<xsl:value-of select="year"/>
</td>
<td>
<xsl:value-of select="price"/>
</td>
<td>
<xsl:value-of select="@category"/>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>