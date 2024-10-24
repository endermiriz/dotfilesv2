// prettier.config.js, .prettierrc.js, prettier.config.mjs, or .prettierrc.mjs

/**
 * @see https://prettier.io/docs/en/configuration.html
 * @type {import("prettier").Config}
 */
const config = {
	arrowParens: "always",
	bracketSpacing: true,
	endOfLine: "lf",
	htmlWhitespaceSensitivity: "css",
	insertPragma: false,
	singleAttributePerLine: false,
	bracketSameLine: true,
	jsxSingleQuote: false,
	printWidth: 140,
	proseWrap: "preserve",
	quoteProps: "as-needed",
	requirePragma: false,
	semi: true,
	singleQuote: false,
	tabWidth: 4,
	trailingComma: "none",
	useTabs: true,
	embeddedLanguageFormatting: "auto"
};

module.exports = config;
