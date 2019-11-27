CREATE TEMP FUNCTION
  htmlToText(html STRING)
  RETURNS STRING
  LANGUAGE js OPTIONS ( library=["<$_BUCKET_URL>/html-to-text.js"] ) AS """
return htmlToText.fromString(html)
""";

SELECT htmlToText('<h1>Hello World</h1><div><p>word on hello</p><p>hello hello hello</p><ul><li>first</li><li>second</li></ul></div>')
