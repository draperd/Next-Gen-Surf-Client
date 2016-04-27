<@link rel="stylesheet" type="text/css" href="${url.context}/res/css/style.css"/>
<@script type="text/javascript" src="${url.context}/res/js/dist/legoQuotes.min.js"/>
<@inlineScript>
   (function(legoQuotes) {
      document.addEventListener("DOMContentLoaded", function(event) {
         var btn = document.getElementById( "btnMore" );
         var quote = document.getElementById( "quote" );

         function writeQuoteToDom() {
            quote.innerHTML = legoQuotes.getRandomQuote();
         }

         btn.addEventListener( "click", writeQuoteToDom );
         writeQuoteToDom();
      });
   })(legoQuotes);
</@>

<div class="container">
   <blockquote id="quote"></blockquote>
   <button id="btnMore">Get Another Quote</button>
</div>
