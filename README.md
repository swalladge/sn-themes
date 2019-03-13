
# Standard Notes themes [UNMAINTAINED]

---

Important note:

I no longer maintain this - the theme in this repo (solarized dark) no longer
works correctly in recent standardnote releases. Please see
<https://github.com/orestarod/sn-themes> for a maintained fork. (the solarized
theme there appears to be slightly different in style to mine, but you can
always port mine to the recent standardnote versions if you want the same as in
my screenshots). ~ swalladge

---


Repository for community contributed themes for [Standard Notes](https://standardnotes.org/).

## Notes

## Themes

### Better Solarized Dark

Note: there is now an official solarized theme, but I prefer this because it has
monospace fonts and not so much bright green.

Dark solarized theme, based on the official [Midnight theme](https://standardnotes.org/extensions/midnight).
Uses mainly official solarized colours, tweaked slightly for greater contrast
and visibility on mobile.  Features proper solarized code syntax highlighting
in editors.

- Author: Samuel Walladge
- License: GPLv3
- Sources: <https://github.com/swalladge/sn-themes/blob/master/better-solarized-dark/>
- Install link: <https://static.swalladge.id.au/sn-themes/better-solarized-dark/package.json>

![screenshot](./images/solarized-dark-screenshot.png)
![screenshot with syntax highlighting](./images/solarized-dark-screenshot-syntax.png)


### Other community themes

- [Typographic](https://github.com/sancho-one/sn-themes), a light theme for easy reading.
- [s4skia](https://github.com/flowinho/s4skia), light theme for readability on retina displays.
- <https://github.com/TobiasDev/SN_Themes>
- [Lyons](https://github.com/jamesjlyons/Lyons)


## Developing themes

The easiest way to develop a theme is to pick an existing theme that is
close to what you are wanting, and modify it from there. The desktop and web
applications use the css file, which afaik can contain any valid css, including
font imports and such. The mobile app uses the json style file. (todo: find
docs for what other json keys do)


To make a theme installable, follow the instructions at
<https://docs.standardnotes.org/extensions/publishing.html>.  There are some
gotchas. Most should be clear if you see the package.zip file I use for the
solarized theme. I use the package.json for both the extension metadata and the
package.json that is installed with the app and tells sn which file to load.

__TL;DR__

Theme files like this on an _https_ enabled web server:

```
/webroot/path/
             |- mytheme.json
             \- mytheme.zip
```

Distribute install url as `https://your.server/path/to/mytheme.json`.



# License

    Standard Notes themes
    Copyright (C) 2018 Samuel Walladge and contributors

    This program is free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by the Free
    Software Foundation, either version 3 of the License, or (at your option)
    any later version.

    This program is distributed in the hope that it will be useful, but
    WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
    or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
    for more details.

    You should have received a copy of the GNU General Public License along
    with this program.  If not, see <http://www.gnu.org/licenses/>.
