# Ai Tools
A collection of tools to allow Adobe Illustrator JSX scripts to interact with shell scripts. 

Technologies:
- AppleScript
- bash
- NodeJS

For now this collection of scripts performs a very specific task which is to allow the `iconjar-to-ai` JSX script to access the Node zlib app.

ExtendScript cannot call node apps from directly in Illustrator but it can call external scripts. Unfortunately if you call a bash script using script_file.execute() it does not execute the script on the command line. There is also the issue of passing data to the script. We need to pass the location of the selected IconJar file to the script so the script can ask zlib to read the gzipped META file.

So, we write the data to a run-time created node module called META.js. The app.js node script has been written to look for this file in a specific location `/ai-tools/var/meta.js`. The data is passed in module properties for ease-of-access.

To run the node script we use a simple AppleScript app named command.app. I chose an AppleScript app because it doesn't try to open in the editor, it just executes as an app.
