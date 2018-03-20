// For more information on customizing Oni,
// check out our wiki page:
// https://github.com/onivim/oni/wiki/Configuration

const activate = (oni) => {
  console.log('config activated')

  // Input
  //
  // Add input bindings here:
  //
  oni.input.bind('<c-enter>', () => console.log('Control+Enter was pressed'))

  //
  // Or remove the default bindings here by uncommenting the below line:
  //
  // oni.input.unbind("<c-p>")
}

const deactivate = () => {
  console.log('config deactivated')
}

module.exports = {
  activate,
  deactivate,
  //add custom config here, such as

  'ui.colorscheme': 'onedark',

  // general settings
  'oni.useDefaultConfig': false,
  'oni.bookmarks': ['~/Dropbox/Research'],
  'oni.loadInitVim': true,
  'autoUpdate.enabled': true,

  // editor settings
  'editor.completions.mode': true,
  'editor.fontSize': '14px',
  'editor.fontFamily': 'Inconsolata',
  'editor.quickInfo.delay': 300,
  'editor.cursorLine': true,

  // UI customizations
  'ui.animations.enabled': true,
  'ui.fontSmoothing': 'auto',
  'tabs.height': '1.8em',
  'tabs.showIndex': true,

  // custom grammar files
  'editor.textMateHighlighting.enabled': true,
  'language.c.textMateGrammar' : { '.c' : '~/.dotfiles/textmate-grammars/c.tmLanguage.json', '.h' : '~/.dotfiles/textmate-grammars/c.tmLanguage.json' },
  'language.css.textMateGrammar' : { '.css' : '~/.dotfiles/textmate-grammars/css.tmLanguage.json'},
  'language.cpp.textMateGrammar' : { '.cpp' : '~/.dotfiles/textmate-grammars/cpp.tmLanguage.json', '.hpp' : '~/.dotfiles/textmate-grammars/cpp.tmLanguage.json' },
  'language.html.textMateGrammar' : { '.html' : '~/.dotfiles/textmate-grammars/html.tmLanguage.json'},
  'language.javascript.textMateGrammar': { '.js' : '~/.dotfiles/textmate-grammars/JavaScript.tmLanguage.json', '.jsx' : '~/.dotfiles/textmate-grammars/JavaScriptReact.tmLanguage.json' },
  'language.json.textMateGrammar' : { '.json' : '~/.dotfiles/textmate-grammars/json.tmLanguage.json'},
  'language.markdown.textMateGrammar' : { '.md' : '~/.dotfiles/textmate-grammars/markdown.tmLanguage.json'},
  'language.make.textMateGrammar' : { 'Makefile' : '~/.dotfiles/textmate-grammars/make.tmLanguage.json'},
  'language.python.textMateGrammar' : { '.py' : '~/.dotfiles/textmate-grammars/python.tmLanguage.json'},
  'language.php.textMateGrammar' : { '.php' : '~/.dotfiles/textmate-grammars/php.tmLanguage.json'},
  'language.php.textMateGrammar' : { '.php' : '~/.dotfiles/textmate-grammars/php.tmLanguage.json'},
  'language.sql.textMateGrammar' : { '.sql' : '~/.dotfiles/textmate-grammars/sql.tmLanguage.json'},
  'language.xml.textMateGrammar' : { '.xml' : '~/.dotfiles/textmate-grammars/xml.tmLanguage.json'},
  'language.yaml.textMateGrammar' : { '.yaml' : '~/.dotfiles/textmate-grammars/yaml.tmLanguage.json'},
}
