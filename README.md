# IconJar to Adobe Illustrator

This collection of scripts is run as a JavaScript Extension script for Adobe Illustrator. The script allows you to select an IconJar archive to extract the enclosed icons and metadata, and import the icons using the icons tags as the artboard name. The benefit of this is that you can then re-export the artboards to any file format you like, using the tags as file names. This is beneficial for designers who sell icons on sites like Iconfinder that use dash-delimted file names to auto-tag uploads.

## IMPORTANT ##

This app is *ONLY* compatible with MacOS. 

## Installation

This is not a simple download-and-run script. By default, Adobe Illustrator scripts cannot communicate directly with NodeJS. JavaScript Extension in Illustrator _does_ have the ability to run external scripts via the `File.execute()` command, but this gives mixed results when trying to run command-line shell scripts. There is also no way to pass arguments to the file being executed.

To get around these limitations, arguments to be used are written to a NodeJS-formatted file and the enclosed **Commander.app** AppleScript file runs the enclused NodeJS app. The app is pre-programmed to look for the arguments that were written to `./ai-nodejs-tools/var/module.js`.

## System Requirements

1. Xcode
2. NodeJS
3. NPM

## Required/Helpful Knowledge

1. Some familiarity with the command line `/Applications/Utilities/Terminal.app`
2. Some ability to install applications

### Step-by-Step

#### Installing System Requirements

1. Download this repository as a ZIP archive or by cloning the git repository 

    `git clone --recursive git@github.com:iconifyit/iconjar-to-ai.git` 
    
     OR download the ZIP:
      
     `https://github.com/iconifyit/iconjar-to-ai/archive/master.zip`
    
2. Location the download. If you downloaded the ZIP archive, double-click the ZIP file to extract it.
3. Find the AppleScript applet named **ProfilerApp** and double-clic it.
4. The **ProfilerApp** will check your system to determine if you need to install `Xcode`, `node`, or `npm`.
5. To install `Node`, visit https://nodejs.org/en/download/ and follow the MacOS install instructions.
6. To install `Xcode` locate the enclosed applet named **InstallXcodeTools** and double-click it. If you get an error that says `1 : xcode-select: error: command line tools are already installed, use "Software Update" to install updates`, then you do not need to do anything else. You already have the required Xcode tools.
6. After following the installation instructions for `node` and `Xcode`, run the **ProfilerApp** again. You should see **Yes** for all three required packages.

#### Installing the Adobe Illustrator script

1. Copy the script named **IconJar to Artboards.jsx** to `/Applications/Adobe Illustrator CC 2018/presets/en_US/Scripts/`
2. Restart Adobe Illustrator
3. Go to **File > Scripts > IconJar to Arboards** and follow the prompts.
4. If the scripts and system requirements were isntalled correctly, you should see your icons being imported.
5. If your icons are not being imported, then something went wrong. Please contact scott-at-atomiclotus-dot-net for help.





