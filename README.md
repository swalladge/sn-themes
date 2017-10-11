
# Standard Notes themes

Repository for community contributed themes for [Standard Notes](https://standardnotes.org/).

## Notes

- Url should be entered in the desktop app as the url of the css theme file
  followed by `?type=theme&name=TheThemeName`.
- Desktop app wants the url to end with `.css` otherwise it won't apply the
  theme (possible bug or security feature?)
- Mobile app adds `.json` to the url. Planned is for it to strip the `.css`
  first, but currently does not.
- Pull requests, comments, issues, suggestions all welcome!

## Themes

### Solarized (Dark)

Dark solarized theme, based on the official [Midnight theme](https://standardnotes.org/extensions/midnight).
Uses mainly official solarized colours, tweaked slightly for greater contrast
and visibility on mobile.  Features proper solarized code syntax highlighting
in editors.

- Author: Samuel Walladge
- License: GPLv3
- Sources:
  [solarized-dark.css](https://github.com/swalladge/sn-themes/blob/master/solarized-dark.css),
  [solarized-dark.css.json](https://github.com/swalladge/sn-themes/blob/master/solarized-dark.css.json)
- Install link: <https://static.swalladge.id.au/sn-themes/solarized-dark.css?type=theme&name=Solarized%20Dark>

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


To make a theme installable, the files simply need to be available on a
public web server. Steps to ensure it works:

1. make sure the css filename ends with `.css`, or the desktop/web app won't
   apply the theme
2. if your theme supports mobile (ie. has a json theme file), name the json
   file the same as the css file, with `.json` appended (the mobile app
   behaviour in the future may change to stripping the `.css` part of the url
   before appending `.json` - will update instructions when I hear more)
3. upload the two files to the web server so they live in the same directory
4. make sure the web server supports https, or the theme won't be loaded due to
   browser security rules
5. now the install url (that you enter into standardnotes to install the theme)
   will be `https://your.server/path/to/mytheme.css?type=theme&name=theme-name`,
   where:
   - `your.server/path/to/mytheme.css` is the public url for the _css_ theme file
   - `theme-name` in the params is the name you want Standard Notes to display
     the theme as
   - note: the url parameters are simply to tell Standard Notes that it's a
     theme and give the name to display - the web server doesn't need to care
     about them

The final product should look like the following in your web server:

```
/webroot/path/
             |- mytheme.css
             \- mytheme.css.json
```

Now you can distribute the install url for anyone to install the theme.



# License

    Standard Notes themes
    Copyright (C) 2017 Samuel Walladge and contributors

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
