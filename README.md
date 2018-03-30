# IconJar to Adobe Illustrator

This collection of scripts is run as a JavaScript Extension script for Adobe Illustrator. The script allows you to select an IconJar archive to extract the enclosed icons and metadata, and import the icons using the icons tags as the artboard name. The benefit of this is that you can then re-export the artboards to any file format you like, using the tags as file names. This is beneficial for designers who sell icons on sites like Iconfinder that use dash-delimted file names to auto-tag uploads.

## Installation

This is not a simple download-and-run script. By default, Adobe Illustrator scripts cannot communicate directly with NodeJS. JavaScript Extension in Illustrator _does_ have the ability to run external scripts via the `File.execute()` command, but this gives mixed results when trying to run command-line shell scripts. There is also no way to pass arguments to the file being executed.

To get around these limitations, arguments to be used are written to a NodeJS-formatted file and the enclosed **Commander.app** AppleScript file runs the enclused NodeJS app. The app is pre-programmed to look for the arguments that were written to `./ai-nodejs-tools/var/module.js`.

## System Requirements

1. Xcode
1. NodeJS
1. NPM

## Required/Helpful Knowledge

1. Some familiarity with the command line `/Applications/Utilities/Terminal.app`
1. Some ability to install applications

### Step-by-Step

1. Download the **Profiler** app from 
1. Download this repository as a ZIP archive or by cloning the git repository 
    `git clone --recursive git@github.com:iconifyit/iconjar-to-ai.git`
1. Open the file named `config.js` and update the `includepath` to point to the `jsx-common` folder in your download.
1. TBD

