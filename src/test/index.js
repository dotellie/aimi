/* eslint-env mocha */

const { expect } = require('chai');
const { hex } = require('wcag-contrast');

const generator = require('../colors');

const WCAG_A = 3;
const WCAG_AA = 4.5;
const WCAG_AAA = 7;

function wcagSpectrumTest(colors, { standardContrast }) {
    Object.entries(colors.spectrum).forEach(([colorName, color]) => {
        describe(`#${colorName}`, () => {
            it('should pass standard contrast against background', () => {
                const contrast = hex(color, colors.neutral.bg);

                expect(contrast).to.be.at.least(standardContrast);
            });
        });
    });
}

function schemeTest(schemeName, requirements) {
    const { standardContrast, higherContrast } = requirements;

    describe(`#${schemeName}`, () => {
        const colors = generator(schemeName);
            
        wcagSpectrumTest(colors, requirements);

        describe('#neutral', () => {
            it('should pass higher constrast against foreground', () => {
                const contrast = hex(colors.neutral.bg, colors.neutral.fg);

                expect(contrast).to.be.at.least(higherContrast);
            });

            it('should pass standard contrast against lesser foreground', () => {
                const contrast = hex(colors.neutral.bg, colors.neutral[4]);

                expect(contrast).to.be.at.least(standardContrast);
            });
        });
    });
}

describe('Colors', () => {
    schemeTest('dark', { standardContrast: WCAG_AA, higherContrast: WCAG_AAA });
    schemeTest('light', { standardContrast: WCAG_A, higherContrast: WCAG_AA });
});
