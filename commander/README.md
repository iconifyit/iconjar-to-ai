# JSX-OAS Commander

## NB: This is a work-in-progress and not production-ready. 

## Description

An AppleScript proxy to allow ExtendScript to run shell scripts and retrieve the results in JSON format. 

JavaScript Extension in Adobe Illustrator can call `File().execute()` but if you try to run this on a shell script, it will open the script in the Terminal app but does not run or return the results. The approach in this utility allows JSX to call `File().execute()` on the **Commander.app** applet and retrive the results.

The idea is to create an applet that will take any commands and parameters, execute them on the shell, including bash and NodeJS, and return the results in JSON format via a known output file.

## System Requirements

Sorry, but this script works on MacOS only.

## Installation 

Download this repository to your Mac computer.

## Usage 

The basic workflow of this script is:

1. From your JSX script, write the shell script you want to execute to `path/to/jsx-oas-commander/input/command.sh`
2. From your JSX script, call `new File("path/to/jsx-oas-commander/Commander.app").execute()`
3. **Commander.app** will read the `input/command.sh` text file and execute the enclose text as a shell script.
4. The result of the shell script will be written to `jsx-oas-commander/output/output.json`.
5. From your JSX script, read the results in `jsx-oas-commander/output/output.json`. The result will be in `{result:"the restult text"}`.



```json
{
    "result": "scott"
}
```

## Error Handling

If the script encounters an error, the JSON result will contain a null value for the `result` JSON property, and the addition of `errnum` and `errmsg` values. The `errnum` value is enclosed in quotes in case, for some reason, an empty value is returned. We do not enclose the `null` values for `result` in quotes since it is being hard-coded as a string literal so we are certain it is syntactically correct.

```json
{
    "result": null, 
    "errnum": "-128", 
    "errmsg": "Something went terribly wrong."
}
```