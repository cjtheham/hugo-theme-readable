<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:atom="http://www.w3.org/2005/Atom" xmlns:dc="http://purl.org/dc/elements/1.1/"
		xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title><xsl:value-of select="/rss/channel/title"/> Feed</title>
		<link href="/css/readable.min.css" rel="stylesheet" type="text/css"></link>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1,shrink-to-fit=no" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
	</head>
	<body>
		<header>
			<h1><xsl:value-of select="/rss/channel/title"/></h1>
			<p>RSS Feed preview</p>
		</header>
		<nav>
			<span><a href="/">Back Home</a></span>
		</nav>
		<main>
			<xsl:for-each select="/rss/channel/item">
			<article>
				<h3 style="text-align: center">
					<a target="_blank">
						<xsl:attribute name="href">
						<xsl:value-of select="link"/>
						</xsl:attribute>
						<xsl:value-of select="title"/>
					</a>
				</h3>
				<p style="text-align: center">
				Published:
				<time>
					<xsl:value-of select="pubDate" />
				</time>
				</p>
			</article>
					</xsl:for-each>
		</main>
	</body>
</html>
						</xsl:template>
						</xsl:stylesheet>
