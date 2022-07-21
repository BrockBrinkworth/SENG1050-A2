<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

	<xsl:template match="TEMPLATE">
	
		<html>
	
			<head>
				<title>Holidays</title>
				<link rel="stylesheet" href="Style.css" type="text/css" />
			</head>
			
			<body class=".">
			
				<hr/>
			
					<div id="navbar">
						<!--Links to XML Files-->
						<nav>
							<a href="Index.html">Home Page</a>
							<a href="BeachHoliday.xml">Beach Holiday</a> 
							<a href="AdventureHoliday.xml">Adventure Holiday</a>
							<a href="PrivacyPolicy.html">Privacy Policy</a>
							<a href="TermAndConditions.html">Terms and Conditions</a>
							<a href="ContactUs.html">Contact Us</a>
							<a href="AboutUs.html">About Us</a>
							<a href="DataCollectionPage.html">Holiday Ideas Form</a>
						</nav>
					</div>
					
				<hr/>
				
				<h1>Holidays</h1>		
				<hr/>
				<table><tr><th>Holidays for</th></tr><xsl:for-each select="holiday">
				<tr><td><xsl:value-of select="HolidayCategory" /></td></tr></xsl:for-each></table>
				
				<hr/>
				<table border="1">
				
					<tr>
					
						<th>Holiday Package Name</th>
						<th>Description</th>
						<th>Cost</th>
						<th>Number of Nights</th>
						<th>Popularity</th>
						<th>Location</th>
						<th>Additional Costs</th>
						<th>Hotel Name</th>
						<th>Room Type</th>
						<th>Coupon Code</th>
						<th>Reviews</th>
						<th>Image</th>
						<th>Web Page Link</th>
					
					</tr>
					<xsl:for-each select="holiday">
					<tr>
					
						<td><xsl:value-of select="PackageName" /></td>
						<td><xsl:value-of select="Description" /></td>
						<td><xsl:value-of select="Cost" /></td>
						<td><xsl:value-of select="NumberOfNights" /></td>
						<td><xsl:value-of select="Popularity" /></td>
						<td><xsl:value-of select="AccomodationOptions/Location" /></td>
						<td><xsl:value-of select="AccomodationOptions/AdditionalCost" /></td>
						<td><xsl:value-of select="AccomodationOptions/HotelName" /></td>
						<td><xsl:value-of select="AccomodationOptions/RoomType" /></td>
						<td><xsl:value-of select="CouponCode" /></td>
						<td><xsl:value-of select="Reviews" /></td>
						<td>
							<img alt="LinkPic"  width="512" height="288">
								<xsl:attribute name="src">
									<xsl:value-of select="Link/Image" />
								</xsl:attribute>
							</img>
						</td>
						<td>
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Link/Webpage"/>
								</xsl:attribute>
								<xsl:value-of select="Link/Webpage"/>
							</a>
						</td>
						
					</tr>
					</xsl:for-each>
					
				</table>
				
				<hr/>
				<footer>
				<h3>Copy Righted to GoHoliday <br/> Email: goholiday@gmail.com</h3>
				</footer>
				
			</body>
			
		</html>
		
	</xsl:template>
	
</xsl:stylesheet>