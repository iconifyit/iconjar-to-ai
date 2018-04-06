/**
 * USAGE:
 *
 * 1. Place this script in Applications > Adobe Illustrator > Presets > en_US > Scripts
 * 2. Restart Adobe Illustrator to activate the script
 * 3. The script will be available under menu File > Scripts > IconJar to Artboards
 */
/**
 * LICENSE & COPYRIGHT
 *
 *   You are free to use, modify, and distribute this script as you see fit.
 *   No credit is required but would be greatly appreciated.
 *
 *   Scott Lewis - scott@atomiclotus.it
 *   http://github.com/iconifyit
 *   http://atomiclotus.net
 *
 *   THIS SCRIPT IS OFFERED AS-IS WITHOUT ANY WARRANTY OR GUARANTEES OF ANY KIND.
 *   YOU USE THIS SCRIPT COMPLETELY AT YOUR OWN RISK AND UNDER NO CIRCUMSTANCES WILL
 *   THE DEVELOPER AND/OR DISTRIBUTOR OF THIS SCRIPT BE HELD LIABLE FOR DAMAGES OF
 *   ANY KIND INCLUDING LOSS OF DATA OR DAMAGE TO HARDWARE OR SOFTWARE. IF YOU DO
 *   NOT AGREE TO THESE TERMS, DO NOT USE THIS SCRIPT.
 */

/**
 * Declare the target app.
 */
#target illustrator

/**
 * Include the libraries we need.
 */
// #includepath "lib/jsx-common/";

#include "lib/jsx-common/JSON.jsxinc";
#include "lib/jsx-common/Utils.jsxinc";
#include "lib/jsx-common/Logger.jsxinc";

//TODO: Not yet implemented.
// #include "Configuration.js";
// #include "lib/jsx-common/Object.ext.js";

/**
 * Include files from 'lib/'
 */
#include "lib/lang.jsxinc";
#include "lib/exportable.jsxinc";

/**
 * Name that script.
 */
#script "IconJar to AI Artboards";

/**
 * Disable Illustrator's alerts.
 */
Utils.displayAlertsOff();

/**
 * Set some global variables.
 */
var $HERE = new File($.fileName).path + '/';
var $HOME = new File('~/').fsName + '/';

/**
 * Default configuration. Many of these values are over-written by the dialog.
 * @type {{
 *     ARTBOARD_COUNT     : number,
 *     ARTBOARD_WIDTH     : number,
 *     ARTBOARD_HEIGHT    : number,
 *     ARTBOARD_SPACING   : number,
 *     ARTBOARD_ROWSxCOLS : number,
 *     LOG_FILE_PATH      : string,
 *     OUTPUT_FILENAME    : string,
 *     SCALE              : number,
 *     ROOT               : string,
 *     SRC_FOLDER         : string,
 *     ATH_SEPATATOR      : string
 * }}
 */
var CONFIG = Utils.create({
    APP_NAME            : "iconjar-to-ai",

    ROOT                : "~/Documents",
    SRC_FOLDER          : '~/Desktop/',
    ICONS_FOLDER        : 'icons/',
    PATH_SEPATATOR      : "/",

    META_FILE_NAME      : "META.json",
    META_FILE           : '',
    AI_TOOLS_PATH       : $HERE + "tools/",
    COMMANDER_PATH      : "",


    APPLET_NAME         : 'commander.app',

    // You can safely change these

    LOG_FOLDER_PATH     : $HERE + "var/log/",
    LOG_FILE_PATH       : $HERE + "var/log/iconjar-to-ai.log",
    CONFIG_FOLDER_PATH  : $HERE + "var/conf/",
    CONFIG_FILE_PATH    : $HERE + "var/conf/iconjar-to-ai-conf.json",
    START_DIR           : '~/github/iconify/iconjar-to-ai-v3/',
    USER_HOME           : $HOME,

    ARTBOARD_WIDTH      : 24,
    ARTBOARD_HEIGHT     : 24,
    ARTBOARD_SPACING    : 24,
    ARTBOARD_ROWSxCOLS  : 10,
    SCALE               : 100,
    SORT_ARTBOARDS      : true,
    LOGGING             : true,
    SRC_FILE            : null,
    OUTPUT_FILENAME     : 'iconjar-to-artboards.ai'
});

/**
 * Import external configs to over-ride the settings above.
 */
#include "config.js";

/**
 * Update the CONFIG object with any user-specified
 * custom values.
 */
Utils.update(CONFIG, MY_CONFIG || {});

/**
 * Run the script using the Module patter.
 */
var Module = (function(CONFIG) {

    /**
     * The module dialog.
     * @type {Window}
     */
    var dialog = null;

    /**
     * The local scope logger object.
     * @type {Logger}
     */
    var logger = new Logger(CONFIG.APP_NAME, Utils.folder(CONFIG.LOG_FOLDER_PATH));

    /**
     * The Dialog for this module.
     * @returns {*}
     * @constructor
     */
    function doDisplayDialog() {

        var response = false;

        /**
         * Dialog width
         * @type {number}
         */
        var w = 550;

        /**
         * Dialog height
         * @type {number}
         */
        var h = 410;

        /**
         * Dialog bounds: [ Left, TOP, RIGHT, BOTTOM ]
         * default: //550, 350, 1000, 800
         */
        dialog = Utils.window("dialog", localize({en_US: LANG.LABEL_DIALOG_WINDOW}), w, h);

        dialog.center();

        try {

            /**
             * Row height
             * @type {number}
             */
            var rh = 30;

            /**
             * Column width
             * @type {number}
             */
            var cw  = 112;

            var m = 16;
            var p = 24;

            var c1  = 28;
            var c1w = c1 + cw;

            var c2  = 164;
            var c2w = c2 + p;

            var x1 = m;
            var x2 = w - m;

            var y1 = m + p;
            var y2 = cw;

            var r1 = 40;

            // Fieldset 1
            dialog.sizePanel              = dialog.add('panel',      [x1, y1 - p,  x2, (rh * 4) + (p * 2)], LANG.LABEL_SIZE);

            // Row 1
            dialog.artboardWidthLabel     = dialog.add('statictext', [x1 + (p/2),  y1, 214, r1 + rh],  LANG.LABEL_ARTBOARD_WIDTH);
            dialog.artboardWidth          = dialog.add('edittext',   [164, r1, 214, r1 + rh],          CONFIG.ARTBOARD_WIDTH);
            dialog.artboardWidth.active   = true;

            // Row 2
            dialog.artboardHeightLabel    = dialog.add('statictext', [x1 + (p/2),  r1 + rh, 140, 100],  LANG.LABEL_ARTBOARD_HEIGHT);
            dialog.artboardHeight         = dialog.add('edittext',   [164, r1 + rh, 214, 100],  CONFIG.ARTBOARD_HEIGHT);
            dialog.artboardHeight.active  = true;

            // Row 3
            dialog.artboardSpacingLabel   = dialog.add('statictext', [x1 + (p/2),  100, 140, 130], LANG.LABEL_ARTBOARD_SPACING);
            dialog.artboardSpacing        = dialog.add('edittext',   [164, 100, 214, 130], CONFIG.ARTBOARD_SPACING);
            dialog.artboardSpacing.active = true;

            // Row 4
            dialog.scaleLabel             = dialog.add('statictext', [x1 + (p/2),  130, 140, 160], LANG.LABEL_SCALE);
            dialog.scale                  = dialog.add('edittext',   [164, 130, 214, 160], CONFIG.SCALE);
            dialog.scale.active           = true;

            // Fieldset 2
            dialog.outputPanel            = dialog.add('panel',      [x1, 170, x2, 290],   LANG.LABEL_OUTPUT);

            dialog.filenameLabel          = dialog.add('statictext', [x1 + (p/2),  190, 140, 220], LANG.LABEL_FILE_NAME);
            dialog.filename               = dialog.add('edittext',   [164, 190, 334, 220], CONFIG.OUTPUT_FILENAME);
            dialog.filename.active        = true;

            dialog.logging                = dialog.add('checkbox',   [x1 + (p/2), 230, 140, 300],  LANG.LABEL_LOGGING);
            dialog.logging.value          = CONFIG.LOGGING;

            dialog.sortboards             = dialog.add('checkbox',   [x1 + (p/2), 260, 140, 330],  LANG.LABEL_SORT_ARTBOARDS);
            dialog.sortboards.value       = CONFIG.SORT_ARTBOARDS;

            // Fieldset 3
            dialog.sourcePanel            = dialog.add('panel',      [x1, 290, x2, 350],   LANG.LABEL_INPUT);

            dialog.fileBtn                = dialog.add('button',     [x1 + (p/2), 310, 140, 340],  LANG.LABEL_CHOOSE_FILE, {name: 'iconjar'})

            dialog.srcFile                = dialog.add('edittext',   [150, 310, x2 - 10, 340], CONFIG.SRC_FILE);
            dialog.srcFile.active         = false;

            // Buttons row

            dialog.cancelBtn              = dialog.add('button',     [232, 360, 332, 390], LANG.BUTTON_CANCEL, {name: 'cancel'});
            dialog.openBtn                = dialog.add('button',     [334, 360, 434, 390], LANG.BUTTON_OK, {name: 'ok'});
        }
        catch(ex) {
            logger.error(localize({en_US: ex + "(file: %1, line: %2)"}, $.fileName, $.line));
        }

        dialog.cancelBtn.onClick = function() {
            dialog.close();
            return response = false;
        };

        dialog.fileBtn.onClick = function() {

            var srcFile = Utils.chooseFile(
                new File(CONFIG.START_DIR),
                LANG.CHOOSE_FILE,
                "*.inconjar"
            );

            if (! srcFile instanceof File) return;

            try {
                if (srcFile.alias) {
                    while (srcFile.alias) {
                        srcFile = srcFile.resolve().openDlg(
                            LANG.CHOOSE_FILE,
                            "*.inconjar",
                            false
                        );
                    }
                }
                dialog.srcFile.text = srcFile.fsName;
                CONFIG.SRC_FILE     = srcFile.fsName;
                if ( Utils.trim(dialog.filename.text) == '' ) {
                    dialog.filename.text = srcFile.name + '-merged.ai';
                    CONFIG.OUTPUT_FILENAME = dialog.filename.text;
                }
            }
            catch(ex) {
                logger.error(ex.message);
            }
        };

        /**
         * Callback to open the selected session.
         */
        dialog.openBtn.onClick = function() {

            dialog.onClose = function() {
                logger.info(localize({en_US: "%1 : %2"}, $.fileName, $.line));

                CONFIG.ARTBOARD_WIDTH      = parseInt(dialog.artboardWidth.text);
                CONFIG.ARTBOARD_HEIGHT     = parseInt(dialog.artboardHeight.text);
                CONFIG.LOGGING             = dialog.logging.value;
                CONFIG.SORT_ARTBOARDS      = dialog.sortboards.value;
                CONFIG.SPACING             = parseInt(dialog.artboardSpacing.text);
                CONFIG.SCALE               = parseInt(dialog.scale.text);
                CONFIG.OUTPUT_FILENAME     = dialog.filename.text;

                CONFIG.SRC_FILE            = decodeURIComponent(dialog.srcFile.text);

                CONFIG.META_GZ_FILE        = Utils.expand_path(CONFIG.SRC_FILE  + '/META', CONFIG.USER_HOME);
                CONFIG.META_JSON_FILE      = Utils.expand_path(CONFIG.AI_TOOLS_PATH + 'var/META.json', CONFIG.USER_HOME);

                CONFIG.ICONS_FOLDER        = new File(CONFIG.SRC_FILE).absoluteURI + '/icons/';
                CONFIG.START_DIR           = new File(CONFIG.SRC_FILE).path;

                Utils.write_file(
                    CONFIG.CONFIG_FILE_PATH,
                    JSON.stringify(Utils.update(EXPORTABLE, CONFIG)),
                    true
                );
            };

            dialog.hide();
            dialog.close();

            return response = true;
        };

        dialog.show();

        return response;
    };

    /**
     * Import the icons to artboards.
     */
    var main = function() {

        Utils.folder(CONFIG.CONFIG_FOLDER_PATH);
        Utils.update(CONFIG, Utils.get_config(CONFIG.CONFIG_FILE_PATH) || {});

        if (! CONFIG.COMMANDER_PATH) {
            var commanderFile = Utils.chooseFile(new File(), "Please locate the Commander Applet");
            CONFIG.COMMANDER_PATH = new File(commanderFile).fsName;
        }

        if (! doDisplayDialog()) {
            return;
        }

        var doc, fileList, i, srcFolder, mm, svgFilemeta ;

        if (! (new File(CONFIG.SRC_FILE)).exists) return;

        meta = ensureTags(doLoadMetaData());

        CONFIG.OUTPUT_FILENAME = getSetName(meta) + '.ai';

        var items = [];
        for (key in meta.items) {
            items.push(meta.items[key]);
        }

        /**
         * Make sure it has AI files in it…
         */
        if (items.length > 0) {

            if (CONFIG.SORT_ARTBOARDS) {
                try {
                    items.sort(comparator);
                }
                catch(ex) {
                    logger.error(localize({en_US: "%1 : %2"}, LANG.SORT_FILELIST_FAILED, ex));
                }
            }

            /**
             * Set the script to work with artboard rulers
             */
            app.coordinateSystem      = CoordinateSystem.ARTBOARDCOORDINATESYSTEM;
            CONFIG.ARTBOARD_COUNT     = items.length;
            CONFIG.ARTBOARD_ROWSxCOLS = Math.round(Math.sqrt(items.length));

            /**
             * Add new multi-page document
             */
            doc = app.documents.add(
                DocumentColorSpace.RGB,
                CONFIG.ARTBOARD_WIDTH,
                CONFIG.ARTBOARD_HEIGHT,
                CONFIG.ARTBOARD_COUNT,
                DocumentArtboardLayout.GridByCol,
                CONFIG.ARTBOARD_SPACING,
                CONFIG.ARTBOARD_ROWSxCOLS
            );

            Utils.showProgressBar(CONFIG.ARTBOARD_COUNT);

            app.executeMenuCommand("fitall");

            /**
             * Loop thru the counter
             */
            for (i = 0; i < CONFIG.ARTBOARD_COUNT; i++) {

                if (typeof(items[i].file) == "undefined") continue;
                if (Utils.isAllEmpty([items[i].file, items[i].tags, items[i].name])) continue;

                var f = new File(CONFIG.ICONS_FOLDER + items[i].file);

                if (! f.exists) continue;

                /**
                 * Set the active artboard rulers based on this
                 */
                doc.artboards.setActiveArtboardIndex(i);

                logger.info(localize({en_US: "FILE [%1] TAGS [%2]"}, items[i].file, items[i].tags));

                doc.artboards[i].name = Utils.getFirstNonEmptyValue([
                    tagsToNameSlug(items[i].tags),
                    (items[i].file || "Untitled-" + i).replace('.svg', ''),
                    items[i].name.replace(" ", "-")
                ]);

                /**
                 * Create group from SVG
                 */
                try {

                    logger.info(localize({en_US: "FILE [%1] %2"}, i, f));

                    Utils.updateProgress(localize({en_US: 'Placing icon %1'}, items[i].file));
                    svgFile = doc.groupItems.createFromFile(f);

                    /**
                     * Move relative to this artboards rulers
                     */
                    Utils.centerArtwork(svgFile, CONFIG.ARTBOARD_WIDTH, CONFIG.ARTBOARD_HEIGHT, CONFIG.SCALE);

                }
                catch(ex) {
                    Utils.gc();
                    logger.error(localize({
                        en_US: "Error in `doc.groupItems.createFromFile` with file `%1`. Error: %2"
                    }, items[i], ex));
                }
                Utils.gc();
            };

            Utils.progress.close();

            Utils.saveFileAsAi(
                doc,
                File(CONFIG.SRC_FILE).path + '/' + CONFIG.OUTPUT_FILENAME,
                Compatibility.ILLUSTRATOR17
            );
        };

        Utils.displayAlertsOn();

        Utils.gc();
    };

    /**
     * Loads META.json
     * @returns {object}
     */
    var doLoadMetaData = function() {

        var module_code = "module.exports = " + JSON.stringify({
            inputfile  : new File(CONFIG.META_GZ_FILE).fsName,
            outputfile : new File(CONFIG.META_JSON_FILE).fsName
        },null,2);

        CONFIG.NODE_META_MODULE = CONFIG.AI_TOOLS_PATH + 'var/' + CONFIG.NODEJS_MODULE_NAME;

        // ~/Desktop/test-data/social-icons.iconjar

        try {
            var UUID = Utils.uuid().split('-').shift();

            Utils.folder($HERE + "tmp/");
            var TMP_META_ZIP_FILE = $HERE + "tmp/META-" + UUID + ".zip";

            new File(CONFIG.META_GZ_FILE).copy(TMP_META_ZIP_FILE);
            
            // 1. Write the path to the META.zip file to text file next to Commander.app

            var commander_folder = new File(CONFIG.COMMANDER_PATH).path;

            Utils.write_file(
                new File(commander_folder + '/pathdata.txt').fsName,
                new File(TMP_META_ZIP_FILE).fsName,
                true
            );

            // 2. Execute Commander.app

            var Commander = new File(CONFIG.COMMANDER_PATH);
            Commander.execute();            

            // 3. Open META.json

            $.sleep(3000);

            $.writeln($HERE + "tmp/META-" + UUID + ".json");

            $.writeln(new File($HERE + "tmp/META-" + UUID + ".json").exists);

            var META = Utils.read_json_file(
                $HERE + "tmp/META-" + UUID + ".json"
            );

            $.writeln(META);
            $.writeln(typeof(META));

            // 4. Proceed to the route

            return META;
        }
        catch(ex) {
            $.writln(ex);
            $.write($.stack);
        }
        return;

        return Utils.write_and_call(
            CONFIG.NODE_META_MODULE,
            module_code,
            function(module) {
                if (module.exists) {
                    var command = new File(CONFIG.AI_TOOLS_PATH + CONFIG.APPLET_NAME);
                    command.execute();

                    // This sleep is necessary to allow the terminal app to
                    // finish creating the META.json file.
                    $.sleep(2000);

                    if (new File(CONFIG.META_JSON_FILE).exists) {
                        return Utils.read_json_file(CONFIG.META_JSON_FILE);
                    }
                    else {
                        logger.error(localize({en_US: "Metadata file [%1] was not found"}, CONFIG.META_JSON_FILE));
                    }
                }
            }
        );
    };

    /**
     * Convert IconJar tags to filename
     * @param {string}      tags  Comma-separated list of tags.
     * @returns {string}
     */
    function tagsToNameSlug(tags) {
        tags = tags.toLowerCase();
        return tags.split(',').join('-').replace(' ','-');
    }

    /**
     * Get the set name from the meta object.
     * @param {object} meta
     * @returns {string}
     */
    var getSetName = function(meta) {
        var setName = CONFIG.OUTPUT_FILENAME;

        for (key in meta.sets) {
            setName = (meta.sets[key].name).toLowerCase().replace(' ', '-');
            break;
        }
        return setName;
    };

    /**
     * Convert file name to tags.
     * @param {string} fileName The file name to convert to tags.
     * @returns {string}
     */
    var filenameToTags = function(fileName) {
        return fileName.toLowerCase().replace('.svg', '').replace(' ', '-').split('-').join(',');
    };

    /**
     * Ensure all items have tags.
     * @param {object} meta The meta object.
     * @return {object} the updated meta object
     */
    var ensureTags = function(meta) {
        for (i=0; i<meta.items.length; i++) {
            var item = meta.items[i];
            if (Utils.trim(item.tags) == '') {
                meta.items[i].tags = filenameToTags(item.file);
            }
        }
        return meta;
    };

    /**
     * Callback for sorting the file list.
     * @param   {File}  a
     * @param   {File}  b
     * @returns {number}
     */
    var comparator = function(a, b) {
        var nameA = Utils.slugger(a.name.toUpperCase());
        var nameB = Utils.slugger(b.name.toUpperCase());
        if (nameA < nameB) {
            return -1;
        }
        if (nameA > nameB) {
            return 1;
        }
        // names must be equal
        return 0;
    }

    /**
     * Returns the public module object.
     */
    return {
        /**
         * Runs the module code.
         */
        run: main
    }

})(CONFIG);


/**
 * Run the module.
 */
Module.run();