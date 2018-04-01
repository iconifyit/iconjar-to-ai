﻿/** * USAGE: * * 1. Place this script in Applications > Adobe Illustrator > Presets > en_US > Scripts * 2. Restart Adobe Illustrator to activate the script * 3. The script will be available under menu File > Scripts > IconJar to Artboards *//** * LICENSE & COPYRIGHT * *   You are free to use, modify, and distribute this script as you see fit. *   No credit is required but would be greatly appreciated. * *   Scott Lewis - scott@atomiclotus.it *   http://github.com/iconifyit *   http://atomiclotus.net * *   THIS SCRIPT IS OFFERED AS-IS WITHOUT ANY WARRANTY OR GUARANTEES OF ANY KIND. *   YOU USE THIS SCRIPT COMPLETELY AT YOUR OWN RISK AND UNDER NO CIRCUMSTANCES WILL *   THE DEVELOPER AND/OR DISTRIBUTOR OF THIS SCRIPT BE HELD LIABLE FOR DAMAGES OF *   ANY KIND INCLUDING LOSS OF DATA OR DAMAGE TO HARDWARE OR SOFTWARE. IF YOU DO *   NOT AGREE TO THESE TERMS, DO NOT USE THIS SCRIPT. *//** * Declare the target app. */#target illustrator/** * Include the libraries we need. */// #includepath "lib/jsx-common/";#include "lib/jsx-common/JSON.jsxinc";#include "lib/jsx-common/Utils.jsxinc";#include "lib/jsx-common/Logger.jsxinc";//TODO: Not yet implemented.// #include "Configuration.js";// #include "lib/jsx-common/Object.ext.js";/** * Include files from 'lib/' */#include "lib/lang.jsxinc";#include "lib/exportable.jsxinc";/** * Name that script. */#script "IconJar to AI Artboards";/** * Disable Illustrator's alerts. */Utils.displayAlertsOff();/** * Set some global variables. */var $HERE = new File($.fileName).path + '/';/** * Default configuration. Many of these values are over-written by the dialog. * @type {{ *     ARTBOARD_COUNT     : number, *     ARTBOARD_WIDTH     : number, *     ARTBOARD_HEIGHT    : number, *     ARTBOARD_SPACING   : number, *     ARTBOARD_ROWSxCOLS : number, *     LOG_FILE_PATH      : string, *     OUTPUT_FILENAME    : string, *     SCALE              : number, *     ROOT               : string, *     SRC_FOLDER         : string, *     ATH_SEPATATOR      : string * }} */var CONFIG = Utils.create({    APP_NAME            : "iconjar-to-ai",    ROOT                : "~/Documents",    SRC_FOLDER          : '~/Desktop/',    ICONS_FOLDER        : 'icons/',    PATH_SEPATATOR      : "/",    META_FILE_NAME      : "META.json",    META_FILE           : '',    AI_TOOLS_PATH       : $HERE + "tools/",    APPLET_NAME         : 'commander.app',    NODEJS_MODULE_NAME  : 'module.js',    // You can safely change these    LOG_FOLDER_PATH     : $HERE + "tools/var/log/",    LOG_FILE_PATH       : $HERE + "tools/var/log/iconjar-to-ai.log",    CONFIG_FOLDER_PATH  : $HERE + "tools/var/conf/",    CONFIG_FILE_PATH    : $HERE + "tools/var/conf/iconjar-to-ai-conf.json",    START_DIR           : '~/github/iconify/iconjar-to-ai/',    USER_HOME           : '~/',    ARTBOARD_WIDTH      : 24,    ARTBOARD_HEIGHT     : 24,    ARTBOARD_SPACING    : 24,    ARTBOARD_ROWSxCOLS  : 10,    SCALE               : 100,    AUTO_SCALE          : true,    SORT_ARTBOARDS      : true,    LOGGING             : true,    SRC_FILE            : null,    OUTPUT_FILENAME     : 'iconjar-to-artboards.ai'});/** * Import external configs to over-ride the settings above. */#include "config.js";/** * Update the CONFIG object with any user-specified * custom values. */Utils.update(CONFIG, MY_CONFIG || {});/** * Run the script using the Module patter. */var Module = (function(CONFIG) {    /**     * The module dialog.     * @type {Window}     */    var dialog = null;    /**     * The local scope logger object.     * @type {Logger}     */    var logger = new Logger(CONFIG.APP_NAME, Utils.folder(CONFIG.LOG_FOLDER_PATH));    /**     * The Dialog for this module.     * @returns {*}     * @constructor     */    function doDisplayDialog() {        var response = false;        /**         * Dialog width         * @type {number}         */        var w = 550;        /**         * Dialog height         * @type {number}         */        var h = 410;        /**         * Dialog bounds: [ Left, TOP, RIGHT, BOTTOM ]         * default: //550, 350, 1000, 800         */        dialog = Utils.window("dialog", localize({en_US: LANG.LABEL_DIALOG_WINDOW}), w, h);        dialog.center();        try {            // Initialize the config folder.            Utils.folder(CONFIG.CONFIG_FOLDER_PATH);            // Update the script with stored configuration.            Utils.update(CONFIG, Utils.get_config(CONFIG.CONFIG_FILE_PATH) || {});            /**             * Row height             * @type {number}             */            var rh = 30;            /**             * Column width             * @type {number}             */            var cw  = 112;            var m = 16;            var p = 24;            var x1 = m;            var x2 = w - m;            var y1 = m + p;            var y2 = cw;            var r1 = 40;            // Fieldset 1            dialog.sizePanel              = dialog.add('panel',      [x1, y1 - p,  x2, (rh * 4) + (p * 2)], LANG.LABEL_SIZE);            // Row 1            dialog.artboardWidthLabel     = dialog.add('statictext', [x1 + (p/2),  y1, 214, r1 + rh],  LANG.LABEL_ARTBOARD_WIDTH);            dialog.artboardWidth          = dialog.add('edittext',   [164, r1, 214, r1 + rh],          CONFIG.ARTBOARD_WIDTH);            dialog.artboardWidth.active   = true;            // Row 2            dialog.artboardHeightLabel    = dialog.add('statictext', [x1 + (p/2),  r1 + rh, 140, 100],  LANG.LABEL_ARTBOARD_HEIGHT);            dialog.artboardHeight         = dialog.add('edittext',   [164, r1 + rh, 214, 100],  CONFIG.ARTBOARD_HEIGHT);            dialog.artboardHeight.active  = true;            // Row 3            dialog.artboardSpacingLabel   = dialog.add('statictext', [x1 + (p/2),  100, 140, 130], LANG.LABEL_ARTBOARD_SPACING);            dialog.artboardSpacing        = dialog.add('edittext',   [164, 100, 214, 130], CONFIG.ARTBOARD_SPACING);            dialog.artboardSpacing.active = true;            // Row 4            dialog.scaleLabel             = dialog.add('statictext', [x1 + (p/2),  130, 140, 160], LANG.LABEL_SCALE);            dialog.scale                  = dialog.add('edittext',   [164, 130, 214, 160], CONFIG.SCALE);            dialog.scale.active           = true;            var _x1 = 164 + cw;            var _x2 = _x1 + (cw * 2);            dialog.autoScale              = dialog.add('checkbox',   [_x1, 138, _x2, 168],  LANG.LABEL_AUTO_SCALE);            dialog.autoScale.value        = CONFIG.AUTO_SCALE;            // Fieldset 2            dialog.outputPanel            = dialog.add('panel',      [x1, 170, x2, 290],   LANG.LABEL_OUTPUT);            dialog.filenameLabel          = dialog.add('statictext', [x1 + (p/2),  190, 140, 220], LANG.LABEL_FILE_NAME);            dialog.filename               = dialog.add('edittext',   [164, 190, 334, 220], CONFIG.OUTPUT_FILENAME);            dialog.filename.active        = true;            dialog.logging                = dialog.add('checkbox',   [x1 + (p/2), 230, 140, 300],  LANG.LABEL_LOGGING);            dialog.logging.value          = CONFIG.LOGGING;            dialog.sortboards             = dialog.add('checkbox',   [x1 + (p/2), 260, 140, 330],  LANG.LABEL_SORT_ARTBOARDS);            dialog.sortboards.value       = CONFIG.SORT_ARTBOARDS;            // Fieldset 3            dialog.sourcePanel            = dialog.add('panel',      [x1, 290, x2, 350],   LANG.LABEL_INPUT);            dialog.fileBtn                = dialog.add('button',     [x1 + (p/2), 310, 140, 340],  LANG.LABEL_CHOOSE_FILE, {name: 'iconjar'})            dialog.srcFile                = dialog.add('edittext',   [150, 310, x2 - 10, 340], CONFIG.SRC_FILE);            dialog.srcFile.active         = false;            // Buttons row            dialog.cancelBtn              = dialog.add('button',     [232, 360, 332, 390], LANG.BUTTON_CANCEL, {name: 'cancel'});            dialog.openBtn                = dialog.add('button',     [334, 360, 434, 390], LANG.BUTTON_OK, {name: 'ok'});        }        catch(ex) {            logger.error(localize({en_US: ex + "(file: %1, line: %2)"}, $.fileName, $.line));        }        dialog.cancelBtn.onClick = function() {            dialog.close();            return response = false;        };        dialog.fileBtn.onClick = function() {            var srcFile = Utils.chooseFile(                new File(CONFIG.START_DIR),                LANG.CHOOSE_FILE,                "*.inconjar"            );            if (! srcFile instanceof File) return;            try {                if (srcFile.alias) {                    while (srcFile.alias) {                        srcFile = srcFile.resolve().openDlg(                            LANG.CHOOSE_FILE,                            "*.inconjar",                            false                        );                    }                }                dialog.srcFile.text = srcFile.fsName;                CONFIG.SRC_FILE     = srcFile.fsName;                if ( Utils.trim(dialog.filename.text) == '' ) {                    dialog.filename.text = srcFile.name + '-merged.ai';                    CONFIG.OUTPUT_FILENAME = dialog.filename.text;                }            }            catch(ex) {                logger.error(ex.message);            }        };        /**         * Callback to open the selected session.         */        dialog.openBtn.onClick = function() {            dialog.onClose = function() {                logger.info(localize({en_US: "%1 : %2"}, $.fileName, $.line));                CONFIG.ARTBOARD_WIDTH      = parseInt(dialog.artboardWidth.text);                CONFIG.ARTBOARD_HEIGHT     = parseInt(dialog.artboardHeight.text);                CONFIG.LOGGING             = dialog.logging.value;                CONFIG.SORT_ARTBOARDS      = dialog.sortboards.value;                CONFIG.SPACING             = parseInt(dialog.artboardSpacing.text);                CONFIG.SCALE               = parseInt(dialog.scale.text);                CONFIG.AUTO_SCALE          = dialog.autoScale.value;                CONFIG.OUTPUT_FILENAME     = dialog.filename.text;                CONFIG.SRC_FILE            = decodeURIComponent(dialog.srcFile.text);                CONFIG.META_GZ_FILE        = Utils.expand_path(CONFIG.SRC_FILE  + '/META', CONFIG.USER_HOME);                CONFIG.META_JSON_FILE      = Utils.expand_path(CONFIG.AI_TOOLS_PATH + 'var/META.json', CONFIG.USER_HOME);                CONFIG.ICONS_FOLDER        = new File(CONFIG.SRC_FILE).absoluteURI + '/icons/';                CONFIG.START_DIR           = new File(CONFIG.SRC_FILE).path;                Utils.write_file(                    CONFIG.CONFIG_FILE_PATH,                    JSON.stringify(Utils.update(EXPORTABLE, CONFIG)),                    true                );            };            dialog.hide();            dialog.close();            return response = true;        };        dialog.show();        return response;    };    /**     * Import the icons to artboards.     */    var main = function() {        if (! doDisplayDialog()) {            return;        }        var doc, i ;        if (! (new File(CONFIG.SRC_FILE)).exists) return;        meta = ensureTags(doLoadMetaData());        CONFIG.OUTPUT_FILENAME = getSetName(meta) + '.ai';        var items = [];        for (key in meta.items) {            items.push(meta.items[key]);        }        // Make sure it has AI files in it.        if (items.length > 0) {            if (CONFIG.SORT_ARTBOARDS) {                try {                    items.sort(comparator);                }                catch(ex) {                    logger.error(localize({en_US: "%1 : %2"}, LANG.SORT_FILELIST_FAILED, ex));                }            }            // Set the script to work with artboard rulers            app.coordinateSystem      = CoordinateSystem.ARTBOARDCOORDINATESYSTEM;            CONFIG.ARTBOARD_COUNT     = items.length;            CONFIG.ARTBOARD_ROWSxCOLS = Math.round(Math.sqrt(items.length));            // Add new multi-page document            doc = app.documents.add(                DocumentColorSpace.RGB,                CONFIG.ARTBOARD_WIDTH,                CONFIG.ARTBOARD_HEIGHT,                CONFIG.ARTBOARD_COUNT,                DocumentArtboardLayout.GridByCol,                CONFIG.ARTBOARD_SPACING,                CONFIG.ARTBOARD_ROWSxCOLS            );            // Display the progress bar.            Utils.showProgressBar(CONFIG.ARTBOARD_COUNT);            // Make the full document visible so the user can see the progress.            app.executeMenuCommand("fitall");            // Loop thru the list of icons.            for (i = 0; i < CONFIG.ARTBOARD_COUNT; i++) {                // If the file is not defined, skip it.                if (typeof(items[i].file) == "undefined") continue;                // If the file, tags, and name are empty, skip it.                if (Utils.isAllEmpty([items[i].file, items[i].tags, items[i].name])) continue;                // Create a new File object from the file path.                var f = new File(CONFIG.ICONS_FOLDER + items[i].file);                // If the file does not exist, skip it.                if (! f.exists) continue;                // Set the active artboard rulers based on this.                doc.artboards.setActiveArtboardIndex(i);                // Update the log.                logger.info(localize({en_US: "FILE [%1] TAGS [%2]"}, items[i].file, items[i].tags));                // Get the first non-empty value to use for the artboard name.                doc.artboards[i].name = Utils.getFirstNonEmptyValue([                    tagsToNameSlug(items[i].tags),                    (items[i].file || "Untitled-" + i).replace('.svg', ''),                    items[i].name.replace(" ", "-")                ]);                // Create group from SVG.                try {                    // Update the log.                    logger.info(localize({en_US: "FILE [%1] %2"}, i, f));                    // Update the progress bar.                    Utils.updateProgress(localize({en_US: 'Placing icon %1'}, items[i].file));                    // Create a new SVG Object from the import.                    var theIcon = doc.groupItems.createFromFile(f);                    // If auto-scale is enabled, recalc the scale value to fit the icon to the artboards.                    if (CONFIG.AUTO_SCALE) {                        Utils.autoScale(theIcon, CONFIG.ARTBOARD_WIDTH, CONFIG.ARTBOARD_HEIGHT, CONFIG.SCALE);                    }                    // Move relative to this artboards rulers                    Utils.centerArtwork(theIcon, CONFIG.ARTBOARD_WIDTH, CONFIG.ARTBOARD_HEIGHT, CONFIG.SCALE);                }                catch(ex) {                    Utils.gc();                    logger.error(localize({                        en_US: "Error in `doc.groupItems.createFromFile` with file `%1`. Error: %2"                    }, items[i], ex));                }                Utils.gc();            };            // Close the progress bar.            Utils.progress.close();            // Save the composite file.            Utils.saveFileAsAi(                doc,                File(CONFIG.SRC_FILE).path + '/' + CONFIG.OUTPUT_FILENAME,                Compatibility.ILLUSTRATOR17            );        };        // Restore Illustrator's default alerts.        Utils.displayAlertsOn();        // Take out the garbage.        Utils.gc();    };    /**     * Convert IconJar tags to filename     * @param {string}      tags  Comma-separated list of tags.     * @returns {string}     */    function tagsToNameSlug(tags) {        return tags.toLowerCase().split(',').join('-').replace(' ','-');    }    /**     * Get the set name from the meta object.     * @param {object} meta     * @returns {string}     */    var getSetName = function(meta) {        var setName = CONFIG.OUTPUT_FILENAME;        for (key in meta.sets) {            setName = (meta.sets[key].name).toLowerCase().replace(' ', '-');            break;        }        return setName;    };    /**     * Convert file name to tags.     * @param {string} fileName The file name to convert to tags.     * @returns {string}     */    var filenameToTags = function(fileName) {        return fileName.toLowerCase().replace('.svg', '').replace(' ', '-').split('-').join(',');    };    /**     * Ensure all items have tags.     * @param {object} meta The meta object.     * @return {object} the updated meta object     */    var ensureTags = function(meta) {        for (i=0; i<meta.items.length; i++) {            var item = meta.items[i];            if (Utils.trim(item.tags) == '') {                meta.items[i].tags = filenameToTags(item.file);            }        }        return meta;    };    /**     * Loads META.json     * @returns {object}     */    var doLoadMetaData = function() {        var module_code = "module.exports = " + JSON.stringify({            inputfile  : new File(CONFIG.META_GZ_FILE).fsName,            outputfile : new File(CONFIG.META_JSON_FILE).fsName        },null,2);        CONFIG.NODE_META_MODULE = CONFIG.AI_TOOLS_PATH + 'var/' + CONFIG.NODEJS_MODULE_NAME;        return Utils.write_and_call(            CONFIG.NODE_META_MODULE,            module_code,            function(module) {                if (module.exists) {                    var command = new File(CONFIG.AI_TOOLS_PATH + CONFIG.APPLET_NAME);                    command.execute();                    // This sleep is necessary to allow the terminal app to                    // finish creating the META.json file.                    $.sleep(2000);                    if (new File(CONFIG.META_JSON_FILE).exists) {                        return Utils.read_json_file(CONFIG.META_JSON_FILE);                    }                    else {                        logger.error(localize({en_US: "Metadata file [%1] was not found"}, CONFIG.META_JSON_FILE));                    }                }            }        );    };    /**     * Callback for sorting the file list.     * @param   {File}  a     * @param   {File}  b     * @returns {number}     */    var comparator = function(a, b) {        var nameA = Utils.slugger(a.name.toUpperCase());        var nameB = Utils.slugger(b.name.toUpperCase());        if (nameA < nameB) {            return -1;        }        if (nameA > nameB) {            return 1;        }        // names must be equal        return 0;    }    // Returns the public module object.    return {        run: main    }})(CONFIG || {});/** * Run the module. */Module.run();