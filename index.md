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
<div id="htmlwidget-927ec88a166bf954e46a" style="width:100%;height:216px;" class="leaflet html-widget"></div>
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
