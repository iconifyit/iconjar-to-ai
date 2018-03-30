﻿/** * USAGE: * * 1. Place this script in Applications > Adobe Illustrator > Presets > en_US > Scripts * 2. Restart Adobe Illustrator to activate the script * 3. The script will be available under menu File > Scripts > IconJar to Artboards *//** * LICENSE & COPYRIGHT * *   You are free to use, modify, and distribute this script as you see fit. *   No credit is required but would be greatly appreciated. * *   Scott Lewis - scott@atomiclotus.it *   http://github.com/iconifyit *   http://atomiclotus.net * *   THIS SCRIPT IS OFFERED AS-IS WITHOUT ANY WARRANTY OR GUARANTEES OF ANY KIND. *   YOU USE THIS SCRIPT COMPLETELY AT YOUR OWN RISK AND UNDER NO CIRCUMSTANCES WILL *   THE DEVELOPER AND/OR DISTRIBUTOR OF THIS SCRIPT BE HELD LIABLE FOR DAMAGES OF *   ANY KIND INCLUDING LOSS OF DATA OR DAMAGE TO HARDWARE OR SOFTWARE. IF YOU DO *   NOT AGREE TO THESE TERMS, DO NOT USE THIS SCRIPT. *//** * Declare the target app. */#target illustrator/** * Include the libraries we need. */#includepath "jsx-common/";#include "JSON.jsxinc";#include "Utils.jsxinc";#include "Logger.jsxinc";//TODO: Not yet implemented.// #include "Configuration.js";/** * Include files from 'lib/' */#include "lib/lang.jsxinc";#include "lib/exportable.jsxinc";/** * Name that script. */#script "IconJar to AI Artboards";/** * Disable Illustrator's alerts. */Utils.displayAlertsOff();/** * Set some global variables. */var $HERE = new File($.fileName).path + '/';/** * Default configuration. Many of these values are over-written by the dialog. * @type {{ *     ARTBOARD_COUNT     : number, *     ARTBOARD_WIDTH     : number, *     ARTBOARD_HEIGHT    : number, *     ARTBOARD_SPACING   : number, *     ARTBOARD_ROWSxCOLS : number, *     LOG_FILE_PATH      : string, *     OUTPUT_FILENAME    : string, *     SCALE              : number, *     ROOT               : string, *     SRC_FOLDER         : string, *     ATH_SEPATATOR      : string * }} */var CONFIG = {    APP_NAME            : "iconjar-to-ai",    ROOT                : "~/Documents",    SRC_FOLDER          : '~/Desktop/',    ICONS_FOLDER        : 'icons/',    PATH_SEPATATOR      : "/",    META_FILE_NAME      : "META.json",    META_FILE           : '',    AI_TOOLS_PATH       : $HERE + "tools/",    APPLET_NAME         : 'commander.app',    NODEJS_MODULE_NAME  : 'module.js',    // You can safely change these    LOG_FOLDER_PATH     : $HERE + "tools/var/log/",    LOG_FILE_PATH       : $HERE + "tools/var/log/iconjar-to-ai.log",    CONFIG_FOLDER_PATH  : $HERE + "tools/var/conf/",    CONFIG_FILE_PATH    : $HERE + "tools/var/conf/iconjar-to-ai-conf.json",    START_DIR           : '~/github/iconify/iconjar-to-ai/',    USER_HOME           : '~/',    ARTBOARD_WIDTH      : 24,    ARTBOARD_HEIGHT     : 24,    ARTBOARD_SPACING    : 24,    ARTBOARD_ROWSxCOLS  : 10,    SCALE               : 100,    SORT_ARTBOARDS      : true,    LOGGING             : true,    SRC_FILE            : null,    OUTPUT_FILENAME     : 'iconjar-to-artboards.ai'};/** * Import external configs to over-ride the settings above. */#include "config.js";/** * Update the CONFIG object with any user-specified * custom values. */Utils.update(CONFIG, MY_CONFIG);/** * Run the script using the Module patter. */var Module = (function(CONFIG) {    /**     * The module dialog.     * @type {Window}     */    var dialog = null;    /**     * The local scope logger object.     * @type {Logger}     */    var logger = new Logger(CONFIG.APP_NAME, Utils.folder(CONFIG.LOG_FOLDER_PATH));    /**     * The Dialog for this module.     * @returns {*}     * @constructor     */    function doDisplayDialog() {        var response = false;        /**         * Dialog bounds: [ Left, TOP, RIGHT, BOTTOM ]         * default: //550, 350, 1000, 800         */        dialog = Utils.window("dialog", LANG.LABEL_DIALOG_WINDOW, 550, 410);        dialog.center();        try {            Utils.folder(CONFIG.CONFIG_FOLDER_PATH);            SAVED_CONFIG = Utils.get_config(CONFIG.CONFIG_FILE_PATH) || {};            Utils.update(CONFIG, SAVED_CONFIG);            /**             * Row height             * @type {number}             */            var rh = 30;            /**             * Column width             * @type {number}             */            var cw  = 112;            var c1  = 28;            var c1w = c1 + 112;            var c2  = 164;            var c2w = c2 + 50;            var p1 = 16;            var p2 = dialog.frameSize.width - 16;            var r1 = 40;            dialog.sizePanel              = dialog.add('panel',      [p1, 16, p2, 170],   LANG.LABEL_SIZE);            dialog.outputPanel            = dialog.add('panel',      [p1, 170, p2, 290],  LANG.LABEL_OUTPUT);            dialog.sourcePanel            = dialog.add('panel',      [p1, 290, p2, 350],  LANG.LABEL_INPUT);            dialog.artboardWidthLabel     = dialog.add('statictext', [c1, r1, c1w, 70],   LANG.LABEL_ARTBOARD_WIDTH);            dialog.artboardWidth          = dialog.add('edittext',   [c2, r1, c2w, 70],   CONFIG.ARTBOARD_WIDTH);            dialog.artboardWidth.active   = true;            dialog.artboardHeightLabel    = dialog.add('statictext', [c1, 70, c1w, 100],  LANG.LABEL_ARTBOARD_HEIGHT);            dialog.artboardHeight         = dialog.add('edittext',   [c2, 70, c2w, 100],  CONFIG.ARTBOARD_HEIGHT);            dialog.artboardHeight.active  = true;            dialog.artboardSpacingLabel   = dialog.add('statictext', [c1, 100, c1w, 130], LANG.LABEL_ARTBOARD_SPACING);            dialog.artboardSpacing        = dialog.add('edittext',   [c2, 100, c2w, 130], CONFIG.ARTBOARD_SPACING);            dialog.artboardSpacing.active = true;            dialog.scaleLabel             = dialog.add('statictext', [c1, 130, c1w, 160], LANG.LABEL_SCALE);            dialog.scale                  = dialog.add('edittext',   [c2, 130, c2w, 160], CONFIG.SCALE);            dialog.scale.active           = true;            dialog.filenameLabel          = dialog.add('statictext', [c1, 190, c1w, 220], LANG.LABEL_FILE_NAME);            dialog.filename               = dialog.add('edittext',   [c2, 190, 334, 220], CONFIG.OUTPUT_FILENAME);            dialog.filename.active        = true;            dialog.logging                = dialog.add('checkbox',   [c1, 230, c1w, 300], LANG.LABEL_LOGGING);            dialog.logging.value          = CONFIG.LOGGING;            dialog.sortboards             = dialog.add('checkbox',   [c1, 260, c1w, 330], LANG.LABEL_SORT_ARTBOARDS);            dialog.sortboards.value       = CONFIG.SORT_ARTBOARDS;            dialog.fileBtn                = dialog.add('button',     [c1, 310, c1w, 340],  LANG.LABEL_CHOOSE_FILE, {name: 'iconjar'})            dialog.srcFile                = dialog.add('edittext',   [150, 310, p2 - 10, 340], CONFIG.SRC_FILE);            dialog.srcFile.active         = false;            dialog.cancelBtn              = dialog.add('button',     [232, 360, 332, 390], LANG.BUTTON_CANCEL, {name: 'cancel'});            dialog.openBtn                = dialog.add('button',     [334, 360, 434, 390], LANG.BUTTON_OK, {name: 'ok'});        }        catch(ex) {            logger.error(localize({en_US: ex + "(file: %1, line: %2)"}, $.fileName, $.line));        }        dialog.cancelBtn.onClick = function() {            dialog.close();            return response = false;        };        dialog.fileBtn.onClick = function() {            var srcFile = Utils.chooseFile(                new File(CONFIG.START_DIR),                LANG.CHOOSE_FILE,                "*.inconjar"            );            if (! srcFile instanceof File) return;            try {                if (srcFile.alias) {                    while (srcFile.alias) {                        srcFile = srcFile.resolve().openDlg(                            LANG.CHOOSE_FILE,                            "*.inconjar",                            false                        );                    }                }                // alert(srcFile.fsName);                dialog.srcFile.text = srcFile.fsName;                CONFIG.SRC_FILE     = srcFile.fsName;                if ( Utils.trim(dialog.filename.text) == '' ) {                    dialog.filename.text = srcFile.name + '-merged.ai';                    CONFIG.OUTPUT_FILENAME = dialog.filename.text;                }            }            catch(ex) {                logger.error(ex.message);            }        };        /**         * Callback to open the selected session.         */        dialog.openBtn.onClick = function() {            dialog.onClose = function() {                logger.info(localize({en_US: "%1 : %2"}, $.fileName, $.line));                CONFIG.ARTBOARD_WIDTH      = parseInt(dialog.artboardWidth.text);                CONFIG.ARTBOARD_HEIGHT     = parseInt(dialog.artboardHeight.text);                CONFIG.LOGGING             = dialog.logging.value;                CONFIG.SORT_ARTBOARDS      = dialog.sortboards.value;                CONFIG.SPACING             = parseInt(dialog.artboardSpacing.text);                CONFIG.SCALE               = parseInt(dialog.scale.text);                CONFIG.OUTPUT_FILENAME     = dialog.filename.text;                CONFIG.SRC_FILE            = decodeURIComponent(dialog.srcFile.text);                CONFIG.META_GZ_FILE        = Utils.expand_path(CONFIG.SRC_FILE  + '/META', CONFIG.USER_HOME);                CONFIG.META_JSON_FILE      = Utils.expand_path(CONFIG.AI_TOOLS_PATH + 'var/META.json', CONFIG.USER_HOME);                CONFIG.ICONS_FOLDER        = new File(CONFIG.SRC_FILE).absoluteURI + '/icons/';                CONFIG.START_DIR           = new File(CONFIG.SRC_FILE).path;                Utils.write_file(                    CONFIG.CONFIG_FILE_PATH,                    JSON.stringify(Utils.update(EXPORTABLE, CONFIG)),                    true                );            };            dialog.hide();            dialog.close();            return response = true;        };        dialog.show();        return response;    };    /**     * Import the icons to artboards.     */    var main = function() {        if (! doDisplayDialog()) {            return;        }        return;        var doc, fileList, i, srcFolder, mm, svgFilemeta ;        if (! (new File(CONFIG.SRC_FILE)).exists) return;        meta = ensureTags(doLoadMetaData());        CONFIG.OUTPUT_FILENAME = getSetName(meta) + '.ai';        var items = [];        for (key in meta.items) {            items.push(meta.items[key]);        }        meta.items = items;        /**         * Make sure it has AI files in it…         */        if (meta.items.length > 0) {            if (CONFIG.SORT_ARTBOARDS == true) {                try {                    meta.items.sort(comparator);                }                catch(ex) {                    logger.error(localize({en_US: "%1 : %2"}, LANG.SORT_FILELIST_FAILED, ex));                }            }            /**             * Set the script to work with artboard rulers             */            app.coordinateSystem = CoordinateSystem.ARTBOARDCOORDINATESYSTEM;            /**             * Add new multi-page document             */            doc = app.documents.add(                DocumentColorSpace.RGB,                CONFIG.ARTBOARD_WIDTH,                CONFIG.ARTBOARD_HEIGHT,                CONFIG.ARTBOARD_COUNT = meta.items.length,                DocumentArtboardLayout.GridByCol,                CONFIG.ARTBOARD_SPACING,                CONFIG.ARTBOARD_ROWSxCOLS = Math.round(Math.sqrt(meta.items.length))            );            Utils.showProgressBar(CONFIG.ARTBOARD_COUNT);            app.executeMenuCommand("fitall");            /**             * Loop thru the counter             */            for (i = 0; i < CONFIG.ARTBOARD_COUNT; i++) {                /**                 * Set the active artboard rulers based on this                 */                doc.artboards.setActiveArtboardIndex(i);                var boardName = tagsToNameSlug(meta.items[i].tags);                if (Utils.trim(boardName) == '') {                    boardName = tagsToNameSlug(meta.items[i].file.replace('.svg', ''));                }                doc.artboards[i].name = boardName;                /**                 * Create group from SVG                 */                try {                    var f = new File(CONFIG.ICONS_FOLDER + meta.items[i].file);                    logger.error(localize({en_US: "FILE [%1] %2"}, i, f));                    if (f.exists) {                        svgFile = doc.groupItems.createFromFile(f);                    }                    Utils.updateProgress(localize({en_US: 'Placing icon %1'}, meta.items[i].file));                    /**                     * Move relative to this artboards rulers                     */                    try {                        svgFile.position = [                            Math.floor((CONFIG.ARTBOARD_WIDTH - svgFile.width) / 2),                            Math.floor((CONFIG.ARTBOARD_HEIGHT - svgFile.height) / 2) * -1                        ];                        if (typeof(svgFile.resize) == "function" && CONFIG.SCALE != 100) {                            svgFile.resize(CONFIG.SCALE, CONFIG.SCALE, true, true, true, true, CONFIG.SCALE);                        }                    }                    catch(ex) {                        try {                            svgFile.position = [0, 0];                        }                        catch(ex) {/*Exit Gracefully*/}                    }                    redraw();                    alignToNearestPixel(doc.selection);                }                catch(ex) {                    logger.error(localize({                        en_US: "Error in `doc.groupItems.createFromFile` with file `%1`. Error: %2"                    }, meta.items[i], ex));                }            };            Utils.progress.close();            Utils.saveFileAsAi(                doc,                File(CONFIG.SRC_FILE).path + '/' + CONFIG.OUTPUT_FILENAME,                Compatibility.ILLUSTRATOR17            );        };        Utils.displayAlertsOn();        try { $.gc(); }        catch(e) {/* Nothing we can do. */}    };    var setTimeout = function(callback, duration) {        var counter = 0;        while (counter < duration) {            $.sleep(duration/10);            counter += duration/10;        }        callback.call(this);    };    /**     * Convert IconJar tags to filename     * @param {string}      tags  Comma-separated list of tags.     * @returns {string}     */    function tagsToNameSlug(tags) {        tags = tags.toLowerCase();        return tags.split(',').join('-').replace(' ','-');    }    /**     * Get the set name from the meta object.     * @param {object} meta     * @returns {string}     */    var getSetName = function(meta) {        var setName = CONFIG.OUTPUT_FILENAME;        for (key in meta.sets) {            setName = (meta.sets[key].name).toLowerCase().replace(' ', '-');            break;        }        return setName;    };    /**     * Convert file name to tags.     * @param {string} fileName The file name to convert to tags.     * @returns {string}     */    var filenameToTags = function(fileName) {        return fileName.toLowerCase().replace('.svg', '').replace(' ', '-').split('-').join(',');    };    /**     * Ensure all items have tags.     * @param {object} meta The meta object.     * @return {object} the updated meta object     */    var ensureTags = function(meta) {        for (i=0; i<meta.items.length; i++) {            var item = meta.items[i];            if (Utils.trim(item.tags) == '') {                meta.items[i].tags = filenameToTags(item.file);            }        }        return meta;    };    /**     * Loads META.json     * @returns {object}     */    var doLoadMetaData = function() {        var module_code = "module.exports = " + JSON.stringify({            inputfile  : new File(CONFIG.META_GZ_FILE).fsName,            outputfile : new File(CONFIG.META_JSON_FILE).fsName        },null,2);        CONFIG.NODE_META_MODULE = CONFIG.AI_TOOLS_PATH + 'var/' + CONFIG.NODEJS_MODULE_NAME;        return Utils.write_and_call(            CONFIG.NODE_META_MODULE,            module_code,            function(module) {                if (module.exists) {                    var command = new File(CONFIG.AI_TOOLS_PATH + CONFIG.APPLET_NAME);                    command.execute();                    // This sleep is necessary to allow the terminal app to                    // finish creating the META.json file.                    $.sleep(2000);                    if (new File(CONFIG.META_JSON_FILE).exists) {                        return Utils.read_json_file(CONFIG.META_JSON_FILE);                    }                    else {                        logger.error(localize({en_US: "Metadata file [%1] was not found"}, CONFIG.META_JSON_FILE));                    }                }            }        );    };    /**     * Callback for sorting the file list.     * @param   {File}  a     * @param   {File}  b     * @returns {number}     */    var comparator = function(a, b) {        var nameA = Utils.slugger(a.name.toUpperCase());        var nameB = Utils.slugger(b.name.toUpperCase());        if (nameA < nameB) {            return -1;        }        if (nameA > nameB) {            return 1;        }        // names must be equal        return 0;    }    /**     * Returns the public module object.     */    return {        /**         * Runs the module code.         */        run: main    }})(CONFIG);/** * Run the module. */Module.run();