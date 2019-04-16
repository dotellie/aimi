const { neutral, dark, light } = require('./definitions.json');

function invert(colors) {
    const entries = Object.entries(colors);
    const output = {};

    entries.forEach(([name], i) => {
        output[name] = entries[-i + entries.length - 1][1];
    });

    return output;
}

function neutralAliases(colors) {
    return {
        ...colors,
        bg: colors[0],
        fg: colors[7],
    };
}

module.exports = function generator(schemeName) {
    if (schemeName === 'dark') {
        return {
            spectrum: dark,
            neutral: neutralAliases(neutral),
        };
    } else if (schemeName === 'light') {
        return {
            spectrum: light,
            neutral: neutralAliases(invert(neutral)),
        };
    } else {
        throw new Error('unknown scheme name');
    }
}
