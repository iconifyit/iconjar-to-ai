# IconJar to Adobe Illustrator

This collection of scripts is run as a JavaScript Extension script for Adobe Illustrator. The script allows you to select an IconJar archive and imports the icons to individual artboards, using the icon tags from IconJar as the artboard names. The benefit of this is that you can then re-export the artboards to any file format you like, using the tags as file names. This is beneficial for designers who sell icons on sites like Iconfinder that use dash-delimted file names to auto-tag uploads. No more manually tagging icons on Iconfinder.

## IMPORTANT ##

Sorry, but this app is *ONLY* compatible with MacOS. The app uses AppleScript, an automation scripting language with no equivalent on Windows.

## Installation

1. Download the Github archive and extract it where ever you like on your computer.
2. Double-click on the **Installer** applet icon.
3. Restart Adobe Illustrator.

## System Requirements

1. MacOS
2. JSON Helper AppleScript utility app from [MouseDown.net](http://www.mousedown.net/mouseware/JSONHelper.html)

## Helpful Skills

1. Some familiarity with the command line `/Applications/Utilities/Terminal.app`
2. Some ability to install applications

### Step-by-Step

#### Installing System Requirements

1. Download this repository as a ZIP archive or by cloning the git repository 

```bash
git clone --recursive git@github.com:iconifyit/iconjar-to-ai.git
```
    
OR download the ZIP:
      
```bash
https://github.com/iconifyit/iconjar-to-ai/archive/master.zip
```
    
2. Locate the download. If you downloaded the ZIP archive, double-click the ZIP file to extract it.
3. Find the AppleScript applet named **Installer** in the root folder in this download, and double-click it.
4. The **Installer** app install the JavaScript Extension in the appropriate folder in Adobe Illustrator.
5. Restart Adobe Illustrator.
6. Navigate to `Adobe Illustrator > File > Scripts` and select **IconJar to Artboards**
7. Select the IconJar archive you wish to import when prompted
8. **IconJar to Artboards** will import the icons using the tags as the artboard names.

## Support this Project

This script has taken a lot of work but there is still much to be done. My goal is to create tools to help make icon designers' work much more efficient, thus allowing them to spend more time making icons and making more money. Support for importing IconJar archives is only the beginning. With your support, I can devote more time to creating useful tools like this one.

[ ![Donate with PayPal] (https://raw.githubusercontent.com/stefan-niedermann/paypal-donate-button/master/paypal-donate-button.png) ] (https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=25PLV5HVYPNRE)
