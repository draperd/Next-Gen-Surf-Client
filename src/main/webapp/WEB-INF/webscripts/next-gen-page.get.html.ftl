<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <title>Lego Quote Module Example</title>
   <script src="${url.context}/node_modules/lodash/index.js"></script>
   <script src="${url.context}/node_modules/babel-core/browser-polyfill.js"></script>

   <#-- Page specific JavaScript and CSS defined in the WebScript will be output here -->
   <@outputJavaScript/>
   <@outputCSS/>
</head>
<body>
   <#-- Create a region/component for the requested WebScript -->
   <#assign regionId = page.url.templateArgs.webscript?replace("/", "-")/>
   <@autoComponentRegion uri="/${page.url.templateArgs.webscript}"/>
</body>
</html>