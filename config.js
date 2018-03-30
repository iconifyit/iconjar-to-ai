/**
 * You can set the path to your log file and to the Dialog configuration file with the properties below.
 * You can use the global variable $HERE to point to the location of the IconJar-to-AI script folder.
 * If you don't understand MacOS/Linux paths, it is best to leave these properties alone.
 *
 * @type {{
 *    LOG_FILE_PATH: string,
 *    CONFIG_FILE_PATH: string
 * }}
 */
var MY_CONFIG = {
    LOG_FILE_PATH       : $HERE + "tools/var/log/iconjar-to-ai.log",
    CONFIG_FILE_PATH    : $HERE + "tools/var/conf/iconjar-to-ai-conf.json",
    ARTBOARD_COUNT      : 1,
    ARTBOARD_WIDTH      : 64,
    ARTBOARD_HEIGHT     : 64,
    ARTBOARD_SPACING    : 24,
    ARTBOARD_ROWSxCOLS  : 10,
    LOGGING             : true
};