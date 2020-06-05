<?xml version="1.0" encoding='UTF-8' ?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="yes"/>

<xsl:template match="/">
  <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
  <title>Witamy w warsztacie</title> 
  <body style="background-color: lightblue; font-family: verdana; font-size: 20px; margin: auto;"> 
  <h2>Warsztat samochodowy</h2>
    <table style="padding: 70px; border: 1px solid black;">
    <tr style="background-color: #9acd32;">
      <th>Imię</th>
      <th>Nazwisko</th>
      <th>PESEL</th>
      <th>Wynagrodzenie</th>
      <th>Stanowisko</th>
      <th>Miejscowość</th>
      <th>Ulica</th>
      <th>Kod Pocztowy</th>
    </tr>
    <xsl:for-each select="warsztat/pracownik">
    <tr>
      <td style="text-align:center"><xsl:value-of select="imie"/></td>
      <td style="text-align:center"><xsl:value-of select="nazwisko"/></td>
      <td style="text-align:center"><xsl:value-of select="PESEL"/></td>
      <td style="text-align:center"><xsl:value-of select="wynagrodzenie"/></td>
      <td style="text-align:center"><xsl:value-of select="stanowisko"/></td>
      <td style="text-align:center"><xsl:value-of select="adres/miejscowosc"/></td>
      <td style="text-align:center"><xsl:value-of select="adres/ulica"/><xsl:value-of select="adres/ulica/@nr"/></td>
      <td style="text-align:center"><xsl:value-of select="adres/kodPocztowy"/></td>
    </tr>
    </xsl:for-each>
  </table>

  <table style="padding: 70px; border: 1px solid black;">
    <tr style="background-color: yellow;">
      <th>Imię</th>
      <th>Nazwisko</th>
      <th>PESEL</th>
      <th>NIP</th>
      <th>Miejscowość</th>
      <th>Ulica</th>
      <th>Kod Pocztowy</th>
    </tr>
    <xsl:for-each select="warsztat/klient">
    <tr>
      <td style="text-align:center"><xsl:value-of select="imie"/></td>
      <td style="text-align:center"><xsl:value-of select="nazwisko"/></td>
      <td style="text-align:center"><xsl:value-of select="PESEL"/></td>
      <td style="text-align:center"> <xsl:value-of select="NIP"/> <br/> </td>
      <td style="text-align:center"><xsl:value-of select="adres/miejscowosc"/></td>
      <td style="text-align:center"><xsl:value-of select="adres/ulica"/><![CDATA[   ]]><xsl:value-of select="adres/ulica/@nr"/></td>
      <td style="text-align:center"><xsl:value-of select="adres/kodPocztowy"/></td>
    </tr>
    </xsl:for-each>
  </table>

  <table style="padding: 70px; border: 1px solid black;">
    <tr style="background-color: red;">
      <th>Marka</th>
      <th>Model</th>
      <th>Rok produkcji</th>
      <th>VIN</th>
      <th>Oznaczenie silnika</th>
    </tr>
    <xsl:for-each select="warsztat/samochod">
    <tr>
      <td style="text-align:center"><xsl:value-of select="marka"/></td>
      <td style="text-align:center"><xsl:value-of select="model"/></td>
      <td style="text-align:center"><xsl:value-of select="rokProdukcji"/></td>
      <td style="text-align:center"><xsl:value-of select="VIN"/></td>
      <td style="text-align:center"><xsl:value-of select="oznaczenieSilnika"/></td>
    </tr>
    </xsl:for-each>
  </table>

  </body>
  <xsl:text disable-output-escaping='yes'>&lt;/html&gt;</xsl:text>
</xsl:template>

</xsl:stylesheet>