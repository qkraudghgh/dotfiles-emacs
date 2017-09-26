module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: '"Meslo LG S for Powerline", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color (hex)
    cursorColor: 'rgba(255,255,255,.2)',

    // color of the text
    foregroundColor: 'rgb(131,148,150)',

    // terminal background color
    backgroundColor: '#0a1a1f',//'rgba(2, 40, 50, 1)',

    // border color (window, tabs)
    borderColor: 'rgba(255,255,255,.1)',

    // custom css to embed in the main window
    css: 'header.t_header {background: transparent!important;}',

    // custom padding (css format, i.e.: `top right bottom left`)
    termCSS: '',

    // custom padding
    padding: '0px 0px',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      '#002834',
      '#dc322f',
      '#859901',
      '#b58901',
      '#268bd2',
      '#d33682',
      '#2aa198',
      '#eee8d5',
      '#839496',
      '#cb4b16',
      '#3d713a',
      '#83773b',
      '#839496',
      '#839496',
      '#93a1a1',
      '#93a1a1'
    ]
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hypersolar`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
}
