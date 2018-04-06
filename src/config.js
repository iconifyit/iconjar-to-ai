/**
 * Default configuration object for `IconJar to Artboards.jsx`
 * @type {{
 *     LOGGING: boolean, 
 *     LOG_FILE_PATH: string, 
 *     CONFIG_FILE_PATH: string, 
 *     ARTBOARD_COUNT: number, 
 *     ARTBOARD_WIDTH: number, 
 *     ARTBOARD_HEIGHT: number, 
 *     ARTBOARD_SPACING: number, 
 *     ARTBOARD_ROWSxCOLS: number, 
 *     DELAY_DURATION: number
 * }}
 */
var DEFAULT_CONFIG = {
    // Enable logging

    LOGGING          : true,

    // Location of the log file

    LOG_FILE_PATH       : $HERE + "var/log/iconjar-to-ai.log",

    // Location of the Dialog configuration file

    CONFIG_FILE_PATH    : $HERE + "var/conf/iconjar-to-ai-conf.json",

    // Default number of artboards 

    ARTBOARD_COUNT      : 1,

    // Default artboard width

    ARTBOARD_WIDTH      : 64,

    // Default artboard height

    ARTBOARD_HEIGHT     : 64,

    // Default artboard spacing

    ARTBOARD_SPACING    : 24,

    // Default rows and columns

    ARTBOARD_ROWSxCOLS  : 10,

    // Delay in seconds.

    DELAY_DURATION      : 3
};