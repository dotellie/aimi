const fs = require('fs');
const readdirp = require('readdirp');
const mkdirp = require('mkdirp');
const mustache = require('mustache');

const colorGenerator = require('./colors.js');

if (!process.argv[2] || !process.argv[3]) {
    // eslint-disable-next-line no-console
    console.log('Missing required parameters. Usage: `npm run generate:[type] -- path/to/output`');
    return;
}

const colors = {
    dark: colorGenerator('dark'),
    light: colorGenerator('light'),
};

const root = `${__dirname}/${process.argv[2]}`;
const output = process.argv[3];

readdirp({ root }, ).on('data', ({ path }) => {
    const src = `${root}/${path}`;
    const dst = `${output}/${path}`;

    const template = fs.readFileSync(src, 'utf8');
    const rendered = mustache.render(template, colors);

    mkdirp.sync(dst.substring(0, dst.lastIndexOf('/')));
    fs.writeFileSync(dst, rendered);

    // eslint-disable-next-line no-console
    console.log(`${src} -> ${dst}`);
}).on('end', () => {
    // eslint-disable-next-line no-console
    console.log('\nDone!');
});
