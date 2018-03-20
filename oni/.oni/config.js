// For more information on customizing Oni,
// check out our wiki page:
// https://github.com/onivim/oni/wiki/Configuration

const activate = (oni) => {
    console.log("config activated")

    // Input 
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))

    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
}

const deactivate = () => {
    console.log("config deactivated")
}

module.exports = {
    activate,
    deactivate,
   //add custom config here, such as

    "ui.colorscheme": "onedark",

    // general settings
    "oni.useDefaultConfig": false,
    "oni.bookmarks": ["~/Dropbox/Research"],
    "oni.loadInitVim": "~/.oni/init.vim",
    "autoUpdate.enabled": true,

    // editor settings
    "editor.completions.mode": true,
    "editor.fontSize": "14px",
    "editor.fontFamily": "Inconsolata",
    "editor.quickInfo.delay": 300,
    "editor.cursorLine": true,
    "editor.textMateHighlighting.enabled": true,
    
    // UI customizations
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "auto",
    "tabs.height": "1.8em",
    "tabs.showIndex": true,
}

