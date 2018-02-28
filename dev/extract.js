var readline = require('readline');
var fs = require('fs');

function mkdir(path) {
    var reducer = function(acc, curr) {
        var dir = acc + curr + '/';
        if (!fs.existsSync(dir)) {
            console.log('mkdir %s ...', dir);
            fs.mkdirSync(dir);
        }
        return dir;
    }
    path.split('/').reduce(reducer, '');
}

function open(dir, section, lastSection) {
    var path = dir + '/' + section + '.js';
    var filename = path.split('/').reverse()[0];
    var mode = section === lastSection ? 'a' : 'w';
    console.log('Extracting %s...', filename);
    return fs.openSync(path, mode);
}

function extract(moduleId, sections) {
    var dir = __dirname + '/src/' + moduleId;
    var file, lineReader;
    var lastSection;

    mkdir(dir);

    file = open(dir, sections.start, lastSection);
    lastSection = sections.start;

    lineReader = readline.createInterface({
        input: fs.createReadStream(__dirname + '/../' + moduleId + '.js')
    });

    lineReader.on('line', function (line) {
        var matches = line.match(/^\/{2,}\s*([^\/]+)\s*\/{5,}/);
        if (matches) {
            var section = matches[1].trim();
            section = sections[section] || section;
            fs.closeSync(file);
            file = open(dir, section, lastSection);
            lastSection = section;
        }
        fs.writeSync(file, line + "\n");
    });

    lineReader.on('close', function() {
        fs.closeSync(file);
    });
}

extract('morphic', {
    start: 'morphic_header',
    'Global settings': 'morphic_global_settings',
    'Global Functions': 'morphic_global_functions',
    'Retina Display Support': 'morphic_global_functions',
    'Animations': 'Animation',
    'Colors': 'Color',
    'Points': 'Point',
    'Rectangles': 'Rectangle',
    'Nodes': 'Node',
    'Morphs': 'Morph',
});

extract('gui', {
    start: 'gui_header',
    'Global stuff': 'gui_header',
});

extract('blocks', {
    start: 'blocks_header',
    'Global stuff': 'blocks_header',
});

extract('byob', {
    start: 'byob_header',
    'Global stuff': 'byob_header',
});

extract('cloud', {
    start: 'cloud_header',
    'Global settings': 'cloud_header',
});

extract('lists', {
    start: 'lists_header',
    'Global settings': 'lists_header',
});

extract('locale', {
    start: 'locale_header',
    'Global settings': 'locale_header',
});

extract('objects', {
    start: 'objects_header',
    'Global stuff': 'objects_header',
});

extract('paint', {
    start: 'paint_header',
    'Global stuff': 'paint_header',
});

extract('store', {
    start: 'store_header',
    'Global stuff': 'store_header',
});

extract('symbols', {
    start: 'symbols_header',
    'Global stuff': 'symbols_header',
});

extract('tables', {
    start: 'tables_header',
    'Global settings': 'tables_header',
});

extract('threads', {
    start: 'threads_header',
    'Global stuff': 'threads_header',
});

extract('widgets', {
    start: 'widgets_header',
    'Global settings': 'widgets_header',
});

extract('xml', {
    start: 'xml_header',
    'Global stuff': 'xml_header',
});

