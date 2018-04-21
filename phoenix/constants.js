const MOD = ['ctrl', 'alt', 'cmd'];
const MOD_S = [...MOD, 'shift'];
let VERBOSE = false;
const HALF_CORRECTION = 6; // Fix padding issues for half screen windows

var scr = Screen.main().flippedVisibleFrame();
// Padding Values
var paddingTop = 0;
var paddingLeft = 0;
var paddingRight = 0;
var paddingBottom = 0;
var paddingCenter = 0;
var paddingMiddle = 0;
// Computed sizes
var halfWidth = ((scr.width - paddingLeft) - paddingRight) / 2;
var halfHeight = (((scr.height - paddingTop) - paddingBottom) / 2) + HALF_CORRECTION;

var windowLocations = {
    full: {
        y: paddingTop,
        x: paddingLeft,
        width: scr.width - paddingRight,
        height: scr.height - paddingBottom
    },
    left: {
        y: paddingTop,
        x: paddingLeft,
        width: halfWidth - paddingCenter,
        height: scr.height - paddingBottom
    },
    right: {
        y: paddingTop,
        x: (halfWidth + paddingLeft) + paddingCenter,
        width: halfWidth,
        height: scr.height - paddingBottom
    },
    //Corners
    topRight: {
        y: paddingTop,
        x: (halfWidth + paddingLeft) + paddingCenter,
        width: halfWidth,
        height: halfHeight
    },
    bottomRight: {
        y: (halfHeight + paddingTop) + paddingMiddle,
        x: (halfWidth + paddingLeft) + paddingCenter,
        width: halfWidth,
        height: halfHeight
    },
    topLeft: {
        y: paddingTop,
        x: paddingLeft,
        width: halfWidth - paddingCenter,
        height: halfHeight
    },
    bottomLeft: {
        y: (halfHeight + paddingTop) + paddingMiddle,
        x: paddingLeft,
        width: halfWidth - paddingCenter,
        height: halfHeight
    }
}
