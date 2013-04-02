<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"  />

<xsl:template match="root">
<xsl:for-each select="//component">component name="<xsl:value-of select="@name" />Test" extends="mxunit.framework.TestCase"
{

	// Begin specific tests
	<xsl:for-each select="method">
	<xsl:sort select="name"/>
	public void function test<xsl:value-of select="@name"/>()
	{
		assertFalse(false,"Test not implemented");
	}
	</xsl:for-each>

	// setup and teardown
	<xsl:call-template name="setup" />
	<xsl:call-template name="teardown" />
}
</xsl:for-each>
</xsl:template>


<xsl:template name="setup">
	public void function setUp()
	{
		this.myComp = new <xsl:value-of select="@fullname" />();
	}
</xsl:template>

<xsl:template name="teardown">
	public void function tearDown()
	{
		// Any code needed to return your environment to normal goes here
	}
</xsl:template>

</xsl:stylesheet>
