## Welcome to GitHub Pages

You can use the [editor on GitHub](https://github.com/DanteSB/DanteSB.github.io/edit/master/index.md) to maintain and preview the content for your website in Markdown files.

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/DanteSB/DanteSB.github.io/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://help.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.



```r
library(leaflet)
library(magrittr)
m = leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=174.768, lat=-36.852, popup=&quot;The birthplace of R&quot;)
m  # Print the map
```
<div id="introduction" class="section level2">
<h2>Introduction</h2>
<p><a href="http://leafletjs.com">Leaflet</a> is one of the most popular open-source JavaScript libraries for interactive maps. It’s used by websites ranging from <a href="http://www.nytimes.com/projects/elections/2013/nyc-primary/mayor/map.html">The New York Times</a> and <a href="http://www.washingtonpost.com/sf/local/2013/11/09/washington-a-world-apart/">The Washington Post</a> to <a href="https://github.com/blog/1528-there-s-a-map-for-that">GitHub</a> and <a href="https://www.flickr.com/map">Flickr</a>, as well as GIS specialists like <a href="http://www.openstreetmap.org/">OpenStreetMap</a>, <a href="http://www.mapbox.com/">Mapbox</a>, and <a href="http://cartodb.com/">CartoDB</a>.</p>
<p>This R package makes it easy to integrate and control Leaflet maps in R.</p>
<div id="features" class="section level3">
<h3>Features</h3>
<ul>
<li>Interactive panning/zooming</li>
<li>Compose maps using arbitrary combinations of:
<ul>
<li>Map tiles</li>
<li>Markers</li>
<li>Polygons</li>
<li>Lines</li>
<li>Popups</li>
<li>GeoJSON</li>
</ul></li>
<li>Create maps right from the R console or RStudio</li>
<li>Embed maps in <a href="http://yihui.name/knitr/">knitr</a>/<a href="http://rmarkdown.rstudio.com/">R Markdown</a> documents and <a href="http://shiny.rstudio.com/">Shiny</a> apps</li>
<li>Easily render spatial objects from the <code>sp</code> or <code>sf</code> packages, or data frames with latitude/longitude columns</li>
<li>Use map bounds and mouse events to drive Shiny logic</li>
<li>Display maps in non spherical mercator projections</li>
<li>Augment map features using chosen plugins from <a href="http://leafletjs.com/plugins">leaflet plugins repository</a></li>
</ul>
</div>
<div id="installation" class="section level3">
<h3>Installation</h3>
<p>To install this R package, run this command at your R prompt:</p>
<pre class="r"><code class="r"><span class="identifier">install.packages</span><span class="paren">(</span><span class="string">"leaflet"</span><span class="paren">)</span>
<span class="comment"># to install the development version from Github, run</span>
<span class="comment"># devtools::install_github("rstudio/leaflet")</span></code></pre>
<p>Once installed, you can use this package at the R console, within <a href="http://rmarkdown.rstudio.com/">R Markdown</a> documents, and within <a href="http://shiny.rstudio.com/">Shiny</a> applications.</p>
</div>
<div id="basic-usage" class="section level3">
<h3>Basic Usage</h3>
<p>You create a Leaflet map with these basic steps:</p>
<ol style="list-style-type: decimal">
<li>Create a map widget by calling <code>leaflet()</code>.</li>
<li>Add <em>layers</em> (i.e., features) to the map by using layer functions (e.g. <code>addTiles</code>, <code>addMarkers</code>, <code>addPolygons</code>) to modify the map widget.</li>
<li>Repeat step 2 as desired.</li>
<li>Print the map widget to display it.</li>
</ol>
<p>Here’s a basic example:</p>
<pre class="r"><code class="r"><span class="keyword">library</span><span class="paren">(</span><span class="identifier">leaflet</span><span class="paren">)</span>

<span class="identifier">m</span> <span class="operator">&lt;-</span> <span class="identifier">leaflet</span><span class="paren">(</span><span class="paren">)</span> <span class="operator">%&gt;%</span>
  <span class="identifier">addTiles</span><span class="paren">(</span><span class="paren">)</span> <span class="operator">%&gt;%</span>  <span class="comment"># Add default OpenStreetMap map tiles</span>
  <span class="identifier">addMarkers</span><span class="paren">(</span><span class="identifier">lng</span><span class="operator">=</span><span class="number">174.768</span>, <span class="identifier">lat</span><span class="operator">=</span><span class="operator">-</span><span class="number">36.852</span>, <span class="identifier">popup</span><span class="operator">=</span><span class="string">"The birthplace of R"</span><span class="paren">)</span>
<span class="identifier">m</span>  <span class="comment"># Print the map</span></code></pre>
<div id="htmlwidget-927ec88a166bf954e46a" style="width: 100%; height: 216px; position: relative;" class="leaflet html-widget html-widget-static-bound leaflet-container leaflet-fade-anim" tabindex="0"><div class="leaflet-map-pane" style="transform: translate3d(0px, 0px, 0px);"><div class="leaflet-tile-pane"><div class="leaflet-layer"><div class="leaflet-tile-container"></div><div class="leaflet-tile-container leaflet-zoom-animated"><img class="leaflet-tile leaflet-tile-loaded" src="//b.tile.openstreetmap.org/14/16145/9998.png" style="height: 256px; width: 256px; left: 100px; top: -2px;"><img class="leaflet-tile leaflet-tile-loaded" src="//c.tile.openstreetmap.org/14/16146/9998.png" style="height: 256px; width: 256px; left: 356px; top: -2px;"><img class="leaflet-tile leaflet-tile-loaded" src="//a.tile.openstreetmap.org/14/16144/9998.png" style="height: 256px; width: 256px; left: -156px; top: -2px;"><img class="leaflet-tile leaflet-tile-loaded" src="//a.tile.openstreetmap.org/14/16147/9998.png" style="height: 256px; width: 256px; left: 612px; top: -2px;"></div></div></div><div class="leaflet-objects-pane"><div class="leaflet-shadow-pane"><img src="http://rstudio.github.io/leaflet/libs/leaflet/images/marker-shadow.png" class="leaflet-marker-shadow leaflet-zoom-animated" style="margin-left: -12px; margin-top: -41px; width: 41px; height: 41px; transform: translate3d(327px, 108px, 0px);"></div><div class="leaflet-overlay-pane"></div><div class="leaflet-marker-pane"><img src="http://rstudio.github.io/leaflet/libs/leaflet/images/marker-icon.png" class="leaflet-marker-icon leaflet-zoom-animated leaflet-clickable" tabindex="0" style="margin-left: -12px; margin-top: -41px; width: 25px; height: 41px; transform: translate3d(327px, 108px, 0px); z-index: 108;"></div><div class="leaflet-popup-pane"></div></div></div><div class="leaflet-control-container"><div class="leaflet-top leaflet-left"><div class="leaflet-control-zoom leaflet-bar leaflet-control"><a class="leaflet-control-zoom-in" href="#" title="Zoom in">+</a><a class="leaflet-control-zoom-out" href="#" title="Zoom out">-</a></div></div><div class="leaflet-top leaflet-right"></div><div class="leaflet-bottom leaflet-left"></div><div class="leaflet-bottom leaflet-right"><div class="leaflet-control-attribution leaflet-control"><a href="http://leafletjs.com" title="A JS library for interactive maps">Leaflet</a> | © <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a></div></div></div></div>
<script type="application/json" data-for="htmlwidget-927ec88a166bf954e46a">{
  "x": {
    "options": {
      "crs": {
        "crsClass": "L.CRS.EPSG3857",
        "code": null,
        "proj4def": null,
        "projectedBounds": null,
        "options": {}
      }
    },
    "calls": [
      {
        "method": "addTiles",
        "args": [
          "//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          null,
          null,
          {
            "minZoom": 0,
            "maxZoom": 18,
            "maxNativeZoom": null,
            "tileSize": 256,
            "subdomains": "abc",
            "errorTileUrl": "",
            "tms": false,
            "continuousWorld": false,
            "noWrap": false,
            "zoomOffset": 0,
            "zoomReverse": false,
            "opacity": 1,
            "zIndex": null,
            "unloadInvisibleTiles": null,
            "updateWhenIdle": null,
            "detectRetina": false,
            "reuseTiles": false,
            "attribution": "&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap\u003c/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA\u003c/a>"
          }
        ]
      },
      {
        "method": "addMarkers",
        "args": [
          -36.852,
          174.768,
          null,
          null,
          null,
          {
            "clickable": true,
            "draggable": false,
            "keyboard": true,
            "title": "",
            "alt": "",
            "zIndexOffset": 0,
            "opacity": 1,
            "riseOnHover": false,
            "riseOffset": 250
          },
          "The birthplace of R",
          null,
          null,
          null,
          null,
          null,
          null
        ]
      }
    ],
    "limits": {
      "lat": [-36.852, -36.852],
      "lng": [174.768, 174.768]
    }
  },
  "evals": [],
  "jsHooks": []
}</script>
<p>In case you’re not familiar with the <a href="https://github.com/smbache/magrittr">magrittr</a> pipe operator (<code>%&gt;%</code>), here is the equivalent without using pipes:</p>
<pre class="r"><code class="r"><span class="identifier">m</span> <span class="operator">&lt;-</span> <span class="identifier">leaflet</span><span class="paren">(</span><span class="paren">)</span>
<span class="identifier">m</span> <span class="operator">&lt;-</span> <span class="identifier">addTiles</span><span class="paren">(</span><span class="identifier">m</span><span class="paren">)</span>
<span class="identifier">m</span> <span class="operator">&lt;-</span> <span class="identifier">addMarkers</span><span class="paren">(</span><span class="identifier">m</span>, <span class="identifier">lng</span><span class="operator">=</span><span class="number">174.768</span>, <span class="identifier">lat</span><span class="operator">=</span><span class="operator">-</span><span class="number">36.852</span>, <span class="identifier">popup</span><span class="operator">=</span><span class="string">"The birthplace of R"</span><span class="paren">)</span>
<span class="identifier">m</span></code></pre>
</div>
<div id="next-steps" class="section level3">
<h3>Next Steps</h3>
<p>We highly recommend that you proceed to <a href="map_widget.html">The Map Widget</a> page before exploring the rest of this site, as it describes common idioms we’ll use throughout the examples on the other pages.</p>
<p>Although we have tried to provide an R-like interface to Leaflet, you may want to check out the <a href="http://leafletjs.com/reference.html">API documentation</a> of Leaflet occasionally when the meanings of certain parameters are not clear to you.</p>
</div>
</div>
