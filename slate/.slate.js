
var sox = "screenOriginX";

var soy = "screenOriginY";

var ssx = "screenSizeX";

var ssy = "screenSizeY";

S.configAll({
   "gridRoundedCornerSize" : 2,
   "gridCellRoundedCornerSize" : 2,
   "windowHintsFontSize" : 72,
//   "windowHintsFontColor" : "200;200;200;1.0",
   "nudgePercentOf" : 'screenSize',
   "resizePercentOf" : 'screenSize',
   "windowHintsIgnoreHiddenWindows" : false,
   "windowHintsShowIcons" : true,
  "windowHintsSpread" : true
});


var nudge_amt = "3%";

var resize_amt = "3%";

//set gp to 0 to disable it
var gap = "0";

var pos = {
   origin_x: sox + "+" + gap,
   origin_y: soy + "+" + gap,
   middle_x: sox + "+" + ssx + "/2+" + gap + "/2",
   middle_y: soy + "+" + ssy + "/2+" + gap + "/2"
};

var size = {
   full_width: ssx + "-" + gap + "*2",
   full_height: ssy + "-" + gap + "*2",
   half_width: ssx + "/2-" + gap + "-" + gap + "/2",
   half_height: ssy + "/2-" + gap + "-" + gap + "/2"
};

var presets = {
   fullscreen: {
      x: pos.origin_x,
      y: pos.origin_y,
      width: size.full_width,
      height: size.full_height
   },
   top_half: {
      x: pos.origin_x,
      y: pos.origin_y,
      width: size.full_width,
      height: size.half_height
   },
   bottom_half: {
      x: pos.origin_x,
      y: pos.middle_y,
      width: size.full_width,
      height: size.half_height
   },
   left_half: {
      x: pos.origin_x,
      y: pos.origin_y,
      width: size.half_width,
      height: size.full_height
   },
   right_half: {
      x: pos.middle_x,
      y: pos.origin_y,
      width: size.half_width,
      height: size.full_height
   },
   top_left_quarter: {
      x: pos.origin_x,
      y: pos.origin_y,
      width: size.half_width,
      height: size.half_height
   },
   top_right_quarter: {
      x: pos.middle_x,
      y: pos.origin_y,
      width: size.half_width,
      height: size.half_height
   },
   bottom_left_quarter: {
      x: pos.origin_x,
      y: pos.middle_y,
      width: size.half_width,
      height: size.half_height
   },
   bottom_right_quarter: {
      x: pos.middle_x,
      y: pos.middle_y,
      width: size.half_width,
      height: size.half_height
   }
};

var nudge = {
   left: S.op("nudge", {
      x: "-" + nudge_amt,
      y: "+0"

   }),
   right: S.op("nudge", {
      x: "+" + nudge_amt,
      y: "+0"

   }),
   up: S.op("nudge", {
      x: "+0",
      y: "-" + nudge_amt

   }),
   down: S.op("nudge", {
      x: "+0",
      y: "+" + nudge_amt

   })
};

var resize = {
   left: S.op("resize", {
      width: "-" + resize_amt,
      height: "+0"

   }),
   right: S.op("resize", {
      width: "+" + resize_amt,
      height: "+0"

   }),
   up: S.op("resize", {
      width: "+0",
      height: "-" + resize_amt

   }),
   down: S.op("resize", {
      width: "+0",
      height: "+" + resize_amt

   })
};

var focus = {
   left: S.op("focus", {
      "direction" : "left"
   }),
   right: S.op("focus", {
      "direction" : "right"
   }),
   up: S.op("focus", {
      "direction" : "up"
   }),
   down: S.op("focus", {
      "direction" : "down"
   })
};

var mod1 = function(k) {
   return k + ":ctrl,shift";
};

var mod2 = function(k) {
   return k + ":ctrl,alt";
};

var mod3 = function(k) {
   return k + ":ctrl,cmd";
};

var mod4 = function(k) {
   return k + ":alt,cmd";
};

var mod5 = function(k) {
   return k + ":alt,shift";
};


//S.bind(mod1("h"), nudge.left);
//S.bind(mod1("l"), nudge.right);
//S.bind(mod1("k"), nudge.up);
//S.bind(mod1("j"), nudge.down);

S.bind(mod2("/"), S.op("hint", {
   characters: "ASDFGHJKLQWERTYUIOP"
}));

S.bind(mod2("o"), S.op("move", presets.fullscreen));
S.bind(mod2("h"), S.op("move", presets.left_half));
S.bind(mod2("j"), S.op("move", presets.bottom_half));
S.bind(mod2("k"), S.op("move", presets.top_half));
S.bind(mod2("l"), S.op("move", presets.right_half));
S.bind(mod2("u"), S.op("move", presets.top_left_quarter));
S.bind(mod2("i"), S.op("move", presets.top_right_quarter));
S.bind(mod2("n"), S.op("move", presets.bottom_left_quarter));
S.bind(mod2("m"), S.op("move", presets.bottom_right_quarter));

S.bind(mod3("h"), S.op("throw", {
   screen: "0"
}));

S.bind(mod3("l"), S.op("throw", {
   screen: "1"
}));

//S.bind(mod4("h"), focus.left);
//S.bind(mod4("l"), focus.right);
//S.bind(mod4("k"), focus.up);
//S.bind(mod4("j"), focus.down);

//S.bind(mod5("h"), resize.left);
//S.bind(mod5("l"), resize.right);
//S.bind(mod5("k"), resize.up);
//S.bind(mod5("j"), resize.down);

