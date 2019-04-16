/* eslint-env mocha */

const { expect } = require('chai');
const { hex } = require('wcag-contrast');

const generator = require('../colors');

const WCAG_AA = 4.5;
const WCAG_AAA = 7;

function wcagSpectrumTest(colors) {
    Object.entries(colors.spectrum).forEach(([colorName, color]) => {
        describe(`#${colorName}`, () => {
            it('should pass WCAG AA against background', () => {
                const contrast = hex(color, colors.neutral.bg);

                expect(contrast).to.be.at.least(WCAG_AA);
            });
        });
    });
}

function schemeTest(schemeName) {
    describe(`#${schemeName}`, () => {
        const colors = generator(schemeName);
            
        wcagSpectrumTest(colors);

        describe('#neutral', () => {
            it('should pass WCAG AAA against foreground', () => {
                const contrast = hex(colors.neutral.bg, colors.neutral.fg);

                expect(contrast).to.be.at.least(WCAG_AAA);
            });

            it('should pass WCAG AA against lesser foreground', () => {
                const contrast = hex(colors.neutral.bg, colors.neutral[4]);

                expect(contrast).to.be.at.least(WCAG_AA);
            });
        });
    });
}

describe('Colors', () => {
    schemeTest('dark');
    schemeTest('light');
});
