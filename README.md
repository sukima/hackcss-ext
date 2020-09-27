<p align="center">
  <img src="./media/logo.png" width="60" /><br><br>
  <a href="https://npmjs.com/package/hackcss-ext"><img src="https://img.shields.io/npm/v/hackcss-ext.svg?style=flat-square" alt="npm version"></a> <a href="https://npmjs.com/package/hackcss-ext"><img src="https://img.shields.io/npm/dm/hackcss-ext.svg?style=flat-square" alt="npm downloads"></a>
</p>

<details><summary>Table of Contents</summary>

- [Install](#install)
- [Development](#development)
- [License](#license)

</details>

## Install

```bash
$ npm install --save hackcss-ext
```

Option #1: Use any pre-processor

```js
import 'hackcss-ext'
```

Option #2: hot-link the css files:

```html
<link rel="stylesheet" href="/path/to/hack.css">

<!-- markdown theme -->
<body class="hack"></body>

<!-- standard theme -->
<link rel="stylesheet" href="/path/to/standard.css">
<body class="standard"></body>

<!-- dark theme -->
<link rel="stylesheet" href="/path/to/dark.css">
<body class="hack dark"></body>

<!-- dark-grey theme -->
<link rel="stylesheet" href="/path/to/dark-grey.css">
<body class="hack dark-grey"></body>

<!-- solarized-dark theme -->
<link rel="stylesheet" href="/path/to/solarized-dark.css">
<body class="hack solarized-dark"></body>
```

## Development

We use GNU Make. Most all systems have it and if not I don't know what to tell you.

```bash
$ make
```

## License

MIT 2016 &copy; [EGOIST](https://github.com/egoist)

MIT 2020 &copy; [Sukima](https://github.com/sukima)

Logo was generated with [slogan](https://github.com/egoist/slogan).
