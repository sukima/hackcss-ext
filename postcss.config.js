module.exports = (ctx) => ({
  map: ctx.options.map,
  parser: ctx.options.parser,
  plugins: {
		'postcss-import': { root: ctx.file.dirname },
		'postcss-mixins': {},
		'postcss-simple-vars': {},
		'postcss-cssnext': { browsers: ['last 2 versions', 'ie > 8'] },
		'cssnano': ctx.env === 'production' ? { autoprefixer: false } : false,
  },
});
