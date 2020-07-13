"use strict"
const fs = require('fs')
const https = require("https")
const url = require("url")
const path = require('path')
const args = process.argv.slice(2)

Object.defineProperty(Object.prototype, "define", {
    writable:     false,
    enumerable:   false,
    configurable: true,
    value: function(key, value) {
        if (Object[key]) {
            delete Object[key]
        }
        Object.defineProperty(this, key, {
            writable:     false,
            enumerable:   false,
            configurable: true,
            value:        value
        })
        return this.key
    }
})
Array.prototype.define("each", Array.prototype.forEach)
String.prototype.define("each", function(fn) {
    let that = this
    that.split("").each(function(key) {
        fn.call(that, key)
    })
})
String.prototype.define("equals", function(that) {
    return this === that
})
Object.prototype.define("each", function(fn) {
    let obj = this
    Object.entries(obj).each(function(key) {
        fn.call(obj, key)
    })
})
Object.prototype.define("string", function(o) {
    return Object.prototype.toString.call(o)
})
Object.prototype.define("has", function(key) {
    return Object.prototype.hasOwnProperty.call(this, key)
})
Object.prototype.define("inherits", function(Parent) {
    let Child = this
    let hasProp = {}.hasOwnProperty
    function T() {
        this.constructor = Child
        this.constructor$ = Parent
        for(let propertyName in Parent.prototype) {
            if (hasProp.call(Parent.prototype, propertyName) && propertyName.charAt(propertyName.length-1) !== "$") {
                this[propertyName + "$"] = Parent.prototype[propertyName]
            }
        }
    }
    T.prototype = Parent.prototype
    Child.prototype = new T()
    return Child.prototype
})
Object.prototype.define("extend", function(src) {
    for(let i in src) {
        if (Object.prototype.hasOwnProperty(src, i)) {
            this[i] = src[i]
        }
    }
})
Object.prototype.define("class", function() {
    return Object.prototype.toString.call(this); 
})
Object.prototype.define("getPropertyNames", function() {
    return Object.getOwnPropertyNames(this)
})
Object.prototype.define("copy", function() {
    let obj = this
    const copy = Object.create(Object.getPrototypeOf(obj))
    const propNames = Object.getOwnPropertyNames(obj)
    
    propNames.forEach(function(name) {
        const desc = Object.getOwnPropertyDescriptor(obj, name)
        Object.defineProperty(copy, name, desc)
    })
    return copy
})
Object.prototype.define("fastProps", function() {
    function FakeConstructor() {}
    FakeConstructor.prototype = this
    let l = 8
    while(l--) {
        new FakeConstructor()
    }
    return this
    eval(this)
})
Object.prototype.define("merge", function(source, options) {
    let target = this
    if (!source) {
        return target
    }
    if (typeof source !== 'object') {
        if (Array.isArray(target)) {
            target.push(source)
        }
        else if (typeof target === 'object') {
            if (options.plainObjects || options.allowPrototypes || !has.call(Object.prototype, source)) {
                target[source] = true
            }
        }
        else {
            return [target, source]
        }
        return target
    }
    if (typeof target !== 'object') {
        return [target].concat(source)
    }
    let mergeTarget = target
    if (Array.isArray(target) && !Array.isArray(source)) {
        mergeTarget = exports.arrayToObject(target, options)
    }
    if (Array.isArray(target) && Array.isArray(source)) {
        source.forEach(function(item, i) {
            if (has.call(target, i)) {
                if (target[i] && typeof target[i] === 'object') {
                    target[i] = exports.merge(target[i], item, options)
                }
                else {
                    target.push(item)
                }
            }
            else {
                target[i] = item
            }
        })
        return target
    }
    return Object.keys(source).reduce(function(acc, key) {
        let value = source[key]
        if (has.call(acc, key)) {
            acc[key] = exports.merge(acc[key], value, options)
        }
        else {
            acc[key] = value
        }
        return acc
    }, mergeTarget)
})
Array.prototype.define("merge", function(b) {
    return {...this, ...b}
})
Array.define("merge", function(a, b) {
    return {...a, ...b}
})
Array.prototype.define("unique", function() {
    return [...new Set(this)] // Array.from(new Set(this))
})
Array.prototype.define("superset", function(subset) {
    for(let elem of subset) {
        if (!this.has(elem)) {
            return false
        }
    }
    return true
})
Array.prototype.define("union", function(setB) {
    let _union = new Set(this)
    for(let elem of setB) {
        _union.add(elem)
    }
    return _union
})
Array.prototype.define("intersection", function intersection(setB) {
    let _intersection = new Set()
    for(let elem of setB) {
        if (this.has(elem)) {
            _intersection.add(elem)
        }
    }
    return _intersection
})
Array.prototype.define("symmetricDifference", function(arrB) {
    let setB = new Set(arrB)
    let _difference = new Set(this)
    for(let elem of setB) {
        if (_difference.has(elem)) {
            _difference.delete(elem)
        }
        else {
            _difference.add(elem)
        }
    }
    return Array.from(_difference)
})
Array.prototype.define("difference", function(arrB) {
    let setB = new Set(arrB)
    let _difference = new Set(this)
    for(let elem of setB) {
        _difference.delete(elem)
    }
    return Array.from(_difference)
})
Array.prototype.define("flat", function(depth) {
    let flattened = [];
    (function flat(array, depth) {
        for (let el of array) {
            if (Array.isArray(el) && depth > 0) {
                flat(el, depth - 1); 
            } 
            else {
                flattened.push(el);
            }
        }
    })(this, Math.floor(depth) || 1);
    return flattened;
})
Array.prototype.define("copyWithin", function(target, start/*, end*/) {
    // Steps 1-2.
    if (this == null) {
        throw new TypeError('this is null or not defined');
    }

    let O = Object(this);

    // Steps 3-5.
    let len = O.length >>> 0;

    // Steps 6-8.
    let relativeTarget = target >> 0;

    let to = relativeTarget < 0 ?
        Math.max(len + relativeTarget, 0) :
        Math.min(relativeTarget, len);

    // Steps 9-11.
    let relativeStart = start >> 0;

    let from = relativeStart < 0 ?
        Math.max(len + relativeStart, 0) :
        Math.min(relativeStart, len);

    // Steps 12-14.
    let end = arguments[2];
    let relativeEnd = end === undefined ? len : end >> 0;

    let final = relativeEnd < 0 ?
        Math.max(len + relativeEnd, 0) :
        Math.min(relativeEnd, len);

    // Step 15.
    let count = Math.min(final - from, len - to);

    // Steps 16-17.
    let direction = 1;

    if (from < to && to < (from + count)) {
        direction = -1;
        from += count - 1;
        to += count - 1;
    }

    // Step 18.
    while (count > 0) {
        if (from in O) {
            O[to] = O[from];
        } else {
            delete O[to];
        }

        from += direction;
        to += direction;
        count--;
    }

    // Step 19.
    return O;
});
Object.prototype.define("log", function() {
    console.log(this)
})
Array.prototype.define("log", function() {
    this.each(el => console.log(el))
})
Array.prototype.define("first", {
    enumerable: false,
    configurable: true,
    get: function() {
        return this[0];
    },
    set: function(a) {
        this[0] = a;
        return this;
    }
}); 
Array.prototype.define("start", {
    enumerable: false,
    configurable: true,
    get: function() {
        return 0;
    }
}); 
Array.prototype.define("end", {
    enumerable: false,
    configurable: true,
    get: function() {
        return this.length-1;
    }
}); 
Array.prototype.define("last", {
    enumerable: false,
    configurable: true,
    get: function() {
        return this.length-1;
    }
}); 
let Is = Object.create({})
Is.define("primitive", function(arg) {
    return arg === null
    || typeof arg === 'boolean' 
    || typeof arg === 'number' 
    || typeof arg === 'string' 
    || typeof arg === 'symbol' 
    || typeof arg === 'undefined'
})
Is.define("object", function(arg) {
    return typeof arg === "function" || typeof arg === 'object' && arg !== null
})
Is.define("error", function(e) {
    return Object.prototype.toString.call(e) === '[object Error]' || e instanceof Error
})
Is.define("regex", function(obj) {
    return Object.prototype.toString.call(obj) === '[object RegExp]'
})
Is.define("buffer", function(obj) {
    if (obj === null || typeof obj === 'undefined') {
        return false
    }
    return !!(obj.constructor && obj.constructor.isBuffer && obj.constructor.isBuffer(obj))
})
Is.define("string", function(input) {
    return "[object String]" === Object.prototype.toString.call(input) || typeof input === 'string'
})
Is.define("tag", function(type) {
    let tags = {tag: true, script: true, style: true}
    if (type.type) {
        type = type.type
    }
    return tags[type] || false
})
Is.define("html", function(str) {
    // Faster than running regex, if str starts with `<` and ends with `>`, assume it's HTML
    if (str.charAt(0) === '<' && str.charAt(str.length - 1) === '>' && str.length >= 3) {
        return true
    }
    // Run the regex
    let match = quickExpr.exec(str)
    return !!(match && match[1])
})
Is.define("validEntityCode", function(c) {
    /*eslint no-bitwise:0*/
    // broken sequence
    if (c >= 0xD800 && c <= 0xDFFF) {
        return false
    }
    // never used
    if (c >= 0xFDD0 && c <= 0xFDEF) {
        return false
    }
    if ((c & 0xFFFF) === 0xFFFF ||(c & 0xFFFF) === 0xFFFE) {
        return false
    }
    // control codes
    if (c >= 0x00 && c <= 0x08) {
        return false
    }
    if (c === 0x0B) {
        return false
    }
    if (c >= 0x0E && c <= 0x1F) {
        return false
    }
    if (c >= 0x7F && c <= 0x9F) {
        return false
    }
    // out of range
    if (c > 0x10FFFF) {
        return false
    }
    return true
})
Is.define("space", function(code) {
    switch(code) {
        case 0x09:
        case 0x20:
        return true
    }
    return false
})
// Zs(unicode class) || [\t\f\v\r\n]
Is.define("whiteSpace", function(code) {
    if (code >= 0x2000 && code <= 0x200A) {
        return true
    }
    switch(code) {
        case 0x09: // \t
        case 0x0A: // \n
        case 0x0B: // \v
        case 0x0C: // \f
        case 0x0D: // \r
        case 0x20:
        case 0xA0:
        case 0x1680:
        case 0x202F:
        case 0x205F:
        case 0x3000:
        return true
    }
    return false
})
Is.define("promise", function(value) {
    return typeof value === 'object' && typeof value.then === 'function'
})
Is.define("array", function(arg) {
    if (Array.isArray) {
        return Array.isArray(arg)
    }
    return Object.prototype.toString.call(obj) === "[object Array]"
})
Is.define("boolean", function(arg) {
    return typeof arg === 'boolean'
})
Is.define("null", function(arg) {
    return arg === null
})
Is.define("nullOrUndefined", function(arg) {
    return arg == null
})
Is.define("number", function(arg) {
    return typeof arg === 'number'
})
Is.define("symbol", function(arg) {
    return typeof arg === 'symbol'
})
Is.define("undefined", function(arg) {
    return arg === void 0
})
Is.define("date", function(d) {
    return Object.prototype.toString.call(obj) === "[object Date]"
})
Is.define("function", function(arg) {
    return typeof arg === 'function'
})
Is.define("absolute", function(aPath) {
    return aPath.charAt(0) === '/' || urlRegexp.test(aPath)
})
Is.define("numeric", function(i) {
    return "" !== i && +i == i && (String(i) === String(+i) || !/[^\d.]+/.test(i))
})
Is.define("identifier", function(str) {
    return /^[a-z$_][a-z$_0-9]*$/i.test(str)
})
Is.define("protoString", function(s) {
    if (!s) {
        return false
    }
    let length = s.length
    if (length < 9 /* "__proto__".length */) {
        return false
    }
    if ( s.charCodeAt(length - 1) !== 95  /* '_' */ 
    || s.charCodeAt(length - 2) !== 95  /* '_' */ 
    || s.charCodeAt(length - 3) !== 111 /* 'o' */ 
    || s.charCodeAt(length - 4) !== 116 /* 't' */ 
    || s.charCodeAt(length - 5) !== 111 /* 'o' */ 
    || s.charCodeAt(length - 6) !== 114 /* 'r' */ 
    || s.charCodeAt(length - 7) !== 112 /* 'p' */ 
    || s.charCodeAt(length - 8) !== 95  /* '_' */ 
    || s.charCodeAt(length - 9) !== 95  /* '_' */) {
        return false
    }
    for(let i = length - 10; i >= 0; i--) {
        if (s.charCodeAt(i) !== 36 /* '$' */) {
            return false
        }
    }
    return true
})
Is.define("type", function(value) {
    if (value === undefined) {
        return 'undefined';
    }
    else if (value === null) {
        return 'null';
    }
    else if (Buffer.isBuffer(value)) {
        return 'buffer';
    }
    return Object.prototype.toString.call(value)
    .replace(/^\[.+\s(.+?)]$/, '$1')
    .toLowerCase();
})
Is.define("stringMap", function(obj) {
    let map;
    if (typeof obj === "object") {
        map = {};
        for (let field in obj) {
            let property = obj[field];
            let propertyType = typeof property;
            if (propertyType !== "string") {
                if (property && typeof property.toString === "function") {
                    property = property.toString();
                }
                else {
                    property = "invalid property type: " + propertyType;
                }
            }
            map[field] = property.trim(0, Util.MAX_PROPERTY_LENGTH);
        }
    }
    else {
        Logging.info("Invalid properties dropped from payload");
    }
    return map;
})
String.prototype.define("compare", function(str) {
    if (this === str) {
        return 0
    }
    if (this === null) {
        return 1; // str !== null
    }
    if (str === null) {
        return -1; // this !== null
    }
    if (this > str) {
        return 1
    }
    return -1
})
Array.define("range", function(count, prefix, suffix) {
    let ret = new Array(count)
    for(let i = 0; i < count; ++i) {
        ret[i] = prefix + i + suffix
    }
    return ret
})
Array.prototype.define("postpend", function withAppended(target, appendee) {
    let len = target.length
    let ret = new Array(len + 1)
    let i
    for(i = 0; i < len; ++i) {
        ret[i] = target[i]
    }
    ret[i] = appendee
    return ret
})
Error.prototype.define("throw", function() {
    throw this
})
String.prototype.define("escape", function() {
    return this.replace(/([/\\^$*+?{}[\]().|])/g, "\\$1")
})
String.prototype.define("repeat", function(num) {
    let result = ''
    for(let i = 0; i < num; i++) {
        result += this
    }
    return result
})
Array.define("equal", function(a, b) {
    if (a.length !== b.length) {
        return false
    }
    for(let i = 0; i < a.length; i++) {
        if (a[i] !== b[i]) {
            return false
        }
    }
    return true
})
Array.prototype.define("equals", function(b) {
    let a = this
    if (a.length !== b.length) {
        return false
    }
    for(let i = 0; i < a.length; i++) {
        if (a[i] !== b[i]) {
            return false
        }
    }
    return true
})
String.prototype.define("trimChars", function(chars) {
    let str = this
    let start = 0
    let end = str.length - 1
    while(chars.indexOf(str.charAt(start)) >= 0) {
        start++
    }
    while(chars.indexOf(str.charAt(end)) >= 0) {
        end--
    }
    return str.slice(start, end + 1)
})
String.prototype.define("toProperCase", function() {
    return this.charAt(0).toUpperCase() + this.slice(1)
})
String.prototype.define("toCamelCase", function() {
    return this.replace(/[_.-](\w|$)/g, function(_, x) {
        return x.toUpperCase()
    })
})
String.prototype.define("toCssCase", function() {
    return this.replace(/[A-Z]/g, '-$&').toLowerCase()
})
Object.prototype.define("assign", function(/*from1, from2, from3, ...*/) {
    let obj = this
    let sources = Array.prototype.slice.call(arguments, 1)
    sources.forEach(function(source) {
        if (!source) {
            return
        }
        if (typeof source !== 'object') {
            throw new TypeError(source + 'must be object')
        }
        Object.keys(source).forEach(function(key) {
            obj[key] = source[key]
        })
    })
    return obj
})
Array.prototype.define("replaceAt", function(pos, newElements) {
    return [].concat(this.slice(0, pos), newElements, this.slice(pos + 1))
})
String.prototype.define("kludge", function caseKludge(fuzz = false) {
    let input = this
    let output = input.split("").map((s, index, array) => {
        if (/[A-Z]/.test(s)){
            const output = "[" + s + s.toLowerCase() + "]";
            const prev   = array[index - 1];
            if (fuzz && prev && /[a-z]/.test(prev))
            return "[\\W_\\S]*" + output;
            return output;
        }
        if (/[a-z]/.test(s))     return "[" + s.toUpperCase() + s + "]";
        if (!fuzz)               return s.replace(/([/\\^$*+?{}[\]().|])/g, "\\$1");
        if ("0" === s)           return "[0Oo]";
        if (/[\W_ \t]?/.test(s)) return "[\\W_ \\t]?";
        return s;
    }).join("");
    if (fuzz)
    output = output.replace(/\[Oo\]/g, "[0Oo]");
    return output.replace(/(\[\w{2,3}\])(\1+)/g,(match, first, rest) => {
        return first + "{" +((rest.length / first.length) + 1) + "}";
    });
})
Array.prototype.define("collect", function(refs = null) {
    let input = this
    refs = refs || new WeakSet();
    input = "string" === typeof input ? [input] : refs.add(input) && Array.from(input);
    const output = [];
    for(const value of input){
        if (!value) continue;
        switch(typeof value){
            case "string":
            output.push(...value.split(/\s+/));
            break;
            case "object":
            if (refs.has(value)) continue;
            refs.add(value);
            output.push(...collectStrings(value, refs));
        }
    }
    return output;
})
RegExp.prototype.define("uncapture", function() {
    let pattern = this
    const source = pattern.source
    .split(/\((?!\?[=<!])/)
    .map((segment, index, array) => {
        if (!index) return segment;
        return !/^(?:[^\\]|\\.)*\\$/.test(array[index - 1])
        ? segment.replace(/^(?:\?:)?/, "(?:")
        : segment.replace(/^/, "(");
    })
    .join("");
    return new RegExp(source, pattern.flags);
})
RegExp.prototype.define("fuzzy", function(format = RegExp) {
    let input = this
    if ("[object String]" !== Object.prototype.toString.call(input)) {
        return input;
    }
    const output = input
    .replace(/([A-Z])([A-Z]+)/g,(a, b, c) => b + c.toLowerCase())
    .split(/\B(?=[A-Z])|[-\s]/g)
    .map(i => i.replace(/([/\\^$*+?{}[\]().|])/g, "\\$1?"))
    .join("[\\W_ \\t]?")
    .replace(/[0Oo]/g, "[0o]");
    // Author's requested the regex source, return a string
    if (String === format) {return output;}
    // Otherwise, crank the fuzz
    return new RegExp(output, "i");
})
Date.prototype.define("wait", function(delay = 100) {
    return new Promise(resolve => {
        setTimeout(() => resolve(), delay);
    });
})
String.prototype.define("escape", function() {
    return this.replace(/[.?*+^$[\]\\(){}|-]/g, '\\$&');
})
String.prototype.define("slug", function() {
    return this.toLowerCase().replace(/ +/g, '-').replace(/[^-\w]/g, '');
})
// String.prototype.define("nativeReplace", String.prototype.replace)
// String.prototype.define("replace", function() {
//     // regexp|substr, newSubstr|function
//     if (arguments.length === 1) {
//         return this.nativeReplace(arguments[0], "")
//     }
//     if (arguments.length === 2) {
//         return this.nativeReplace(arguments[0], arguments[1])
//     }
// })
Math.random32 = function() {
    return (0x100000000 * Math.random()) | 0;
}
Math.guid = function() {
    let hexValues = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"];
    // c.f. rfc4122 (UUID version 4 = xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx)
    let oct = "", tmp;
    for (let a = 0; a < 4; a++) {
        tmp = Util.random32();
        oct +=
        hexValues[tmp & 0xF] +
        hexValues[tmp >> 4 & 0xF] +
        hexValues[tmp >> 8 & 0xF] +
        hexValues[tmp >> 12 & 0xF] +
        hexValues[tmp >> 16 & 0xF] +
        hexValues[tmp >> 20 & 0xF] +
        hexValues[tmp >> 24 & 0xF] +
        hexValues[tmp >> 28 & 0xF];
    }
    // "Set the two most significant bits (bits 6 and 7) of the clock_seq_hi_and_reserved to zero and one, respectively"
    let clockSequenceHi = hexValues[8 + (Math.random() * 4) | 0];
    return oct.substr(0, 8) + "-" + oct.substr(9, 4) + "-4" + oct.substr(13, 3) + "-" + clockSequenceHi + oct.substr(16, 3) + "-" + oct.substr(19, 12);
};
Date.define("toTimeSpan", function(totalms) {
    if (isNaN(totalms) || totalms < 0) {
        totalms = 0;
    }
    let ms = "" + totalms % 1000;
    let sec = "" + Math.floor(totalms / 1000) % 60;
    let min = "" + Math.floor(totalms / (1000 * 60)) % 60;
    let hour = "" + Math.floor(totalms / (1000 * 60 * 60)) % 24;
    ms = ms.length === 1 ? "00" + ms : ms.length === 2 ? "0" + ms : ms;
    sec = sec.length < 2 ? "0" + sec : sec;
    min = min.length < 2 ? "0" + min : min;
    hour = hour.length < 2 ? "0" + hour : hour;
    return hour + ":" + min + ":" + sec + "." + ms;
})
Array.prototype.define("toObject", function(options) {
    let source = this
    let obj = options && options.plainObjects ? Object.create(null) : {};
    for(let i = 0; i < source.length; ++i) {
        if (typeof source[i] !== 'undefined') {
            obj[i] = source[i];
        }
    }
    return obj;
})
Array.prototype.define("first", function() {
    return this[0]
})
Array.prototype.define("last", function() {
    return this[this.length-1]
})
Array.prototype.define("swap", function(a, b) {
    // this[a] = this.splice(b, 1, this[a])[0]; // slower but prettier
    let tmp = this[a];
    this[a] = this[b];
    this[b] = tmp;
    return this;
});
Array.prototype.define("nativeSort", Array.prototype.sort)
Object.prototype.dump = function (indent) {
    let obj = this;
    let result = "";
    if (indent == null) indent = "";
    for (let property in obj) {
        let value = obj[property];
        if (typeof value == 'string') value = "'" + value + "'";
        else if (typeof value == 'object') {
            if (value instanceof Array) {
                value = "[" + value + "]";
            } 
            else {
                let od = DumpObjectIndented(value, indent + "  ");
                value = "\n" + indent + "{\n" + od + "\n" + indent + "}";
            }
        }
        result += indent + "'" + property + "' : " + value + ",\n";
    }
    return result.replace(/,\n$/, "");
}
Array.prototype.define("sort", function(attribute, caseInsensitive) {
    return this.nativeSort(new Intl.Collator(undefined, {numeric: true, sensitivity: 'base'}).compare)
})  
String.prototype.replaceAll = function(search, replacement) {
    let target = this;
    return target.replace(new RegExp(search, 'g'), replacement);
    // return target.split(search).join(replacement);
};
String.prototype.define("nativeReplace", String.prototype.replace)
String.prototype.define("replace", function() {
    if (arguments.length < 2) {
        return this.nativeReplace(arguments[0], "")
    }
    return this.nativeReplace(arguments[0], arguments[1])
})
global.define("end", function(){
    process.exit()
})
global.define("exit", function(){
    process.exit()
})
Date.define("display", function() {
    let d = new Date()
    return d.getDate() + "-" + (d.getMonth() + 1) + "-" + d.getFullYear()
})
Array.prototype.define("chunk", function(size) {
    let R = []
    for (let i = 0; i < this.length; i+=size) {
        R.push(this.slice(i, i + size))
    }
    return R
})
String.prototype.define("isNumeric", function() {
    return !isNaN(this)
})
Number.prototype.define("isNumeric", function() {
    return !isNaN(this)
})
String.prototype.define("includesAny", function(arr) {
    return arr.some(thing => this.includes(thing))
})
String.prototype.define("matchesAny", function(regexes) {
    // return regexes.some(regex => regex.test(this))
    return haystack.some(function(hay) {
        if (Is.regex(hay)) return hay.test(this)
        if (Is.string(hay)) return hay.includes(this)
    })
})
Array.prototype.define("testAll", function(regex) {
    return arr.some(thing => regex.test(thing))
})
Array.prototype.define("compact", function() {
    return this.filter(Boolean)
})
Array.prototype.define("clean", function() {
    return this.filter(Boolean)
})
Array.prototype.define("everyNth", function(nth) {
    return this.filter((e, i) => i % nth === nth - 1)
})
Array.prototype.define("toCSV", function(delimiter = ',') {
    return this.map(v => v.map(x => (isNaN(x) ? `"${x.replace(/"/g, '""')}"` : x)).join(delimiter)).join('\n');
})
Array.prototype.define("pluck", function(indices) {
    let i, result = []
    for(i = 0; i < indices.length; i++) {
        result.push(this[indices[i]])
    }
    return result
})
Array.prototype.define("fill", function(value) {
    
    // Steps 1-2.
    if (this == null) {
        throw new TypeError('this is null or not defined');
    }
    
    let O = Object(this);
    
    // Steps 3-5.
    let len = O.length >>> 0;
    
    // Steps 6-7.
    let start = arguments[1];
    let relativeStart = start >> 0;
    
    // Step 8.
    let k = relativeStart < 0 ?
    Math.max(len + relativeStart, 0) :
    Math.min(relativeStart, len);
    
    // Steps 9-10.
    let end = arguments[2];
    let relativeEnd = end === undefined 
    ? len 
    : end >> 0;
    
    // Step 11.
    let final = relativeEnd < 0 
    ? Math.max(len + relativeEnd, 0) 
    : Math.min(relativeEnd, len);
    
    // Step 12.
    while (k < final) {
        if (Is.function(value)) {
            O[k] = value(k);
        }
        else {
            O[k] = value;
        }
        k++;
    }
    
    // Step 13.
    return O;
})
Math.define("nativeRandom", Math.random)
Math.define("random", function() {
    let min, max, step
    if (arguments.length === 0) {
        min = 0
        max = 1
    }
    if (arguments.length === 1) {
        min = 0
        max = arguments[0]
    }
    if (arguments.length === 2) {
        min = arguments[0]
        max = arguments[1]
    }
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.nativeRandom() * (max - min + 1)) + min; //The maximum is inclusive and the minimum is inclusive 
})
JSON.toCSV = function(arr, columns, delimiter = ',') {
    return [
        columns.join(delimiter),
        ...arr.map(obj =>
            columns.reduce(
                (acc, key) => `${acc}${!acc.length ? '' : delimiter}"${!obj[key] ? '' : obj[key]}"`,
                ''
            )
        )
    ].join('\n')
}
const partition = (arr, fn) =>
arr.reduce(
    (acc, val, i, arr) => {
        acc[fn(val, i, arr) ? 0 : 1].push(val);
        return acc;
    },
    [[], []]
);
const permutations = arr => {
    if (arr.length <= 2) return arr.length === 2 ? [arr, [arr[1], arr[0]]] : arr;
    return arr.reduce(
        (acc, item, i) =>
        acc.concat(
            permutations([...arr.slice(0, i), ...arr.slice(i + 1)]).map(val => [item, ...val])
        ),
        []
    );
};
fs.define("getFile", function(path) {
    // .replace(/[^\w\s\.,\(\);\/]/gi, "")
    return fs.readFileSync(path, 'utf8')//.split(/\r?\n/).map(x => x.trim())
})
fs.define("getFileAsLines", function(path) {
    // .replace(/[^\w\s\.,\(\);\/]/gi, "")
    return fs.readFileSync(path, 'utf8').split(/\r?\n/)//.map(x => x.trim())
})
fs.define("setFile", function(path, contents) {
    // mkdirp(path.split("/").slice(0, -1).join("/"))
    return fs.writeFileSync(path, contents)
})
fs.define("copyFile", function(source, target) {
    return fs.setFile(target, fs.getFile(source))
})
fs.define("isFile", function(pathItem) {
    return !!path.extname(pathItem);
})
fs.define("isDir", function(path) {
    try {
        let stat = fs.lstatSync(path);
        return stat.isDirectory();
    } catch (e) {
        return false;
    }
})
fs.define("setDir", function(handle) {
    function ensureDirectoryExistence(filePath) {
        let dirname = path.dirname(filePath);
        if (fs.existsSync(dirname)) {
            return true;
        }
        ensureDirectoryExistence(dirname);
        fs.mkdirSync(dirname);
    }
    ensureDirectoryExistence(handle)
})
fs.define("getFolder", function(path) {
    try {
        return fs.readdirSync(path, 'utf8')
    }
    catch (e) {
        return []
    }
})
fs.define("walkSync", function(dir, filelist, depth=1) {
    filelist = filelist || []
    let files = fs.getFolder(dir)
    files.each(function(file) {
        filelist.push(dir + '/' + file)
        if (depth === 0) return
        // // if (file.includes("node_modules")) return
        if (fs.statSync(dir + '/' + file).isDirectory()) {
            filelist.concat(fs.walkSync(dir + '/' + file, filelist, depth-1))
        }
    })
    return filelist;
})
module.exports = {Is}
