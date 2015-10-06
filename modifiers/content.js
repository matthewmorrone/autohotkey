﻿/*! jQuery v1.11.0 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */
!function(a,b){"object"==typeof module&&"object"==typeof module.exports?module.exports=a.document?b(a,!0):function(a){if(!a.document)throw new Error("jQuery requires a window with a document");return b(a)}:b(a)}("undefined"!=typeof window?window:this,function(a,b){var c=[],d=c.slice,e=c.concat,f=c.push,g=c.indexOf,h={},i=h.toString,j=h.hasOwnProperty,k="".trim,l={},m="1.11.0",n=function(a,b){return new n.fn.init(a,b)},o=/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,p=/^-ms-/,q=/-([\da-z])/gi,r=function(a,b){return b.toUpperCase()};n.fn=n.prototype={jquery:m,constructor:n,selector:"",length:0,toArray:function(){return d.call(this)},get:function(a){return null!=a?0>a?this[a+this.length]:this[a]:d.call(this)},pushStack:function(a){var b=n.merge(this.constructor(),a);return b.prevObject=this,b.context=this.context,b},each:function(a,b){return n.each(this,a,b)},map:function(a){return this.pushStack(n.map(this,function(b,c){return a.call(b,c,b)}))},slice:function(){return this.pushStack(d.apply(this,arguments))},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},eq:function(a){var b=this.length,c=+a+(0>a?b:0);return this.pushStack(c>=0&&b>c?[this[c]]:[])},end:function(){return this.prevObject||this.constructor(null)},push:f,sort:c.sort,splice:c.splice},n.extend=n.fn.extend=function(){var a,b,c,d,e,f,g=arguments[0]||{},h=1,i=arguments.length,j=!1;for("boolean"==typeof g&&(j=g,g=arguments[h]||{},h++),"object"==typeof g||n.isFunction(g)||(g={}),h===i&&(g=this,h--);i>h;h++)if(null!=(e=arguments[h]))for(d in e)a=g[d],c=e[d],g!==c&&(j&&c&&(n.isPlainObject(c)||(b=n.isArray(c)))?(b?(b=!1,f=a&&n.isArray(a)?a:[]):f=a&&n.isPlainObject(a)?a:{},g[d]=n.extend(j,f,c)):void 0!==c&&(g[d]=c));return g},n.extend({expando:"jQuery"+(m+Math.random()).replace(/\D/g,""),isReady:!0,error:function(a){throw new Error(a)},noop:function(){},isFunction:function(a){return"function"===n.type(a)},isArray:Array.isArray||function(a){return"array"===n.type(a)},isWindow:function(a){return null!=a&&a==a.window},isNumeric:function(a){return a-parseFloat(a)>=0},isEmptyObject:function(a){var b;for(b in a)return!1;return!0},isPlainObject:function(a){var b;if(!a||"object"!==n.type(a)||a.nodeType||n.isWindow(a))return!1;try{if(a.constructor&&!j.call(a,"constructor")&&!j.call(a.constructor.prototype,"isPrototypeOf"))return!1}catch(c){return!1}if(l.ownLast)for(b in a)return j.call(a,b);for(b in a);return void 0===b||j.call(a,b)},type:function(a){return null==a?a+"":"object"==typeof a||"function"==typeof a?h[i.call(a)]||"object":typeof a},globalEval:function(b){b&&n.trim(b)&&(a.execScript||function(b){a.eval.call(a,b)})(b)},camelCase:function(a){return a.replace(p,"ms-").replace(q,r)},nodeName:function(a,b){return a.nodeName&&a.nodeName.toLowerCase()===b.toLowerCase()},each:function(a,b,c){var d,e=0,f=a.length,g=s(a);if(c){if(g){for(;f>e;e++)if(d=b.apply(a[e],c),d===!1)break}else for(e in a)if(d=b.apply(a[e],c),d===!1)break}else if(g){for(;f>e;e++)if(d=b.call(a[e],e,a[e]),d===!1)break}else for(e in a)if(d=b.call(a[e],e,a[e]),d===!1)break;return a},trim:k&&!k.call("\ufeff\xa0")?function(a){return null==a?"":k.call(a)}:function(a){return null==a?"":(a+"").replace(o,"")},makeArray:function(a,b){var c=b||[];return null!=a&&(s(Object(a))?n.merge(c,"string"==typeof a?[a]:a):f.call(c,a)),c},inArray:function(a,b,c){var d;if(b){if(g)return g.call(b,a,c);for(d=b.length,c=c?0>c?Math.max(0,d+c):c:0;d>c;c++)if(c in b&&b[c]===a)return c}return-1},merge:function(a,b){var c=+b.length,d=0,e=a.length;while(c>d)a[e++]=b[d++];if(c!==c)while(void 0!==b[d])a[e++]=b[d++];return a.length=e,a},grep:function(a,b,c){for(var d,e=[],f=0,g=a.length,h=!c;g>f;f++)d=!b(a[f],f),d!==h&&e.push(a[f]);return e},map:function(a,b,c){var d,f=0,g=a.length,h=s(a),i=[];if(h)for(;g>f;f++)d=b(a[f],f,c),null!=d&&i.push(d);else for(f in a)d=b(a[f],f,c),null!=d&&i.push(d);return e.apply([],i)},guid:1,proxy:function(a,b){var c,e,f;return"string"==typeof b&&(f=a[b],b=a,a=f),n.isFunction(a)?(c=d.call(arguments,2),e=function(){return a.apply(b||this,c.concat(d.call(arguments)))},e.guid=a.guid=a.guid||n.guid++,e):void 0},now:function(){return+new Date},support:l}),n.each("Boolean Number String Function Array Date RegExp Object Error".split(" "),function(a,b){h["[object "+b+"]"]=b.toLowerCase()});function s(a){var b=a.length,c=n.type(a);return"function"===c||n.isWindow(a)?!1:1===a.nodeType&&b?!0:"array"===c||0===b||"number"==typeof b&&b>0&&b-1 in a}var t=function(a){var b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s="sizzle"+-new Date,t=a.document,u=0,v=0,w=eb(),x=eb(),y=eb(),z=function(a,b){return a===b&&(j=!0),0},A="undefined",B=1<<31,C={}.hasOwnProperty,D=[],E=D.pop,F=D.push,G=D.push,H=D.slice,I=D.indexOf||function(a){for(var b=0,c=this.length;c>b;b++)if(this[b]===a)return b;return-1},J="checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",K="[\\x20\\t\\r\\n\\f]",L="(?:\\\\.|[\\w-]|[^\\x00-\\xa0])+",M=L.replace("w","w#"),N="\\["+K+"*("+L+")"+K+"*(?:([*^$|!~]?=)"+K+"*(?:(['\"])((?:\\\\.|[^\\\\])*?)\\3|("+M+")|)|)"+K+"*\\]",O=":("+L+")(?:\\(((['\"])((?:\\\\.|[^\\\\])*?)\\3|((?:\\\\.|[^\\\\()[\\]]|"+N.replace(3,8)+")*)|.*)\\)|)",P=new RegExp("^"+K+"+|((?:^|[^\\\\])(?:\\\\.)*)"+K+"+$","g"),Q=new RegExp("^"+K+"*,"+K+"*"),R=new RegExp("^"+K+"*([>+~]|"+K+")"+K+"*"),S=new RegExp("="+K+"*([^\\]'\"]*?)"+K+"*\\]","g"),T=new RegExp(O),U=new RegExp("^"+M+"$"),V={ID:new RegExp("^#("+L+")"),CLASS:new RegExp("^\\.("+L+")"),TAG:new RegExp("^("+L.replace("w","w*")+")"),ATTR:new RegExp("^"+N),PSEUDO:new RegExp("^"+O),CHILD:new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\("+K+"*(even|odd|(([+-]|)(\\d*)n|)"+K+"*(?:([+-]|)"+K+"*(\\d+)|))"+K+"*\\)|)","i"),bool:new RegExp("^(?:"+J+")$","i"),needsContext:new RegExp("^"+K+"*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\("+K+"*((?:-\\d)?\\d*)"+K+"*\\)|)(?=[^-]|$)","i")},W=/^(?:input|select|textarea|button)$/i,X=/^h\d$/i,Y=/^[^{]+\{\s*\[native \w/,Z=/^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,$=/[+~]/,_=/'|\\/g,ab=new RegExp("\\\\([\\da-f]{1,6}"+K+"?|("+K+")|.)","ig"),bb=function(a,b,c){var d="0x"+b-65536;return d!==d||c?b:0>d?String.fromCharCode(d+65536):String.fromCharCode(d>>10|55296,1023&d|56320)};try{G.apply(D=H.call(t.childNodes),t.childNodes),D[t.childNodes.length].nodeType}catch(cb){G={apply:D.length?function(a,b){F.apply(a,H.call(b))}:function(a,b){var c=a.length,d=0;while(a[c++]=b[d++]);a.length=c-1}}}function db(a,b,d,e){var f,g,h,i,j,m,p,q,u,v;if((b?b.ownerDocument||b:t)!==l&&k(b),b=b||l,d=d||[],!a||"string"!=typeof a)return d;if(1!==(i=b.nodeType)&&9!==i)return[];if(n&&!e){if(f=Z.exec(a))if(h=f[1]){if(9===i){if(g=b.getElementById(h),!g||!g.parentNode)return d;if(g.id===h)return d.push(g),d}else if(b.ownerDocument&&(g=b.ownerDocument.getElementById(h))&&r(b,g)&&g.id===h)return d.push(g),d}else{if(f[2])return G.apply(d,b.getElementsByTagName(a)),d;if((h=f[3])&&c.getElementsByClassName&&b.getElementsByClassName)return G.apply(d,b.getElementsByClassName(h)),d}if(c.qsa&&(!o||!o.test(a))){if(q=p=s,u=b,v=9===i&&a,1===i&&"object"!==b.nodeName.toLowerCase()){m=ob(a),(p=b.getAttribute("id"))?q=p.replace(_,"\\$&"):b.setAttribute("id",q),q="[id='"+q+"'] ",j=m.length;while(j--)m[j]=q+pb(m[j]);u=$.test(a)&&mb(b.parentNode)||b,v=m.join(",")}if(v)try{return G.apply(d,u.querySelectorAll(v)),d}catch(w){}finally{p||b.removeAttribute("id")}}}return xb(a.replace(P,"$1"),b,d,e)}function eb(){var a=[];function b(c,e){return a.push(c+" ")>d.cacheLength&&delete b[a.shift()],b[c+" "]=e}return b}function fb(a){return a[s]=!0,a}function gb(a){var b=l.createElement("div");try{return!!a(b)}catch(c){return!1}finally{b.parentNode&&b.parentNode.removeChild(b),b=null}}function hb(a,b){var c=a.split("|"),e=a.length;while(e--)d.attrHandle[c[e]]=b}function ib(a,b){var c=b&&a,d=c&&1===a.nodeType&&1===b.nodeType&&(~b.sourceIndex||B)-(~a.sourceIndex||B);if(d)return d;if(c)while(c=c.nextSibling)if(c===b)return-1;return a?1:-1}function jb(a){return function(b){var c=b.nodeName.toLowerCase();return"input"===c&&b.type===a}}function kb(a){return function(b){var c=b.nodeName.toLowerCase();return("input"===c||"button"===c)&&b.type===a}}function lb(a){return fb(function(b){return b=+b,fb(function(c,d){var e,f=a([],c.length,b),g=f.length;while(g--)c[e=f[g]]&&(c[e]=!(d[e]=c[e]))})})}function mb(a){return a&&typeof a.getElementsByTagName!==A&&a}c=db.support={},f=db.isXML=function(a){var b=a&&(a.ownerDocument||a).documentElement;return b?"HTML"!==b.nodeName:!1},k=db.setDocument=function(a){var b,e=a?a.ownerDocument||a:t,g=e.defaultView;return e!==l&&9===e.nodeType&&e.documentElement?(l=e,m=e.documentElement,n=!f(e),g&&g!==g.top&&(g.addEventListener?g.addEventListener("unload",function(){k()},!1):g.attachEvent&&g.attachEvent("onunload",function(){k()})),c.attributes=gb(function(a){return a.className="i",!a.getAttribute("className")}),c.getElementsByTagName=gb(function(a){return a.appendChild(e.createComment("")),!a.getElementsByTagName("*").length}),c.getElementsByClassName=Y.test(e.getElementsByClassName)&&gb(function(a){return a.innerHTML="<div class='a'></div><div class='a i'></div>",a.firstChild.className="i",2===a.getElementsByClassName("i").length}),c.getById=gb(function(a){return m.appendChild(a).id=s,!e.getElementsByName||!e.getElementsByName(s).length}),c.getById?(d.find.ID=function(a,b){if(typeof b.getElementById!==A&&n){var c=b.getElementById(a);return c&&c.parentNode?[c]:[]}},d.filter.ID=function(a){var b=a.replace(ab,bb);return function(a){return a.getAttribute("id")===b}}):(delete d.find.ID,d.filter.ID=function(a){var b=a.replace(ab,bb);return function(a){var c=typeof a.getAttributeNode!==A&&a.getAttributeNode("id");return c&&c.value===b}}),d.find.TAG=c.getElementsByTagName?function(a,b){return typeof b.getElementsByTagName!==A?b.getElementsByTagName(a):void 0}:function(a,b){var c,d=[],e=0,f=b.getElementsByTagName(a);if("*"===a){while(c=f[e++])1===c.nodeType&&d.push(c);return d}return f},d.find.CLASS=c.getElementsByClassName&&function(a,b){return typeof b.getElementsByClassName!==A&&n?b.getElementsByClassName(a):void 0},p=[],o=[],(c.qsa=Y.test(e.querySelectorAll))&&(gb(function(a){a.innerHTML="<select t=''><option selected=''></option></select>",a.querySelectorAll("[t^='']").length&&o.push("[*^$]="+K+"*(?:''|\"\")"),a.querySelectorAll("[selected]").length||o.push("\\["+K+"*(?:value|"+J+")"),a.querySelectorAll(":checked").length||o.push(":checked")}),gb(function(a){var b=e.createElement("input");b.setAttribute("type","hidden"),a.appendChild(b).setAttribute("name","D"),a.querySelectorAll("[name=d]").length&&o.push("name"+K+"*[*^$|!~]?="),a.querySelectorAll(":enabled").length||o.push(":enabled",":disabled"),a.querySelectorAll("*,:x"),o.push(",.*:")})),(c.matchesSelector=Y.test(q=m.webkitMatchesSelector||m.mozMatchesSelector||m.oMatchesSelector||m.msMatchesSelector))&&gb(function(a){c.disconnectedMatch=q.call(a,"div"),q.call(a,"[s!='']:x"),p.push("!=",O)}),o=o.length&&new RegExp(o.join("|")),p=p.length&&new RegExp(p.join("|")),b=Y.test(m.compareDocumentPosition),r=b||Y.test(m.contains)?function(a,b){var c=9===a.nodeType?a.documentElement:a,d=b&&b.parentNode;return a===d||!(!d||1!==d.nodeType||!(c.contains?c.contains(d):a.compareDocumentPosition&&16&a.compareDocumentPosition(d)))}:function(a,b){if(b)while(b=b.parentNode)if(b===a)return!0;return!1},z=b?function(a,b){if(a===b)return j=!0,0;var d=!a.compareDocumentPosition-!b.compareDocumentPosition;return d?d:(d=(a.ownerDocument||a)===(b.ownerDocument||b)?a.compareDocumentPosition(b):1,1&d||!c.sortDetached&&b.compareDocumentPosition(a)===d?a===e||a.ownerDocument===t&&r(t,a)?-1:b===e||b.ownerDocument===t&&r(t,b)?1:i?I.call(i,a)-I.call(i,b):0:4&d?-1:1)}:function(a,b){if(a===b)return j=!0,0;var c,d=0,f=a.parentNode,g=b.parentNode,h=[a],k=[b];if(!f||!g)return a===e?-1:b===e?1:f?-1:g?1:i?I.call(i,a)-I.call(i,b):0;if(f===g)return ib(a,b);c=a;while(c=c.parentNode)h.unshift(c);c=b;while(c=c.parentNode)k.unshift(c);while(h[d]===k[d])d++;return d?ib(h[d],k[d]):h[d]===t?-1:k[d]===t?1:0},e):l},db.matches=function(a,b){return db(a,null,null,b)},db.matchesSelector=function(a,b){if((a.ownerDocument||a)!==l&&k(a),b=b.replace(S,"='$1']"),!(!c.matchesSelector||!n||p&&p.test(b)||o&&o.test(b)))try{var d=q.call(a,b);if(d||c.disconnectedMatch||a.document&&11!==a.document.nodeType)return d}catch(e){}return db(b,l,null,[a]).length>0},db.contains=function(a,b){return(a.ownerDocument||a)!==l&&k(a),r(a,b)},db.attr=function(a,b){(a.ownerDocument||a)!==l&&k(a);var e=d.attrHandle[b.toLowerCase()],f=e&&C.call(d.attrHandle,b.toLowerCase())?e(a,b,!n):void 0;return void 0!==f?f:c.attributes||!n?a.getAttribute(b):(f=a.getAttributeNode(b))&&f.specified?f.value:null},db.error=function(a){throw new Error("Syntax error, unrecognized expression: "+a)},db.uniqueSort=function(a){var b,d=[],e=0,f=0;if(j=!c.detectDuplicates,i=!c.sortStable&&a.slice(0),a.sort(z),j){while(b=a[f++])b===a[f]&&(e=d.push(f));while(e--)a.splice(d[e],1)}return i=null,a},e=db.getText=function(a){var b,c="",d=0,f=a.nodeType;if(f){if(1===f||9===f||11===f){if("string"==typeof a.textContent)return a.textContent;for(a=a.firstChild;a;a=a.nextSibling)c+=e(a)}else if(3===f||4===f)return a.nodeValue}else while(b=a[d++])c+=e(b);return c},d=db.selectors={cacheLength:50,createPseudo:fb,match:V,attrHandle:{},find:{},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:function(a){return a[1]=a[1].replace(ab,bb),a[3]=(a[4]||a[5]||"").replace(ab,bb),"~="===a[2]&&(a[3]=" "+a[3]+" "),a.slice(0,4)},CHILD:function(a){return a[1]=a[1].toLowerCase(),"nth"===a[1].slice(0,3)?(a[3]||db.error(a[0]),a[4]=+(a[4]?a[5]+(a[6]||1):2*("even"===a[3]||"odd"===a[3])),a[5]=+(a[7]+a[8]||"odd"===a[3])):a[3]&&db.error(a[0]),a},PSEUDO:function(a){var b,c=!a[5]&&a[2];return V.CHILD.test(a[0])?null:(a[3]&&void 0!==a[4]?a[2]=a[4]:c&&T.test(c)&&(b=ob(c,!0))&&(b=c.indexOf(")",c.length-b)-c.length)&&(a[0]=a[0].slice(0,b),a[2]=c.slice(0,b)),a.slice(0,3))}},filter:{TAG:function(a){var b=a.replace(ab,bb).toLowerCase();return"*"===a?function(){return!0}:function(a){return a.nodeName&&a.nodeName.toLowerCase()===b}},CLASS:function(a){var b=w[a+" "];return b||(b=new RegExp("(^|"+K+")"+a+"("+K+"|$)"))&&w(a,function(a){return b.test("string"==typeof a.className&&a.className||typeof a.getAttribute!==A&&a.getAttribute("class")||"")})},ATTR:function(a,b,c){return function(d){var e=db.attr(d,a);return null==e?"!="===b:b?(e+="","="===b?e===c:"!="===b?e!==c:"^="===b?c&&0===e.indexOf(c):"*="===b?c&&e.indexOf(c)>-1:"$="===b?c&&e.slice(-c.length)===c:"~="===b?(" "+e+" ").indexOf(c)>-1:"|="===b?e===c||e.slice(0,c.length+1)===c+"-":!1):!0}},CHILD:function(a,b,c,d,e){var f="nth"!==a.slice(0,3),g="last"!==a.slice(-4),h="of-type"===b;return 1===d&&0===e?function(a){return!!a.parentNode}:function(b,c,i){var j,k,l,m,n,o,p=f!==g?"nextSibling":"previousSibling",q=b.parentNode,r=h&&b.nodeName.toLowerCase(),t=!i&&!h;if(q){if(f){while(p){l=b;while(l=l[p])if(h?l.nodeName.toLowerCase()===r:1===l.nodeType)return!1;o=p="only"===a&&!o&&"nextSibling"}return!0}if(o=[g?q.firstChild:q.lastChild],g&&t){k=q[s]||(q[s]={}),j=k[a]||[],n=j[0]===u&&j[1],m=j[0]===u&&j[2],l=n&&q.childNodes[n];while(l=++n&&l&&l[p]||(m=n=0)||o.pop())if(1===l.nodeType&&++m&&l===b){k[a]=[u,n,m];break}}else if(t&&(j=(b[s]||(b[s]={}))[a])&&j[0]===u)m=j[1];else while(l=++n&&l&&l[p]||(m=n=0)||o.pop())if((h?l.nodeName.toLowerCase()===r:1===l.nodeType)&&++m&&(t&&((l[s]||(l[s]={}))[a]=[u,m]),l===b))break;return m-=e,m===d||m%d===0&&m/d>=0}}},PSEUDO:function(a,b){var c,e=d.pseudos[a]||d.setFilters[a.toLowerCase()]||db.error("unsupported pseudo: "+a);return e[s]?e(b):e.length>1?(c=[a,a,"",b],d.setFilters.hasOwnProperty(a.toLowerCase())?fb(function(a,c){var d,f=e(a,b),g=f.length;while(g--)d=I.call(a,f[g]),a[d]=!(c[d]=f[g])}):function(a){return e(a,0,c)}):e}},pseudos:{not:fb(function(a){var b=[],c=[],d=g(a.replace(P,"$1"));return d[s]?fb(function(a,b,c,e){var f,g=d(a,null,e,[]),h=a.length;while(h--)(f=g[h])&&(a[h]=!(b[h]=f))}):function(a,e,f){return b[0]=a,d(b,null,f,c),!c.pop()}}),has:fb(function(a){return function(b){return db(a,b).length>0}}),contains:fb(function(a){return function(b){return(b.textContent||b.innerText||e(b)).indexOf(a)>-1}}),lang:fb(function(a){return U.test(a||"")||db.error("unsupported lang: "+a),a=a.replace(ab,bb).toLowerCase(),function(b){var c;do if(c=n?b.lang:b.getAttribute("xml:lang")||b.getAttribute("lang"))return c=c.toLowerCase(),c===a||0===c.indexOf(a+"-");while((b=b.parentNode)&&1===b.nodeType);return!1}}),target:function(b){var c=a.location&&a.location.hash;return c&&c.slice(1)===b.id},root:function(a){return a===m},focus:function(a){return a===l.activeElement&&(!l.hasFocus||l.hasFocus())&&!!(a.type||a.href||~a.tabIndex)},enabled:function(a){return a.disabled===!1},disabled:function(a){return a.disabled===!0},checked:function(a){var b=a.nodeName.toLowerCase();return"input"===b&&!!a.checked||"option"===b&&!!a.selected},selected:function(a){return a.parentNode&&a.parentNode.selectedIndex,a.selected===!0},empty:function(a){for(a=a.firstChild;a;a=a.nextSibling)if(a.nodeType<6)return!1;return!0},parent:function(a){return!d.pseudos.empty(a)},header:function(a){return X.test(a.nodeName)},input:function(a){return W.test(a.nodeName)},button:function(a){var b=a.nodeName.toLowerCase();return"input"===b&&"button"===a.type||"button"===b},text:function(a){var b;return"input"===a.nodeName.toLowerCase()&&"text"===a.type&&(null==(b=a.getAttribute("type"))||"text"===b.toLowerCase())},first:lb(function(){return[0]}),last:lb(function(a,b){return[b-1]}),eq:lb(function(a,b,c){return[0>c?c+b:c]}),even:lb(function(a,b){for(var c=0;b>c;c+=2)a.push(c);return a}),odd:lb(function(a,b){for(var c=1;b>c;c+=2)a.push(c);return a}),lt:lb(function(a,b,c){for(var d=0>c?c+b:c;--d>=0;)a.push(d);return a}),gt:lb(function(a,b,c){for(var d=0>c?c+b:c;++d<b;)a.push(d);return a})}},d.pseudos.nth=d.pseudos.eq;for(b in{radio:!0,checkbox:!0,file:!0,password:!0,image:!0})d.pseudos[b]=jb(b);for(b in{submit:!0,reset:!0})d.pseudos[b]=kb(b);function nb(){}nb.prototype=d.filters=d.pseudos,d.setFilters=new nb;function ob(a,b){var c,e,f,g,h,i,j,k=x[a+" "];if(k)return b?0:k.slice(0);h=a,i=[],j=d.preFilter;while(h){(!c||(e=Q.exec(h)))&&(e&&(h=h.slice(e[0].length)||h),i.push(f=[])),c=!1,(e=R.exec(h))&&(c=e.shift(),f.push({value:c,type:e[0].replace(P," ")}),h=h.slice(c.length));for(g in d.filter)!(e=V[g].exec(h))||j[g]&&!(e=j[g](e))||(c=e.shift(),f.push({value:c,type:g,matches:e}),h=h.slice(c.length));if(!c)break}return b?h.length:h?db.error(a):x(a,i).slice(0)}function pb(a){for(var b=0,c=a.length,d="";c>b;b++)d+=a[b].value;return d}function qb(a,b,c){var d=b.dir,e=c&&"parentNode"===d,f=v++;return b.first?function(b,c,f){while(b=b[d])if(1===b.nodeType||e)return a(b,c,f)}:function(b,c,g){var h,i,j=[u,f];if(g){while(b=b[d])if((1===b.nodeType||e)&&a(b,c,g))return!0}else while(b=b[d])if(1===b.nodeType||e){if(i=b[s]||(b[s]={}),(h=i[d])&&h[0]===u&&h[1]===f)return j[2]=h[2];if(i[d]=j,j[2]=a(b,c,g))return!0}}}function rb(a){return a.length>1?function(b,c,d){var e=a.length;while(e--)if(!a[e](b,c,d))return!1;return!0}:a[0]}function sb(a,b,c,d,e){for(var f,g=[],h=0,i=a.length,j=null!=b;i>h;h++)(f=a[h])&&(!c||c(f,d,e))&&(g.push(f),j&&b.push(h));return g}function tb(a,b,c,d,e,f){return d&&!d[s]&&(d=tb(d)),e&&!e[s]&&(e=tb(e,f)),fb(function(f,g,h,i){var j,k,l,m=[],n=[],o=g.length,p=f||wb(b||"*",h.nodeType?[h]:h,[]),q=!a||!f&&b?p:sb(p,m,a,h,i),r=c?e||(f?a:o||d)?[]:g:q;if(c&&c(q,r,h,i),d){j=sb(r,n),d(j,[],h,i),k=j.length;while(k--)(l=j[k])&&(r[n[k]]=!(q[n[k]]=l))}if(f){if(e||a){if(e){j=[],k=r.length;while(k--)(l=r[k])&&j.push(q[k]=l);e(null,r=[],j,i)}k=r.length;while(k--)(l=r[k])&&(j=e?I.call(f,l):m[k])>-1&&(f[j]=!(g[j]=l))}}else r=sb(r===g?r.splice(o,r.length):r),e?e(null,g,r,i):G.apply(g,r)})}function ub(a){for(var b,c,e,f=a.length,g=d.relative[a[0].type],i=g||d.relative[" "],j=g?1:0,k=qb(function(a){return a===b},i,!0),l=qb(function(a){return I.call(b,a)>-1},i,!0),m=[function(a,c,d){return!g&&(d||c!==h)||((b=c).nodeType?k(a,c,d):l(a,c,d))}];f>j;j++)if(c=d.relative[a[j].type])m=[qb(rb(m),c)];else{if(c=d.filter[a[j].type].apply(null,a[j].matches),c[s]){for(e=++j;f>e;e++)if(d.relative[a[e].type])break;return tb(j>1&&rb(m),j>1&&pb(a.slice(0,j-1).concat({value:" "===a[j-2].type?"*":""})).replace(P,"$1"),c,e>j&&ub(a.slice(j,e)),f>e&&ub(a=a.slice(e)),f>e&&pb(a))}m.push(c)}return rb(m)}function vb(a,b){var c=b.length>0,e=a.length>0,f=function(f,g,i,j,k){var m,n,o,p=0,q="0",r=f&&[],s=[],t=h,v=f||e&&d.find.TAG("*",k),w=u+=null==t?1:Math.random()||.1,x=v.length;for(k&&(h=g!==l&&g);q!==x&&null!=(m=v[q]);q++){if(e&&m){n=0;while(o=a[n++])if(o(m,g,i)){j.push(m);break}k&&(u=w)}c&&((m=!o&&m)&&p--,f&&r.push(m))}if(p+=q,c&&q!==p){n=0;while(o=b[n++])o(r,s,g,i);if(f){if(p>0)while(q--)r[q]||s[q]||(s[q]=E.call(j));s=sb(s)}G.apply(j,s),k&&!f&&s.length>0&&p+b.length>1&&db.uniqueSort(j)}return k&&(u=w,h=t),r};return c?fb(f):f}g=db.compile=function(a,b){var c,d=[],e=[],f=y[a+" "];if(!f){b||(b=ob(a)),c=b.length;while(c--)f=ub(b[c]),f[s]?d.push(f):e.push(f);f=y(a,vb(e,d))}return f};function wb(a,b,c){for(var d=0,e=b.length;e>d;d++)db(a,b[d],c);return c}function xb(a,b,e,f){var h,i,j,k,l,m=ob(a);if(!f&&1===m.length){if(i=m[0]=m[0].slice(0),i.length>2&&"ID"===(j=i[0]).type&&c.getById&&9===b.nodeType&&n&&d.relative[i[1].type]){if(b=(d.find.ID(j.matches[0].replace(ab,bb),b)||[])[0],!b)return e;a=a.slice(i.shift().value.length)}h=V.needsContext.test(a)?0:i.length;while(h--){if(j=i[h],d.relative[k=j.type])break;if((l=d.find[k])&&(f=l(j.matches[0].replace(ab,bb),$.test(i[0].type)&&mb(b.parentNode)||b))){if(i.splice(h,1),a=f.length&&pb(i),!a)return G.apply(e,f),e;break}}}return g(a,m)(f,b,!n,e,$.test(a)&&mb(b.parentNode)||b),e}return c.sortStable=s.split("").sort(z).join("")===s,c.detectDuplicates=!!j,k(),c.sortDetached=gb(function(a){return 1&a.compareDocumentPosition(l.createElement("div"))}),gb(function(a){return a.innerHTML="<a href='#'></a>","#"===a.firstChild.getAttribute("href")})||hb("type|href|height|width",function(a,b,c){return c?void 0:a.getAttribute(b,"type"===b.toLowerCase()?1:2)}),c.attributes&&gb(function(a){return a.innerHTML="<input/>",a.firstChild.setAttribute("value",""),""===a.firstChild.getAttribute("value")})||hb("value",function(a,b,c){return c||"input"!==a.nodeName.toLowerCase()?void 0:a.defaultValue}),gb(function(a){return null==a.getAttribute("disabled")})||hb(J,function(a,b,c){var d;return c?void 0:a[b]===!0?b.toLowerCase():(d=a.getAttributeNode(b))&&d.specified?d.value:null}),db}(a);n.find=t,n.expr=t.selectors,n.expr[":"]=n.expr.pseudos,n.unique=t.uniqueSort,n.text=t.getText,n.isXMLDoc=t.isXML,n.contains=t.contains;var u=n.expr.match.needsContext,v=/^<(\w+)\s*\/?>(?:<\/\1>|)$/,w=/^.[^:#\[\.,]*$/;function x(a,b,c){if(n.isFunction(b))return n.grep(a,function(a,d){return!!b.call(a,d,a)!==c});if(b.nodeType)return n.grep(a,function(a){return a===b!==c});if("string"==typeof b){if(w.test(b))return n.filter(b,a,c);b=n.filter(b,a)}return n.grep(a,function(a){return n.inArray(a,b)>=0!==c})}n.filter=function(a,b,c){var d=b[0];return c&&(a=":not("+a+")"),1===b.length&&1===d.nodeType?n.find.matchesSelector(d,a)?[d]:[]:n.find.matches(a,n.grep(b,function(a){return 1===a.nodeType}))},n.fn.extend({find:function(a){var b,c=[],d=this,e=d.length;if("string"!=typeof a)return this.pushStack(n(a).filter(function(){for(b=0;e>b;b++)if(n.contains(d[b],this))return!0}));for(b=0;e>b;b++)n.find(a,d[b],c);return c=this.pushStack(e>1?n.unique(c):c),c.selector=this.selector?this.selector+" "+a:a,c},filter:function(a){return this.pushStack(x(this,a||[],!1))},not:function(a){return this.pushStack(x(this,a||[],!0))},is:function(a){return!!x(this,"string"==typeof a&&u.test(a)?n(a):a||[],!1).length}});var y,z=a.document,A=/^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]*))$/,B=n.fn.init=function(a,b){var c,d;if(!a)return this;if("string"==typeof a){if(c="<"===a.charAt(0)&&">"===a.charAt(a.length-1)&&a.length>=3?[null,a,null]:A.exec(a),!c||!c[1]&&b)return!b||b.jquery?(b||y).find(a):this.constructor(b).find(a);if(c[1]){if(b=b instanceof n?b[0]:b,n.merge(this,n.parseHTML(c[1],b&&b.nodeType?b.ownerDocument||b:z,!0)),v.test(c[1])&&n.isPlainObject(b))for(c in b)n.isFunction(this[c])?this[c](b[c]):this.attr(c,b[c]);return this}if(d=z.getElementById(c[2]),d&&d.parentNode){if(d.id!==c[2])return y.find(a);this.length=1,this[0]=d}return this.context=z,this.selector=a,this}return a.nodeType?(this.context=this[0]=a,this.length=1,this):n.isFunction(a)?"undefined"!=typeof y.ready?y.ready(a):a(n):(void 0!==a.selector&&(this.selector=a.selector,this.context=a.context),n.makeArray(a,this))};B.prototype=n.fn,y=n(z);var C=/^(?:parents|prev(?:Until|All))/,D={children:!0,contents:!0,next:!0,prev:!0};n.extend({dir:function(a,b,c){var d=[],e=a[b];while(e&&9!==e.nodeType&&(void 0===c||1!==e.nodeType||!n(e).is(c)))1===e.nodeType&&d.push(e),e=e[b];return d},sibling:function(a,b){for(var c=[];a;a=a.nextSibling)1===a.nodeType&&a!==b&&c.push(a);return c}}),n.fn.extend({has:function(a){var b,c=n(a,this),d=c.length;return this.filter(function(){for(b=0;d>b;b++)if(n.contains(this,c[b]))return!0})},closest:function(a,b){for(var c,d=0,e=this.length,f=[],g=u.test(a)||"string"!=typeof a?n(a,b||this.context):0;e>d;d++)for(c=this[d];c&&c!==b;c=c.parentNode)if(c.nodeType<11&&(g?g.index(c)>-1:1===c.nodeType&&n.find.matchesSelector(c,a))){f.push(c);break}return this.pushStack(f.length>1?n.unique(f):f)},index:function(a){return a?"string"==typeof a?n.inArray(this[0],n(a)):n.inArray(a.jquery?a[0]:a,this):this[0]&&this[0].parentNode?this.first().prevAll().length:-1},add:function(a,b){return this.pushStack(n.unique(n.merge(this.get(),n(a,b))))},addBack:function(a){return this.add(null==a?this.prevObject:this.prevObject.filter(a))}});function E(a,b){do a=a[b];while(a&&1!==a.nodeType);return a}n.each({parent:function(a){var b=a.parentNode;return b&&11!==b.nodeType?b:null},parents:function(a){return n.dir(a,"parentNode")},parentsUntil:function(a,b,c){return n.dir(a,"parentNode",c)},next:function(a){return E(a,"nextSibling")},prev:function(a){return E(a,"previousSibling")},nextAll:function(a){return n.dir(a,"nextSibling")},prevAll:function(a){return n.dir(a,"previousSibling")},nextUntil:function(a,b,c){return n.dir(a,"nextSibling",c)},prevUntil:function(a,b,c){return n.dir(a,"previousSibling",c)},siblings:function(a){return n.sibling((a.parentNode||{}).firstChild,a)},children:function(a){return n.sibling(a.firstChild)},contents:function(a){return n.nodeName(a,"iframe")?a.contentDocument||a.contentWindow.document:n.merge([],a.childNodes)}},function(a,b){n.fn[a]=function(c,d){var e=n.map(this,b,c);return"Until"!==a.slice(-5)&&(d=c),d&&"string"==typeof d&&(e=n.filter(d,e)),this.length>1&&(D[a]||(e=n.unique(e)),C.test(a)&&(e=e.reverse())),this.pushStack(e)}});var F=/\S+/g,G={};function H(a){var b=G[a]={};return n.each(a.match(F)||[],function(a,c){b[c]=!0}),b}n.Callbacks=function(a){a="string"==typeof a?G[a]||H(a):n.extend({},a);var b,c,d,e,f,g,h=[],i=!a.once&&[],j=function(l){for(c=a.memory&&l,d=!0,f=g||0,g=0,e=h.length,b=!0;h&&e>f;f++)if(h[f].apply(l[0],l[1])===!1&&a.stopOnFalse){c=!1;break}b=!1,h&&(i?i.length&&j(i.shift()):c?h=[]:k.disable())},k={add:function(){if(h){var d=h.length;!function f(b){n.each(b,function(b,c){var d=n.type(c);"function"===d?a.unique&&k.has(c)||h.push(c):c&&c.length&&"string"!==d&&f(c)})}(arguments),b?e=h.length:c&&(g=d,j(c))}return this},remove:function(){return h&&n.each(arguments,function(a,c){var d;while((d=n.inArray(c,h,d))>-1)h.splice(d,1),b&&(e>=d&&e--,f>=d&&f--)}),this},has:function(a){return a?n.inArray(a,h)>-1:!(!h||!h.length)},empty:function(){return h=[],e=0,this},disable:function(){return h=i=c=void 0,this},disabled:function(){return!h},lock:function(){return i=void 0,c||k.disable(),this},locked:function(){return!i},fireWith:function(a,c){return!h||d&&!i||(c=c||[],c=[a,c.slice?c.slice():c],b?i.push(c):j(c)),this},fire:function(){return k.fireWith(this,arguments),this},fired:function(){return!!d}};return k},n.extend({Deferred:function(a){var b=[["resolve","done",n.Callbacks("once memory"),"resolved"],["reject","fail",n.Callbacks("once memory"),"rejected"],["notify","progress",n.Callbacks("memory")]],c="pending",d={state:function(){return c},always:function(){return e.done(arguments).fail(arguments),this},then:function(){var a=arguments;return n.Deferred(function(c){n.each(b,function(b,f){var g=n.isFunction(a[b])&&a[b];e[f[1]](function(){var a=g&&g.apply(this,arguments);a&&n.isFunction(a.promise)?a.promise().done(c.resolve).fail(c.reject).progress(c.notify):c[f[0]+"With"](this===d?c.promise():this,g?[a]:arguments)})}),a=null}).promise()},promise:function(a){return null!=a?n.extend(a,d):d}},e={};return d.pipe=d.then,n.each(b,function(a,f){var g=f[2],h=f[3];d[f[1]]=g.add,h&&g.add(function(){c=h},b[1^a][2].disable,b[2][2].lock),e[f[0]]=function(){return e[f[0]+"With"](this===e?d:this,arguments),this},e[f[0]+"With"]=g.fireWith}),d.promise(e),a&&a.call(e,e),e},when:function(a){var b=0,c=d.call(arguments),e=c.length,f=1!==e||a&&n.isFunction(a.promise)?e:0,g=1===f?a:n.Deferred(),h=function(a,b,c){return function(e){b[a]=this,c[a]=arguments.length>1?d.call(arguments):e,c===i?g.notifyWith(b,c):--f||g.resolveWith(b,c)}},i,j,k;if(e>1)for(i=new Array(e),j=new Array(e),k=new Array(e);e>b;b++)c[b]&&n.isFunction(c[b].promise)?c[b].promise().done(h(b,k,c)).fail(g.reject).progress(h(b,j,i)):--f;return f||g.resolveWith(k,c),g.promise()}});var I;n.fn.ready=function(a){return n.ready.promise().done(a),this},n.extend({isReady:!1,readyWait:1,holdReady:function(a){a?n.readyWait++:n.ready(!0)},ready:function(a){if(a===!0?!--n.readyWait:!n.isReady){if(!z.body)return setTimeout(n.ready);n.isReady=!0,a!==!0&&--n.readyWait>0||(I.resolveWith(z,[n]),n.fn.trigger&&n(z).trigger("ready").off("ready"))}}});function J(){z.addEventListener?(z.removeEventListener("DOMContentLoaded",K,!1),a.removeEventListener("load",K,!1)):(z.detachEvent("onreadystatechange",K),a.detachEvent("onload",K))}function K(){(z.addEventListener||"load"===event.type||"complete"===z.readyState)&&(J(),n.ready())}n.ready.promise=function(b){if(!I)if(I=n.Deferred(),"complete"===z.readyState)setTimeout(n.ready);else if(z.addEventListener)z.addEventListener("DOMContentLoaded",K,!1),a.addEventListener("load",K,!1);else{z.attachEvent("onreadystatechange",K),a.attachEvent("onload",K);var c=!1;try{c=null==a.frameElement&&z.documentElement}catch(d){}c&&c.doScroll&&!function e(){if(!n.isReady){try{c.doScroll("left")}catch(a){return setTimeout(e,50)}J(),n.ready()}}()}return I.promise(b)};var L="undefined",M;for(M in n(l))break;l.ownLast="0"!==M,l.inlineBlockNeedsLayout=!1,n(function(){var a,b,c=z.getElementsByTagName("body")[0];c&&(a=z.createElement("div"),a.style.cssText="border:0;width:0;height:0;position:absolute;top:0;left:-9999px;margin-top:1px",b=z.createElement("div"),c.appendChild(a).appendChild(b),typeof b.style.zoom!==L&&(b.style.cssText="border:0;margin:0;width:1px;padding:1px;display:inline;zoom:1",(l.inlineBlockNeedsLayout=3===b.offsetWidth)&&(c.style.zoom=1)),c.removeChild(a),a=b=null)}),function(){var a=z.createElement("div");if(null==l.deleteExpando){l.deleteExpando=!0;try{delete a.test}catch(b){l.deleteExpando=!1}}a=null}(),n.acceptData=function(a){var b=n.noData[(a.nodeName+" ").toLowerCase()],c=+a.nodeType||1;return 1!==c&&9!==c?!1:!b||b!==!0&&a.getAttribute("classid")===b};var N=/^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,O=/([A-Z])/g;function P(a,b,c){if(void 0===c&&1===a.nodeType){var d="data-"+b.replace(O,"-$1").toLowerCase();if(c=a.getAttribute(d),"string"==typeof c){try{c="true"===c?!0:"false"===c?!1:"null"===c?null:+c+""===c?+c:N.test(c)?n.parseJSON(c):c}catch(e){}n.data(a,b,c)}else c=void 0}return c}function Q(a){var b;for(b in a)if(("data"!==b||!n.isEmptyObject(a[b]))&&"toJSON"!==b)return!1;return!0}function R(a,b,d,e){if(n.acceptData(a)){var f,g,h=n.expando,i=a.nodeType,j=i?n.cache:a,k=i?a[h]:a[h]&&h;if(k&&j[k]&&(e||j[k].data)||void 0!==d||"string"!=typeof b)return k||(k=i?a[h]=c.pop()||n.guid++:h),j[k]||(j[k]=i?{}:{toJSON:n.noop}),("object"==typeof b||"function"==typeof b)&&(e?j[k]=n.extend(j[k],b):j[k].data=n.extend(j[k].data,b)),g=j[k],e||(g.data||(g.data={}),g=g.data),void 0!==d&&(g[n.camelCase(b)]=d),"string"==typeof b?(f=g[b],null==f&&(f=g[n.camelCase(b)])):f=g,f
}}function S(a,b,c){if(n.acceptData(a)){var d,e,f=a.nodeType,g=f?n.cache:a,h=f?a[n.expando]:n.expando;if(g[h]){if(b&&(d=c?g[h]:g[h].data)){n.isArray(b)?b=b.concat(n.map(b,n.camelCase)):b in d?b=[b]:(b=n.camelCase(b),b=b in d?[b]:b.split(" ")),e=b.length;while(e--)delete d[b[e]];if(c?!Q(d):!n.isEmptyObject(d))return}(c||(delete g[h].data,Q(g[h])))&&(f?n.cleanData([a],!0):l.deleteExpando||g!=g.window?delete g[h]:g[h]=null)}}}n.extend({cache:{},noData:{"applet ":!0,"embed ":!0,"object ":"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"},hasData:function(a){return a=a.nodeType?n.cache[a[n.expando]]:a[n.expando],!!a&&!Q(a)},data:function(a,b,c){return R(a,b,c)},removeData:function(a,b){return S(a,b)},_data:function(a,b,c){return R(a,b,c,!0)},_removeData:function(a,b){return S(a,b,!0)}}),n.fn.extend({data:function(a,b){var c,d,e,f=this[0],g=f&&f.attributes;if(void 0===a){if(this.length&&(e=n.data(f),1===f.nodeType&&!n._data(f,"parsedAttrs"))){c=g.length;while(c--)d=g[c].name,0===d.indexOf("data-")&&(d=n.camelCase(d.slice(5)),P(f,d,e[d]));n._data(f,"parsedAttrs",!0)}return e}return"object"==typeof a?this.each(function(){n.data(this,a)}):arguments.length>1?this.each(function(){n.data(this,a,b)}):f?P(f,a,n.data(f,a)):void 0},removeData:function(a){return this.each(function(){n.removeData(this,a)})}}),n.extend({queue:function(a,b,c){var d;return a?(b=(b||"fx")+"queue",d=n._data(a,b),c&&(!d||n.isArray(c)?d=n._data(a,b,n.makeArray(c)):d.push(c)),d||[]):void 0},dequeue:function(a,b){b=b||"fx";var c=n.queue(a,b),d=c.length,e=c.shift(),f=n._queueHooks(a,b),g=function(){n.dequeue(a,b)};"inprogress"===e&&(e=c.shift(),d--),e&&("fx"===b&&c.unshift("inprogress"),delete f.stop,e.call(a,g,f)),!d&&f&&f.empty.fire()},_queueHooks:function(a,b){var c=b+"queueHooks";return n._data(a,c)||n._data(a,c,{empty:n.Callbacks("once memory").add(function(){n._removeData(a,b+"queue"),n._removeData(a,c)})})}}),n.fn.extend({queue:function(a,b){var c=2;return"string"!=typeof a&&(b=a,a="fx",c--),arguments.length<c?n.queue(this[0],a):void 0===b?this:this.each(function(){var c=n.queue(this,a,b);n._queueHooks(this,a),"fx"===a&&"inprogress"!==c[0]&&n.dequeue(this,a)})},dequeue:function(a){return this.each(function(){n.dequeue(this,a)})},clearQueue:function(a){return this.queue(a||"fx",[])},promise:function(a,b){var c,d=1,e=n.Deferred(),f=this,g=this.length,h=function(){--d||e.resolveWith(f,[f])};"string"!=typeof a&&(b=a,a=void 0),a=a||"fx";while(g--)c=n._data(f[g],a+"queueHooks"),c&&c.empty&&(d++,c.empty.add(h));return h(),e.promise(b)}});var T=/[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,U=["Top","Right","Bottom","Left"],V=function(a,b){return a=b||a,"none"===n.css(a,"display")||!n.contains(a.ownerDocument,a)},W=n.access=function(a,b,c,d,e,f,g){var h=0,i=a.length,j=null==c;if("object"===n.type(c)){e=!0;for(h in c)n.access(a,b,h,c[h],!0,f,g)}else if(void 0!==d&&(e=!0,n.isFunction(d)||(g=!0),j&&(g?(b.call(a,d),b=null):(j=b,b=function(a,b,c){return j.call(n(a),c)})),b))for(;i>h;h++)b(a[h],c,g?d:d.call(a[h],h,b(a[h],c)));return e?a:j?b.call(a):i?b(a[0],c):f},X=/^(?:checkbox|radio)$/i;!function(){var a=z.createDocumentFragment(),b=z.createElement("div"),c=z.createElement("input");if(b.setAttribute("className","t"),b.innerHTML="  <link/><table></table><a href='/a'>a</a>",l.leadingWhitespace=3===b.firstChild.nodeType,l.tbody=!b.getElementsByTagName("tbody").length,l.htmlSerialize=!!b.getElementsByTagName("link").length,l.html5Clone="<:nav></:nav>"!==z.createElement("nav").cloneNode(!0).outerHTML,c.type="checkbox",c.checked=!0,a.appendChild(c),l.appendChecked=c.checked,b.innerHTML="<textarea>x</textarea>",l.noCloneChecked=!!b.cloneNode(!0).lastChild.defaultValue,a.appendChild(b),b.innerHTML="<input type='radio' checked='checked' name='t'/>",l.checkClone=b.cloneNode(!0).cloneNode(!0).lastChild.checked,l.noCloneEvent=!0,b.attachEvent&&(b.attachEvent("onclick",function(){l.noCloneEvent=!1}),b.cloneNode(!0).click()),null==l.deleteExpando){l.deleteExpando=!0;try{delete b.test}catch(d){l.deleteExpando=!1}}a=b=c=null}(),function(){var b,c,d=z.createElement("div");for(b in{submit:!0,change:!0,focusin:!0})c="on"+b,(l[b+"Bubbles"]=c in a)||(d.setAttribute(c,"t"),l[b+"Bubbles"]=d.attributes[c].expando===!1);d=null}();var Y=/^(?:input|select|textarea)$/i,Z=/^key/,$=/^(?:mouse|contextmenu)|click/,_=/^(?:focusinfocus|focusoutblur)$/,ab=/^([^.]*)(?:\.(.+)|)$/;function bb(){return!0}function cb(){return!1}function db(){try{return z.activeElement}catch(a){}}n.event={global:{},add:function(a,b,c,d,e){var f,g,h,i,j,k,l,m,o,p,q,r=n._data(a);if(r){c.handler&&(i=c,c=i.handler,e=i.selector),c.guid||(c.guid=n.guid++),(g=r.events)||(g=r.events={}),(k=r.handle)||(k=r.handle=function(a){return typeof n===L||a&&n.event.triggered===a.type?void 0:n.event.dispatch.apply(k.elem,arguments)},k.elem=a),b=(b||"").match(F)||[""],h=b.length;while(h--)f=ab.exec(b[h])||[],o=q=f[1],p=(f[2]||"").split(".").sort(),o&&(j=n.event.special[o]||{},o=(e?j.delegateType:j.bindType)||o,j=n.event.special[o]||{},l=n.extend({type:o,origType:q,data:d,handler:c,guid:c.guid,selector:e,needsContext:e&&n.expr.match.needsContext.test(e),namespace:p.join(".")},i),(m=g[o])||(m=g[o]=[],m.delegateCount=0,j.setup&&j.setup.call(a,d,p,k)!==!1||(a.addEventListener?a.addEventListener(o,k,!1):a.attachEvent&&a.attachEvent("on"+o,k))),j.add&&(j.add.call(a,l),l.handler.guid||(l.handler.guid=c.guid)),e?m.splice(m.delegateCount++,0,l):m.push(l),n.event.global[o]=!0);a=null}},remove:function(a,b,c,d,e){var f,g,h,i,j,k,l,m,o,p,q,r=n.hasData(a)&&n._data(a);if(r&&(k=r.events)){b=(b||"").match(F)||[""],j=b.length;while(j--)if(h=ab.exec(b[j])||[],o=q=h[1],p=(h[2]||"").split(".").sort(),o){l=n.event.special[o]||{},o=(d?l.delegateType:l.bindType)||o,m=k[o]||[],h=h[2]&&new RegExp("(^|\\.)"+p.join("\\.(?:.*\\.|)")+"(\\.|$)"),i=f=m.length;while(f--)g=m[f],!e&&q!==g.origType||c&&c.guid!==g.guid||h&&!h.test(g.namespace)||d&&d!==g.selector&&("**"!==d||!g.selector)||(m.splice(f,1),g.selector&&m.delegateCount--,l.remove&&l.remove.call(a,g));i&&!m.length&&(l.teardown&&l.teardown.call(a,p,r.handle)!==!1||n.removeEvent(a,o,r.handle),delete k[o])}else for(o in k)n.event.remove(a,o+b[j],c,d,!0);n.isEmptyObject(k)&&(delete r.handle,n._removeData(a,"events"))}},trigger:function(b,c,d,e){var f,g,h,i,k,l,m,o=[d||z],p=j.call(b,"type")?b.type:b,q=j.call(b,"namespace")?b.namespace.split("."):[];if(h=l=d=d||z,3!==d.nodeType&&8!==d.nodeType&&!_.test(p+n.event.triggered)&&(p.indexOf(".")>=0&&(q=p.split("."),p=q.shift(),q.sort()),g=p.indexOf(":")<0&&"on"+p,b=b[n.expando]?b:new n.Event(p,"object"==typeof b&&b),b.isTrigger=e?2:3,b.namespace=q.join("."),b.namespace_re=b.namespace?new RegExp("(^|\\.)"+q.join("\\.(?:.*\\.|)")+"(\\.|$)"):null,b.result=void 0,b.target||(b.target=d),c=null==c?[b]:n.makeArray(c,[b]),k=n.event.special[p]||{},e||!k.trigger||k.trigger.apply(d,c)!==!1)){if(!e&&!k.noBubble&&!n.isWindow(d)){for(i=k.delegateType||p,_.test(i+p)||(h=h.parentNode);h;h=h.parentNode)o.push(h),l=h;l===(d.ownerDocument||z)&&o.push(l.defaultView||l.parentWindow||a)}m=0;while((h=o[m++])&&!b.isPropagationStopped())b.type=m>1?i:k.bindType||p,f=(n._data(h,"events")||{})[b.type]&&n._data(h,"handle"),f&&f.apply(h,c),f=g&&h[g],f&&f.apply&&n.acceptData(h)&&(b.result=f.apply(h,c),b.result===!1&&b.preventDefault());if(b.type=p,!e&&!b.isDefaultPrevented()&&(!k._default||k._default.apply(o.pop(),c)===!1)&&n.acceptData(d)&&g&&d[p]&&!n.isWindow(d)){l=d[g],l&&(d[g]=null),n.event.triggered=p;try{d[p]()}catch(r){}n.event.triggered=void 0,l&&(d[g]=l)}return b.result}},dispatch:function(a){a=n.event.fix(a);var b,c,e,f,g,h=[],i=d.call(arguments),j=(n._data(this,"events")||{})[a.type]||[],k=n.event.special[a.type]||{};if(i[0]=a,a.delegateTarget=this,!k.preDispatch||k.preDispatch.call(this,a)!==!1){h=n.event.handlers.call(this,a,j),b=0;while((f=h[b++])&&!a.isPropagationStopped()){a.currentTarget=f.elem,g=0;while((e=f.handlers[g++])&&!a.isImmediatePropagationStopped())(!a.namespace_re||a.namespace_re.test(e.namespace))&&(a.handleObj=e,a.data=e.data,c=((n.event.special[e.origType]||{}).handle||e.handler).apply(f.elem,i),void 0!==c&&(a.result=c)===!1&&(a.preventDefault(),a.stopPropagation()))}return k.postDispatch&&k.postDispatch.call(this,a),a.result}},handlers:function(a,b){var c,d,e,f,g=[],h=b.delegateCount,i=a.target;if(h&&i.nodeType&&(!a.button||"click"!==a.type))for(;i!=this;i=i.parentNode||this)if(1===i.nodeType&&(i.disabled!==!0||"click"!==a.type)){for(e=[],f=0;h>f;f++)d=b[f],c=d.selector+" ",void 0===e[c]&&(e[c]=d.needsContext?n(c,this).index(i)>=0:n.find(c,this,null,[i]).length),e[c]&&e.push(d);e.length&&g.push({elem:i,handlers:e})}return h<b.length&&g.push({elem:this,handlers:b.slice(h)}),g},fix:function(a){if(a[n.expando])return a;var b,c,d,e=a.type,f=a,g=this.fixHooks[e];g||(this.fixHooks[e]=g=$.test(e)?this.mouseHooks:Z.test(e)?this.keyHooks:{}),d=g.props?this.props.concat(g.props):this.props,a=new n.Event(f),b=d.length;while(b--)c=d[b],a[c]=f[c];return a.target||(a.target=f.srcElement||z),3===a.target.nodeType&&(a.target=a.target.parentNode),a.metaKey=!!a.metaKey,g.filter?g.filter(a,f):a},props:"altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),fixHooks:{},keyHooks:{props:"char charCode key keyCode".split(" "),filter:function(a,b){return null==a.which&&(a.which=null!=b.charCode?b.charCode:b.keyCode),a}},mouseHooks:{props:"button buttons clientX clientY fromElement offsetX offsetY pageX pageY screenX screenY toElement".split(" "),filter:function(a,b){var c,d,e,f=b.button,g=b.fromElement;return null==a.pageX&&null!=b.clientX&&(d=a.target.ownerDocument||z,e=d.documentElement,c=d.body,a.pageX=b.clientX+(e&&e.scrollLeft||c&&c.scrollLeft||0)-(e&&e.clientLeft||c&&c.clientLeft||0),a.pageY=b.clientY+(e&&e.scrollTop||c&&c.scrollTop||0)-(e&&e.clientTop||c&&c.clientTop||0)),!a.relatedTarget&&g&&(a.relatedTarget=g===a.target?b.toElement:g),a.which||void 0===f||(a.which=1&f?1:2&f?3:4&f?2:0),a}},special:{load:{noBubble:!0},focus:{trigger:function(){if(this!==db()&&this.focus)try{return this.focus(),!1}catch(a){}},delegateType:"focusin"},blur:{trigger:function(){return this===db()&&this.blur?(this.blur(),!1):void 0},delegateType:"focusout"},click:{trigger:function(){return n.nodeName(this,"input")&&"checkbox"===this.type&&this.click?(this.click(),!1):void 0},_default:function(a){return n.nodeName(a.target,"a")}},beforeunload:{postDispatch:function(a){void 0!==a.result&&(a.originalEvent.returnValue=a.result)}}},simulate:function(a,b,c,d){var e=n.extend(new n.Event,c,{type:a,isSimulated:!0,originalEvent:{}});d?n.event.trigger(e,null,b):n.event.dispatch.call(b,e),e.isDefaultPrevented()&&c.preventDefault()}},n.removeEvent=z.removeEventListener?function(a,b,c){a.removeEventListener&&a.removeEventListener(b,c,!1)}:function(a,b,c){var d="on"+b;a.detachEvent&&(typeof a[d]===L&&(a[d]=null),a.detachEvent(d,c))},n.Event=function(a,b){return this instanceof n.Event?(a&&a.type?(this.originalEvent=a,this.type=a.type,this.isDefaultPrevented=a.defaultPrevented||void 0===a.defaultPrevented&&(a.returnValue===!1||a.getPreventDefault&&a.getPreventDefault())?bb:cb):this.type=a,b&&n.extend(this,b),this.timeStamp=a&&a.timeStamp||n.now(),void(this[n.expando]=!0)):new n.Event(a,b)},n.Event.prototype={isDefaultPrevented:cb,isPropagationStopped:cb,isImmediatePropagationStopped:cb,preventDefault:function(){var a=this.originalEvent;this.isDefaultPrevented=bb,a&&(a.preventDefault?a.preventDefault():a.returnValue=!1)},stopPropagation:function(){var a=this.originalEvent;this.isPropagationStopped=bb,a&&(a.stopPropagation&&a.stopPropagation(),a.cancelBubble=!0)},stopImmediatePropagation:function(){this.isImmediatePropagationStopped=bb,this.stopPropagation()}},n.each({mouseenter:"mouseover",mouseleave:"mouseout"},function(a,b){n.event.special[a]={delegateType:b,bindType:b,handle:function(a){var c,d=this,e=a.relatedTarget,f=a.handleObj;return(!e||e!==d&&!n.contains(d,e))&&(a.type=f.origType,c=f.handler.apply(this,arguments),a.type=b),c}}}),l.submitBubbles||(n.event.special.submit={setup:function(){return n.nodeName(this,"form")?!1:void n.event.add(this,"click._submit keypress._submit",function(a){var b=a.target,c=n.nodeName(b,"input")||n.nodeName(b,"button")?b.form:void 0;c&&!n._data(c,"submitBubbles")&&(n.event.add(c,"submit._submit",function(a){a._submit_bubble=!0}),n._data(c,"submitBubbles",!0))})},postDispatch:function(a){a._submit_bubble&&(delete a._submit_bubble,this.parentNode&&!a.isTrigger&&n.event.simulate("submit",this.parentNode,a,!0))},teardown:function(){return n.nodeName(this,"form")?!1:void n.event.remove(this,"._submit")}}),l.changeBubbles||(n.event.special.change={setup:function(){return Y.test(this.nodeName)?(("checkbox"===this.type||"radio"===this.type)&&(n.event.add(this,"propertychange._change",function(a){"checked"===a.originalEvent.propertyName&&(this._just_changed=!0)}),n.event.add(this,"click._change",function(a){this._just_changed&&!a.isTrigger&&(this._just_changed=!1),n.event.simulate("change",this,a,!0)})),!1):void n.event.add(this,"beforeactivate._change",function(a){var b=a.target;Y.test(b.nodeName)&&!n._data(b,"changeBubbles")&&(n.event.add(b,"change._change",function(a){!this.parentNode||a.isSimulated||a.isTrigger||n.event.simulate("change",this.parentNode,a,!0)}),n._data(b,"changeBubbles",!0))})},handle:function(a){var b=a.target;return this!==b||a.isSimulated||a.isTrigger||"radio"!==b.type&&"checkbox"!==b.type?a.handleObj.handler.apply(this,arguments):void 0},teardown:function(){return n.event.remove(this,"._change"),!Y.test(this.nodeName)}}),l.focusinBubbles||n.each({focus:"focusin",blur:"focusout"},function(a,b){var c=function(a){n.event.simulate(b,a.target,n.event.fix(a),!0)};n.event.special[b]={setup:function(){var d=this.ownerDocument||this,e=n._data(d,b);e||d.addEventListener(a,c,!0),n._data(d,b,(e||0)+1)},teardown:function(){var d=this.ownerDocument||this,e=n._data(d,b)-1;e?n._data(d,b,e):(d.removeEventListener(a,c,!0),n._removeData(d,b))}}}),n.fn.extend({on:function(a,b,c,d,e){var f,g;if("object"==typeof a){"string"!=typeof b&&(c=c||b,b=void 0);for(f in a)this.on(f,b,c,a[f],e);return this}if(null==c&&null==d?(d=b,c=b=void 0):null==d&&("string"==typeof b?(d=c,c=void 0):(d=c,c=b,b=void 0)),d===!1)d=cb;else if(!d)return this;return 1===e&&(g=d,d=function(a){return n().off(a),g.apply(this,arguments)},d.guid=g.guid||(g.guid=n.guid++)),this.each(function(){n.event.add(this,a,d,c,b)})},one:function(a,b,c,d){return this.on(a,b,c,d,1)},off:function(a,b,c){var d,e;if(a&&a.preventDefault&&a.handleObj)return d=a.handleObj,n(a.delegateTarget).off(d.namespace?d.origType+"."+d.namespace:d.origType,d.selector,d.handler),this;if("object"==typeof a){for(e in a)this.off(e,b,a[e]);return this}return(b===!1||"function"==typeof b)&&(c=b,b=void 0),c===!1&&(c=cb),this.each(function(){n.event.remove(this,a,c,b)})},trigger:function(a,b){return this.each(function(){n.event.trigger(a,b,this)})},triggerHandler:function(a,b){var c=this[0];return c?n.event.trigger(a,b,c,!0):void 0}});function eb(a){var b=fb.split("|"),c=a.createDocumentFragment();if(c.createElement)while(b.length)c.createElement(b.pop());return c}var fb="abbr|article|aside|audio|bdi|canvas|data|datalist|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video",gb=/ jQuery\d+="(?:null|\d+)"/g,hb=new RegExp("<(?:"+fb+")[\\s/>]","i"),ib=/^\s+/,jb=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,kb=/<([\w:]+)/,lb=/<tbody/i,mb=/<|&#?\w+;/,nb=/<(?:script|style|link)/i,ob=/checked\s*(?:[^=]|=\s*.checked.)/i,pb=/^$|\/(?:java|ecma)script/i,qb=/^true\/(.*)/,rb=/^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g,sb={option:[1,"<select multiple='multiple'>","</select>"],legend:[1,"<fieldset>","</fieldset>"],area:[1,"<map>","</map>"],param:[1,"<object>","</object>"],thead:[1,"<table>","</table>"],tr:[2,"<table><tbody>","</tbody></table>"],col:[2,"<table><tbody></tbody><colgroup>","</colgroup></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],_default:l.htmlSerialize?[0,"",""]:[1,"X<div>","</div>"]},tb=eb(z),ub=tb.appendChild(z.createElement("div"));sb.optgroup=sb.option,sb.tbody=sb.tfoot=sb.colgroup=sb.caption=sb.thead,sb.th=sb.td;function vb(a,b){var c,d,e=0,f=typeof a.getElementsByTagName!==L?a.getElementsByTagName(b||"*"):typeof a.querySelectorAll!==L?a.querySelectorAll(b||"*"):void 0;if(!f)for(f=[],c=a.childNodes||a;null!=(d=c[e]);e++)!b||n.nodeName(d,b)?f.push(d):n.merge(f,vb(d,b));return void 0===b||b&&n.nodeName(a,b)?n.merge([a],f):f}function wb(a){X.test(a.type)&&(a.defaultChecked=a.checked)}function xb(a,b){return n.nodeName(a,"table")&&n.nodeName(11!==b.nodeType?b:b.firstChild,"tr")?a.getElementsByTagName("tbody")[0]||a.appendChild(a.ownerDocument.createElement("tbody")):a}function yb(a){return a.type=(null!==n.find.attr(a,"type"))+"/"+a.type,a}function zb(a){var b=qb.exec(a.type);return b?a.type=b[1]:a.removeAttribute("type"),a}function Ab(a,b){for(var c,d=0;null!=(c=a[d]);d++)n._data(c,"globalEval",!b||n._data(b[d],"globalEval"))}function Bb(a,b){if(1===b.nodeType&&n.hasData(a)){var c,d,e,f=n._data(a),g=n._data(b,f),h=f.events;if(h){delete g.handle,g.events={};for(c in h)for(d=0,e=h[c].length;e>d;d++)n.event.add(b,c,h[c][d])}g.data&&(g.data=n.extend({},g.data))}}function Cb(a,b){var c,d,e;if(1===b.nodeType){if(c=b.nodeName.toLowerCase(),!l.noCloneEvent&&b[n.expando]){e=n._data(b);for(d in e.events)n.removeEvent(b,d,e.handle);b.removeAttribute(n.expando)}"script"===c&&b.text!==a.text?(yb(b).text=a.text,zb(b)):"object"===c?(b.parentNode&&(b.outerHTML=a.outerHTML),l.html5Clone&&a.innerHTML&&!n.trim(b.innerHTML)&&(b.innerHTML=a.innerHTML)):"input"===c&&X.test(a.type)?(b.defaultChecked=b.checked=a.checked,b.value!==a.value&&(b.value=a.value)):"option"===c?b.defaultSelected=b.selected=a.defaultSelected:("input"===c||"textarea"===c)&&(b.defaultValue=a.defaultValue)}}n.extend({clone:function(a,b,c){var d,e,f,g,h,i=n.contains(a.ownerDocument,a);if(l.html5Clone||n.isXMLDoc(a)||!hb.test("<"+a.nodeName+">")?f=a.cloneNode(!0):(ub.innerHTML=a.outerHTML,ub.removeChild(f=ub.firstChild)),!(l.noCloneEvent&&l.noCloneChecked||1!==a.nodeType&&11!==a.nodeType||n.isXMLDoc(a)))for(d=vb(f),h=vb(a),g=0;null!=(e=h[g]);++g)d[g]&&Cb(e,d[g]);if(b)if(c)for(h=h||vb(a),d=d||vb(f),g=0;null!=(e=h[g]);g++)Bb(e,d[g]);else Bb(a,f);return d=vb(f,"script"),d.length>0&&Ab(d,!i&&vb(a,"script")),d=h=e=null,f},buildFragment:function(a,b,c,d){for(var e,f,g,h,i,j,k,m=a.length,o=eb(b),p=[],q=0;m>q;q++)if(f=a[q],f||0===f)if("object"===n.type(f))n.merge(p,f.nodeType?[f]:f);else if(mb.test(f)){h=h||o.appendChild(b.createElement("div")),i=(kb.exec(f)||["",""])[1].toLowerCase(),k=sb[i]||sb._default,h.innerHTML=k[1]+f.replace(jb,"<$1></$2>")+k[2],e=k[0];while(e--)h=h.lastChild;if(!l.leadingWhitespace&&ib.test(f)&&p.push(b.createTextNode(ib.exec(f)[0])),!l.tbody){f="table"!==i||lb.test(f)?"<table>"!==k[1]||lb.test(f)?0:h:h.firstChild,e=f&&f.childNodes.length;while(e--)n.nodeName(j=f.childNodes[e],"tbody")&&!j.childNodes.length&&f.removeChild(j)}n.merge(p,h.childNodes),h.textContent="";while(h.firstChild)h.removeChild(h.firstChild);h=o.lastChild}else p.push(b.createTextNode(f));h&&o.removeChild(h),l.appendChecked||n.grep(vb(p,"input"),wb),q=0;while(f=p[q++])if((!d||-1===n.inArray(f,d))&&(g=n.contains(f.ownerDocument,f),h=vb(o.appendChild(f),"script"),g&&Ab(h),c)){e=0;while(f=h[e++])pb.test(f.type||"")&&c.push(f)}return h=null,o},cleanData:function(a,b){for(var d,e,f,g,h=0,i=n.expando,j=n.cache,k=l.deleteExpando,m=n.event.special;null!=(d=a[h]);h++)if((b||n.acceptData(d))&&(f=d[i],g=f&&j[f])){if(g.events)for(e in g.events)m[e]?n.event.remove(d,e):n.removeEvent(d,e,g.handle);j[f]&&(delete j[f],k?delete d[i]:typeof d.removeAttribute!==L?d.removeAttribute(i):d[i]=null,c.push(f))}}}),n.fn.extend({text:function(a){return W(this,function(a){return void 0===a?n.text(this):this.empty().append((this[0]&&this[0].ownerDocument||z).createTextNode(a))},null,a,arguments.length)},append:function(){return this.domManip(arguments,function(a){if(1===this.nodeType||11===this.nodeType||9===this.nodeType){var b=xb(this,a);b.appendChild(a)}})},prepend:function(){return this.domManip(arguments,function(a){if(1===this.nodeType||11===this.nodeType||9===this.nodeType){var b=xb(this,a);b.insertBefore(a,b.firstChild)}})},before:function(){return this.domManip(arguments,function(a){this.parentNode&&this.parentNode.insertBefore(a,this)})},after:function(){return this.domManip(arguments,function(a){this.parentNode&&this.parentNode.insertBefore(a,this.nextSibling)})},remove:function(a,b){for(var c,d=a?n.filter(a,this):this,e=0;null!=(c=d[e]);e++)b||1!==c.nodeType||n.cleanData(vb(c)),c.parentNode&&(b&&n.contains(c.ownerDocument,c)&&Ab(vb(c,"script")),c.parentNode.removeChild(c));return this},empty:function(){for(var a,b=0;null!=(a=this[b]);b++){1===a.nodeType&&n.cleanData(vb(a,!1));while(a.firstChild)a.removeChild(a.firstChild);a.options&&n.nodeName(a,"select")&&(a.options.length=0)}return this},clone:function(a,b){return a=null==a?!1:a,b=null==b?a:b,this.map(function(){return n.clone(this,a,b)})},html:function(a){return W(this,function(a){var b=this[0]||{},c=0,d=this.length;if(void 0===a)return 1===b.nodeType?b.innerHTML.replace(gb,""):void 0;if(!("string"!=typeof a||nb.test(a)||!l.htmlSerialize&&hb.test(a)||!l.leadingWhitespace&&ib.test(a)||sb[(kb.exec(a)||["",""])[1].toLowerCase()])){a=a.replace(jb,"<$1></$2>");try{for(;d>c;c++)b=this[c]||{},1===b.nodeType&&(n.cleanData(vb(b,!1)),b.innerHTML=a);b=0}catch(e){}}b&&this.empty().append(a)},null,a,arguments.length)},replaceWith:function(){var a=arguments[0];return this.domManip(arguments,function(b){a=this.parentNode,n.cleanData(vb(this)),a&&a.replaceChild(b,this)}),a&&(a.length||a.nodeType)?this:this.remove()},detach:function(a){return this.remove(a,!0)},domManip:function(a,b){a=e.apply([],a);var c,d,f,g,h,i,j=0,k=this.length,m=this,o=k-1,p=a[0],q=n.isFunction(p);if(q||k>1&&"string"==typeof p&&!l.checkClone&&ob.test(p))return this.each(function(c){var d=m.eq(c);q&&(a[0]=p.call(this,c,d.html())),d.domManip(a,b)});if(k&&(i=n.buildFragment(a,this[0].ownerDocument,!1,this),c=i.firstChild,1===i.childNodes.length&&(i=c),c)){for(g=n.map(vb(i,"script"),yb),f=g.length;k>j;j++)d=i,j!==o&&(d=n.clone(d,!0,!0),f&&n.merge(g,vb(d,"script"))),b.call(this[j],d,j);if(f)for(h=g[g.length-1].ownerDocument,n.map(g,zb),j=0;f>j;j++)d=g[j],pb.test(d.type||"")&&!n._data(d,"globalEval")&&n.contains(h,d)&&(d.src?n._evalUrl&&n._evalUrl(d.src):n.globalEval((d.text||d.textContent||d.innerHTML||"").replace(rb,"")));i=c=null}return this}}),n.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(a,b){n.fn[a]=function(a){for(var c,d=0,e=[],g=n(a),h=g.length-1;h>=d;d++)c=d===h?this:this.clone(!0),n(g[d])[b](c),f.apply(e,c.get());return this.pushStack(e)}});var Db,Eb={};function Fb(b,c){var d=n(c.createElement(b)).appendTo(c.body),e=a.getDefaultComputedStyle?a.getDefaultComputedStyle(d[0]).display:n.css(d[0],"display");return d.detach(),e}function Gb(a){var b=z,c=Eb[a];return c||(c=Fb(a,b),"none"!==c&&c||(Db=(Db||n("<iframe frameborder='0' width='0' height='0'/>")).appendTo(b.documentElement),b=(Db[0].contentWindow||Db[0].contentDocument).document,b.write(),b.close(),c=Fb(a,b),Db.detach()),Eb[a]=c),c}!function(){var a,b,c=z.createElement("div"),d="-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;display:block;padding:0;margin:0;border:0";c.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",a=c.getElementsByTagName("a")[0],a.style.cssText="float:left;opacity:.5",l.opacity=/^0.5/.test(a.style.opacity),l.cssFloat=!!a.style.cssFloat,c.style.backgroundClip="content-box",c.cloneNode(!0).style.backgroundClip="",l.clearCloneStyle="content-box"===c.style.backgroundClip,a=c=null,l.shrinkWrapBlocks=function(){var a,c,e,f;if(null==b){if(a=z.getElementsByTagName("body")[0],!a)return;f="border:0;width:0;height:0;position:absolute;top:0;left:-9999px",c=z.createElement("div"),e=z.createElement("div"),a.appendChild(c).appendChild(e),b=!1,typeof e.style.zoom!==L&&(e.style.cssText=d+";width:1px;padding:1px;zoom:1",e.innerHTML="<div></div>",e.firstChild.style.width="5px",b=3!==e.offsetWidth),a.removeChild(c),a=c=e=null}return b}}();var Hb=/^margin/,Ib=new RegExp("^("+T+")(?!px)[a-z%]+$","i"),Jb,Kb,Lb=/^(top|right|bottom|left)$/;a.getComputedStyle?(Jb=function(a){return a.ownerDocument.defaultView.getComputedStyle(a,null)},Kb=function(a,b,c){var d,e,f,g,h=a.style;return c=c||Jb(a),g=c?c.getPropertyValue(b)||c[b]:void 0,c&&(""!==g||n.contains(a.ownerDocument,a)||(g=n.style(a,b)),Ib.test(g)&&Hb.test(b)&&(d=h.width,e=h.minWidth,f=h.maxWidth,h.minWidth=h.maxWidth=h.width=g,g=c.width,h.width=d,h.minWidth=e,h.maxWidth=f)),void 0===g?g:g+""}):z.documentElement.currentStyle&&(Jb=function(a){return a.currentStyle},Kb=function(a,b,c){var d,e,f,g,h=a.style;return c=c||Jb(a),g=c?c[b]:void 0,null==g&&h&&h[b]&&(g=h[b]),Ib.test(g)&&!Lb.test(b)&&(d=h.left,e=a.runtimeStyle,f=e&&e.left,f&&(e.left=a.currentStyle.left),h.left="fontSize"===b?"1em":g,g=h.pixelLeft+"px",h.left=d,f&&(e.left=f)),void 0===g?g:g+""||"auto"});function Mb(a,b){return{get:function(){var c=a();if(null!=c)return c?void delete this.get:(this.get=b).apply(this,arguments)}}}!function(){var b,c,d,e,f,g,h=z.createElement("div"),i="border:0;width:0;height:0;position:absolute;top:0;left:-9999px",j="-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;display:block;padding:0;margin:0;border:0";h.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",b=h.getElementsByTagName("a")[0],b.style.cssText="float:left;opacity:.5",l.opacity=/^0.5/.test(b.style.opacity),l.cssFloat=!!b.style.cssFloat,h.style.backgroundClip="content-box",h.cloneNode(!0).style.backgroundClip="",l.clearCloneStyle="content-box"===h.style.backgroundClip,b=h=null,n.extend(l,{reliableHiddenOffsets:function(){if(null!=c)return c;var a,b,d,e=z.createElement("div"),f=z.getElementsByTagName("body")[0];if(f)return e.setAttribute("className","t"),e.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",a=z.createElement("div"),a.style.cssText=i,f.appendChild(a).appendChild(e),e.innerHTML="<table><tr><td></td><td>t</td></tr></table>",b=e.getElementsByTagName("td"),b[0].style.cssText="padding:0;margin:0;border:0;display:none",d=0===b[0].offsetHeight,b[0].style.display="",b[1].style.display="none",c=d&&0===b[0].offsetHeight,f.removeChild(a),e=f=null,c},boxSizing:function(){return null==d&&k(),d},boxSizingReliable:function(){return null==e&&k(),e},pixelPosition:function(){return null==f&&k(),f},reliableMarginRight:function(){var b,c,d,e;if(null==g&&a.getComputedStyle){if(b=z.getElementsByTagName("body")[0],!b)return;c=z.createElement("div"),d=z.createElement("div"),c.style.cssText=i,b.appendChild(c).appendChild(d),e=d.appendChild(z.createElement("div")),e.style.cssText=d.style.cssText=j,e.style.marginRight=e.style.width="0",d.style.width="1px",g=!parseFloat((a.getComputedStyle(e,null)||{}).marginRight),b.removeChild(c)}return g}});function k(){var b,c,h=z.getElementsByTagName("body")[0];h&&(b=z.createElement("div"),c=z.createElement("div"),b.style.cssText=i,h.appendChild(b).appendChild(c),c.style.cssText="-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;position:absolute;display:block;padding:1px;border:1px;width:4px;margin-top:1%;top:1%",n.swap(h,null!=h.style.zoom?{zoom:1}:{},function(){d=4===c.offsetWidth}),e=!0,f=!1,g=!0,a.getComputedStyle&&(f="1%"!==(a.getComputedStyle(c,null)||{}).top,e="4px"===(a.getComputedStyle(c,null)||{width:"4px"}).width),h.removeChild(b),c=h=null)}}(),n.swap=function(a,b,c,d){var e,f,g={};for(f in b)g[f]=a.style[f],a.style[f]=b[f];e=c.apply(a,d||[]);for(f in b)a.style[f]=g[f];return e};var Nb=/alpha\([^)]*\)/i,Ob=/opacity\s*=\s*([^)]*)/,Pb=/^(none|table(?!-c[ea]).+)/,Qb=new RegExp("^("+T+")(.*)$","i"),Rb=new RegExp("^([+-])=("+T+")","i"),Sb={position:"absolute",visibility:"hidden",display:"block"},Tb={letterSpacing:0,fontWeight:400},Ub=["Webkit","O","Moz","ms"];function Vb(a,b){if(b in a)return b;var c=b.charAt(0).toUpperCase()+b.slice(1),d=b,e=Ub.length;while(e--)if(b=Ub[e]+c,b in a)return b;return d}function Wb(a,b){for(var c,d,e,f=[],g=0,h=a.length;h>g;g++)d=a[g],d.style&&(f[g]=n._data(d,"olddisplay"),c=d.style.display,b?(f[g]||"none"!==c||(d.style.display=""),""===d.style.display&&V(d)&&(f[g]=n._data(d,"olddisplay",Gb(d.nodeName)))):f[g]||(e=V(d),(c&&"none"!==c||!e)&&n._data(d,"olddisplay",e?c:n.css(d,"display"))));for(g=0;h>g;g++)d=a[g],d.style&&(b&&"none"!==d.style.display&&""!==d.style.display||(d.style.display=b?f[g]||"":"none"));return a}function Xb(a,b,c){var d=Qb.exec(b);return d?Math.max(0,d[1]-(c||0))+(d[2]||"px"):b}function Yb(a,b,c,d,e){for(var f=c===(d?"border":"content")?4:"width"===b?1:0,g=0;4>f;f+=2)"margin"===c&&(g+=n.css(a,c+U[f],!0,e)),d?("content"===c&&(g-=n.css(a,"padding"+U[f],!0,e)),"margin"!==c&&(g-=n.css(a,"border"+U[f]+"Width",!0,e))):(g+=n.css(a,"padding"+U[f],!0,e),"padding"!==c&&(g+=n.css(a,"border"+U[f]+"Width",!0,e)));return g}function Zb(a,b,c){var d=!0,e="width"===b?a.offsetWidth:a.offsetHeight,f=Jb(a),g=l.boxSizing()&&"border-box"===n.css(a,"boxSizing",!1,f);if(0>=e||null==e){if(e=Kb(a,b,f),(0>e||null==e)&&(e=a.style[b]),Ib.test(e))return e;d=g&&(l.boxSizingReliable()||e===a.style[b]),e=parseFloat(e)||0}return e+Yb(a,b,c||(g?"border":"content"),d,f)+"px"}n.extend({cssHooks:{opacity:{get:function(a,b){if(b){var c=Kb(a,"opacity");return""===c?"1":c}}}},cssNumber:{columnCount:!0,fillOpacity:!0,fontWeight:!0,lineHeight:!0,opacity:!0,order:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{"float":l.cssFloat?"cssFloat":"styleFloat"},style:function(a,b,c,d){if(a&&3!==a.nodeType&&8!==a.nodeType&&a.style){var e,f,g,h=n.camelCase(b),i=a.style;if(b=n.cssProps[h]||(n.cssProps[h]=Vb(i,h)),g=n.cssHooks[b]||n.cssHooks[h],void 0===c)return g&&"get"in g&&void 0!==(e=g.get(a,!1,d))?e:i[b];if(f=typeof c,"string"===f&&(e=Rb.exec(c))&&(c=(e[1]+1)*e[2]+parseFloat(n.css(a,b)),f="number"),null!=c&&c===c&&("number"!==f||n.cssNumber[h]||(c+="px"),l.clearCloneStyle||""!==c||0!==b.indexOf("background")||(i[b]="inherit"),!(g&&"set"in g&&void 0===(c=g.set(a,c,d)))))try{i[b]="",i[b]=c}catch(j){}}},css:function(a,b,c,d){var e,f,g,h=n.camelCase(b);return b=n.cssProps[h]||(n.cssProps[h]=Vb(a.style,h)),g=n.cssHooks[b]||n.cssHooks[h],g&&"get"in g&&(f=g.get(a,!0,c)),void 0===f&&(f=Kb(a,b,d)),"normal"===f&&b in Tb&&(f=Tb[b]),""===c||c?(e=parseFloat(f),c===!0||n.isNumeric(e)?e||0:f):f}}),n.each(["height","width"],function(a,b){n.cssHooks[b]={get:function(a,c,d){return c?0===a.offsetWidth&&Pb.test(n.css(a,"display"))?n.swap(a,Sb,function(){return Zb(a,b,d)}):Zb(a,b,d):void 0},set:function(a,c,d){var e=d&&Jb(a);return Xb(a,c,d?Yb(a,b,d,l.boxSizing()&&"border-box"===n.css(a,"boxSizing",!1,e),e):0)}}}),l.opacity||(n.cssHooks.opacity={get:function(a,b){return Ob.test((b&&a.currentStyle?a.currentStyle.filter:a.style.filter)||"")?.01*parseFloat(RegExp.$1)+"":b?"1":""},set:function(a,b){var c=a.style,d=a.currentStyle,e=n.isNumeric(b)?"alpha(opacity="+100*b+")":"",f=d&&d.filter||c.filter||"";c.zoom=1,(b>=1||""===b)&&""===n.trim(f.replace(Nb,""))&&c.removeAttribute&&(c.removeAttribute("filter"),""===b||d&&!d.filter)||(c.filter=Nb.test(f)?f.replace(Nb,e):f+" "+e)}}),n.cssHooks.marginRight=Mb(l.reliableMarginRight,function(a,b){return b?n.swap(a,{display:"inline-block"},Kb,[a,"marginRight"]):void 0}),n.each({margin:"",padding:"",border:"Width"},function(a,b){n.cssHooks[a+b]={expand:function(c){for(var d=0,e={},f="string"==typeof c?c.split(" "):[c];4>d;d++)e[a+U[d]+b]=f[d]||f[d-2]||f[0];return e}},Hb.test(a)||(n.cssHooks[a+b].set=Xb)}),n.fn.extend({css:function(a,b){return W(this,function(a,b,c){var d,e,f={},g=0;if(n.isArray(b)){for(d=Jb(a),e=b.length;e>g;g++)f[b[g]]=n.css(a,b[g],!1,d);return f}return void 0!==c?n.style(a,b,c):n.css(a,b)
},a,b,arguments.length>1)},show:function(){return Wb(this,!0)},hide:function(){return Wb(this)},toggle:function(a){return"boolean"==typeof a?a?this.show():this.hide():this.each(function(){V(this)?n(this).show():n(this).hide()})}});function $b(a,b,c,d,e){return new $b.prototype.init(a,b,c,d,e)}n.Tween=$b,$b.prototype={constructor:$b,init:function(a,b,c,d,e,f){this.elem=a,this.prop=c,this.easing=e||"swing",this.options=b,this.start=this.now=this.cur(),this.end=d,this.unit=f||(n.cssNumber[c]?"":"px")},cur:function(){var a=$b.propHooks[this.prop];return a&&a.get?a.get(this):$b.propHooks._default.get(this)},run:function(a){var b,c=$b.propHooks[this.prop];return this.pos=b=this.options.duration?n.easing[this.easing](a,this.options.duration*a,0,1,this.options.duration):a,this.now=(this.end-this.start)*b+this.start,this.options.step&&this.options.step.call(this.elem,this.now,this),c&&c.set?c.set(this):$b.propHooks._default.set(this),this}},$b.prototype.init.prototype=$b.prototype,$b.propHooks={_default:{get:function(a){var b;return null==a.elem[a.prop]||a.elem.style&&null!=a.elem.style[a.prop]?(b=n.css(a.elem,a.prop,""),b&&"auto"!==b?b:0):a.elem[a.prop]},set:function(a){n.fx.step[a.prop]?n.fx.step[a.prop](a):a.elem.style&&(null!=a.elem.style[n.cssProps[a.prop]]||n.cssHooks[a.prop])?n.style(a.elem,a.prop,a.now+a.unit):a.elem[a.prop]=a.now}}},$b.propHooks.scrollTop=$b.propHooks.scrollLeft={set:function(a){a.elem.nodeType&&a.elem.parentNode&&(a.elem[a.prop]=a.now)}},n.easing={linear:function(a){return a},swing:function(a){return.5-Math.cos(a*Math.PI)/2}},n.fx=$b.prototype.init,n.fx.step={};var _b,ac,bc=/^(?:toggle|show|hide)$/,cc=new RegExp("^(?:([+-])=|)("+T+")([a-z%]*)$","i"),dc=/queueHooks$/,ec=[jc],fc={"*":[function(a,b){var c=this.createTween(a,b),d=c.cur(),e=cc.exec(b),f=e&&e[3]||(n.cssNumber[a]?"":"px"),g=(n.cssNumber[a]||"px"!==f&&+d)&&cc.exec(n.css(c.elem,a)),h=1,i=20;if(g&&g[3]!==f){f=f||g[3],e=e||[],g=+d||1;do h=h||".5",g/=h,n.style(c.elem,a,g+f);while(h!==(h=c.cur()/d)&&1!==h&&--i)}return e&&(g=c.start=+g||+d||0,c.unit=f,c.end=e[1]?g+(e[1]+1)*e[2]:+e[2]),c}]};function gc(){return setTimeout(function(){_b=void 0}),_b=n.now()}function hc(a,b){var c,d={height:a},e=0;for(b=b?1:0;4>e;e+=2-b)c=U[e],d["margin"+c]=d["padding"+c]=a;return b&&(d.opacity=d.width=a),d}function ic(a,b,c){for(var d,e=(fc[b]||[]).concat(fc["*"]),f=0,g=e.length;g>f;f++)if(d=e[f].call(c,b,a))return d}function jc(a,b,c){var d,e,f,g,h,i,j,k,m=this,o={},p=a.style,q=a.nodeType&&V(a),r=n._data(a,"fxshow");c.queue||(h=n._queueHooks(a,"fx"),null==h.unqueued&&(h.unqueued=0,i=h.empty.fire,h.empty.fire=function(){h.unqueued||i()}),h.unqueued++,m.always(function(){m.always(function(){h.unqueued--,n.queue(a,"fx").length||h.empty.fire()})})),1===a.nodeType&&("height"in b||"width"in b)&&(c.overflow=[p.overflow,p.overflowX,p.overflowY],j=n.css(a,"display"),k=Gb(a.nodeName),"none"===j&&(j=k),"inline"===j&&"none"===n.css(a,"float")&&(l.inlineBlockNeedsLayout&&"inline"!==k?p.zoom=1:p.display="inline-block")),c.overflow&&(p.overflow="hidden",l.shrinkWrapBlocks()||m.always(function(){p.overflow=c.overflow[0],p.overflowX=c.overflow[1],p.overflowY=c.overflow[2]}));for(d in b)if(e=b[d],bc.exec(e)){if(delete b[d],f=f||"toggle"===e,e===(q?"hide":"show")){if("show"!==e||!r||void 0===r[d])continue;q=!0}o[d]=r&&r[d]||n.style(a,d)}if(!n.isEmptyObject(o)){r?"hidden"in r&&(q=r.hidden):r=n._data(a,"fxshow",{}),f&&(r.hidden=!q),q?n(a).show():m.done(function(){n(a).hide()}),m.done(function(){var b;n._removeData(a,"fxshow");for(b in o)n.style(a,b,o[b])});for(d in o)g=ic(q?r[d]:0,d,m),d in r||(r[d]=g.start,q&&(g.end=g.start,g.start="width"===d||"height"===d?1:0))}}function kc(a,b){var c,d,e,f,g;for(c in a)if(d=n.camelCase(c),e=b[d],f=a[c],n.isArray(f)&&(e=f[1],f=a[c]=f[0]),c!==d&&(a[d]=f,delete a[c]),g=n.cssHooks[d],g&&"expand"in g){f=g.expand(f),delete a[d];for(c in f)c in a||(a[c]=f[c],b[c]=e)}else b[d]=e}function lc(a,b,c){var d,e,f=0,g=ec.length,h=n.Deferred().always(function(){delete i.elem}),i=function(){if(e)return!1;for(var b=_b||gc(),c=Math.max(0,j.startTime+j.duration-b),d=c/j.duration||0,f=1-d,g=0,i=j.tweens.length;i>g;g++)j.tweens[g].run(f);return h.notifyWith(a,[j,f,c]),1>f&&i?c:(h.resolveWith(a,[j]),!1)},j=h.promise({elem:a,props:n.extend({},b),opts:n.extend(!0,{specialEasing:{}},c),originalProperties:b,originalOptions:c,startTime:_b||gc(),duration:c.duration,tweens:[],createTween:function(b,c){var d=n.Tween(a,j.opts,b,c,j.opts.specialEasing[b]||j.opts.easing);return j.tweens.push(d),d},stop:function(b){var c=0,d=b?j.tweens.length:0;if(e)return this;for(e=!0;d>c;c++)j.tweens[c].run(1);return b?h.resolveWith(a,[j,b]):h.rejectWith(a,[j,b]),this}}),k=j.props;for(kc(k,j.opts.specialEasing);g>f;f++)if(d=ec[f].call(j,a,k,j.opts))return d;return n.map(k,ic,j),n.isFunction(j.opts.start)&&j.opts.start.call(a,j),n.fx.timer(n.extend(i,{elem:a,anim:j,queue:j.opts.queue})),j.progress(j.opts.progress).done(j.opts.done,j.opts.complete).fail(j.opts.fail).always(j.opts.always)}n.Animation=n.extend(lc,{tweener:function(a,b){n.isFunction(a)?(b=a,a=["*"]):a=a.split(" ");for(var c,d=0,e=a.length;e>d;d++)c=a[d],fc[c]=fc[c]||[],fc[c].unshift(b)},prefilter:function(a,b){b?ec.unshift(a):ec.push(a)}}),n.speed=function(a,b,c){var d=a&&"object"==typeof a?n.extend({},a):{complete:c||!c&&b||n.isFunction(a)&&a,duration:a,easing:c&&b||b&&!n.isFunction(b)&&b};return d.duration=n.fx.off?0:"number"==typeof d.duration?d.duration:d.duration in n.fx.speeds?n.fx.speeds[d.duration]:n.fx.speeds._default,(null==d.queue||d.queue===!0)&&(d.queue="fx"),d.old=d.complete,d.complete=function(){n.isFunction(d.old)&&d.old.call(this),d.queue&&n.dequeue(this,d.queue)},d},n.fn.extend({fadeTo:function(a,b,c,d){return this.filter(V).css("opacity",0).show().end().animate({opacity:b},a,c,d)},animate:function(a,b,c,d){var e=n.isEmptyObject(a),f=n.speed(b,c,d),g=function(){var b=lc(this,n.extend({},a),f);(e||n._data(this,"finish"))&&b.stop(!0)};return g.finish=g,e||f.queue===!1?this.each(g):this.queue(f.queue,g)},stop:function(a,b,c){var d=function(a){var b=a.stop;delete a.stop,b(c)};return"string"!=typeof a&&(c=b,b=a,a=void 0),b&&a!==!1&&this.queue(a||"fx",[]),this.each(function(){var b=!0,e=null!=a&&a+"queueHooks",f=n.timers,g=n._data(this);if(e)g[e]&&g[e].stop&&d(g[e]);else for(e in g)g[e]&&g[e].stop&&dc.test(e)&&d(g[e]);for(e=f.length;e--;)f[e].elem!==this||null!=a&&f[e].queue!==a||(f[e].anim.stop(c),b=!1,f.splice(e,1));(b||!c)&&n.dequeue(this,a)})},finish:function(a){return a!==!1&&(a=a||"fx"),this.each(function(){var b,c=n._data(this),d=c[a+"queue"],e=c[a+"queueHooks"],f=n.timers,g=d?d.length:0;for(c.finish=!0,n.queue(this,a,[]),e&&e.stop&&e.stop.call(this,!0),b=f.length;b--;)f[b].elem===this&&f[b].queue===a&&(f[b].anim.stop(!0),f.splice(b,1));for(b=0;g>b;b++)d[b]&&d[b].finish&&d[b].finish.call(this);delete c.finish})}}),n.each(["toggle","show","hide"],function(a,b){var c=n.fn[b];n.fn[b]=function(a,d,e){return null==a||"boolean"==typeof a?c.apply(this,arguments):this.animate(hc(b,!0),a,d,e)}}),n.each({slideDown:hc("show"),slideUp:hc("hide"),slideToggle:hc("toggle"),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(a,b){n.fn[a]=function(a,c,d){return this.animate(b,a,c,d)}}),n.timers=[],n.fx.tick=function(){var a,b=n.timers,c=0;for(_b=n.now();c<b.length;c++)a=b[c],a()||b[c]!==a||b.splice(c--,1);b.length||n.fx.stop(),_b=void 0},n.fx.timer=function(a){n.timers.push(a),a()?n.fx.start():n.timers.pop()},n.fx.interval=13,n.fx.start=function(){ac||(ac=setInterval(n.fx.tick,n.fx.interval))},n.fx.stop=function(){clearInterval(ac),ac=null},n.fx.speeds={slow:600,fast:200,_default:400},n.fn.delay=function(a,b){return a=n.fx?n.fx.speeds[a]||a:a,b=b||"fx",this.queue(b,function(b,c){var d=setTimeout(b,a);c.stop=function(){clearTimeout(d)}})},function(){var a,b,c,d,e=z.createElement("div");e.setAttribute("className","t"),e.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",a=e.getElementsByTagName("a")[0],c=z.createElement("select"),d=c.appendChild(z.createElement("option")),b=e.getElementsByTagName("input")[0],a.style.cssText="top:1px",l.getSetAttribute="t"!==e.className,l.style=/top/.test(a.getAttribute("style")),l.hrefNormalized="/a"===a.getAttribute("href"),l.checkOn=!!b.value,l.optSelected=d.selected,l.enctype=!!z.createElement("form").enctype,c.disabled=!0,l.optDisabled=!d.disabled,b=z.createElement("input"),b.setAttribute("value",""),l.input=""===b.getAttribute("value"),b.value="t",b.setAttribute("type","radio"),l.radioValue="t"===b.value,a=b=c=d=e=null}();var mc=/\r/g;n.fn.extend({val:function(a){var b,c,d,e=this[0];{if(arguments.length)return d=n.isFunction(a),this.each(function(c){var e;1===this.nodeType&&(e=d?a.call(this,c,n(this).val()):a,null==e?e="":"number"==typeof e?e+="":n.isArray(e)&&(e=n.map(e,function(a){return null==a?"":a+""})),b=n.valHooks[this.type]||n.valHooks[this.nodeName.toLowerCase()],b&&"set"in b&&void 0!==b.set(this,e,"value")||(this.value=e))});if(e)return b=n.valHooks[e.type]||n.valHooks[e.nodeName.toLowerCase()],b&&"get"in b&&void 0!==(c=b.get(e,"value"))?c:(c=e.value,"string"==typeof c?c.replace(mc,""):null==c?"":c)}}}),n.extend({valHooks:{option:{get:function(a){var b=n.find.attr(a,"value");return null!=b?b:n.text(a)}},select:{get:function(a){for(var b,c,d=a.options,e=a.selectedIndex,f="select-one"===a.type||0>e,g=f?null:[],h=f?e+1:d.length,i=0>e?h:f?e:0;h>i;i++)if(c=d[i],!(!c.selected&&i!==e||(l.optDisabled?c.disabled:null!==c.getAttribute("disabled"))||c.parentNode.disabled&&n.nodeName(c.parentNode,"optgroup"))){if(b=n(c).val(),f)return b;g.push(b)}return g},set:function(a,b){var c,d,e=a.options,f=n.makeArray(b),g=e.length;while(g--)if(d=e[g],n.inArray(n.valHooks.option.get(d),f)>=0)try{d.selected=c=!0}catch(h){d.scrollHeight}else d.selected=!1;return c||(a.selectedIndex=-1),e}}}}),n.each(["radio","checkbox"],function(){n.valHooks[this]={set:function(a,b){return n.isArray(b)?a.checked=n.inArray(n(a).val(),b)>=0:void 0}},l.checkOn||(n.valHooks[this].get=function(a){return null===a.getAttribute("value")?"on":a.value})});var nc,oc,pc=n.expr.attrHandle,qc=/^(?:checked|selected)$/i,rc=l.getSetAttribute,sc=l.input;n.fn.extend({attr:function(a,b){return W(this,n.attr,a,b,arguments.length>1)},removeAttr:function(a){return this.each(function(){n.removeAttr(this,a)})}}),n.extend({attr:function(a,b,c){var d,e,f=a.nodeType;if(a&&3!==f&&8!==f&&2!==f)return typeof a.getAttribute===L?n.prop(a,b,c):(1===f&&n.isXMLDoc(a)||(b=b.toLowerCase(),d=n.attrHooks[b]||(n.expr.match.bool.test(b)?oc:nc)),void 0===c?d&&"get"in d&&null!==(e=d.get(a,b))?e:(e=n.find.attr(a,b),null==e?void 0:e):null!==c?d&&"set"in d&&void 0!==(e=d.set(a,c,b))?e:(a.setAttribute(b,c+""),c):void n.removeAttr(a,b))},removeAttr:function(a,b){var c,d,e=0,f=b&&b.match(F);if(f&&1===a.nodeType)while(c=f[e++])d=n.propFix[c]||c,n.expr.match.bool.test(c)?sc&&rc||!qc.test(c)?a[d]=!1:a[n.camelCase("default-"+c)]=a[d]=!1:n.attr(a,c,""),a.removeAttribute(rc?c:d)},attrHooks:{type:{set:function(a,b){if(!l.radioValue&&"radio"===b&&n.nodeName(a,"input")){var c=a.value;return a.setAttribute("type",b),c&&(a.value=c),b}}}}}),oc={set:function(a,b,c){return b===!1?n.removeAttr(a,c):sc&&rc||!qc.test(c)?a.setAttribute(!rc&&n.propFix[c]||c,c):a[n.camelCase("default-"+c)]=a[c]=!0,c}},n.each(n.expr.match.bool.source.match(/\w+/g),function(a,b){var c=pc[b]||n.find.attr;pc[b]=sc&&rc||!qc.test(b)?function(a,b,d){var e,f;return d||(f=pc[b],pc[b]=e,e=null!=c(a,b,d)?b.toLowerCase():null,pc[b]=f),e}:function(a,b,c){return c?void 0:a[n.camelCase("default-"+b)]?b.toLowerCase():null}}),sc&&rc||(n.attrHooks.value={set:function(a,b,c){return n.nodeName(a,"input")?void(a.defaultValue=b):nc&&nc.set(a,b,c)}}),rc||(nc={set:function(a,b,c){var d=a.getAttributeNode(c);return d||a.setAttributeNode(d=a.ownerDocument.createAttribute(c)),d.value=b+="","value"===c||b===a.getAttribute(c)?b:void 0}},pc.id=pc.name=pc.coords=function(a,b,c){var d;return c?void 0:(d=a.getAttributeNode(b))&&""!==d.value?d.value:null},n.valHooks.button={get:function(a,b){var c=a.getAttributeNode(b);return c&&c.specified?c.value:void 0},set:nc.set},n.attrHooks.contenteditable={set:function(a,b,c){nc.set(a,""===b?!1:b,c)}},n.each(["width","height"],function(a,b){n.attrHooks[b]={set:function(a,c){return""===c?(a.setAttribute(b,"auto"),c):void 0}}})),l.style||(n.attrHooks.style={get:function(a){return a.style.cssText||void 0},set:function(a,b){return a.style.cssText=b+""}});var tc=/^(?:input|select|textarea|button|object)$/i,uc=/^(?:a|area)$/i;n.fn.extend({prop:function(a,b){return W(this,n.prop,a,b,arguments.length>1)},removeProp:function(a){return a=n.propFix[a]||a,this.each(function(){try{this[a]=void 0,delete this[a]}catch(b){}})}}),n.extend({propFix:{"for":"htmlFor","class":"className"},prop:function(a,b,c){var d,e,f,g=a.nodeType;if(a&&3!==g&&8!==g&&2!==g)return f=1!==g||!n.isXMLDoc(a),f&&(b=n.propFix[b]||b,e=n.propHooks[b]),void 0!==c?e&&"set"in e&&void 0!==(d=e.set(a,c,b))?d:a[b]=c:e&&"get"in e&&null!==(d=e.get(a,b))?d:a[b]},propHooks:{tabIndex:{get:function(a){var b=n.find.attr(a,"tabindex");return b?parseInt(b,10):tc.test(a.nodeName)||uc.test(a.nodeName)&&a.href?0:-1}}}}),l.hrefNormalized||n.each(["href","src"],function(a,b){n.propHooks[b]={get:function(a){return a.getAttribute(b,4)}}}),l.optSelected||(n.propHooks.selected={get:function(a){var b=a.parentNode;return b&&(b.selectedIndex,b.parentNode&&b.parentNode.selectedIndex),null}}),n.each(["tabIndex","readOnly","maxLength","cellSpacing","cellPadding","rowSpan","colSpan","useMap","frameBorder","contentEditable"],function(){n.propFix[this.toLowerCase()]=this}),l.enctype||(n.propFix.enctype="encoding");var vc=/[\t\r\n\f]/g;n.fn.extend({addClass:function(a){var b,c,d,e,f,g,h=0,i=this.length,j="string"==typeof a&&a;if(n.isFunction(a))return this.each(function(b){n(this).addClass(a.call(this,b,this.className))});if(j)for(b=(a||"").match(F)||[];i>h;h++)if(c=this[h],d=1===c.nodeType&&(c.className?(" "+c.className+" ").replace(vc," "):" ")){f=0;while(e=b[f++])d.indexOf(" "+e+" ")<0&&(d+=e+" ");g=n.trim(d),c.className!==g&&(c.className=g)}return this},removeClass:function(a){var b,c,d,e,f,g,h=0,i=this.length,j=0===arguments.length||"string"==typeof a&&a;if(n.isFunction(a))return this.each(function(b){n(this).removeClass(a.call(this,b,this.className))});if(j)for(b=(a||"").match(F)||[];i>h;h++)if(c=this[h],d=1===c.nodeType&&(c.className?(" "+c.className+" ").replace(vc," "):"")){f=0;while(e=b[f++])while(d.indexOf(" "+e+" ")>=0)d=d.replace(" "+e+" "," ");g=a?n.trim(d):"",c.className!==g&&(c.className=g)}return this},toggleClass:function(a,b){var c=typeof a;return"boolean"==typeof b&&"string"===c?b?this.addClass(a):this.removeClass(a):this.each(n.isFunction(a)?function(c){n(this).toggleClass(a.call(this,c,this.className,b),b)}:function(){if("string"===c){var b,d=0,e=n(this),f=a.match(F)||[];while(b=f[d++])e.hasClass(b)?e.removeClass(b):e.addClass(b)}else(c===L||"boolean"===c)&&(this.className&&n._data(this,"__className__",this.className),this.className=this.className||a===!1?"":n._data(this,"__className__")||"")})},hasClass:function(a){for(var b=" "+a+" ",c=0,d=this.length;d>c;c++)if(1===this[c].nodeType&&(" "+this[c].className+" ").replace(vc," ").indexOf(b)>=0)return!0;return!1}}),n.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error contextmenu".split(" "),function(a,b){n.fn[b]=function(a,c){return arguments.length>0?this.on(b,null,a,c):this.trigger(b)}}),n.fn.extend({hover:function(a,b){return this.mouseenter(a).mouseleave(b||a)},bind:function(a,b,c){return this.on(a,null,b,c)},unbind:function(a,b){return this.off(a,null,b)},delegate:function(a,b,c,d){return this.on(b,a,c,d)},undelegate:function(a,b,c){return 1===arguments.length?this.off(a,"**"):this.off(b,a||"**",c)}});var wc=n.now(),xc=/\?/,yc=/(,)|(\[|{)|(}|])|"(?:[^"\\\r\n]|\\["\\\/bfnrt]|\\u[\da-fA-F]{4})*"\s*:?|true|false|null|-?(?!0\d)\d+(?:\.\d+|)(?:[eE][+-]?\d+|)/g;n.parseJSON=function(b){if(a.JSON&&a.JSON.parse)return a.JSON.parse(b+"");var c,d=null,e=n.trim(b+"");return e&&!n.trim(e.replace(yc,function(a,b,e,f){return c&&b&&(d=0),0===d?a:(c=e||b,d+=!f-!e,"")}))?Function("return "+e)():n.error("Invalid JSON: "+b)},n.parseXML=function(b){var c,d;if(!b||"string"!=typeof b)return null;try{a.DOMParser?(d=new DOMParser,c=d.parseFromString(b,"text/xml")):(c=new ActiveXObject("Microsoft.XMLDOM"),c.async="false",c.loadXML(b))}catch(e){c=void 0}return c&&c.documentElement&&!c.getElementsByTagName("parsererror").length||n.error("Invalid XML: "+b),c};var zc,Ac,Bc=/#.*$/,Cc=/([?&])_=[^&]*/,Dc=/^(.*?):[ \t]*([^\r\n]*)\r?$/gm,Ec=/^(?:about|app|app-storage|.+-extension|file|res|widget):$/,Fc=/^(?:GET|HEAD)$/,Gc=/^\/\//,Hc=/^([\w.+-]+:)(?:\/\/(?:[^\/?#]*@|)([^\/?#:]*)(?::(\d+)|)|)/,Ic={},Jc={},Kc="*/".concat("*");try{Ac=location.href}catch(Lc){Ac=z.createElement("a"),Ac.href="",Ac=Ac.href}zc=Hc.exec(Ac.toLowerCase())||[];function Mc(a){return function(b,c){"string"!=typeof b&&(c=b,b="*");var d,e=0,f=b.toLowerCase().match(F)||[];if(n.isFunction(c))while(d=f[e++])"+"===d.charAt(0)?(d=d.slice(1)||"*",(a[d]=a[d]||[]).unshift(c)):(a[d]=a[d]||[]).push(c)}}function Nc(a,b,c,d){var e={},f=a===Jc;function g(h){var i;return e[h]=!0,n.each(a[h]||[],function(a,h){var j=h(b,c,d);return"string"!=typeof j||f||e[j]?f?!(i=j):void 0:(b.dataTypes.unshift(j),g(j),!1)}),i}return g(b.dataTypes[0])||!e["*"]&&g("*")}function Oc(a,b){var c,d,e=n.ajaxSettings.flatOptions||{};for(d in b)void 0!==b[d]&&((e[d]?a:c||(c={}))[d]=b[d]);return c&&n.extend(!0,a,c),a}function Pc(a,b,c){var d,e,f,g,h=a.contents,i=a.dataTypes;while("*"===i[0])i.shift(),void 0===e&&(e=a.mimeType||b.getResponseHeader("Content-Type"));if(e)for(g in h)if(h[g]&&h[g].test(e)){i.unshift(g);break}if(i[0]in c)f=i[0];else{for(g in c){if(!i[0]||a.converters[g+" "+i[0]]){f=g;break}d||(d=g)}f=f||d}return f?(f!==i[0]&&i.unshift(f),c[f]):void 0}function Qc(a,b,c,d){var e,f,g,h,i,j={},k=a.dataTypes.slice();if(k[1])for(g in a.converters)j[g.toLowerCase()]=a.converters[g];f=k.shift();while(f)if(a.responseFields[f]&&(c[a.responseFields[f]]=b),!i&&d&&a.dataFilter&&(b=a.dataFilter(b,a.dataType)),i=f,f=k.shift())if("*"===f)f=i;else if("*"!==i&&i!==f){if(g=j[i+" "+f]||j["* "+f],!g)for(e in j)if(h=e.split(" "),h[1]===f&&(g=j[i+" "+h[0]]||j["* "+h[0]])){g===!0?g=j[e]:j[e]!==!0&&(f=h[0],k.unshift(h[1]));break}if(g!==!0)if(g&&a["throws"])b=g(b);else try{b=g(b)}catch(l){return{state:"parsererror",error:g?l:"No conversion from "+i+" to "+f}}}return{state:"success",data:b}}n.extend({active:0,lastModified:{},etag:{},ajaxSettings:{url:Ac,type:"GET",isLocal:Ec.test(zc[1]),global:!0,processData:!0,async:!0,contentType:"application/x-www-form-urlencoded; charset=UTF-8",accepts:{"*":Kc,text:"text/plain",html:"text/html",xml:"application/xml, text/xml",json:"application/json, text/javascript"},contents:{xml:/xml/,html:/html/,json:/json/},responseFields:{xml:"responseXML",text:"responseText",json:"responseJSON"},converters:{"* text":String,"text html":!0,"text json":n.parseJSON,"text xml":n.parseXML},flatOptions:{url:!0,context:!0}},ajaxSetup:function(a,b){return b?Oc(Oc(a,n.ajaxSettings),b):Oc(n.ajaxSettings,a)},ajaxPrefilter:Mc(Ic),ajaxTransport:Mc(Jc),ajax:function(a,b){"object"==typeof a&&(b=a,a=void 0),b=b||{};var c,d,e,f,g,h,i,j,k=n.ajaxSetup({},b),l=k.context||k,m=k.context&&(l.nodeType||l.jquery)?n(l):n.event,o=n.Deferred(),p=n.Callbacks("once memory"),q=k.statusCode||{},r={},s={},t=0,u="canceled",v={readyState:0,getResponseHeader:function(a){var b;if(2===t){if(!j){j={};while(b=Dc.exec(f))j[b[1].toLowerCase()]=b[2]}b=j[a.toLowerCase()]}return null==b?null:b},getAllResponseHeaders:function(){return 2===t?f:null},setRequestHeader:function(a,b){var c=a.toLowerCase();return t||(a=s[c]=s[c]||a,r[a]=b),this},overrideMimeType:function(a){return t||(k.mimeType=a),this},statusCode:function(a){var b;if(a)if(2>t)for(b in a)q[b]=[q[b],a[b]];else v.always(a[v.status]);return this},abort:function(a){var b=a||u;return i&&i.abort(b),x(0,b),this}};if(o.promise(v).complete=p.add,v.success=v.done,v.error=v.fail,k.url=((a||k.url||Ac)+"").replace(Bc,"").replace(Gc,zc[1]+"//"),k.type=b.method||b.type||k.method||k.type,k.dataTypes=n.trim(k.dataType||"*").toLowerCase().match(F)||[""],null==k.crossDomain&&(c=Hc.exec(k.url.toLowerCase()),k.crossDomain=!(!c||c[1]===zc[1]&&c[2]===zc[2]&&(c[3]||("http:"===c[1]?"80":"443"))===(zc[3]||("http:"===zc[1]?"80":"443")))),k.data&&k.processData&&"string"!=typeof k.data&&(k.data=n.param(k.data,k.traditional)),Nc(Ic,k,b,v),2===t)return v;h=k.global,h&&0===n.active++&&n.event.trigger("ajaxStart"),k.type=k.type.toUpperCase(),k.hasContent=!Fc.test(k.type),e=k.url,k.hasContent||(k.data&&(e=k.url+=(xc.test(e)?"&":"?")+k.data,delete k.data),k.cache===!1&&(k.url=Cc.test(e)?e.replace(Cc,"$1_="+wc++):e+(xc.test(e)?"&":"?")+"_="+wc++)),k.ifModified&&(n.lastModified[e]&&v.setRequestHeader("If-Modified-Since",n.lastModified[e]),n.etag[e]&&v.setRequestHeader("If-None-Match",n.etag[e])),(k.data&&k.hasContent&&k.contentType!==!1||b.contentType)&&v.setRequestHeader("Content-Type",k.contentType),v.setRequestHeader("Accept",k.dataTypes[0]&&k.accepts[k.dataTypes[0]]?k.accepts[k.dataTypes[0]]+("*"!==k.dataTypes[0]?", "+Kc+"; q=0.01":""):k.accepts["*"]);for(d in k.headers)v.setRequestHeader(d,k.headers[d]);if(k.beforeSend&&(k.beforeSend.call(l,v,k)===!1||2===t))return v.abort();u="abort";for(d in{success:1,error:1,complete:1})v[d](k[d]);if(i=Nc(Jc,k,b,v)){v.readyState=1,h&&m.trigger("ajaxSend",[v,k]),k.async&&k.timeout>0&&(g=setTimeout(function(){v.abort("timeout")},k.timeout));try{t=1,i.send(r,x)}catch(w){if(!(2>t))throw w;x(-1,w)}}else x(-1,"No Transport");function x(a,b,c,d){var j,r,s,u,w,x=b;2!==t&&(t=2,g&&clearTimeout(g),i=void 0,f=d||"",v.readyState=a>0?4:0,j=a>=200&&300>a||304===a,c&&(u=Pc(k,v,c)),u=Qc(k,u,v,j),j?(k.ifModified&&(w=v.getResponseHeader("Last-Modified"),w&&(n.lastModified[e]=w),w=v.getResponseHeader("etag"),w&&(n.etag[e]=w)),204===a||"HEAD"===k.type?x="nocontent":304===a?x="notmodified":(x=u.state,r=u.data,s=u.error,j=!s)):(s=x,(a||!x)&&(x="error",0>a&&(a=0))),v.status=a,v.statusText=(b||x)+"",j?o.resolveWith(l,[r,x,v]):o.rejectWith(l,[v,x,s]),v.statusCode(q),q=void 0,h&&m.trigger(j?"ajaxSuccess":"ajaxError",[v,k,j?r:s]),p.fireWith(l,[v,x]),h&&(m.trigger("ajaxComplete",[v,k]),--n.active||n.event.trigger("ajaxStop")))}return v},getJSON:function(a,b,c){return n.get(a,b,c,"json")},getScript:function(a,b){return n.get(a,void 0,b,"script")}}),n.each(["get","post"],function(a,b){n[b]=function(a,c,d,e){return n.isFunction(c)&&(e=e||d,d=c,c=void 0),n.ajax({url:a,type:b,dataType:e,data:c,success:d})}}),n.each(["ajaxStart","ajaxStop","ajaxComplete","ajaxError","ajaxSuccess","ajaxSend"],function(a,b){n.fn[b]=function(a){return this.on(b,a)}}),n._evalUrl=function(a){return n.ajax({url:a,type:"GET",dataType:"script",async:!1,global:!1,"throws":!0})},n.fn.extend({wrapAll:function(a){if(n.isFunction(a))return this.each(function(b){n(this).wrapAll(a.call(this,b))});if(this[0]){var b=n(a,this[0].ownerDocument).eq(0).clone(!0);this[0].parentNode&&b.insertBefore(this[0]),b.map(function(){var a=this;while(a.firstChild&&1===a.firstChild.nodeType)a=a.firstChild;return a}).append(this)}return this},wrapInner:function(a){return this.each(n.isFunction(a)?function(b){n(this).wrapInner(a.call(this,b))}:function(){var b=n(this),c=b.contents();c.length?c.wrapAll(a):b.append(a)})},wrap:function(a){var b=n.isFunction(a);return this.each(function(c){n(this).wrapAll(b?a.call(this,c):a)})},unwrap:function(){return this.parent().each(function(){n.nodeName(this,"body")||n(this).replaceWith(this.childNodes)}).end()}}),n.expr.filters.hidden=function(a){return a.offsetWidth<=0&&a.offsetHeight<=0||!l.reliableHiddenOffsets()&&"none"===(a.style&&a.style.display||n.css(a,"display"))},n.expr.filters.visible=function(a){return!n.expr.filters.hidden(a)};var Rc=/%20/g,Sc=/\[\]$/,Tc=/\r?\n/g,Uc=/^(?:submit|button|image|reset|file)$/i,Vc=/^(?:input|select|textarea|keygen)/i;function Wc(a,b,c,d){var e;if(n.isArray(b))n.each(b,function(b,e){c||Sc.test(a)?d(a,e):Wc(a+"["+("object"==typeof e?b:"")+"]",e,c,d)});else if(c||"object"!==n.type(b))d(a,b);else for(e in b)Wc(a+"["+e+"]",b[e],c,d)}n.param=function(a,b){var c,d=[],e=function(a,b){b=n.isFunction(b)?b():null==b?"":b,d[d.length]=encodeURIComponent(a)+"="+encodeURIComponent(b)};if(void 0===b&&(b=n.ajaxSettings&&n.ajaxSettings.traditional),n.isArray(a)||a.jquery&&!n.isPlainObject(a))n.each(a,function(){e(this.name,this.value)});else for(c in a)Wc(c,a[c],b,e);return d.join("&").replace(Rc,"+")},n.fn.extend({serialize:function(){return n.param(this.serializeArray())},serializeArray:function(){return this.map(function(){var a=n.prop(this,"elements");return a?n.makeArray(a):this}).filter(function(){var a=this.type;return this.name&&!n(this).is(":disabled")&&Vc.test(this.nodeName)&&!Uc.test(a)&&(this.checked||!X.test(a))}).map(function(a,b){var c=n(this).val();return null==c?null:n.isArray(c)?n.map(c,function(a){return{name:b.name,value:a.replace(Tc,"\r\n")}}):{name:b.name,value:c.replace(Tc,"\r\n")}}).get()}}),n.ajaxSettings.xhr=void 0!==a.ActiveXObject?function(){return!this.isLocal&&/^(get|post|head|put|delete|options)$/i.test(this.type)&&$c()||_c()}:$c;var Xc=0,Yc={},Zc=n.ajaxSettings.xhr();a.ActiveXObject&&n(a).on("unload",function(){for(var a in Yc)Yc[a](void 0,!0)}),l.cors=!!Zc&&"withCredentials"in Zc,Zc=l.ajax=!!Zc,Zc&&n.ajaxTransport(function(a){if(!a.crossDomain||l.cors){var b;return{send:function(c,d){var e,f=a.xhr(),g=++Xc;if(f.open(a.type,a.url,a.async,a.username,a.password),a.xhrFields)for(e in a.xhrFields)f[e]=a.xhrFields[e];a.mimeType&&f.overrideMimeType&&f.overrideMimeType(a.mimeType),a.crossDomain||c["X-Requested-With"]||(c["X-Requested-With"]="XMLHttpRequest");for(e in c)void 0!==c[e]&&f.setRequestHeader(e,c[e]+"");f.send(a.hasContent&&a.data||null),b=function(c,e){var h,i,j;if(b&&(e||4===f.readyState))if(delete Yc[g],b=void 0,f.onreadystatechange=n.noop,e)4!==f.readyState&&f.abort();else{j={},h=f.status,"string"==typeof f.responseText&&(j.text=f.responseText);try{i=f.statusText}catch(k){i=""}h||!a.isLocal||a.crossDomain?1223===h&&(h=204):h=j.text?200:404}j&&d(h,i,j,f.getAllResponseHeaders())},a.async?4===f.readyState?setTimeout(b):f.onreadystatechange=Yc[g]=b:b()},abort:function(){b&&b(void 0,!0)}}}});function $c(){try{return new a.XMLHttpRequest}catch(b){}}function _c(){try{return new a.ActiveXObject("Microsoft.XMLHTTP")}catch(b){}}n.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/(?:java|ecma)script/},converters:{"text script":function(a){return n.globalEval(a),a}}}),n.ajaxPrefilter("script",function(a){void 0===a.cache&&(a.cache=!1),a.crossDomain&&(a.type="GET",a.global=!1)}),n.ajaxTransport("script",function(a){if(a.crossDomain){var b,c=z.head||n("head")[0]||z.documentElement;return{send:function(d,e){b=z.createElement("script"),b.async=!0,a.scriptCharset&&(b.charset=a.scriptCharset),b.src=a.url,b.onload=b.onreadystatechange=function(a,c){(c||!b.readyState||/loaded|complete/.test(b.readyState))&&(b.onload=b.onreadystatechange=null,b.parentNode&&b.parentNode.removeChild(b),b=null,c||e(200,"success"))},c.insertBefore(b,c.firstChild)},abort:function(){b&&b.onload(void 0,!0)}}}});var ad=[],bd=/(=)\?(?=&|$)|\?\?/;n.ajaxSetup({jsonp:"callback",jsonpCallback:function(){var a=ad.pop()||n.expando+"_"+wc++;return this[a]=!0,a}}),n.ajaxPrefilter("json jsonp",function(b,c,d){var e,f,g,h=b.jsonp!==!1&&(bd.test(b.url)?"url":"string"==typeof b.data&&!(b.contentType||"").indexOf("application/x-www-form-urlencoded")&&bd.test(b.data)&&"data");return h||"jsonp"===b.dataTypes[0]?(e=b.jsonpCallback=n.isFunction(b.jsonpCallback)?b.jsonpCallback():b.jsonpCallback,h?b[h]=b[h].replace(bd,"$1"+e):b.jsonp!==!1&&(b.url+=(xc.test(b.url)?"&":"?")+b.jsonp+"="+e),b.converters["script json"]=function(){return g||n.error(e+" was not called"),g[0]},b.dataTypes[0]="json",f=a[e],a[e]=function(){g=arguments},d.always(function(){a[e]=f,b[e]&&(b.jsonpCallback=c.jsonpCallback,ad.push(e)),g&&n.isFunction(f)&&f(g[0]),g=f=void 0}),"script"):void 0}),n.parseHTML=function(a,b,c){if(!a||"string"!=typeof a)return null;"boolean"==typeof b&&(c=b,b=!1),b=b||z;var d=v.exec(a),e=!c&&[];return d?[b.createElement(d[1])]:(d=n.buildFragment([a],b,e),e&&e.length&&n(e).remove(),n.merge([],d.childNodes))};var cd=n.fn.load;n.fn.load=function(a,b,c){if("string"!=typeof a&&cd)return cd.apply(this,arguments);var d,e,f,g=this,h=a.indexOf(" ");return h>=0&&(d=a.slice(h,a.length),a=a.slice(0,h)),n.isFunction(b)?(c=b,b=void 0):b&&"object"==typeof b&&(f="POST"),g.length>0&&n.ajax({url:a,type:f,dataType:"html",data:b}).done(function(a){e=arguments,g.html(d?n("<div>").append(n.parseHTML(a)).find(d):a)}).complete(c&&function(a,b){g.each(c,e||[a.responseText,b,a])}),this},n.expr.filters.animated=function(a){return n.grep(n.timers,function(b){return a===b.elem}).length};var dd=a.document.documentElement;function ed(a){return n.isWindow(a)?a:9===a.nodeType?a.defaultView||a.parentWindow:!1}n.offset={setOffset:function(a,b,c){var d,e,f,g,h,i,j,k=n.css(a,"position"),l=n(a),m={};"static"===k&&(a.style.position="relative"),h=l.offset(),f=n.css(a,"top"),i=n.css(a,"left"),j=("absolute"===k||"fixed"===k)&&n.inArray("auto",[f,i])>-1,j?(d=l.position(),g=d.top,e=d.left):(g=parseFloat(f)||0,e=parseFloat(i)||0),n.isFunction(b)&&(b=b.call(a,c,h)),null!=b.top&&(m.top=b.top-h.top+g),null!=b.left&&(m.left=b.left-h.left+e),"using"in b?b.using.call(a,m):l.css(m)}},n.fn.extend({offset:function(a){if(arguments.length)return void 0===a?this:this.each(function(b){n.offset.setOffset(this,a,b)});var b,c,d={top:0,left:0},e=this[0],f=e&&e.ownerDocument;if(f)return b=f.documentElement,n.contains(b,e)?(typeof e.getBoundingClientRect!==L&&(d=e.getBoundingClientRect()),c=ed(f),{top:d.top+(c.pageYOffset||b.scrollTop)-(b.clientTop||0),left:d.left+(c.pageXOffset||b.scrollLeft)-(b.clientLeft||0)}):d},position:function(){if(this[0]){var a,b,c={top:0,left:0},d=this[0];return"fixed"===n.css(d,"position")?b=d.getBoundingClientRect():(a=this.offsetParent(),b=this.offset(),n.nodeName(a[0],"html")||(c=a.offset()),c.top+=n.css(a[0],"borderTopWidth",!0),c.left+=n.css(a[0],"borderLeftWidth",!0)),{top:b.top-c.top-n.css(d,"marginTop",!0),left:b.left-c.left-n.css(d,"marginLeft",!0)}}},offsetParent:function(){return this.map(function(){var a=this.offsetParent||dd;while(a&&!n.nodeName(a,"html")&&"static"===n.css(a,"position"))a=a.offsetParent;return a||dd})}}),n.each({scrollLeft:"pageXOffset",scrollTop:"pageYOffset"},function(a,b){var c=/Y/.test(b);n.fn[a]=function(d){return W(this,function(a,d,e){var f=ed(a);return void 0===e?f?b in f?f[b]:f.document.documentElement[d]:a[d]:void(f?f.scrollTo(c?n(f).scrollLeft():e,c?e:n(f).scrollTop()):a[d]=e)},a,d,arguments.length,null)}}),n.each(["top","left"],function(a,b){n.cssHooks[b]=Mb(l.pixelPosition,function(a,c){return c?(c=Kb(a,b),Ib.test(c)?n(a).position()[b]+"px":c):void 0})}),n.each({Height:"height",Width:"width"},function(a,b){n.each({padding:"inner"+a,content:b,"":"outer"+a},function(c,d){n.fn[d]=function(d,e){var f=arguments.length&&(c||"boolean"!=typeof d),g=c||(d===!0||e===!0?"margin":"border");return W(this,function(b,c,d){var e;return n.isWindow(b)?b.document.documentElement["client"+a]:9===b.nodeType?(e=b.documentElement,Math.max(b.body["scroll"+a],e["scroll"+a],b.body["offset"+a],e["offset"+a],e["client"+a])):void 0===d?n.css(b,c,g):n.style(b,c,d,g)},b,f?d:void 0,f,null)}})}),n.fn.size=function(){return this.length},n.fn.andSelf=n.fn.addBack,"function"==typeof define&&define.amd&&define("jquery",[],function(){return n});var fd=a.jQuery,gd=a.$;return n.noConflict=function(b){return a.$===n&&(a.$=gd),b&&a.jQuery===n&&(a.jQuery=fd),n},typeof b===L&&(a.jQuery=a.$=n),n});

/* jqTree 0.21.0 | Copyright 2013 Marco Braak */
(function(){var e,t,n,r,i,s,o,u,a,f,l,c,h,p,d,v,m,g,y,b,w,E,S,x,T=[].slice,N={}.hasOwnProperty,C=function(e,t){function r(){this.constructor=e}for(var n in t){if(N.call(t,n))e[n]=t[n]}r.prototype=t.prototype;e.prototype=new r;e.__super__=t.prototype;return e};e=this.jQuery;g=function(){function t(t,n){this.$el=e(t);this.options=e.extend({},this.defaults,n)}t.prototype.defaults={};t.prototype.destroy=function(){return this._deinit()};t.prototype._init=function(){return null};t.prototype._deinit=function(){return null};t.register=function(n,r){var i,s,o,u,a;u=function(){return"simple_widget_"+r};a=function(n,r){var i;i=e.data(n,r);if(i&&i instanceof t){return i}else{return null}};s=function(t,r){var i,s,o,f,l,c;i=u();for(l=0,c=t.length;l<c;l++){s=t[l];o=a(s,i);if(!o){f=new n(s,r);if(!e.data(s,i)){e.data(s,i,f)}f._init()}}return t};o=function(t){var n,r,i,s,o,f;n=u();f=[];for(s=0,o=t.length;s<o;s++){r=t[s];i=a(r,n);if(i){i.destroy()}f.push(e.removeData(r,n))}return f};i=function(n,r,i){var s,o,a,f,l,c;o=null;for(l=0,c=n.length;l<c;l++){s=n[l];a=e.data(s,u());if(a&&a instanceof t){f=a[r];if(f&&typeof f==="function"){o=f.apply(a,i)}}}return o};return e.fn[r]=function(){var e,t,n,r,u;n=arguments[0],t=2<=arguments.length?T.call(arguments,1):[];e=this;if(n===void 0||typeof n==="object"){u=n;return s(e,u)}else if(typeof n==="string"&&n[0]!=="_"){r=n;if(r==="destroy"){return o(e)}else{return i(e,r,t)}}}};return t}();this.SimpleWidget=g;l=function(t){function n(){return n.__super__.constructor.apply(this,arguments)}C(n,t);n.is_mouse_handled=false;n.prototype._init=function(){this.$el.bind("mousedown.mousewidget",e.proxy(this._mouseDown,this));this.$el.bind("touchstart.mousewidget",e.proxy(this._touchStart,this));this.is_mouse_started=false;this.mouse_delay=0;this._mouse_delay_timer=null;this._is_mouse_delay_met=true;return this.mouse_down_info=null};n.prototype._deinit=function(){var t;this.$el.unbind("mousedown.mousewidget");this.$el.unbind("touchstart.mousewidget");t=e(document);t.unbind("mousemove.mousewidget");return t.unbind("mouseup.mousewidget")};n.prototype._mouseDown=function(e){var t;if(e.which!==1){return}t=this._handleMouseDown(e,this._getPositionInfo(e));if(t){e.preventDefault()}return t};n.prototype._handleMouseDown=function(e,t){if(n.is_mouse_handled){return}if(this.is_mouse_started){this._handleMouseUp(t)}this.mouse_down_info=t;if(!this._mouseCapture(t)){return}this._handleStartMouse();this.is_mouse_handled=true;return true};n.prototype._handleStartMouse=function(){var t;t=e(document);t.bind("mousemove.mousewidget",e.proxy(this._mouseMove,this));t.bind("touchmove.mousewidget",e.proxy(this._touchMove,this));t.bind("mouseup.mousewidget",e.proxy(this._mouseUp,this));t.bind("touchend.mousewidget",e.proxy(this._touchEnd,this));if(this.mouse_delay){return this._startMouseDelayTimer()}};n.prototype._startMouseDelayTimer=function(){if(this._mouse_delay_timer){clearTimeout(this._mouse_delay_timer)}this._mouse_delay_timer=setTimeout(function(e){return function(){return e._is_mouse_delay_met=true}}(this),this.mouse_delay);return this._is_mouse_delay_met=false};n.prototype._mouseMove=function(e){return this._handleMouseMove(e,this._getPositionInfo(e))};n.prototype._handleMouseMove=function(e,t){if(this.is_mouse_started){this._mouseDrag(t);return e.preventDefault()}if(this.mouse_delay&&!this._is_mouse_delay_met){return true}this.is_mouse_started=this._mouseStart(this.mouse_down_info)!==false;if(this.is_mouse_started){this._mouseDrag(t)}else{this._handleMouseUp(t)}return!this.is_mouse_started};n.prototype._getPositionInfo=function(e){return{page_x:e.pageX,page_y:e.pageY,target:e.target,original_event:e}};n.prototype._mouseUp=function(e){return this._handleMouseUp(this._getPositionInfo(e))};n.prototype._handleMouseUp=function(t){var n;n=e(document);n.unbind("mousemove.mousewidget");n.unbind("touchmove.mousewidget");n.unbind("mouseup.mousewidget");n.unbind("touchend.mousewidget");if(this.is_mouse_started){this.is_mouse_started=false;this._mouseStop(t)}};n.prototype._mouseCapture=function(e){return true};n.prototype._mouseStart=function(e){return null};n.prototype._mouseDrag=function(e){return null};n.prototype._mouseStop=function(e){return null};n.prototype.setMouseDelay=function(e){return this.mouse_delay=e};n.prototype._touchStart=function(e){var t;if(e.originalEvent.touches.length>1){return}t=e.originalEvent.changedTouches[0];return this._handleMouseDown(e,this._getPositionInfo(t))};n.prototype._touchMove=function(e){var t;if(e.originalEvent.touches.length>1){return}t=e.originalEvent.changedTouches[0];return this._handleMouseMove(e,this._getPositionInfo(t))};n.prototype._touchEnd=function(e){var t;if(e.originalEvent.touches.length>1){return}t=e.originalEvent.changedTouches[0];return this._handleMouseUp(this._getPositionInfo(t))};return n}(g);this.Tree={};e=this.jQuery;p={getName:function(e){return p.strings[e-1]},nameToIndex:function(e){var t,n,r;for(t=n=1,r=p.strings.length;1<=r?n<=r:n>=r;t=1<=r?++n:--n){if(p.strings[t-1]===e){return t}}return 0}};p.BEFORE=1;p.AFTER=2;p.INSIDE=3;p.NONE=4;p.strings=["before","after","inside","none"];this.Tree.Position=p;c=function(){function t(e,n,r){if(n==null){n=false}if(r==null){r=t}this.setData(e);this.children=[];this.parent=null;if(n){this.id_mapping={};this.tree=this;this.node_class=r}}t.prototype.setData=function(e){var t,n,r;if(typeof e!=="object"){return this.name=e}else{r=[];for(t in e){n=e[t];if(t==="label"){r.push(this.name=n)}else{r.push(this[t]=n)}}return r}};t.prototype.initFromData=function(e){var t,n;n=function(e){return function(n){e.setData(n);if(n.children){return t(n.children)}}}(this);t=function(e){return function(t){var n,r,i,s;for(i=0,s=t.length;i<s;i++){n=t[i];r=new e.tree.node_class("");r.initFromData(n);e.addChild(r)}return null}}(this);n(e);return null};t.prototype.loadFromData=function(e){var t,n,r,i;this.removeChildren();for(r=0,i=e.length;r<i;r++){n=e[r];t=new this.tree.node_class(n);this.addChild(t);if(typeof n==="object"&&n.children){t.loadFromData(n.children)}}return null};t.prototype.addChild=function(e){this.children.push(e);return e._setParent(this)};t.prototype.addChildAtPosition=function(e,t){this.children.splice(t,0,e);return e._setParent(this)};t.prototype._setParent=function(e){this.parent=e;this.tree=e.tree;return this.tree.addNodeToIndex(this)};t.prototype.removeChild=function(e){e.removeChildren();return this._removeChild(e)};t.prototype._removeChild=function(e){this.children.splice(this.getChildIndex(e),1);return this.tree.removeNodeFromIndex(e)};t.prototype.getChildIndex=function(t){return e.inArray(t,this.children)};t.prototype.hasChildren=function(){return this.children.length!==0};t.prototype.isFolder=function(){return this.hasChildren()||this.load_on_demand};t.prototype.iterate=function(e){var t;t=function(n){return function(r,i){var s,o,u,a,f;if(r.children){f=r.children;for(u=0,a=f.length;u<a;u++){s=f[u];o=e(s,i);if(n.hasChildren()&&o){t(s,i+1)}}return null}}}(this);t(this,0);return null};t.prototype.moveNode=function(e,t,n){if(e.isParentOf(t)){return}e.parent._removeChild(e);if(n===p.AFTER){return t.parent.addChildAtPosition(e,t.parent.getChildIndex(t)+1)}else if(n===p.BEFORE){return t.parent.addChildAtPosition(e,t.parent.getChildIndex(t))}else if(n===p.INSIDE){return t.addChildAtPosition(e,0)}};t.prototype.getData=function(){var e;e=function(t){return function(t){var n,r,i,s,o,u,a;n=[];for(u=0,a=t.length;u<a;u++){i=t[u];s={};for(r in i){o=i[r];if(r!=="parent"&&r!=="children"&&r!=="element"&&r!=="tree"&&Object.prototype.hasOwnProperty.call(i,r)){s[r]=o}}if(i.hasChildren()){s.children=e(i.children)}n.push(s)}return n}}(this);return e(this.children)};t.prototype.getNodeByName=function(e){var t;t=null;this.iterate(function(n){if(n.name===e){t=n;return false}else{return true}});return t};t.prototype.addAfter=function(e){var t,n;if(!this.parent){return null}else{n=new this.tree.node_class(e);t=this.parent.getChildIndex(this);this.parent.addChildAtPosition(n,t+1);return n}};t.prototype.addBefore=function(e){var t,n;if(!this.parent){return null}else{n=new this.tree.node_class(e);t=this.parent.getChildIndex(this);this.parent.addChildAtPosition(n,t);return n}};t.prototype.addParent=function(e){var t,n,r,i,s,o;if(!this.parent){return null}else{n=new this.tree.node_class(e);n._setParent(this.tree);r=this.parent;o=r.children;for(i=0,s=o.length;i<s;i++){t=o[i];n.addChild(t)}r.children=[];r.addChild(n);return n}};t.prototype.remove=function(){if(this.parent){this.parent.removeChild(this);return this.parent=null}};t.prototype.append=function(e){var t;t=new this.tree.node_class(e);this.addChild(t);return t};t.prototype.prepend=function(e){var t;t=new this.tree.node_class(e);this.addChildAtPosition(t,0);return t};t.prototype.isParentOf=function(e){var t;t=e.parent;while(t){if(t===this){return true}t=t.parent}return false};t.prototype.getLevel=function(){var e,t;e=0;t=this;while(t.parent){e+=1;t=t.parent}return e};t.prototype.getNodeById=function(e){return this.id_mapping[e]};t.prototype.addNodeToIndex=function(e){if(e.id!=null){return this.id_mapping[e.id]=e}};t.prototype.removeNodeFromIndex=function(e){if(e.id!=null){return delete this.id_mapping[e.id]}};t.prototype.removeChildren=function(){this.iterate(function(e){return function(t){e.tree.removeNodeFromIndex(t);return true}}(this));return this.children=[]};t.prototype.getPreviousSibling=function(){var e;if(!this.parent){return null}else{e=this.parent.getChildIndex(this)-1;if(e>=0){return this.parent.children[e]}else{return null}}};t.prototype.getNextSibling=function(){var e;if(!this.parent){return null}else{e=this.parent.getChildIndex(this)+1;if(e<this.parent.children.length){return this.parent.children[e]}else{return null}}};t.prototype.getNodesByProperty=function(e,t){return this.filter(function(n){return n[e]===t})};t.prototype.filter=function(e){var t;t=[];this.iterate(function(n){if(e(n)){t.push(n)}return true});return t};return t}();this.Tree.Node=c;i=function(){function t(e){this.tree_widget=e;this.opened_icon_element=this.createButtonElement(e.options.openedIcon);this.closed_icon_element=this.createButtonElement(e.options.closedIcon)}t.prototype.render=function(e){if(e&&e.parent){return this.renderFromNode(e)}else{return this.renderFromRoot()}};t.prototype.renderNode=function(t){var n,r,i;e(t.element).remove();r=new h(t.parent,this.tree_widget);n=this.createLi(t);this.attachNodeData(t,n);i=t.getPreviousSibling();if(i){e(i.element).after(n)}else{r.getUl().prepend(n)}if(t.children){return this.renderFromNode(t)}};t.prototype.renderFromRoot=function(){var e;e=this.tree_widget.element;e.empty();return this.createDomElements(e[0],this.tree_widget.tree.children,true,true)};t.prototype.renderFromNode=function(e){var t;t=this.tree_widget._getNodeElementForNode(e);t.getUl().remove();return this.createDomElements(t.$element[0],e.children,false,false)};t.prototype.createDomElements=function(e,t,n,r){var i,s,o,u,a;o=this.createUl(n);e.appendChild(o);for(u=0,a=t.length;u<a;u++){i=t[u];s=this.createLi(i);o.appendChild(s);this.attachNodeData(i,s);if(i.hasChildren()){this.createDomElements(s,i.children,false,i.is_open)}}return null};t.prototype.attachNodeData=function(t,n){t.element=n;return e(n).data("node",t)};t.prototype.createUl=function(e){var t,n;if(e){t="jqtree-tree"}else{t=""}n=document.createElement("ul");n.className="jqtree_common "+t;return n};t.prototype.createLi=function(t){var n;if(t.isFolder()){n=this.createFolderLi(t)}else{n=this.createNodeLi(t)}if(this.tree_widget.options.onCreateLi){this.tree_widget.options.onCreateLi(t,e(n))}return n};t.prototype.createFolderLi=function(e){var t,n,r,i,s,o,u,a;t=this.getButtonClasses(e);s=this.getFolderClasses(e);i=this.escapeIfNecessary(e.name);if(e.is_open){o=this.opened_icon_element}else{o=this.closed_icon_element}u=document.createElement("li");u.className="jqtree_common "+s;r=document.createElement("div");r.className="jqtree-element jqtree_common";u.appendChild(r);n=document.createElement("a");n.className="jqtree_common "+t;n.appendChild(o.cloneNode());r.appendChild(n);a=document.createElement("span");a.className="jqtree_common jqtree-title jqtree-title-folder";r.appendChild(a);a.innerHTML=i;return u};t.prototype.createNodeLi=function(e){var t,n,r,i,s,o;s=["jqtree_common"];if(this.tree_widget.select_node_handler&&this.tree_widget.select_node_handler.isNodeSelected(e)){s.push("jqtree-selected")}t=s.join(" ");r=this.escapeIfNecessary(e.name);i=document.createElement("li");i.className=t;n=document.createElement("div");n.className="jqtree-element jqtree_common";i.appendChild(n);o=document.createElement("span");o.className="jqtree-title jqtree_common";o.innerHTML=r;n.appendChild(o);return i};t.prototype.getButtonClasses=function(e){var t;t=["jqtree-toggler"];if(!e.is_open){t.push("jqtree-closed")}return t.join(" ")};t.prototype.getFolderClasses=function(e){var t;t=["jqtree-folder"];if(!e.is_open){t.push("jqtree-closed")}if(this.tree_widget.select_node_handler&&this.tree_widget.select_node_handler.isNodeSelected(e)){t.push("jqtree-selected")}return t.join(" ")};t.prototype.escapeIfNecessary=function(e){if(this.tree_widget.options.autoEscape){return w(e)}else{return e}};t.prototype.createButtonElement=function(t){var n;if(typeof t==="string"){n=document.createElement("div");n.innerHTML=t;return document.createTextNode(n.innerHTML)}else{return e(t)[0]}};return t}();a=function(t){function r(){return r.__super__.constructor.apply(this,arguments)}C(r,t);r.prototype.defaults={autoOpen:false,saveState:false,dragAndDrop:false,selectable:true,useContextMenu:true,onCanSelectNode:null,onSetStateFromStorage:null,onGetStateFromStorage:null,onCreateLi:null,onIsMoveHandle:null,onCanMove:null,onCanMoveTo:null,onLoadFailed:null,autoEscape:true,dataUrl:null,closedIcon:"&#x25ba;",openedIcon:"&#x25bc;",slide:true,nodeClass:c,dataFilter:null,keyboardSupport:true,openFolderDelay:500};r.prototype.toggle=function(e,t){if(t==null){t=true}if(e.is_open){return this.closeNode(e,t)}else{return this.openNode(e,t)}};r.prototype.getTree=function(){return this.tree};r.prototype.selectNode=function(e){return this._selectNode(e,false)};r.prototype._selectNode=function(e,t){var n,r,i,s;if(t==null){t=false}if(!this.select_node_handler){return}n=function(t){return function(){if(t.options.onCanSelectNode){return t.options.selectable&&t.options.onCanSelectNode(e)}else{return t.options.selectable}}}(this);i=function(t){return function(){var n;n=e.parent;if(n&&n.parent&&!n.is_open){return t.openNode(n,false)}}}(this);s=function(e){return function(){if(e.options.saveState){return e.save_state_handler.saveState()}}}(this);if(!e){this._deselectCurrentNode();s();return}if(!n()){return}if(this.select_node_handler.isNodeSelected(e)){if(t){this._deselectCurrentNode();this._triggerEvent("tree.select",{node:null,previous_node:e})}}else{r=this.getSelectedNode();this._deselectCurrentNode();this.addToSelection(e);this._triggerEvent("tree.select",{node:e,deselected_node:r});i()}return s()};r.prototype.getSelectedNode=function(){return this.select_node_handler.getSelectedNode()};r.prototype.toJson=function(){return JSON.stringify(this.tree.getData())};r.prototype.loadData=function(e,t){return this._loadData(e,t)};r.prototype.loadDataFromUrl=function(t,n,r){if(e.type(t)!=="string"){r=n;n=t;t=null}return this._loadDataFromUrl(t,n,r)};r.prototype.reload=function(){return this.loadDataFromUrl()};r.prototype._loadDataFromUrl=function(t,n,r){var i,o,u,a,f,l;i=null;o=function(e){return function(){var t;if(!n){i=e.element}else{t=new s(n,e);i=t.getLi()}return i.addClass("jqtree-loading")}}(this);l=function(e){return function(){if(i){return i.removeClass("jqtree-loading")}}}(this);f=function(n){return function(){if(e.type(t)==="string"){t={url:t}}if(!t.method){return t.method="get"}}}(this);u=function(t){return function(i){l();t._loadData(i,n);if(r&&e.isFunction(r)){return r()}}}(this);a=function(n){return function(){f();return e.ajax({url:t.url,data:t.data,type:t.method.toUpperCase(),cache:false,dataType:"json",success:function(t){var r;if(e.isArray(t)||typeof t==="object"){r=t}else{r=e.parseJSON(t)}if(n.options.dataFilter){r=n.options.dataFilter(r)}return u(r)},error:function(e){l();if(n.options.onLoadFailed){return n.options.onLoadFailed(e)}}})}}(this);if(!t){t=this._getDataUrlInfo(n)}o();if(t===false||t===null){l()}else if(e.isArray(t)){u(t)}else{return a()}};r.prototype._loadData=function(e,t){var n,r,i,s;if(!e){return}this._triggerEvent("tree.load_data",{tree_data:e});if(!t){this._initTree(e)}else{r=this.select_node_handler.getSelectedNodesUnder(t);for(i=0,s=r.length;i<s;i++){n=r[i];this.select_node_handler.removeFromSelection(n)}t.loadFromData(e);t.load_on_demand=false;this._refreshElements(t.parent)}if(this.isDragging()){return this.dnd_handler.refresh()}};r.prototype.getNodeById=function(e){return this.tree.getNodeById(e)};r.prototype.getNodeByName=function(e){return this.tree.getNodeByName(e)};r.prototype.openNode=function(e,t){if(t==null){t=true}return this._openNode(e,t)};r.prototype._openNode=function(e,t,n){var r,i;if(t==null){t=true}r=function(e){return function(t,n,r){var i;i=new s(t,e);return i.open(r,n)}}(this);if(e.isFolder()){if(e.load_on_demand){return this._loadFolderOnDemand(e,t,n)}else{i=e.parent;while(i&&!i.is_open){if(i.parent){r(i,false,null)}i=i.parent}r(e,t,n);return this._saveState()}}};r.prototype._loadFolderOnDemand=function(e,t,n){if(t==null){t=true}return this._loadDataFromUrl(null,e,function(r){return function(){return r._openNode(e,t,n)}}(this))};r.prototype.closeNode=function(e,t){if(t==null){t=true}if(e.isFolder()){(new s(e,this)).close(t);return this._saveState()}};r.prototype.isDragging=function(){if(this.dnd_handler){return this.dnd_handler.is_dragging}else{return false}};r.prototype.refreshHitAreas=function(){return this.dnd_handler.refresh()};r.prototype.addNodeAfter=function(e,t){var n;n=t.addAfter(e);this._refreshElements(t.parent);return n};r.prototype.addNodeBefore=function(e,t){var n;n=t.addBefore(e);this._refreshElements(t.parent);return n};r.prototype.addParentNode=function(e,t){var n;n=t.addParent(e);this._refreshElements(n.parent);return n};r.prototype.removeNode=function(e){var t;t=e.parent;if(t){this.select_node_handler.removeFromSelection(e,true);e.remove();return this._refreshElements(t.parent)}};r.prototype.appendNode=function(e,t){var n,r;if(!t){t=this.tree}n=t.isFolder();r=t.append(e);if(n){this._refreshElements(t)}else{this._refreshElements(t.parent)}return r};r.prototype.prependNode=function(e,t){var n;if(!t){t=this.tree}n=t.prepend(e);this._refreshElements(t);return n};r.prototype.updateNode=function(e,t){var n;n=t.id&&t.id!==e.id;if(n){this.tree.removeNodeFromIndex(e)}e.setData(t);if(n){this.tree.addNodeToIndex(e)}this.renderer.renderNode(e);return this._selectCurrentNode()};r.prototype.moveNode=function(e,t,n){var r;r=p.nameToIndex(n);this.tree.moveNode(e,t,r);return this._refreshElements()};r.prototype.getStateFromStorage=function(){return this.save_state_handler.getStateFromStorage()};r.prototype.addToSelection=function(e){if(e){this.select_node_handler.addToSelection(e);this._getNodeElementForNode(e).select();return this._saveState()}};r.prototype.getSelectedNodes=function(){return this.select_node_handler.getSelectedNodes()};r.prototype.isNodeSelected=function(e){return this.select_node_handler.isNodeSelected(e)};r.prototype.removeFromSelection=function(e){this.select_node_handler.removeFromSelection(e);this._getNodeElementForNode(e).deselect();return this._saveState()};r.prototype.scrollToNode=function(t){var n,r;n=e(t.element);r=n.offset().top-this.$el.offset().top;return this.scroll_handler.scrollTo(r)};r.prototype.getState=function(){return this.save_state_handler.getState()};r.prototype.setState=function(e){this.save_state_handler.setState(e);return this._refreshElements()};r.prototype.setOption=function(e,t){return this.options[e]=t};r.prototype._init=function(){r.__super__._init.call(this);this.element=this.$el;this.mouse_delay=300;this.is_initialized=false;this.renderer=new i(this);if(typeof d!=="undefined"&&d!==null){this.save_state_handler=new d(this)}else{this.options.saveState=false}if(typeof m!=="undefined"&&m!==null){this.select_node_handler=new m(this)}if(typeof n!=="undefined"&&n!==null){this.dnd_handler=new n(this)}else{this.options.dragAndDrop=false}if(typeof v!=="undefined"&&v!==null){this.scroll_handler=new v(this)}if(typeof f!=="undefined"&&f!==null&&typeof m!=="undefined"&&m!==null){this.key_handler=new f(this)}this._initData();this.element.click(e.proxy(this._click,this));this.element.dblclick(e.proxy(this._dblclick,this));if(this.options.useContextMenu){return this.element.bind("contextmenu",e.proxy(this._contextmenu,this))}};r.prototype._deinit=function(){this.element.empty();this.element.unbind();this.key_handler.deinit();this.tree=null;return r.__super__._deinit.call(this)};r.prototype._initData=function(){if(this.options.data){return this._loadData(this.options.data)}else{return this._loadDataFromUrl(this._getDataUrlInfo())}};r.prototype._getDataUrlInfo=function(t){var n,r;n=this.options.dataUrl||this.element.data("url");r=function(e){return function(){var r,i,s;s={url:n};if(t&&t.id){r={node:t.id};s["data"]=r}else{i=e._getNodeIdToBeSelected();if(i){r={selected_node:i};s["data"]=r}}return s}}(this);if(e.isFunction(n)){return n(t)}else if(e.type(n)==="string"){return r()}else{return n}};r.prototype._getNodeIdToBeSelected=function(){if(this.options.saveState){return this.save_state_handler.getNodeIdToBeSelected()}else{return null}};r.prototype._initTree=function(e){this.tree=new this.options.nodeClass(null,true,this.options.nodeClass);if(this.select_node_handler){this.select_node_handler.clear()}this.tree.loadFromData(e);this._openNodes();this._refreshElements();if(!this.is_initialized){this.is_initialized=true;return this._triggerEvent("tree.init")}};r.prototype._openNodes=function(){var e;if(this.options.saveState){if(this.save_state_handler.restoreState()){return}}if(this.options.autoOpen===false){return}else if(this.options.autoOpen===true){e=-1}else{e=parseInt(this.options.autoOpen)}return this.tree.iterate(function(t,n){if(t.hasChildren()){t.is_open=true}return n!==e})};r.prototype._refreshElements=function(e){if(e==null){e=null}this.renderer.render(e);return this._triggerEvent("tree.refresh")};r.prototype._click=function(e){var t,n,r;t=this._getClickTarget(e.target);if(t){if(t.type==="button"){this.toggle(t.node,this.options.slide);e.preventDefault();return e.stopPropagation()}else if(t.type==="label"){r=t.node;n=this._triggerEvent("tree.click",{node:r,click_event:e});if(!n.isDefaultPrevented()){return this._selectNode(r,true)}}}};r.prototype._dblclick=function(e){var t;t=this._getClickTarget(e.target);if(t&&t.type==="label"){return this._triggerEvent("tree.dblclick",{node:t.node,click_event:e})}};r.prototype._getClickTarget=function(t){var n,r,i,s;i=e(t);n=i.closest(".jqtree-toggler");if(n.length){s=this._getNode(n);if(s){return{type:"button",node:s}}}else{r=i.closest(".jqtree-element");if(r.length){s=this._getNode(r);if(s){return{type:"label",node:s}}}}return null};r.prototype._getNode=function(e){var t;t=e.closest("li.jqtree_common");if(t.length===0){return null}else{return t.data("node")}};r.prototype._getNodeElementForNode=function(e){if(e.isFolder()){return new s(e,this)}else{return new h(e,this)}};r.prototype._getNodeElement=function(e){var t;t=this._getNode(e);if(t){return this._getNodeElementForNode(t)}else{return null}};r.prototype._contextmenu=function(t){var n,r;n=e(t.target).closest("ul.jqtree-tree .jqtree-element");if(n.length){r=this._getNode(n);if(r){t.preventDefault();t.stopPropagation();this._triggerEvent("tree.contextmenu",{node:r,click_event:t});return false}}};r.prototype._saveState=function(){if(this.options.saveState){return this.save_state_handler.saveState()}};r.prototype._mouseCapture=function(e){if(this.options.dragAndDrop){return this.dnd_handler.mouseCapture(e)}else{return false}};r.prototype._mouseStart=function(e){if(this.options.dragAndDrop){return this.dnd_handler.mouseStart(e)}else{return false}};r.prototype._mouseDrag=function(e){var t;if(this.options.dragAndDrop){t=this.dnd_handler.mouseDrag(e);if(this.scroll_handler){this.scroll_handler.checkScrolling()}return t}else{return false}};r.prototype._mouseStop=function(e){if(this.options.dragAndDrop){return this.dnd_handler.mouseStop(e)}else{return false}};r.prototype._triggerEvent=function(t,n){var r;r=e.Event(t);e.extend(r,n);this.element.trigger(r);return r};r.prototype.testGenerateHitAreas=function(e){this.dnd_handler.current_item=this._getNodeElementForNode(e);this.dnd_handler.generateHitAreas();return this.dnd_handler.hit_areas};r.prototype._selectCurrentNode=function(){var e,t;e=this.getSelectedNode();if(e){t=this._getNodeElementForNode(e);if(t){return t.select()}}};r.prototype._deselectCurrentNode=function(){var e;e=this.getSelectedNode();if(e){return this.removeFromSelection(e)}};return r}(l);g.register(a,"tree");h=function(){function n(e,t){this.init(e,t)}n.prototype.init=function(t,n){this.node=t;this.tree_widget=n;if(!t.element){t.element=this.tree_widget.element}return this.$element=e(t.element)};n.prototype.getUl=function(){return this.$element.children("ul:first")};n.prototype.getSpan=function(){return this.$element.children(".jqtree-element").find("span.jqtree-title")};n.prototype.getLi=function(){return this.$element};n.prototype.addDropHint=function(e){if(e===p.INSIDE){return new t(this.$element)}else{return new o(this.node,this.$element,e)}};n.prototype.select=function(){return this.getLi().addClass("jqtree-selected")};n.prototype.deselect=function(){return this.getLi().removeClass("jqtree-selected")};return n}();s=function(e){function n(){return n.__super__.constructor.apply(this,arguments)}C(n,e);n.prototype.open=function(e,t){var n,r;if(t==null){t=true}if(!this.node.is_open){this.node.is_open=true;n=this.getButton();n.removeClass("jqtree-closed");n.html("");n.append(this.tree_widget.renderer.opened_icon_element.cloneNode());r=function(t){return function(){t.getLi().removeClass("jqtree-closed");if(e){e()}return t.tree_widget._triggerEvent("tree.open",{node:t.node})}}(this);if(t){return this.getUl().slideDown("fast",r)}else{this.getUl().show();return r()}}};n.prototype.close=function(e){var t,n;if(e==null){e=true}if(this.node.is_open){this.node.is_open=false;t=this.getButton();t.addClass("jqtree-closed");t.html("");t.append(this.tree_widget.renderer.closed_icon_element.cloneNode());n=function(e){return function(){e.getLi().addClass("jqtree-closed");return e.tree_widget._triggerEvent("tree.close",{node:e.node})}}(this);if(e){return this.getUl().slideUp("fast",n)}else{this.getUl().hide();return n()}}};n.prototype.getButton=function(){return this.$element.children(".jqtree-element").find("a.jqtree-toggler")};n.prototype.addDropHint=function(e){if(!this.node.is_open&&e===p.INSIDE){return new t(this.$element)}else{return new o(this.node,this.$element,e)}};return n}(h);w=function(e){return(""+e).replace(/&/g,"&").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;").replace(/'/g,"&#x27;").replace(/\//g,"&#x2F;")};x=function(e,t){var n,r,i,s;for(n=i=0,s=e.length;i<s;n=++i){r=e[n];if(r===t){return n}}return-1};E=function(e,t){if(e.indexOf){return e.indexOf(t)}else{return x(e,t)}};this.Tree.indexOf=E;this.Tree._indexOf=x;S=function(e){return typeof e==="number"&&e%1===0};b=function(){var e,t,n,r,i;e=/[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g;t={"\b":"\\b"," ":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"};n=function(n){e.lastIndex=0;if(e.test(n)){return'"'+n.replace(e,function(e){var n;n=t[e];return typeof n==="string"?n:"\\u"+("0000"+e.charCodeAt(0).toString(16)).slice(-4)})+'"'}else{return'"'+n+'"'}};r=function(e,t){var i,s,o,u,a,f,l;a=t[e];switch(typeof a){case"string":return n(a);case"number":if(isFinite(a)){return String(a)}else{return"null"};case"boolean":case"null":return String(a);case"object":if(!a){return"null"}o=[];if(Object.prototype.toString.apply(a)==="[object Array]"){for(i=f=0,l=a.length;f<l;i=++f){u=a[i];o[i]=r(i,a)||"null"}return o.length===0?"[]":"["+o.join(",")+"]"}for(s in a){if(Object.prototype.hasOwnProperty.call(a,s)){u=r(s,a);if(u){o.push(n(s)+":"+u)}}}return o.length===0?"{}":"{"+o.join(",")+"}"}};i=function(e){return r("",{"":e})};return i};this.Tree.get_json_stringify_function=b;if(!(this.JSON!=null&&this.JSON.stringify!=null&&typeof this.JSON.stringify==="function")){if(this.JSON==null){this.JSON={}}this.JSON.stringify=b()}d=function(){function t(e){this.tree_widget=e}t.prototype.saveState=function(){var t;t=JSON.stringify(this.getState());if(this.tree_widget.options.onSetStateFromStorage){return this.tree_widget.options.onSetStateFromStorage(t)}else if(this.supportsLocalStorage()){return localStorage.setItem(this.getCookieName(),t)}else if(e.cookie){e.cookie.raw=true;return e.cookie(this.getCookieName(),t,{path:"/"})}};t.prototype.restoreState=function(){var t;t=this.getStateFromStorage();if(t){this.setState(e.parseJSON(t));return true}else{return false}};t.prototype.getStateFromStorage=function(){if(this.tree_widget.options.onGetStateFromStorage){return this.tree_widget.options.onGetStateFromStorage()}else if(this.supportsLocalStorage()){return localStorage.getItem(this.getCookieName())}else if(e.cookie){e.cookie.raw=true;return e.cookie(this.getCookieName())}else{return null}};t.prototype.getState=function(){var e,t;e=function(e){return function(){var t;t=[];e.tree_widget.tree.iterate(function(e){if(e.is_open&&e.id&&e.hasChildren()){t.push(e.id)}return true});return t}}(this);t=function(e){return function(){var t;return function(){var e,n,r,i;r=this.tree_widget.getSelectedNodes();i=[];for(e=0,n=r.length;e<n;e++){t=r[e];i.push(t.id)}return i}.call(e)}}(this);return{open_nodes:e(),selected_node:t()}};t.prototype.setState=function(e){var t,n,r,i,s,o,u;if(e){n=e.open_nodes;i=e.selected_node;if(S(i)){i=[i]}this.tree_widget.tree.iterate(function(e){return function(e){e.is_open=e.id&&e.hasChildren()&&E(n,e.id)>=0;return true}}(this));if(i&&this.tree_widget.select_node_handler){this.tree_widget.select_node_handler.clear();u=[];for(s=0,o=i.length;s<o;s++){t=i[s];r=this.tree_widget.getNodeById(t);if(r){u.push(this.tree_widget.select_node_handler.addToSelection(r))}else{u.push(void 0)}}return u}}};t.prototype.getCookieName=function(){if(typeof this.tree_widget.options.saveState==="string"){return this.tree_widget.options.saveState}else{return"tree"}};t.prototype.supportsLocalStorage=function(){var e;e=function(){var e,t;if(typeof localStorage==="undefined"||localStorage===null){return false}else{try{t="_storage_test";sessionStorage.setItem(t,true);sessionStorage.removeItem(t)}catch(n){e=n;return false}return true}};if(this._supportsLocalStorage==null){this._supportsLocalStorage=e()}return this._supportsLocalStorage};t.prototype.getNodeIdToBeSelected=function(){var t,n;n=this.getStateFromStorage();if(n){t=e.parseJSON(n);return t.selected_node}else{return null}};return t}();m=function(){function e(e){this.tree_widget=e;this.clear()}e.prototype.getSelectedNode=function(){var e;e=this.getSelectedNodes();if(e.length){return e[0]}else{return false}};e.prototype.getSelectedNodes=function(){var e,t,n;if(this.selected_single_node){return[this.selected_single_node]}else{n=[];for(e in this.selected_nodes){t=this.tree_widget.getNodeById(e);if(t){n.push(t)}}return n}};e.prototype.getSelectedNodesUnder=function(e){var t,n,r;if(this.selected_single_node){if(e.isParentOf(this.selected_single_node)){return[this.selected_single_node]}else{return[]}}else{r=[];for(t in this.selected_nodes){n=this.tree_widget.getNodeById(t);if(n&&e.isParentOf(n)){r.push(n)}}return r}};e.prototype.isNodeSelected=function(e){if(e.id){return this.selected_nodes[e.id]}else if(this.selected_single_node){return this.selected_single_node.element===e.element}else{return false}};e.prototype.clear=function(){this.selected_nodes={};return this.selected_single_node=null};e.prototype.removeFromSelection=function(e,t){if(t==null){t=false}if(!e.id){if(this.selected_single_node&&e.element===this.selected_single_node.element){return this.selected_single_node=null}}else{delete this.selected_nodes[e.id];if(t){return e.iterate(function(t){return function(n){delete t.selected_nodes[e.id];return true}}(this))}}};e.prototype.addToSelection=function(e){if(e.id){return this.selected_nodes[e.id]=true}else{return this.selected_single_node=e}};return e}();n=function(){function t(e){this.tree_widget=e;this.hovered_area=null;this.$ghost=null;this.hit_areas=[];this.is_dragging=false;this.current_item=null}t.prototype.mouseCapture=function(t){var n,r;n=e(t.target);if(!this.mustCaptureElement(n)){return null}if(this.tree_widget.options.onIsMoveHandle&&!this.tree_widget.options.onIsMoveHandle(n)){return null}r=this.tree_widget._getNodeElement(n);if(r&&this.tree_widget.options.onCanMove){if(!this.tree_widget.options.onCanMove(r.node)){r=null}}this.current_item=r;return this.current_item!==null};t.prototype.mouseStart=function(t){var n;this.refresh();n=e(t.target).offset();this.drag_element=new r(this.current_item.node,t.page_x-n.left,t.page_y-n.top,this.tree_widget.element);this.is_dragging=true;this.current_item.$element.addClass("jqtree-moving");return true};t.prototype.mouseDrag=function(e){var t,n;this.drag_element.move(e.page_x,e.page_y);t=this.findHoveredArea(e.page_x,e.page_y);n=this.canMoveToArea(t);if(n&&t){if(this.hovered_area!==t){this.hovered_area=t;if(this.mustOpenFolderTimer(t)){this.startOpenFolderTimer(t.node)}this.updateDropHint()}}else{this.removeHover();this.removeDropHint();this.stopOpenFolderTimer()}return true};t.prototype.mustCaptureElement=function(e){return!e.is("input,select")};t.prototype.canMoveToArea=function(e){var t;if(!e){return false}else if(this.tree_widget.options.onCanMoveTo){t=p.getName(e.position);return this.tree_widget.options.onCanMoveTo(this.current_item.node,e.node,t)}else{return true}};t.prototype.mouseStop=function(e){this.moveItem(e);this.clear();this.removeHover();this.removeDropHint();this.removeHitAreas();if(this.current_item){this.current_item.$element.removeClass("jqtree-moving");this.current_item=null}this.is_dragging=false;return false};t.prototype.refresh=function(){this.removeHitAreas();this.generateHitAreas();if(this.current_item){this.current_item=this.tree_widget._getNodeElementForNode(this.current_item.node);if(this.is_dragging){return this.current_item.$element.addClass("jqtree-moving")}}};t.prototype.removeHitAreas=function(){return this.hit_areas=[]};t.prototype.clear=function(){this.drag_element.remove();return this.drag_element=null};t.prototype.removeDropHint=function(){if(this.previous_ghost){return this.previous_ghost.remove()}};t.prototype.removeHover=function(){return this.hovered_area=null};t.prototype.generateHitAreas=function(){var e;e=new u(this.tree_widget.tree,this.current_item.node,this.getTreeDimensions().bottom);return this.hit_areas=e.generate()};t.prototype.findHoveredArea=function(e,t){var n,r,i,s,o;r=this.getTreeDimensions();if(e<r.left||t<r.top||e>r.right||t>r.bottom){return null}s=0;i=this.hit_areas.length;while(s<i){o=s+i>>1;n=this.hit_areas[o];if(t<n.top){i=o}else if(t>n.bottom){s=o+1}else{return n}}return null};t.prototype.mustOpenFolderTimer=function(e){var t;t=e.node;return t.isFolder()&&!t.is_open&&e.position===p.INSIDE};t.prototype.updateDropHint=function(){var e;if(!this.hovered_area){return}this.removeDropHint();e=this.tree_widget._getNodeElementForNode(this.hovered_area.node);return this.previous_ghost=e.addDropHint(this.hovered_area.position)};t.prototype.startOpenFolderTimer=function(e){var t;t=function(t){return function(){return t.tree_widget._openNode(e,t.tree_widget.options.slide,function(){t.refresh();return t.updateDropHint()})}}(this);this.stopOpenFolderTimer();return this.open_folder_timer=setTimeout(t,this.tree_widget.options.openFolderDelay)};t.prototype.stopOpenFolderTimer=function(){if(this.open_folder_timer){clearTimeout(this.open_folder_timer);return this.open_folder_timer=null}};t.prototype.moveItem=function(e){var t,n,r,i,s,o;if(this.hovered_area&&this.hovered_area.position!==p.NONE&&this.canMoveToArea(this.hovered_area)){r=this.current_item.node;o=this.hovered_area.node;i=this.hovered_area.position;s=r.parent;if(i===p.INSIDE){this.hovered_area.node.is_open=true}t=function(e){return function(){e.tree_widget.tree.moveNode(r,o,i);e.tree_widget.element.empty();return e.tree_widget._refreshElements()}}(this);n=this.tree_widget._triggerEvent("tree.move",{move_info:{moved_node:r,target_node:o,position:p.getName(i),previous_parent:s,do_move:t,original_event:e.original_event}});if(!n.isDefaultPrevented()){return t()}}};t.prototype.getTreeDimensions=function(){var e;e=this.tree_widget.element.offset();return{left:e.left,top:e.top,right:e.left+this.tree_widget.element.width(),bottom:e.top+this.tree_widget.element.height()+16}};return t}();y=function(){function t(e){this.tree=e}t.prototype.iterate=function(){var t,n;t=true;n=function(r){return function(i,s){var o,u,a,f,l,c,h,p;l=(i.is_open||!i.element)&&i.hasChildren();if(i.element){o=e(i.element);if(!o.is(":visible")){return}if(t){r.handleFirstNode(i,o);t=false}if(!i.hasChildren()){r.handleNode(i,s,o)}else if(i.is_open){if(!r.handleOpenFolder(i,o)){l=false}}else{r.handleClosedFolder(i,s,o)}}if(l){a=i.children.length;p=i.children;for(f=c=0,h=p.length;c<h;f=++c){u=p[f];if(f===a-1){n(i.children[f],null)}else{n(i.children[f],i.children[f+1])}}if(i.is_open){return r.handleAfterOpenFolder(i,s,o)}}}}(this);return n(this.tree,null)};t.prototype.handleNode=function(e,t,n){};t.prototype.handleOpenFolder=function(e,t){};t.prototype.handleClosedFolder=function(e,t,n){};t.prototype.handleAfterOpenFolder=function(e,t,n){};t.prototype.handleFirstNode=function(e,t){};return t}();u=function(t){function n(e,t,r){n.__super__.constructor.call(this,e);this.current_node=t;this.tree_bottom=r}C(n,t);n.prototype.generate=function(){this.positions=[];this.last_top=0;this.iterate();return this.generateHitAreas(this.positions)};n.prototype.getTop=function(e){return e.offset().top};n.prototype.addPosition=function(e,t,n){var r;r={top:n,node:e,position:t};this.positions.push(r);return this.last_top=n};n.prototype.handleNode=function(e,t,n){var r;r=this.getTop(n);if(e===this.current_node){this.addPosition(e,p.NONE,r)}else{this.addPosition(e,p.INSIDE,r)}if(t===this.current_node||e===this.current_node){return this.addPosition(e,p.NONE,r)}else{return this.addPosition(e,p.AFTER,r)}};n.prototype.handleOpenFolder=function(e,t){if(e===this.current_node){return false}if(e.children[0]!==this.current_node){this.addPosition(e,p.INSIDE,this.getTop(t))}return true};n.prototype.handleClosedFolder=function(e,t,n){var r;r=this.getTop(n);if(e===this.current_node){return this.addPosition(e,p.NONE,r)}else{this.addPosition(e,p.INSIDE,r);if(t!==this.current_node){return this.addPosition(e,p.AFTER,r)}}};n.prototype.handleFirstNode=function(t,n){if(t!==this.current_node){return this.addPosition(t,p.BEFORE,this.getTop(e(t.element)))}};n.prototype.handleAfterOpenFolder=function(e,t,n){if(e===this.current_node.node||t===this.current_node.node){return this.addPosition(e,p.NONE,this.last_top)}else{return this.addPosition(e,p.AFTER,this.last_top)}};n.prototype.generateHitAreas=function(e){var t,n,r,i,s,o;i=-1;t=[];n=[];for(s=0,o=e.length;s<o;s++){r=e[s];if(r.top!==i&&t.length){if(t.length){this.generateHitAreasForGroup(n,t,i,r.top)}i=r.top;t=[]}t.push(r)}this.generateHitAreasForGroup(n,t,i,this.tree_bottom);return n};n.prototype.generateHitAreasForGroup=function(e,t,n,r){var i,s,o,u,a;a=Math.min(t.length,4);i=Math.round((r-n)/a);s=n;o=0;while(o<a){u=t[o];e.push({top:s,bottom:s+i,node:u.node,position:u.position});s+=i;o+=1}return null};return n}(y);r=function(){function t(t,n,r,i){this.offset_x=n;this.offset_y=r;this.$element=e('<span class="jqtree-title jqtree-dragging">'+t.name+"</span>");this.$element.css("position","absolute");i.append(this.$element)}t.prototype.move=function(e,t){return this.$element.offset({left:e-this.offset_x,top:t-this.offset_y})};t.prototype.remove=function(){return this.$element.remove()};return t}();o=function(){function t(t,n,r){this.$element=n;this.node=t;this.$ghost=e('<li class="jqtree_common jqtree-ghost"><span class="jqtree_common jqtree-circle"></span><span class="jqtree_common jqtree-line"></span></li>');if(r===p.AFTER){this.moveAfter()}else if(r===p.BEFORE){this.moveBefore()}else if(r===p.INSIDE){if(t.isFolder()&&t.is_open){this.moveInsideOpenFolder()}else{this.moveInside()}}}t.prototype.remove=function(){return this.$ghost.remove()};t.prototype.moveAfter=function(){return this.$element.after(this.$ghost)};t.prototype.moveBefore=function(){return this.$element.before(this.$ghost)};t.prototype.moveInsideOpenFolder=function(){return e(this.node.children[0].element).before(this.$ghost)};t.prototype.moveInside=function(){this.$element.after(this.$ghost);return this.$ghost.addClass("jqtree-inside")};return t}();t=function(){function t(t){var n,r;n=t.children(".jqtree-element");r=t.width()-4;this.$hint=e('<span class="jqtree-border"></span>');n.append(this.$hint);this.$hint.css({width:r,height:n.height()-4})}t.prototype.remove=function(){return this.$hint.remove()};return t}();v=function(){function t(e){this.tree_widget=e;this.previous_top=-1;this._initScrollParent()}t.prototype._initScrollParent=function(){var t,n,r;n=function(t){return function(){var n,r,i,s,o,u;n=["overflow","overflow-y"];i=function(t){var r,i,s,o;for(i=0,s=n.length;i<s;i++){r=n[i];if((o=e.css(t,r))==="auto"||o==="scroll"){return true}}return false};if(i(t.tree_widget.$el[0])){return t.tree_widget.$el}u=t.tree_widget.$el.parents();for(s=0,o=u.length;s<o;s++){r=u[s];if(i(r)){return e(r)}}return null}}(this);r=function(e){return function(){e.scroll_parent_top=0;return e.$scroll_parent=null}}(this);if(this.tree_widget.$el.css("position")==="fixed"){r()}t=n();if(t&&t.length&&t[0].tagName!=="HTML"){this.$scroll_parent=t;return this.scroll_parent_top=this.$scroll_parent.offset().top}else{return r()}};t.prototype.checkScrolling=function(){var e;e=this.tree_widget.dnd_handler.hovered_area;if(e&&e.top!==this.previous_top){this.previous_top=e.top;if(this.$scroll_parent){return this._handleScrollingWithScrollParent(e)}else{return this._handleScrollingWithDocument(e)}}};t.prototype._handleScrollingWithScrollParent=function(e){var t;t=this.scroll_parent_top+this.$scroll_parent[0].offsetHeight-e.bottom;if(t<20){this.$scroll_parent[0].scrollTop+=20;this.tree_widget.refreshHitAreas();return this.previous_top=-1}else if(e.top-this.scroll_parent_top<20){this.$scroll_parent[0].scrollTop-=20;this.tree_widget.refreshHitAreas();return this.previous_top=-1}};t.prototype._handleScrollingWithDocument=function(t){var n;n=t.top-e(document).scrollTop();if(n<20){return e(document).scrollTop(e(document).scrollTop()-20)}else if(e(window).height()-(t.bottom-e(document).scrollTop())<20){return e(document).scrollTop(e(document).scrollTop()+20)}};t.prototype.scrollTo=function(t){var n;if(this.$scroll_parent){return this.$scroll_parent[0].scrollTop=t}else{n=this.tree_widget.$el.offset().top;return e(document).scrollTop(t+n)}};t.prototype.isScrolledIntoView=function(t){var n,r,i,s,o;n=e(t);if(this.$scroll_parent){o=0;s=this.$scroll_parent.height();i=n.offset().top-this.scroll_parent_top;r=i+n.height()}else{o=e(window).scrollTop();s=o+e(window).height();i=n.offset().top;r=i+n.height()}return r<=s&&i>=o};return t}();f=function(){function s(t){this.tree_widget=t;if(t.options.keyboardSupport){e(document).bind("keydown.jqtree",e.proxy(this.handleKeyDown,this))}}var t,n,r,i;n=37;i=38;r=39;t=40;s.prototype.deinit=function(){return e(document).unbind("keydown.jqtree")};s.prototype.handleKeyDown=function(s){var o,u,a,f,l,c,h;if(!this.tree_widget.options.keyboardSupport){return}if(e(document.activeElement).is("textarea,input,select")){return true}o=this.tree_widget.getSelectedNode();h=function(t){return function(n){if(n){t.tree_widget.selectNode(n);if(t.tree_widget.scroll_handler&&!t.tree_widget.scroll_handler.isScrolledIntoView(e(n.element).find(".jqtree-element"))){t.tree_widget.scrollToNode(n)}return false}else{return true}}}(this);a=function(e){return function(){return h(e.getNextNode(o))}}(this);c=function(e){return function(){return h(e.getPreviousNode(o))}}(this);l=function(e){return function(){if(o.isFolder()&&!o.is_open){e.tree_widget.openNode(o);return false}else{return true}}}(this);f=function(e){return function(){if(o.isFolder()&&o.is_open){e.tree_widget.closeNode(o);return false}else{return true}}}(this);if(!o){return true}else{u=s.which;switch(u){case t:return a();case i:return c();case r:return l();case n:return f()}}};s.prototype.getNextNode=function(e,t){var n;if(t==null){t=true}if(t&&e.hasChildren()&&e.is_open){return e.children[0]}else{if(!e.parent){return null}else{n=e.getNextSibling();if(n){return n}else{return this.getNextNode(e.parent,false)}}}};s.prototype.getPreviousNode=function(e){var t;if(!e.parent){return null}else{t=e.getPreviousSibling();if(t){if(!t.hasChildren()||!t.is_open){return t}else{return this.getLastChild(t)}}else{if(e.parent.parent){return e.parent}else{return null}}}};s.prototype.getLastChild=function(e){var t;if(!e.hasChildren()){return null}else{t=e.children[e.children.length-1];if(!t.hasChildren()||!t.is_open){return t}else{return this.getLastChild(t)}}};return s}()}).call(this)

toc = [
  {label:"AutoHotkey",path:"AutoHotkey.htm"},
  {label:"Tutorial (quick start)",path:"Tutorial.htm"},
  {label:"FAQ (Frequently Asked Questions)",path:"FAQ.htm"},
  {label:"Command and Function Index",path:"commands/index.htm"},
  {label:"Script Showcase",path:"scripts/index.htm"},
  {label:"Recent Changes",path:"AHKL_ChangeLog.htm"},
  {label:"Basic Usage and Syntax",children:
  [
    {label:"Hotkeys",path:"Hotkeys.htm"},
    {label:"Hotstrings & auto-replace",path:"Hotstrings.htm"},
    {label:"Remapping keys and buttons",path:"misc/Remap.htm"},
    {label:"Key List (Keyboard, Mouse, Joystick)",path:"KeyList.htm"},
    {label:"Scripts",path:"Scripts.htm"},
    {label:"Variables and Expressions",path:"Variables.htm"},
    {label:"Functions",path:"Functions.htm"},
    {label:"Debugging (DBGp) Clients",path:"AHKL_DBGPClients.htm"},
    {label:"Objects",path:"Objects.htm",children:
    [
      {label:"Basic Usage",path:"Objects.htm#Usage"},
      {label:"Extended Usage",path:"Objects.htm#Extended_Usage"},
      {label:"Custom Objects",path:"Objects.htm#Custom_Objects"},
      {label:"Default Base Object",path:"Objects.htm#Default_Base_Object"},
      {label:"Implementation",path:"Objects.htm#Implementation"},
      {label:"Object",path:"objects/Object.htm"},
      {label:"Enumerator Object",path:"objects/Enumerator.htm"},
      {label:"File Object",path:"objects/File.htm"},
      {label:"Function Objects",path:"objects/Functor.htm"}
    ]}
  ]},
  {label:"Moving to AutoHotkey 1.1 (AutoHotkey_L)",children:
  [
    {label:"AutoHotkey_L New Features",path:"AHKL_Features.htm"},
    {label:"Script Compatibility",path:"Compat.htm"}
  ]},
  {label:"Environment Management",children:
  [
    {label:"ClipWait",path:"commands/ClipWait.htm"},
    {label:"EnvGet",path:"commands/EnvGet.htm"},
    {label:"EnvSet",path:"commands/EnvSet.htm"},
    {label:"EnvUpdate",path:"commands/EnvUpdate.htm"}
  ]},
  {label:"Native Code Interop",children:
  [
    {label:"DllCall",path:"commands/DllCall.htm"},
    {label:"NumGet",path:"commands/NumGet.htm"},
    {label:"NumPut",path:"commands/NumPut.htm"},
    {label:"RegisterCallback",path:"commands/RegisterCallback.htm"},
    {label:"StrPut()/StrGet()",path:"commands/StrPutGet.htm"},
    {label:"COM",children:
    [
      {label:"ComObjActive",path:"commands/ComObjActive.htm"},
      {label:"ComObjArray",path:"commands/ComObjArray.htm"},
      {label:"ComObjConnect",path:"commands/ComObjConnect.htm"},
      {label:"ComObjCreate",path:"commands/ComObjCreate.htm"},
      {label:"ComObjGet",path:"commands/ComObjGet.htm"},
      {label:"ComObjError",path:"commands/ComObjError.htm"},
      {label:"ComObjFlags",path:"commands/ComObjFlags.htm"},
      {label:"ComObjQuery",path:"commands/ComObjQuery.htm"},
      {label:"ComObjType",path:"commands/ComObjType.htm"},
      {label:"ComObjValue",path:"commands/ComObjValue.htm"},
      {label:"ObjAddRef / ObjRelease",path:"commands/ObjAddRef.htm"}
    ]}
  ]},
  {label:"File, Directory, and Disk Management",children:
  [
    {label:"Drive",path:"commands/Drive.htm"},
    {label:"DriveGet",path:"commands/DriveGet.htm"},
    {label:"DriveSpaceFree",path:"commands/DriveSpaceFree.htm"},
    {label:"FileAppend",path:"commands/FileAppend.htm"},
    {label:"FileCopy",path:"commands/FileCopy.htm"},
    {label:"FileCopyDir",path:"commands/FileCopyDir.htm"},
    {label:"FileCreateDir",path:"commands/FileCreateDir.htm"},
    {label:"FileCreateShortcut",path:"commands/FileCreateShortcut.htm"},
    {label:"FileDelete",path:"commands/FileDelete.htm"},
    {label:"FileEncoding",path:"commands/FileEncoding.htm"},
    {label:"FileGetAttrib",path:"commands/FileGetAttrib.htm"},
    {label:"FileGetShortcut",path:"commands/FileGetShortcut.htm"},
    {label:"FileGetSize",path:"commands/FileGetSize.htm"},
    {label:"FileGetTime",path:"commands/FileGetTime.htm"},
    {label:"FileGetVersion",path:"commands/FileGetVersion.htm"},
    {label:"FileInstall",path:"commands/FileInstall.htm"},
    {label:"FileMove",path:"commands/FileMove.htm"},
    {label:"FileMoveDir",path:"commands/FileMoveDir.htm"},
    {label:"FileOpen()",path:"commands/FileOpen.htm"},
    {label:"FileReadLine",path:"commands/FileReadLine.htm"},
    {label:"FileRead",path:"commands/FileRead.htm"},
    {label:"FileRecycle",path:"commands/FileRecycle.htm"},
    {label:"FileRecycleEmpty",path:"commands/FileRecycleEmpty.htm"},
    {label:"FileRemoveDir",path:"commands/FileRemoveDir.htm"},
    {label:"FileSelectFile",path:"commands/FileSelectFile.htm"},
    {label:"FileSelectFolder",path:"commands/FileSelectFolder.htm"},
    {label:"FileSetAttrib",path:"commands/FileSetAttrib.htm"},
    {label:"FileSetTime",path:"commands/FileSetTime.htm"},
    {label:"IfExist/IfNotExist",path:"commands/IfExist.htm"},
    {label:"IniDelete",path:"commands/IniDelete.htm"},
    {label:"IniRead",path:"commands/IniRead.htm"},
    {label:"IniWrite",path:"commands/IniWrite.htm"},
    {label:"Loop (files & folders)",path:"commands/LoopFile.htm"},
    {label:"Loop (read file contents)",path:"commands/LoopReadFile.htm"},
    {label:"SetWorkingDir",path:"commands/SetWorkingDir.htm"},
    {label:"SplitPath",path:"commands/SplitPath.htm"}
  ]},
  {label:"Flow of Control",children:
  [
    {label:"#Include/#IncludeAgain",path:"commands/_Include.htm"},
    {label:"{ ... } (block)",path:"commands/Block.htm"},
    {label:"Break",path:"commands/Break.htm"},
    {label:"Catch",path:"commands/Catch.htm"},
    {label:"Continue",path:"commands/Continue.htm"},
    {label:"Critical",path:"commands/Critical.htm"},
    {label:"Else",path:"commands/Else.htm"},
    {label:"Exit",path:"commands/Exit.htm"},
    {label:"ExitApp",path:"commands/ExitApp.htm"},
    {label:"Finally",path:"commands/Finally.htm"},
    {label:"For-loop",path:"commands/For.htm"},
    {label:"Gosub",path:"commands/Gosub.htm"},
    {label:"Goto",path:"commands/Goto.htm"},
    {label:"If commands",path:"commands/IfExpression.htm",children:
    [
      {label:"If (traditional)",path:"commands/IfEqual.htm"},
      {label:"If (expression)",path:"commands/IfExpression.htm"},
      {label:"If var [not] between Low and High",path:"commands/IfBetween.htm"},
      {label:"If var is [not] type",path:"commands/IfIs.htm"},
      {label:"If var [not] in/contains MatchList",path:"commands/IfIn.htm"},
      {label:"IfExist/IfNotExist",path:"commands/IfExist.htm"},
      {label:"IfInString/IfNotInString",path:"commands/IfInString.htm"},
      {label:"IfMsgBox",path:"commands/IfMsgBox.htm"},
      {label:"IfWinActive/IfWinNotActive",path:"commands/WinActive.htm"},
      {label:"IfWinExist/IfWinNotExist",path:"commands/WinExist.htm"}
    ]},
    {label:"Loop commands",path:"commands/Loop.htm",children:
    [
      {label:"Loop",path:"commands/Loop.htm"},
      {label:"Loop (files & folders)",path:"commands/LoopFile.htm"},
      {label:"Loop (parse a string)",path:"commands/LoopParse.htm"},
      {label:"Loop (read file contents)",path:"commands/LoopReadFile.htm"},
      {label:"Loop (registry)",path:"commands/LoopReg.htm"}
    ]},
    {label:"OnExit",path:"commands/OnExit.htm"},
    {label:"Pause",path:"commands/Pause.htm"},
    {label:"Reload",path:"commands/Reload.htm"},
    {label:"Return",path:"commands/Return.htm"},
    {label:"SetBatchLines",path:"commands/SetBatchLines.htm"},
    {label:"SetTimer",path:"commands/SetTimer.htm"},
    {label:"Sleep",path:"commands/Sleep.htm"},
    {label:"Suspend",path:"commands/Suspend.htm"},
    {label:"Thread",path:"commands/Thread.htm"},
    {label:"Throw",path:"commands/Throw.htm"},
    {label:"Try",path:"commands/Try.htm"},
    {label:"Until",path:"commands/Until.htm"},
    {label:"While-loop",path:"commands/While.htm"}
  ]},
  {label:"Built-in Functions",path:"Functions.htm",children:
  [
    {label:"Asc",path:"Functions.htm#Asc"},
    {label:"Chr",path:"Functions.htm#Chr"},
    {label:"FileExist",path:"Functions.htm#FileExist"},
    {label:"Format",path:"commands/Format.htm"},
    {label:"GetKeyName/VK/SC",path:"Functions.htm#GetKeyName"},
    {label:"GetKeyState",path:"Functions.htm#GetKeyState"},
    {label:"InStr",path:"Functions.htm#InStr"},
    {label:"IsByRef",path:"Functions.htm#IsByRef"},
    {label:"IsFunc",path:"Functions.htm#IsFunc"},
    {label:"IsLabel",path:"Functions.htm#IsLabel"},
    {label:"NumGet",path:"commands/NumGet.htm"},
    {label:"NumPut",path:"commands/NumPut.htm"},
    {label:"OnClipboardChange",path:"commands/OnClipboardChange.htm"},
    {label:"OnExit",path:"commands/OnExit.htm"},
    {label:"OnMessage",path:"commands/OnMessage.htm"},
    {label:"Ord",path:"Functions.htm#Ord"},
    {label:"RegExMatch",path:"commands/RegExMatch.htm"},
    {label:"RegExReplace",path:"commands/RegExReplace.htm"},
    {label:"RegisterCallback",path:"commands/RegisterCallback.htm"},
    {label:"StrLen",path:"commands/StringLen.htm"},
    {label:"StrPut/StrGet",path:"commands/StrPutGet.htm"},
    {label:"StrReplace",path:"commands/StringReplace.htm"},
    {label:"StrSplit",path:"commands/StringSplit.htm"},
    {label:"SubStr",path:"Functions.htm#SubStr"},
    {label:"VarSetCapacity",path:"commands/VarSetCapacity.htm"},
    {label:"WinActive",path:"commands/WinActive.htm"},
    {label:"WinExist",path:"commands/WinExist.htm"}
  ]},
  {label:"GUI, MsgBox, InputBox & Other Dialogs",children:
  [
    {label:"FileSelectFile",path:"commands/FileSelectFile.htm"},
    {label:"FileSelectFolder",path:"commands/FileSelectFolder.htm"},
    {label:"Gui",path:"commands/Gui.htm"},
    {label:"Gui control types",path:"commands/GuiControls.htm"},
    {label:"GuiControl",path:"commands/GuiControl.htm"},
    {label:"GuiControlGet",path:"commands/GuiControlGet.htm"},
    {label:"Gui ListView control",path:"commands/ListView.htm"},
    {label:"Gui TreeView control",path:"commands/TreeView.htm"},
    {label:"IfMsgBox",path:"commands/IfMsgBox.htm"},
    {label:"InputBox",path:"commands/InputBox.htm"},
    {label:"Menu",path:"commands/Menu.htm"},
    {label:"MsgBox",path:"commands/MsgBox.htm"},
    {label:"OnMessage",path:"commands/OnMessage.htm"},
    {label:"Progress",path:"commands/Progress.htm"},
    {label:"SplashImage",path:"commands/Progress.htm"},
    {label:"SplashTextOn/SplashTextOff",path:"commands/SplashTextOn.htm"},
    {label:"ToolTip",path:"commands/ToolTip.htm"},
    {label:"TrayTip",path:"commands/TrayTip.htm"}
  ]},
  {label:"Mouse and Keyboard",children:
  [
    {label:"Hotkeys and Hotstrings",path:"Hotkeys.htm",children:
    [
      {label:"#HotkeyInterval",path:"commands/_HotkeyInterval.htm"},
      {label:"#HotkeyModifierTimeout",path:"commands/_HotkeyModifierTimeout.htm"},
      {label:"#Hotstring",path:"commands/_Hotstring.htm"},
      {label:"#If",path:"commands/_If.htm"},
      {label:"#IfTimeOut",path:"commands/_IfTimeout.htm"},
      {label:"#IfWinActive/Exist",path:"commands/_IfWinActive.htm"},
      {label:"#InputLevel",path:"commands/_InputLevel.htm"},
      {label:"#MaxHotkeysPerInterval",path:"commands/_MaxHotkeysPerInterval.htm"},
      {label:"#MaxThreads",path:"commands/_MaxThreads.htm"},
      {label:"#MaxThreadsBuffer",path:"commands/_MaxThreadsBuffer.htm"},
      {label:"#MaxThreadsPerHotkey",path:"commands/_MaxThreadsPerHotkey.htm"},
      {label:"#MenuMaskKey",path:"commands/_MenuMaskKey.htm"},
      {label:"#UseHook",path:"commands/_UseHook.htm"},
      {label:"Hotkey",path:"commands/Hotkey.htm"},
      {label:"ListHotkeys",path:"commands/ListHotkeys.htm"},
      {label:"Suspend",path:"commands/Suspend.htm"}
    ]},
    {label:"#InstallKeybdHook",path:"commands/_InstallKeybdHook.htm"},
    {label:"#InstallMouseHook",path:"commands/_InstallMouseHook.htm"},
    {label:"#KeyHistory",path:"commands/_KeyHistory.htm"},
    {label:"BlockInput",path:"commands/BlockInput.htm"},
    {label:"Click",path:"commands/Click.htm"},
    {label:"ControlClick",path:"commands/ControlClick.htm"},
    {label:"ControlSend, ControlSendRaw",path:"commands/ControlSend.htm"},
    {label:"CoordMode",path:"commands/CoordMode.htm"},
    {label:"GetKeyState",path:"commands/GetKeyState.htm"},
    {label:"Key List (Keyboard, Mouse, Joystick)",path:"KeyList.htm"},
    {label:"KeyHistory",path:"commands/KeyHistory.htm"},
    {label:"KeyWait",path:"commands/KeyWait.htm"},
    {label:"Input",path:"commands/Input.htm"},
    {label:"MouseClick",path:"commands/MouseClick.htm"},
    {label:"MouseClickDrag",path:"commands/MouseClickDrag.htm"},
    {label:"MouseGetPos",path:"commands/MouseGetPos.htm"},
    {label:"MouseMove",path:"commands/MouseMove.htm"},
    {label:"Send, SendRaw, SendInput, SendPlay, SendEvent",path:"commands/Send.htm"},
    {label:"SendLevel",path:"commands/SendLevel.htm"},
    {label:"SendMode",path:"commands/SendMode.htm"},
    {label:"SetDefaultMouseSpeed",path:"commands/SetDefaultMouseSpeed.htm"},
    {label:"SetKeyDelay",path:"commands/SetKeyDelay.htm"},
    {label:"SetMouseDelay",path:"commands/SetMouseDelay.htm"},
    {label:"SetNumScrollCapsLockState",path:"commands/SetNumScrollCapsLockState.htm"},
    {label:"SetStoreCapslockMode",path:"commands/SetStoreCapslockMode.htm"}
  ]},
  {label:"Maths",children:
  [
    {label:"Abs",path:"Functions.htm#Abs"},
    {label:"Ceil",path:"Functions.htm#Ceil"},
    {label:"Exp",path:"Functions.htm#Exp"},
    {label:"Floor",path:"Functions.htm#Floor"},
    {label:"Log",path:"Functions.htm#Log"},
    {label:"Ln",path:"Functions.htm#Ln"},
    {label:"Mod",path:"Functions.htm#Mod"},
    {label:"Random",path:"commands/Random.htm"},
    {label:"Round",path:"Functions.htm#Round"},
    {label:"SetFormat",path:"commands/SetFormat.htm"},
    {label:"Sqrt",path:"Functions.htm#Sqrt"},
    {label:"Sin/Cos/Tan",path:"Functions.htm#Sin"},
    {label:"ASin/ACos/ATan",path:"Functions.htm#ASin"},
    {label:"Transform",path:"commands/Transform.htm"}
  ]},
  {label:"Screen Management",children:
  [
    {label:"ImageSearch",path:"commands/ImageSearch.htm"},
    {label:"PixelGetColor",path:"commands/PixelGetColor.htm"},
    {label:"PixelSearch",path:"commands/PixelSearch.htm"}
  ]},
  {label:"Misc. Commands",children:
  [
    {label:"#NoTrayIcon",path:"commands/_NoTrayIcon.htm"},
    {label:"#SingleInstance",path:"commands/_SingleInstance.htm"},
    {label:"#Warn",path:"commands/_Warn.htm"},
    {label:"AutoTrim",path:"commands/AutoTrim.htm"},
    {label:"Edit",path:"commands/Edit.htm"},
    {label:"ListLines",path:"commands/ListLines.htm"},
    {label:"ListVars",path:"commands/ListVars.htm"},
    {label:"OutputDebug",path:"commands/OutputDebug.htm"},
    {label:"SysGet",path:"commands/SysGet.htm"},
    {label:"Transform",path:"commands/Transform.htm"},
    {label:"URLDownloadToFile",path:"commands/URLDownloadToFile.htm"},
    {label:"VarSetCapacity",path:"commands/VarSetCapacity.htm"}
  ]},
  {label:"Process Management",children:
  [
    {label:"Process",path:"commands/Process.htm"},
    {label:"Run/RunWait",path:"commands/Run.htm"},
    {label:"RunAs",path:"commands/RunAs.htm"},
    {label:"Shutdown",path:"commands/Shutdown.htm"}
  ]},
  {label:"Registry Management",children:
  [
    {label:"Loop (registry)",path:"commands/LoopReg.htm"},
    {label:"RegDelete",path:"commands/RegDelete.htm"},
    {label:"RegRead",path:"commands/RegRead.htm"},
    {label:"RegWrite",path:"commands/RegWrite.htm"},
    {label:"SetRegView",path:"commands/SetRegView.htm"}
  ]},
  {label:"Sound Commands",children:
  [
    {label:"SoundBeep",path:"commands/SoundBeep.htm"},
    {label:"SoundGet",path:"commands/SoundGet.htm"},
    {label:"SoundGetWaveVolume",path:"commands/SoundGetWaveVolume.htm"},
    {label:"SoundPlay",path:"commands/SoundPlay.htm"},
    {label:"SoundSet",path:"commands/SoundSet.htm"},
    {label:"SoundSetWaveVolume",path:"commands/SoundSetWaveVolume.htm"}
  ]},
  {label:"String Management",children:
  [
    {label:"Format()",path:"commands/Format.htm"},
	{label:"FormatTime",path:"commands/FormatTime.htm"},
    {label:"IfInString/IfNotInString",path:"commands/IfInString.htm"},
    {label:"If var [not] in/contains MatchList",path:"commands/IfIn.htm"},
    {label:"InStr()",path:"Functions.htm#InStr"},
    {label:"Loop (parse a string)",path:"commands/LoopParse.htm"},
    {label:"RegExMatch()",path:"commands/RegExMatch.htm"},
    {label:"RegExReplace()",path:"commands/RegExReplace.htm"},
    {label:"SetEnv (var = value)",path:"commands/SetEnv.htm"},
    {label:"SetFormat",path:"commands/SetFormat.htm"},
    {label:"Sort",path:"commands/Sort.htm"},
    {label:"StringCaseSense",path:"commands/StringCaseSense.htm"},
    {label:"StringGetPos",path:"commands/StringGetPos.htm"},
    {label:"StringLeft/StringRight",path:"commands/StringLeft.htm"},
    {label:"StringLen",path:"commands/StringLen.htm"},
    {label:"StringLower/StringUpper",path:"commands/StringLower.htm"},
    {label:"StringMid",path:"commands/StringMid.htm"},
    {label:"StringReplace",path:"commands/StringReplace.htm"},
    {label:"StringSplit",path:"commands/StringSplit.htm"},
    {label:"StringTrimLeft/StringTrimRight",path:"commands/StringTrimLeft.htm"},
    {label:"StrLen()",path:"commands/StringLen.htm"},
    {label:"StrPut()/StrGet()",path:"commands/StrPutGet.htm"},
    {label:"StrReplace()",path:"commands/StringReplace.htm"},
    {label:"StrSplit()",path:"commands/StringSplit.htm"},
    {label:"SubStr()",path:"Functions.htm#SubStr"},
    {label:"Trim()",path:"commands/Trim.htm"}
  ]},
  {label:"Window Management",children:
  [
    {label:"Controls",children:
    [
      {label:"Control",path:"commands/Control.htm"},
      {label:"ControlClick",path:"commands/ControlClick.htm"},
      {label:"ControlFocus",path:"commands/ControlFocus.htm"},
      {label:"ControlGet",path:"commands/ControlGet.htm"},
      {label:"ControlGetFocus",path:"commands/ControlGetFocus.htm"},
      {label:"ControlGetPos",path:"commands/ControlGetPos.htm"},
      {label:"ControlGetText",path:"commands/ControlGetText.htm"},
      {label:"ControlMove",path:"commands/ControlMove.htm"},
      {label:"ControlSend/ControlSendRaw",path:"commands/ControlSend.htm"},
      {label:"ControlSetText",path:"commands/ControlSetText.htm"},
      {label:"Menu",path:"commands/Menu.htm"},
      {label:"PostMessage/SendMessage",path:"commands/PostMessage.htm"},
      {label:"SetControlDelay",path:"commands/SetControlDelay.htm"},
      {label:"WinMenuSelectItem",path:"commands/WinMenuSelectItem.htm"}
    ]},
    {label:"Window Groups",children:
    [
      {label:"GroupActivate",path:"commands/GroupActivate.htm"},
      {label:"GroupAdd",path:"commands/GroupAdd.htm"},
      {label:"GroupClose",path:"commands/GroupClose.htm"},
      {label:"GroupDeactivate",path:"commands/GroupDeactivate.htm"}
    ]},
    {label:"#WinActivateForce",path:"commands/_WinActivateForce.htm"},
    {label:"DetectHiddenText",path:"commands/DetectHiddenText.htm"},
    {label:"DetectHiddenWindows",path:"commands/DetectHiddenWindows.htm"},
    {label:"IfWinActive/IfWinNotActive",path:"commands/WinActive.htm"},
    {label:"IfWinExist/IfWinNotExist",path:"commands/WinExist.htm"},
    {label:"SetTitleMatchMode",path:"commands/SetTitleMatchMode.htm"},
    {label:"SetWinDelay",path:"commands/SetWinDelay.htm"},
    {label:"StatusBarGetText",path:"commands/StatusBarGetText.htm"},
    {label:"StatusBarWait",path:"commands/StatusBarWait.htm"},
    {label:"WinActivate",path:"commands/WinActivate.htm"},
    {label:"WinActivateBottom",path:"commands/WinActivateBottom.htm"},
    {label:"WinClose",path:"commands/WinClose.htm"},
    {label:"WinGet",path:"commands/WinGet.htm"},
    {label:"WinGetActiveStats",path:"commands/WinGetActiveStats.htm"},
    {label:"WinGetActiveTitle",path:"commands/WinGetActiveTitle.htm"},
    {label:"WinGetClass",path:"commands/WinGetClass.htm"},
    {label:"WinGetPos",path:"commands/WinGetPos.htm"},
    {label:"WinGetText",path:"commands/WinGetText.htm"},
    {label:"WinGetTitle",path:"commands/WinGetTitle.htm"},
    {label:"WinHide",path:"commands/WinHide.htm"},
    {label:"WinKill",path:"commands/WinKill.htm"},
    {label:"WinMaximize",path:"commands/WinMaximize.htm"},
    {label:"WinMinimize",path:"commands/WinMinimize.htm"},
    {label:"WinMinimizeAll, WinMinimizeAllUndo",path:"commands/WinMinimizeAll.htm"},
    {label:"WinMove",path:"commands/WinMove.htm"},
    {label:"WinRestore",path:"commands/WinRestore.htm"},
    {label:"WinSet",path:"commands/WinSet.htm"},
    {label:"WinSetTitle",path:"commands/WinSetTitle.htm"},
    {label:"WinShow",path:"commands/WinShow.htm"},
    {label:"WinWait",path:"commands/WinWait.htm"},
    {label:"WinWaitActive, WinWaitNotActive",path:"commands/WinWaitActive.htm"},
    {label:"WinWaitClose",path:"commands/WinWaitClose.htm"}
  ]},
  {label:"#Directives",children:
  [
    {label:"#AllowSameLineComments",path:"commands/_AllowSameLineComments.htm"},
    {label:"#ClipboardTimeout",path:"commands/_ClipboardTimeout.htm"},
    {label:"#CommentFlag",path:"commands/_CommentFlag.htm"},
    {label:"#ErrorStdOut",path:"commands/_ErrorStdOut.htm"},
    {label:"#EscapeChar",path:"commands/_EscapeChar.htm"},
    {label:"#HotkeyInterval",path:"commands/_HotkeyInterval.htm"},
    {label:"#HotkeyModifierTimeout",path:"commands/_HotkeyModifierTimeout.htm"},
    {label:"#Hotstring",path:"commands/_Hotstring.htm"},
    {label:"#If",path:"commands/_If.htm"},
    {label:"#IfWinActive/Exist",path:"commands/_IfWinActive.htm"},
    {label:"#IfTimeout",path:"commands/_IfTimeout.htm"},
    {label:"#Include/#IncludeAgain",path:"commands/_Include.htm"},
    {label:"#InputLevel",path:"commands/_InputLevel.htm"},
    {label:"#InstallKeybdHook",path:"commands/_InstallKeybdHook.htm"},
    {label:"#InstallMouseHook",path:"commands/_InstallMouseHook.htm"},
    {label:"#KeyHistory",path:"commands/_KeyHistory.htm"},
    {label:"#MaxHotkeysPerInterval",path:"commands/_MaxHotkeysPerInterval.htm"},
    {label:"#MaxMem",path:"commands/_MaxMem.htm"},
    {label:"#MaxThreads",path:"commands/_MaxThreads.htm"},
    {label:"#MaxThreadsBuffer",path:"commands/_MaxThreadsBuffer.htm"},
    {label:"#MaxThreadsPerHotkey",path:"commands/_MaxThreadsPerHotkey.htm"},
    {label:"#MenuMaskKey",path:"commands/_MenuMaskKey.htm"},
    {label:"#NoEnv",path:"commands/_NoEnv.htm"},
    {label:"#NoTrayIcon",path:"commands/_NoTrayIcon.htm"},
    {label:"#Persistent",path:"commands/_Persistent.htm"},
    {label:"#SingleInstance",path:"commands/_SingleInstance.htm"},
    {label:"#UseHook",path:"commands/_UseHook.htm"},
    {label:"#Warn",path:"commands/_Warn.htm"},
    {label:"#WinActivateForce",path:"commands/_WinActivateForce.htm"}
  ]}
];

index = [
  ["#AllowSameLineComments","commands/_AllowSameLineComments.htm"],
  ["#ClipboardTimeout","commands/_ClipboardTimeout.htm"],
  ["#CommentFlag","commands/_CommentFlag.htm"],
  ["#Delimiter","commands/_EscapeChar.htm#Delimiter"],
  ["#DerefChar","commands/_EscapeChar.htm#DerefChar"],
  ["#ErrorStdOut","commands/_ErrorStdOut.htm"],
  ["#EscapeChar","commands/_EscapeChar.htm"],
  ["#HotkeyInterval","commands/_HotkeyInterval.htm"],
  ["#HotkeyModifierTimeout","commands/_HotkeyModifierTimeout.htm"],
  ["#Hotstring","commands/_Hotstring.htm"],
  ["#If","commands/_If.htm"],
  ["#IfTimeout","commands/_IfTimeout.htm"],
  ["#IfWinActive","commands/_IfWinActive.htm"],
  ["#IfWinExist","commands/_IfWinActive.htm"],
  ["#IfWinNotActive","commands/_IfWinActive.htm"],
  ["#IfWinNotExist","commands/_IfWinActive.htm"],
  ["#Include","commands/_Include.htm"],
  ["#IncludeAgain","commands/_Include.htm"],
  ["#InputLevel","commands/_InputLevel.htm"],
  ["#InstallKeybdHook","commands/_InstallKeybdHook.htm"],
  ["#InstallMouseHook","commands/_InstallMouseHook.htm"],
  ["#KeyHistory","commands/_KeyHistory.htm"],
  ["#LTrim","Scripts.htm#LTrim"],
  ["#MaxHotkeysPerInterval","commands/_MaxHotkeysPerInterval.htm"],
  ["#MaxMem","commands/_MaxMem.htm"],
  ["#MaxThreads","commands/_MaxThreads.htm"],
  ["#MaxThreadsBuffer","commands/_MaxThreadsBuffer.htm"],
  ["#MaxThreadsPerHotkey","commands/_MaxThreadsPerHotkey.htm"],
  ["#MenuMaskKey","commands/_MenuMaskKey.htm"],
  ["#NoEnv","commands/_NoEnv.htm"],
  ["#NoTrayIcon","commands/_NoTrayIcon.htm"],
  ["#Persistent","commands/_Persistent.htm"],
  ["#SingleInstance","commands/_SingleInstance.htm"],
  ["#UseHook","commands/_UseHook.htm"],
  ["#Warn","commands/_Warn.htm"],
  ["#WinActivateForce","commands/_WinActivateForce.htm"],
  [":=","commands/SetExpression.htm"],
  ["A_AhkPath","Variables.htm#AhkPath"],
  ["A_AhkVersion","Variables.htm#AhkVersion"],
  ["A_AppData","Variables.htm#AppData"],
  ["A_AppDataCommon","Variables.htm#AppDataCommon"],
  ["A_AutoTrim","Variables.htm#AutoTrim"],
  ["A_BatchLines","Variables.htm#BatchLines"],
  ["A_CaretX","Variables.htm#Caret"],
  ["A_CaretY","Variables.htm#Caret"],
  ["A_ComputerName","Variables.htm#ComputerName"],
  ["A_ControlDelay","Variables.htm#ControlDelay"],
  ["A_Cursor","Variables.htm#Cursor"],
  ["A_DD","Variables.htm#DD"],
  ["A_DDD","Variables.htm#DDDD"],
  ["A_DDDD","Variables.htm#DDDD"],
  ["A_DefaultMouseSpeed","Variables.htm#DefaultMouseSpeed"],
  ["A_Desktop","Variables.htm#Desktop"],
  ["A_DesktopCommon","Variables.htm#DesktopCommon"],
  ["A_DetectHiddenText","Variables.htm#DetectHiddenText"],
  ["A_DetectHiddenWindows","Variables.htm#DetectHiddenWindows"],
  ["A_EndChar","Variables.htm#EndChar"],
  ["A_EventInfo","Variables.htm#EventInfo"],
  ["A_ExitReason","Variables.htm#ExitReason"],
  ["A_FileEncoding","Variables.htm#FileEncoding"],
  ["A_FormatFloat","Variables.htm#FormatFloat"],
  ["A_FormatInteger","Variables.htm#FormatInteger"],
  ["A_Gui","Variables.htm#Gui"],
  ["A_GuiControl","Variables.htm#GuiControl"],
  ["A_GuiControlEvent","Variables.htm#GuiControlEvent"],
  ["A_GuiEvent","Variables.htm#GuiEvent"],
  ["A_GuiHeight","Variables.htm#GuiWidth"],
  ["A_GuiWidth","Variables.htm#GuiWidth"],
  ["A_GuiX","Variables.htm#GuiX"],
  ["A_GuiY","Variables.htm#GuiY"],
  ["A_Hour","Variables.htm#Hour"],
  ["A_IconFile","Variables.htm#IconFile"],
  ["A_IconHidden","Variables.htm#IconHidden"],
  ["A_IconNumber","Variables.htm#IconNumber"],
  ["A_IconTip","Variables.htm#IconTip"],
  ["A_Index","commands/Loop.htm"],
  ["A_IPAddress1 through 4","Variables.htm#IPAddress"],
  ["A_Is64bitOS","Variables.htm#Is64bitOS"],
  ["A_IsAdmin","Variables.htm#IsAdmin"],
  ["A_IsCompiled","Variables.htm#IsCompiled"],
  ["A_IsCritical","Variables.htm#IsCritical"],
  ["A_IsPaused","Variables.htm#IsPaused"],
  ["A_IsSuspended","Variables.htm#IsSuspended"],
  ["A_IsUnicode","Variables.htm#IsUnicode"],
  ["A_KeyDelay","Variables.htm#KeyDelay"],
  ["A_Language","Variables.htm#Language"],
  ["A_Language Values","misc/Languages.htm"],
  ["A_LastError","Variables.htm#LastError"],
  ["A_LineFile","Variables.htm#LineFile"],
  ["A_LineNumber","Variables.htm#LineNumber"],
  ["A_LoopField","commands/LoopParse.htm#LoopField"],
  ["A_LoopFileAttrib","commands/LoopFile.htm#LoopFileAttrib"],
  ["A_LoopFileDir","commands/LoopFile.htm#LoopFileDir"],
  ["A_LoopFileExt","commands/LoopFile.htm#LoopFileExt"],
  ["A_LoopFileFullPath","commands/LoopFile.htm#LoopFileFullPath"],
  ["A_LoopFileLongPath","commands/LoopFile.htm#LoopFileLongPath"],
  ["A_LoopFileName","commands/LoopFile.htm#LoopFileName"],
  ["A_LoopFileShortName","commands/LoopFile.htm#LoopFileShortName"],
  ["A_LoopFileShortPath","commands/LoopFile.htm#LoopFileShortPath"],
  ["A_LoopFileSize","commands/LoopFile.htm#LoopFileSize"],
  ["A_LoopFileSizeKB","commands/LoopFile.htm#LoopFileSizeKB"],
  ["A_LoopFileSizeMB","commands/LoopFile.htm#LoopFileSizeMB"],
  ["A_LoopFileTimeAccessed","commands/LoopFile.htm#LoopFileTimeAccessed"],
  ["A_LoopFileTimeCreated","commands/LoopFile.htm#LoopFileTimeCreated"],
  ["A_LoopFileTimeModified","commands/LoopFile.htm#LoopFileTimeModified"],
  ["A_LoopReadLine","commands/LoopReadFile.htm#LoopReadLine"],
  ["A_LoopRegKey","commands/LoopReg.htm#vars"],
  ["A_LoopRegName","commands/LoopReg.htm#vars"],
  ["A_LoopRegSubKey","commands/LoopReg.htm#vars"],
  ["A_LoopRegTimeModified","commands/LoopReg.htm#vars"],
  ["A_LoopRegType","commands/LoopReg.htm#vars"],
  ["A_MDay","Variables.htm#DD"],
  ["A_Min","Variables.htm#Min"],
  ["A_MM","Variables.htm#MM"],
  ["A_MMM","Variables.htm#MMM"],
  ["A_MMMM","Variables.htm#MMMM"],
  ["A_Mon","Variables.htm#MM"],
  ["A_MouseDelay","Variables.htm#MouseDelay"],
  ["A_MSec","Variables.htm#MSec"],
  ["A_MyDocuments","Variables.htm#MyDocuments"],
  ["A_Now","Variables.htm#Now"],
  ["A_NowUTC","Variables.htm#NowUTC"],
  ["A_NumBatchLines","Variables.htm#BatchLines"],
  ["A_OSType","Variables.htm#OSType"],
  ["A_OSVersion","Variables.htm#OSVersion"],
  ["A_PriorHotkey","Variables.htm#PriorHotkey"],
  ["A_PriorKey","Variables.htm#PriorKey"],
  ["A_ProgramFiles","Variables.htm#ProgramFiles"],
  ["A_Programs","Variables.htm#Programs"],
  ["A_ProgramsCommon","Variables.htm#ProgramsCommon"],
  ["A_PtrSize","Variables.htm#PtrSize"],
  ["A_RegView","Variables.htm#RegView"],
  ["A_ScreenDPI","Variables.htm#ScreenDPI"],
  ["A_ScreenHeight","Variables.htm#Screen"],
  ["A_ScreenWidth","Variables.htm#Screen"],
  ["A_ScriptDir","Variables.htm#ScriptDir"],
  ["A_ScriptFullPath","Variables.htm#ScriptFullPath"],
  ["A_ScriptHwnd","Variables.htm#ScriptHwnd"],
  ["A_ScriptName","Variables.htm#ScriptName"],
  ["A_Sec","Variables.htm#Sec"],
  ["A_Space","Variables.htm#Space"],
  ["A_StartMenu","Variables.htm#StartMenu"],
  ["A_StartMenuCommon","Variables.htm#StartMenuCommon"],
  ["A_Startup","Variables.htm#Startup"],
  ["A_StartupCommon","Variables.htm#StartupCommon"],
  ["A_StringCaseSense","Variables.htm#StringCaseSense"],
  ["A_Tab","Variables.htm#Tab"],
  ["A_Temp","Variables.htm#Temp"],
  ["A_ThisFunc","Variables.htm#ThisFunc"],
  ["A_ThisHotkey","Variables.htm#ThisHotkey"],
  ["A_ThisLabel","Variables.htm#ThisLabel"],
  ["A_ThisMenu","Variables.htm#ThisMenu"],
  ["A_ThisMenuItem","Variables.htm#ThisMenuItem"],
  ["A_ThisMenuItemPos","Variables.htm#ThisMenuItemPos"],
  ["A_TickCount","Variables.htm#TickCount"],
  ["A_TimeIdle","Variables.htm#TimeIdle"],
  ["A_TimeIdlePhysical","Variables.htm#TimeIdlePhysical"],
  ["A_TimeSincePriorHotkey","Variables.htm#TimeSincePriorHotkey"],
  ["A_TimeSinceThisHotkey","Variables.htm#TimeSinceThisHotkey"],
  ["A_TitleMatchMode","Variables.htm#TitleMatchMode"],
  ["A_TitleMatchModeSpeed","Variables.htm#TitleMatchModeSpeed"],
  ["A_UserName","Variables.htm#UserName"],
  ["A_WDay","Variables.htm#WDay"],
  ["A_WinDelay","Variables.htm#WinDelay"],
  ["A_WinDir","Variables.htm#WinDir"],
  ["A_WorkingDir","Variables.htm#WorkingDir"],
  ["A_YDay","Variables.htm#YDay"],
  ["A_Year","Variables.htm#YYYY"],
  ["A_YWeek","Variables.htm#YWeek"],
  ["A_YYYY","Variables.htm#YYYY"],
  ["abbreviation expansion","Hotstrings.htm"],
  ["Abs()","Functions.htm#Abs"],
  ["absolute value, abs()","Functions.htm#Abs"],
  ["Acknowledgements","misc/Acknowledgements.htm"],
  ["ACos()","Functions.htm#ACos"],
  ["activate a window","commands/WinActivate.htm"],
  ["ActiveX controls (GUI)","commands/GuiControls.htm#ActiveX"],
  ["add","commands/EnvAdd.htm"],
  ["Address of a variable","Variables.htm#amp"],
  ["administrator privileges for scripts","Variables.htm#RequireAdmin"],
  ["ahk2exe","Scripts.htm#ahk2exe"],
  ["ahk_class","misc/WinTitle.htm#ahk_class"],
  ["ahk_exe","misc/WinTitle.htm#ahk_exe"],
  ["ahk_group","misc/WinTitle.htm#ahk_group"],
  ["ahk_id","misc/WinTitle.htm#ahk_id"],
  ["ahk_pid","misc/WinTitle.htm#ahk_pid"],
  ["AllowSameLineComments","commands/_AllowSameLineComments.htm"],
  ["alnum","commands/IfIs.htm"],
  ["alpha","commands/IfIs.htm"],
  ["AltGr","Hotkeys.htm#AltGr"],
  ["AltTab","Hotkeys.htm#alttab"],
  ["AlwaysOnTop (WinSet)","commands/WinSet.htm"],
  ["append to file","commands/FileAppend.htm"],
  ["Arrays","misc/Arrays.htm"],
  ["Asc()","Functions.htm#Asc"],
  ["ASCII conversion","commands/Transform.htm"],
  ["ASin()","Functions.htm#ASin"],
  ["assigning values to variables","Variables.htm#AssignOp"],
  ["ATan()","Functions.htm#ATan"],
  ["attributes of files and folders","commands/FileGetAttrib.htm"],
  ["auto-execute section","Scripts.htm"],
  ["auto-replace text as you type it","Hotstrings.htm"],
  ["AutoIt v2 compatibility","misc/AutoIt2Compat.htm"],
  ["AutoTrim","commands/AutoTrim.htm"],
  ["balloon tip","commands/TrayTip.htm"],
  ["base (Objects)","Objects.htm#Custom_Objects"],
  ["beep the PC speaker","commands/SoundBeep.htm"],
  ["between (check if var between two values)","commands/IfBetween.htm"],
  ["Bind()","objects/Func.htm#Bind"],
  ["bitwise operations","Variables.htm#bitwise"],
  ["blind-mode Send","commands/Send.htm#blind"],
  ["BlockInput","commands/BlockInput.htm"],
  ["blocks (lines enclosed in braces)","commands/Block.htm"],
  ["BoundFunc object","objects/Functor.htm#BoundFunc"],
  ["Break","commands/Break.htm"],
  ["buffering","commands/_MaxThreadsBuffer.htm"],
  ["built-in functions","Functions.htm#BuiltIn"],
  ["built-in variables","Variables.htm#BuiltIn"],
  ["Button controls (GUI)","commands/GuiControls.htm#Button"],
  ["button list (mouse and joystick)","KeyList.htm"],
  ["button state","commands/GetKeyState.htm"],
  ["ByRef","Functions.htm#ByRef"],
  ["Call()","objects/Func.htm#Call"],
  ["callbacks","commands/RegisterCallback.htm"],
  ["case sensitive strings","commands/StringCaseSense.htm"],
  ["Catch","commands/Catch.htm"],
  ["Ceil()","Functions.htm#Ceil"],
  ["Changelog","AHKL_ChangeLog.htm"],
  ["Checkbox controls (GUI)","commands/GuiControls.htm#Checkbox"],
  ["choose file","commands/FileSelectFile.htm"],
  ["choose folder","commands/FileSelectFolder.htm"],
  ["Chr()","Functions.htm#Chr"],
  ["class (Objects)","Objects.htm#Custom_Classes"],
  ["class name of a window","commands/WinGetClass.htm"],
  ["Click a mouse button","commands/Click.htm"],
  ["Clipboard","misc/Clipboard.htm"],
  ["ClipboardAll","misc/Clipboard.htm#ClipboardAll"],
  ["ClipWait","commands/ClipWait.htm"],
  ["Clone()","objects/Object.htm#Clone"],
  ["close a window","commands/WinClose.htm"],
  ["CLSID List (My Computer, etc.)","misc/CLSID-List.htm"],
  ["color names, RGB/HTML","commands/Progress.htm#colors"],
  ["color of pixels","commands/PixelSearch.htm"],
  ["COM","commands/ComObjCreate.htm"],
  ["ComboBox controls (GUI)","commands/GuiControls.htm#ComboBox"],
  ["comma operator (multi-statement)","Variables.htm#comma"],
  ["command line parameters","Scripts.htm#cmd"],
  ["commands, alphabetical list","commands/index.htm"],
  ["CommentFlag","commands/_CommentFlag.htm"],
  ["comments in scripts","Scripts.htm#Comments"],
  ["ComObj...()","commands/ComObjActive.htm"],
  ["ComObjActive()","commands/ComObjActive.htm"],
  ["ComObjArray()","commands/ComObjArray.htm"],
  ["ComObjConnect()","commands/ComObjConnect.htm"],
  ["ComObjCreate()","commands/ComObjCreate.htm"],
  ["ComObjError()","commands/ComObjError.htm"],
  ["ComObjFlags()","commands/ComObjFlags.htm"],
  ["ComObjGet()","commands/ComObjGet.htm"],
  ["ComObjQuery()","commands/ComObjQuery.htm"],
  ["ComObjType()","commands/ComObjType.htm"],
  ["ComObjValue()","commands/ComObjValue.htm"],
  ["Compatibility","Compat.htm"],
  ["compile a script","Scripts.htm#ahk2exe"],
  ["ComSpec","Variables.htm#ComSpec"],
  ["concatenate, in expressions","Variables.htm#concat"],
  ["concatenate, script lines","Scripts.htm#continuation"],
  ["context menu (GUI)","commands/Gui.htm#GuiContextMenu"],
  ["continuation sections","Scripts.htm#continuation"],
  ["Continue","commands/Continue.htm"],
  ["Control","commands/Control.htm"],
  ["ControlClick","commands/ControlClick.htm"],
  ["ControlFocus","commands/ControlFocus.htm"],
  ["ControlGet","commands/ControlGet.htm"],
  ["ControlGetFocus","commands/ControlGetFocus.htm"],
  ["ControlGetPos","commands/ControlGetPos.htm"],
  ["ControlGetText","commands/ControlGetText.htm"],
  ["ControlMove","commands/ControlMove.htm"],
  ["ControlSend","commands/ControlSend.htm"],
  ["ControlSendRaw","commands/ControlSend.htm"],
  ["ControlSetText","commands/ControlSetText.htm"],
  ["convert a script to an EXE","Scripts.htm#ahk2exe"],
  ["coordinates","commands/CoordMode.htm"],
  ["CoordMode","commands/CoordMode.htm"],
  ["copy file","commands/FileCopy.htm"],
  ["copy folder/directory","commands/FileCopyDir.htm"],
  ["Cos()","Functions.htm#Cos"],
  ["create file","commands/FileAppend.htm"],
  ["create folder/directory","commands/FileCreateDir.htm"],
  ["Critical","commands/Critical.htm"],
  ["current directory","commands/SetWorkingDir.htm"],
  ["current thread","misc/Threads.htm"],
  ["cursor shape","Variables.htm#Cursor"],
  ["Custom controls (GUI)","commands/GuiControls.htm#Custom"],
  ["dates and times (compare)","commands/EnvSub.htm"],
  ["dates and times (math)","commands/EnvAdd.htm"],
  ["dates and times (of files)","commands/FileSetTime.htm"],
  ["DateTime controls (GUI)","commands/GuiControls.htm#DateTime"],
  ["debugger","commands/OutputDebug.htm"],
  ["debugging a script","Scripts.htm#debug"],
  ["decimal places","commands/SetFormat.htm"],
  ["delete files","commands/FileDelete.htm"],
  ["delete folder/directory","commands/FileRemoveDir.htm"],
  ["Delete()","objects/Object.htm#Delete"],
  ["Delimiter","commands/_EscapeChar.htm"],
  ["DerefChar","commands/_EscapeChar.htm"],
  ["DetectHiddenText","commands/DetectHiddenText.htm"],
  ["DetectHiddenWindows","commands/DetectHiddenWindows.htm"],
  ["dialog FileSelectFile","commands/FileSelectFile.htm"],
  ["dialog FileSelectFolder","commands/FileSelectFolder.htm"],
  ["dialog InputBox","commands/InputBox.htm"],
  ["dialog MsgBox","commands/MsgBox.htm"],
  ["digit","commands/IfIs.htm"],
  ["disk space","commands/DriveSpaceFree.htm"],
  ["divide (math)","Variables.htm#divide"],
  ["DllCall()","commands/DllCall.htm"],
  ["download a file","commands/URLDownloadToFile.htm"],
  ["DPI scaling","commands/Gui.htm#DPIScale"],
  ["drag and drop (GUI windows)","commands/Gui.htm#GuiDropFiles"],
  ["drag the mouse","commands/MouseClickDrag.htm"],
  ["Drive","commands/Drive.htm"],
  ["DriveGet","commands/DriveGet.htm"],
  ["DriveSpaceFree","commands/DriveSpaceFree.htm"],
  ["DropDownList controls (GUI)","commands/GuiControls.htm#DropDownList"],
  ["Dynamic function calls","Functions.htm#DynCall"],
  ["Edit","commands/Edit.htm"],
  ["Edit controls (GUI)","commands/GuiControls.htm#Edit"],
  ["Else","commands/Else.htm"],
  ["Enumerator object","objects/Enumerator.htm"],
  ["EnvAdd","commands/EnvAdd.htm"],
  ["EnvDiv","commands/EnvDiv.htm"],
  ["EnvGet","commands/EnvGet.htm"],
  ["environment variables","Variables.htm#env"],
  ["environment variables (change them)","commands/EnvSet.htm"],
  ["EnvMult","commands/EnvMult.htm"],
  ["EnvSet","commands/EnvSet.htm"],
  ["EnvSub","commands/EnvSub.htm"],
  ["EnvUpdate","commands/EnvUpdate.htm"],
  ["ErrorLevel","misc/ErrorLevel.htm"],
  ["ErrorStdOut","commands/_ErrorStdOut.htm"],
  ["escape sequence","commands/_EscapeChar.htm"],
  ["EscapeChar","commands/_EscapeChar.htm"],
  ["Exception()","commands/Throw.htm#Exception"],
  ["Exit","commands/Exit.htm"],
  ["ExitApp","commands/ExitApp.htm"],
  ["Exp()","Functions.htm#Exp"],
  ["expressions","Variables.htm#Expressions"],
  ["ExtractInteger -> NumGet()","commands/NumGet.htm"],
  ["False","Variables.htm#Boolean"],
  ["FAQ (Frequently Asked Questions)","FAQ.htm"],
  ["file attributes","commands/FileSetAttrib.htm"],
  ["File object","objects/File.htm"],
  ["file or folder (does it exist)","commands/IfExist.htm"],
  ["file pattern","commands/LoopFile.htm"],
  ["file, creating","commands/FileAppend.htm"],
  ["file, reading","commands/LoopReadFile.htm"],
  ["file, writing/appending","commands/FileAppend.htm"],
  ["FileAppend","commands/FileAppend.htm"],
  ["FileCopy","commands/FileCopy.htm"],
  ["FileCopyDir","commands/FileCopyDir.htm"],
  ["FileCreateDir","commands/FileCreateDir.htm"],
  ["FileCreateShortcut","commands/FileCreateShortcut.htm"],
  ["FileDelete","commands/FileDelete.htm"],
  ["FileEncoding","commands/FileEncoding.htm"],
  ["FileExist()","Functions.htm#FileExist"],
  ["FileGetAttrib","commands/FileGetAttrib.htm"],
  ["FileGetShortcut","commands/FileGetShortcut.htm"],
  ["FileGetSize","commands/FileGetSize.htm"],
  ["FileGetTime","commands/FileGetTime.htm"],
  ["FileGetVersion","commands/FileGetVersion.htm"],
  ["FileInstall","commands/FileInstall.htm"],
  ["FileMove","commands/FileMove.htm"],
  ["FileMoveDir","commands/FileMoveDir.htm"],
  ["FileOpen","commands/FileOpen.htm"],
  ["FileRead","commands/FileRead.htm"],
  ["FileReadLine","commands/FileReadLine.htm"],
  ["FileRecycle","commands/FileRecycle.htm"],
  ["FileRecycleEmpty","commands/FileRecycleEmpty.htm"],
  ["FileRemoveDir","commands/FileRemoveDir.htm"],
  ["FileSelectFile","commands/FileSelectFile.htm"],
  ["FileSelectFolder","commands/FileSelectFolder.htm"],
  ["FileSetAttrib","commands/FileSetAttrib.htm"],
  ["FileSetTime","commands/FileSetTime.htm"],
  ["Finally","commands/Finally.htm"],
  ["find a file","commands/IfExist.htm"],
  ["find a string","commands/StringGetPos.htm"],
  ["find a window","commands/WinExist.htm"],
  ["floating point (check if it is one)","commands/IfIs.htm"],
  ["floating point (SetFormat)","commands/SetFormat.htm"],
  ["Floor()","Functions.htm#Floor"],
  ["focus","commands/ControlFocus.htm"],
  ["folder/directory copy","commands/FileCopyDir.htm"],
  ["folder/directory create","commands/FileCreateDir.htm"],
  ["folder/directory move","commands/FileMoveDir.htm"],
  ["folder/directory remove","commands/FileRemoveDir.htm"],
  ["folder/directory select","commands/FileSelectFolder.htm"],
  ["Fonts","misc/FontsStandard.htm"],
  ["For-loop","commands/For.htm"],
  ["Format()","commands/Format.htm"],
  ["format (defaults)","commands/SetFormat.htm"],
  ["FormatTime","commands/FormatTime.htm"],
  ["free space","commands/DriveSpaceFree.htm"],
  ["FTP uploading example","commands/FileAppend.htm#FTP"],
  ["functions (defining and calling)","Functions.htm"],
  ["functions (libraries)","Functions.htm#lib"],
  ["Func object","objects/Func.htm"],
  ["Func()","Objects.htm#Function_References"],
  ["g-label (responding to GUI events)","commands/Gui.htm#label"],
  ["game automation","commands/PixelSearch.htm"],
  ["GetAddress()","objects/Object.htm#GetAddress"],
  ["GetCapacity()","objects/Object.htm#GetCapacity"],
  ["GetKeyName()","Functions.htm#GetKeyName"],
  ["GetKeySC()","Functions.htm#GetKeyName"],
  ["GetKeyState","commands/GetKeyState.htm"],
  ["GetKeyState()","Functions.htm#GetKeyState"],
  ["GetKeyVK()","Functions.htm#GetKeyName"],
  ["global variables in functions","Functions.htm#Global"],
  ["Gosub","commands/Gosub.htm"],
  ["Goto","commands/Goto.htm"],
  ["GroupActivate","commands/GroupActivate.htm"],
  ["GroupAdd","commands/GroupAdd.htm"],
  ["GroupBox controls (GUI)","commands/GuiControls.htm#GroupBox"],
  ["GroupClose","commands/GroupClose.htm"],
  ["GroupDeactivate","commands/GroupDeactivate.htm"],
  ["Gui","commands/Gui.htm"],
  ["Gui control types","commands/GuiControls.htm"],
  ["Gui styles reference","misc/Styles.htm"],
  ["GuiClose (label)","commands/Gui.htm#GuiClose"],
  ["GuiContextMenu (label)","commands/Gui.htm#GuiContextMenu"],
  ["GuiControl","commands/GuiControl.htm"],
  ["GuiControlGet","commands/GuiControlGet.htm"],
  ["GuiDropFiles (label)","commands/Gui.htm#GuiDropFiles"],
  ["GuiEscape (label)","commands/Gui.htm#GuiEscape"],
  ["GuiSize (label)","commands/Gui.htm#GuiSize"],
  ["HasKey()","objects/Object.htm#HasKey"],
  ["hexadecimal format","commands/SetFormat.htm"],
  ["hibernate or suspend","commands/Shutdown.htm#Suspend"],
  ["hidden text","commands/DetectHiddenText.htm"],
  ["hidden windows","commands/DetectHiddenWindows.htm"],
  ["HKEY_CLASSES_ROOT","commands/RegRead.htm"],
  ["HKEY_CURRENT_CONFIG","commands/RegRead.htm"],
  ["HKEY_CURRENT_USER","commands/RegRead.htm"],
  ["HKEY_LOCAL_MACHINE","commands/RegRead.htm"],
  ["HKEY_USERS","commands/RegRead.htm"],
  ["hook","commands/_InstallKeybdHook.htm"],
  ["Hotkey","Hotkeys.htm"],
  ["Hotkey command","commands/Hotkey.htm"],
  ["Hotkey controls (GUI)","commands/GuiControls.htm#Hotkey"],
  ["Hotkey, ListHotkeys","commands/ListHotkeys.htm"],
  ["Hotkey, other features","HotkeyFeatures.htm"],
  ["HotkeyInterval","commands/_HotkeyInterval.htm"],
  ["HotkeyModifierTimeout","commands/_HotkeyModifierTimeout.htm"],
  ["hotstrings and auto-replace","Hotstrings.htm"],
  ["HTML color names","commands/Progress.htm#colors"],
  ["HWND (of a control)","commands/ControlGet.htm#Hwnd"],
  ["HWND (of a window)","misc/WinTitle.htm#ahk_id"],
  ["icon, changing","commands/Menu.htm#Icon"],
  ["ID number for a window","commands/WinGet.htm"],
  ["If","commands/IfEqual.htm"],
  ["If (expression)","commands/IfExpression.htm"],
  ["If var [not] between Low and High","commands/IfBetween.htm"],
  ["If var [not] in/contains MatchList","commands/IfIn.htm"],
  ["If var is [not] type","commands/IfIs.htm"],
  ["IfEqual","commands/IfEqual.htm"],
  ["IfExist","commands/IfExist.htm"],
  ["IfGreater","commands/IfEqual.htm"],
  ["IfGreaterOrEqual","commands/IfEqual.htm"],
  ["IfInString","commands/IfInString.htm"],
  ["IfLess","commands/IfEqual.htm"],
  ["IfLessOrEqual","commands/IfEqual.htm"],
  ["IfMsgBox","commands/IfMsgBox.htm"],
  ["IfNotEqual","commands/IfEqual.htm"],
  ["IfNotExist","commands/IfExist.htm"],
  ["IfNotInString","commands/IfInString.htm"],
  ["IfWinActive","commands/WinActive.htm"],
  ["IfWinExist","commands/WinExist.htm"],
  ["IfWinNotActive","commands/WinActive.htm"],
  ["IfWinNotExist","commands/WinExist.htm"],
  ["IL_Add()","commands/ListView.htm#IL_Add"],
  ["IL_Create()","commands/ListView.htm#IL_Create"],
  ["IL_Destroy()","commands/ListView.htm#IL_Destroy"],
  ["Image Lists (GUI)","commands/ListView.htm#IL"],
  ["ImageSearch","commands/ImageSearch.htm"],
  ["Include","commands/_Include.htm"],
  ["infrared remote controls","scripts/WinLIRC.htm"],
  ["IniDelete","commands/IniDelete.htm"],
  ["IniRead","commands/IniRead.htm"],
  ["IniWrite","commands/IniWrite.htm"],
  ["Input","commands/Input.htm"],
  ["InputBox","commands/InputBox.htm"],
  ["Insert()","objects/Object.htm#Insert"],
  ["InsertAt()","objects/Object.htm#InsertAt"],
  ["InsertInteger -> NumPut()","commands/NumPut.htm"],
  ["Install","commands/FileInstall.htm"],
  ["Installer Options","Scripts.htm#install"],
  ["InstallKeybdHook","commands/_InstallKeybdHook.htm"],
  ["InstallMouseHook","commands/_InstallMouseHook.htm"],
  ["InStr()","Functions.htm#InStr"],
  ["integer (check if it is one)","commands/IfIs.htm"],
  ["integer (SetFormat)","commands/SetFormat.htm"],
  ["Interrupt","commands/Thread.htm"],
  ["IsByRef()","Functions.htm#IsByRef"],
  ["IsFunc()","Functions.htm#IsFunc"],
  ["IsLabel()","Functions.htm#IsLabel"],
  ["IsObject()","Objects.htm"],
  ["Join (continuation sections)","Scripts.htm#Join"],
  ["Joystick","KeyList.htm#Joystick"],
  ["JScript, embedded/inline","commands/DllCall.htm#COM"],
  ["key list (keyboard, mouse, joystick)","KeyList.htm"],
  ["key state","commands/GetKeyState.htm"],
  ["keyboard hook","commands/_InstallKeybdHook.htm"],
  ["KeyHistory","commands/KeyHistory.htm"],
  ["keystrokes, sending","commands/Send.htm"],
  ["KeyWait","commands/KeyWait.htm"],
  ["labels","misc/Labels.htm"],
  ["last found window","misc/WinTitle.htm#LastFoundWindow"],
  ["length of a string","commands/StringLen.htm"],
  ["Length()","objects/Object.htm#Length"],
  ["libraries of functions","Functions.htm#lib"],
  ["license","license.htm"],
  ["line continuation","Scripts.htm#continuation"],
  ["ListBox controls (GUI)","commands/GuiControls.htm#ListBox"],
  ["ListHotkeys","commands/ListHotkeys.htm"],
  ["ListLines","commands/ListLines.htm"],
  ["ListVars","commands/ListVars.htm"],
  ["ListView controls (GUI)","commands/ListView.htm"],
  ["ListView, getting text from","commands/ControlGet.htm#List"],
  ["Ln()","Functions.htm#Ln"],
  ["lnk (link/shortcut) file","commands/FileCreateShortcut.htm"],
  ["local variables","Functions.htm#Locals"],
  ["Locale","commands/StringCaseSense.htm#Locale"],
  ["Log()","Functions.htm#Log"],
  ["logarithm, log()","Functions.htm#Log"],
  ["logoff","commands/Shutdown.htm"],
  ["long file name (converting to)","commands/LoopFile.htm#LoopFileLongPath"],
  ["Loop","commands/Loop.htm"],
  ["Loop (until)","commands/Until.htm"],
  ["Loop (while)","commands/While.htm"],
  ["Loop, Reg (registry)","commands/LoopReg.htm"],
  ["Loop, Files and folders","commands/LoopFile.htm"],
  ["Loop, Parse a string","commands/LoopParse.htm"],
  ["Loop, Read file contents","commands/LoopReadFile.htm"],
  ["lParam","commands/PostMessage.htm"],
  ["LTrim (continuation sections)","Scripts.htm#LTrim"],
  ["LTrim()","commands/Trim.htm"],
  ["LV_Add()","commands/ListView.htm#LV_Add"],
  ["LV_Delete()","commands/ListView.htm#LV_Delete"],
  ["LV_DeleteCol()","commands/ListView.htm#LV_DeleteCol"],
  ["LV_GetCount()","commands/ListView.htm#LV_GetCount"],
  ["LV_GetNext()","commands/ListView.htm#LV_GetNext"],
  ["LV_GetText()","commands/ListView.htm#LV_GetText"],
  ["LV_Insert()","commands/ListView.htm#LV_Insert"],
  ["LV_InsertCol()","commands/ListView.htm#LV_InsertCol"],
  ["LV_Modify()","commands/ListView.htm#LV_Modify"],
  ["LV_ModifyCol()","commands/ListView.htm#LV_ModifyCol"],
  ["LV_SetImageList()","commands/ListView.htm#LV_SetImageList"],
  ["macro","misc/Macros.htm"],
  ["math operations (expressions)","Variables.htm#Expressions"],
  ["MaxHotkeysPerInterval","commands/_MaxHotkeysPerInterval.htm"],
  ["MaxIndex()","objects/Object.htm#MinMaxIndex"],
  ["MaxThreads","commands/_MaxThreads.htm"],
  ["MaxThreadsBuffer","commands/_MaxThreadsBuffer.htm"],
  ["MaxThreadsPerHotkey","commands/_MaxThreadsPerHotkey.htm"],
  ["Menu","commands/Menu.htm"],
  ["Menu Bar (GUI)","commands/Gui.htm#Menu"],
  ["Menu Icon","commands/Menu.htm#MenuIcon"],
  ["message list (WM_*)","misc/SendMessageList.htm"],
  ["messages, receiving","commands/OnMessage.htm"],
  ["messages, sending","commands/PostMessage.htm"],
  ["meta-functions (Objects)","Objects.htm#Meta_Functions"],
  ["MinIndex()","objects/Object.htm#MinMaxIndex"],
  ["Mod()","Functions.htm#Mod"],
  ["modal (always on top)","commands/MsgBox.htm"],
  ["modulo, mod()","Functions.htm#Mod"],
  ["MonthCal controls (GUI)","commands/GuiControls.htm#MonthCal"],
  ["mouse hook","commands/_InstallMouseHook.htm"],
  ["mouse speed","commands/SetDefaultMouseSpeed.htm"],
  ["mouse wheel","commands/Click.htm"],
  ["MouseClick","commands/MouseClick.htm"],
  ["MouseClickDrag","commands/MouseClickDrag.htm"],
  ["MouseGetPos","commands/MouseGetPos.htm"],
  ["MouseMove","commands/MouseMove.htm"],
  ["move a window","commands/WinMove.htm"],
  ["move file","commands/FileMove.htm"],
  ["move folder/directory","commands/FileMoveDir.htm"],
  ["MsgBox","commands/MsgBox.htm"],
  ["multiply","commands/EnvMult.htm"],
  ["mute (changing it)","commands/SoundSet.htm"],
  ["NewEnum()","objects/Object.htm#NewEnum"],
  ["NoTimers","commands/Thread.htm"],
  ["NoTrayIcon","commands/_NoTrayIcon.htm"],
  ["number","commands/IfIs.htm"],
  ["number format","commands/SetFormat.htm"],
  ["NumGet","commands/NumGet.htm"],
  ["NumPut","commands/NumPut.htm"],
  ["Objects (general information)","Objects.htm"],
  ["Object functions and methods","objects/Object.htm"],
  ["ObjAddRef()","commands/ObjAddRef.htm"],
  ["ObjBindMethod()","commands/ObjBindMethod.htm"],
  ["ObjClone()","objects/Object.htm#Clone"],
  ["ObjDelete()","objects/Object.htm#Delete"],
  ["ObjGetAddress()","objects/Object.htm#GetAddress"],
  ["ObjGetCapacity()","objects/Object.htm#GetCapacity"],
  ["ObjHasKey()","objects/Object.htm#HasKey"],
  ["ObjInsert()","objects/Object.htm#Insert"],
  ["ObjInsertAt()","objects/Object.htm#InsertAt"],
  ["ObjLength()","objects/Object.htm#Length"],
  ["ObjMaxIndex()","objects/Object.htm#MinMaxIndex"],
  ["ObjMinIndex()","objects/Object.htm#MinMaxIndex"],
  ["ObjNewEnum()","objects/Object.htm#NewEnum"],
  ["ObjPop()","objects/Object.htm#Pop"],
  ["ObjPush()","objects/Object.htm#Push"],
  ["ObjRawSet()","objects/Object.htm#RawSet"],
  ["ObjRelease()","commands/ObjAddRef.htm"],
  ["ObjRemove()","objects/Object.htm#Remove"],
  ["ObjRemoveAt()","objects/Object.htm#RemoveAt"],
  ["ObjSetCapacity()","objects/Object.htm#SetCapacity"],
  ["OnClipboardChange","commands/OnClipboardChange.htm"],
  ["OnExit","commands/OnExit.htm"],
  ["OnMessage()","commands/OnMessage.htm"],
  ["open file","commands/FileReadLine.htm"],
  ["operators in expressions","Variables.htm#Operators"],
  ["Ord()","Functions.htm#Ord"],
  ["OutputDebug","commands/OutputDebug.htm"],
  ["OwnDialogs (GUI)","commands/Gui.htm#OwnDialogs"],
  ["Owner of a GUI window","commands/Gui.htm#Owner"],
  ["parameters passed into a script","Scripts.htm#cmd"],
  ["parse a string (Loop)","commands/LoopParse.htm"],
  ["parse a string (StringSplit)","commands/StringSplit.htm"],
  ["Pause","commands/Pause.htm"],
  ["performance of scripts","misc/Performance.htm"],
  ["Picture controls (GUI)","commands/GuiControls.htm#Picture"],
  ["PID (Process ID)","commands/Process.htm"],
  ["PixelGetColor","commands/PixelGetColor.htm"],
  ["PixelSearch","commands/PixelSearch.htm"],
  ["play a sound or video file","commands/SoundPlay.htm"],
  ["Pop()","objects/Object.htm#Pop"],
  ["PostMessage","commands/PostMessage.htm"],
  ["power (exponentiation)","Variables.htm#pow"],
  ["prefix and suffix keys","Hotkeys.htm"],
  ["print a file","commands/Run.htm"],
  ["priority of a process","commands/Process.htm"],
  ["priority of a thread","commands/Thread.htm"],
  ["Process","commands/Process.htm"],
  ["ProgramFiles","Variables.htm#ProgramFiles"],
  ["Progress","commands/Progress.htm"],
  ["Progress controls (GUI)","commands/GuiControls.htm#Progress"],
  ["properties (Objects)","Objects.htm#Custom_Classes_property"],
  ["properties of a file or folder","commands/Run.htm"],
  ["Push()","objects/Object.htm#Push"],
  ["quit script","commands/ExitApp.htm"],
  ["Radio controls (GUI)","commands/GuiControls.htm#Radio"],
  ["Random","commands/Random.htm"],
  ["read file","commands/FileReadLine.htm"],
  ["READONLY","commands/FileGetAttrib.htm"],
  ["reboot","commands/Shutdown.htm"],
  ["Reference-Counting","Objects.htm#Refs"],
  ["REG_BINARY","commands/RegRead.htm"],
  ["REG_DWORD","commands/RegRead.htm"],
  ["REG_EXPAND_SZ","commands/RegRead.htm"],
  ["REG_MULTI_SZ","commands/RegRead.htm"],
  ["REG_SZ","commands/RegRead.htm"],
  ["RegDelete","commands/RegDelete.htm"],
  ["RegEx: Quick Reference","misc/RegEx-QuickRef.htm"],
  ["RegEx: Callouts","misc/RegExCallout.htm"],
  ["RegEx: SetTitleMatchMode RegEx","commands/SetTitleMatchMode.htm#RegEx"],
  ["RegExMatch()","commands/RegExMatch.htm"],
  ["RegExReplace()","commands/RegExReplace.htm"],
  ["RegisterCallback()","commands/RegisterCallback.htm"],
  ["registry loop","commands/LoopReg.htm"],
  ["RegRead","commands/RegRead.htm"],
  ["Regular Expression Callouts","misc/RegExCallout.htm"],
  ["regular expressions: Quick Reference","misc/RegEx-QuickRef.htm"],
  ["regular expressions: RegExMatch()","commands/RegExMatch.htm"],
  ["regular expressions: RegExReplace()","commands/RegExReplace.htm"],
  ["regular expressions: SetTitleMatchMode RegEx","commands/SetTitleMatchMode.htm#RegEx"],
  ["RegWrite","commands/RegWrite.htm"],
  ["Reload","commands/Reload.htm"],
  ["remap joystick","misc/RemapJoystick.htm"],
  ["remap keys or mouse buttons","misc/Remap.htm"],
  ["remote controls, hand-held","scripts/WinLIRC.htm"],
  ["remove folder/directory","commands/FileRemoveDir.htm"],
  ["Remove()","objects/Object.htm#Remove"],
  ["RemoveAt()","objects/Object.htm#RemoveAt"],
  ["rename file","commands/FileMove.htm"],
  ["resize a window","commands/WinMove.htm"],
  ["restart the computer","commands/Shutdown.htm"],
  ["Return","commands/Return.htm"],
  ["RGB color names","commands/Progress.htm#colors"],
  ["RGB colors","commands/PixelGetColor.htm"],
  ["Round()","Functions.htm#Round"],
  ["rounding a number","Functions.htm#Round"],
  ["RTrim()","commands/Trim.htm"],
  ["Run","commands/Run.htm"],
  ["RunAs","commands/RunAs.htm"],
  ["RunWait","commands/Run.htm"],
  ["SB_SetIcon()","commands/GuiControls.htm#SB_SetIcon"],
  ["SB_SetParts()","commands/GuiControls.htm#SB_SetParts"],
  ["SB_SetText()","commands/GuiControls.htm#SB_SetText"],
  ["scan code","commands/Send.htm#vk"],
  ["scientific notation","commands/SetFormat.htm#sci"],
  ["Script Showcase","scripts/index.htm"],
  ["Scripts","Scripts.htm"],
  ["select file","commands/FileSelectFile.htm"],
  ["select folder","commands/FileSelectFolder.htm"],
  ["Send","commands/Send.htm"],
  ["SendEvent","commands/Send.htm#SendEvent"],
  ["sending data between scripts","commands/OnMessage.htm#SendString"],
  ["SendInput","commands/Send.htm#SendInputDetail"],
  ["SendLevel","commands/SendLevel.htm"],
  ["SendMessage","commands/PostMessage.htm"],
  ["SendMode","commands/SendMode.htm"],
  ["SendPlay","commands/Send.htm#SendPlayDetail"],
  ["SendRaw","commands/Send.htm"],
  ["SetBatchLines","commands/SetBatchLines.htm"],
  ["SetCapacity()","objects/Object.htm#SetCapacity"],
  ["SetCapsLockState","commands/SetNumScrollCapsLockState.htm"],
  ["SetControlDelay","commands/SetControlDelay.htm"],
  ["SetDefaultMouseSpeed","commands/SetDefaultMouseSpeed.htm"],
  ["SetEnv","commands/SetEnv.htm"],
  ["SetFormat","commands/SetFormat.htm"],
  ["SetKeyDelay","commands/SetKeyDelay.htm"],
  ["SetMouseDelay","commands/SetMouseDelay.htm"],
  ["SetNumLockState","commands/SetNumScrollCapsLockState.htm"],
  ["SetRegView","commands/SetRegView.htm"],
  ["SetScrollLockState","commands/SetNumScrollCapsLockState.htm"],
  ["SetStoreCapslockMode","commands/SetStoreCapslockMode.htm"],
  ["SetTimer","commands/SetTimer.htm"],
  ["SetTitleMatchMode","commands/SetTitleMatchMode.htm"],
  ["SetWinDelay","commands/SetWinDelay.htm"],
  ["SetWorkingDir","commands/SetWorkingDir.htm"],
  ["short file name (8.3 format)","commands/LoopFile.htm#LoopFileShortPath"],
  ["short-circuit boolean evaluation","Functions.htm#ShortCircuit"],
  ["shortcut file","commands/FileCreateShortcut.htm"],
  ["Shutdown","commands/Shutdown.htm"],
  ["Silent Install/Uninstall","Scripts.htm#install"],
  ["Sin()","Functions.htm#Sin"],
  ["SingleInstance","commands/_SingleInstance.htm"],
  ["size of a file/folder","commands/FileGetSize.htm"],
  ["size of a window","commands/WinGetPos.htm"],
  ["Sleep","commands/Sleep.htm"],
  ["Slider controls (GUI)","commands/GuiControls.htm#Slider"],
  ["Sort","commands/Sort.htm"],
  ["SoundBeep","commands/SoundBeep.htm"],
  ["SoundGet","commands/SoundGet.htm"],
  ["SoundGetWaveVolume","commands/SoundGetWaveVolume.htm"],
  ["SoundPlay","commands/SoundPlay.htm"],
  ["SoundSet","commands/SoundSet.htm"],
  ["SoundSetWaveVolume","commands/SoundSetWaveVolume.htm"],
  ["space","commands/IfIs.htm"],
  ["speed of a script","commands/SetBatchLines.htm"],
  ["spinner control (GUI)","commands/GuiControls.htm#UpDown"],
  ["SplashImage","commands/Progress.htm"],
  ["SplashTextOff","commands/SplashTextOn.htm"],
  ["SplashTextOn","commands/SplashTextOn.htm"],
  ["SplitPath","commands/SplitPath.htm"],
  ["splitting long lines","Scripts.htm#continuation"],
  ["Sqrt()","Functions.htm#Sqrt"],
  ["standard library","Functions.htm#lib"],
  ["standard output (stdout)","commands/FileAppend.htm"],
  ["static variables","Functions.htm#static"],
  ["StatusBar controls (GUI)","commands/GuiControls.htm#StatusBar"],
  ["StatusBarGetText","commands/StatusBarGetText.htm"],
  ["StatusBarWait","commands/StatusBarWait.htm"],
  ["StrGet()","commands/StrPutGet.htm"],
  ["string (search for)","Functions.htm#InStr"],
  ["string: InStr()","Functions.htm#InStr"],
  ["string: SubStr()","Functions.htm#SubStr"],
  ["StringCaseSense","commands/StringCaseSense.htm"],
  ["StringGetPos","commands/StringGetPos.htm"],
  ["StringLeft","commands/StringLeft.htm"],
  ["StringLen","commands/StringLen.htm"],
  ["StringLower","commands/StringLower.htm"],
  ["StringMid","commands/StringMid.htm"],
  ["StringReplace","commands/StringReplace.htm"],
  ["StringRight","commands/StringLeft.htm"],
  ["StringSplit","commands/StringSplit.htm"],
  ["StringTrimLeft","commands/StringTrimLeft.htm"],
  ["StringTrimRight","commands/StringTrimLeft.htm"],
  ["StringUpper","commands/StringLower.htm"],
  ["StrLen()","commands/StringLen.htm"],
  ["StrPut()","commands/StrPutGet.htm"],
  ["StrReplace()","commands/StringReplace.htm"],
  ["StrSplit()","commands/StringSplit.htm"],
  ["structures, via DllCall","commands/DllCall.htm#struct"],
  ["styles for GUI command","misc/Styles.htm"],
  ["SubStr()","Functions.htm#SubStr"],
  ["subtract","commands/EnvSub.htm"],
  ["Super-global variables","Functions.htm#SuperGlobal"],
  ["Suspend","commands/Suspend.htm"],
  ["suspend or hibernate","commands/Shutdown.htm#Suspend"],
  ["SysGet","commands/SysGet.htm"],
  ["Tab controls (GUI)","commands/GuiControls.htm#Tab"],
  ["Tan()","Functions.htm#Tan"],
  ["terminate a window","commands/WinKill.htm"],
  ["terminate script","commands/ExitApp.htm"],
  ["ternary operator (?:)","Variables.htm#ternary"],
  ["Text controls (GUI)","commands/GuiControls.htm#Text"],
  ["Thread","commands/Thread.htm"],
  ["threads","misc/Threads.htm"],
  ["Throw","commands/Throw.htm"],
  ["time","commands/IfIs.htm"],
  ["Timer (timed subroutines)","commands/SetTimer.htm"],
  ["times and dates (compare)","commands/EnvSub.htm"],
  ["times and dates (math)","commands/EnvAdd.htm"],
  ["times and dates (of files)","commands/FileSetTime.htm"],
  ["title of a window","commands/WinSetTitle.htm"],
  ["ToolTip","commands/ToolTip.htm"],
  ["Transform","commands/Transform.htm"],
  ["transparency of a window","commands/WinSet.htm#trans"],
  ["tray icon","commands/_NoTrayIcon.htm"],
  ["tray menu (customizing)","commands/Menu.htm"],
  ["TrayTip","commands/TrayTip.htm"],
  ["TreeView controls (GUI)","commands/TreeView.htm"],
  ["Trim","commands/AutoTrim.htm"],
  ["Trim()","commands/Trim.htm"],
  ["True","Variables.htm#Boolean"],
  ["Try","commands/Try.htm"],
  ["Tutorial","Tutorial.htm"],
  ["TV_Add()","commands/TreeView.htm#TV_Add"],
  ["TV_Delete()","commands/TreeView.htm#TV_Delete"],
  ["TV_Get()","commands/TreeView.htm#TV_Get"],
  ["TV_GetChild()","commands/TreeView.htm#TV_GetChild"],
  ["TV_GetCount()","commands/TreeView.htm#TV_GetCount"],
  ["TV_GetNext()","commands/TreeView.htm#TV_GetNext"],
  ["TV_GetParent()","commands/TreeView.htm#TV_GetParent"],
  ["TV_GetPrev()","commands/TreeView.htm#TV_GetPrev"],
  ["TV_GetSelection()","commands/TreeView.htm#TV_GetSelection"],
  ["TV_GetText()","commands/TreeView.htm#TV_GetText"],
  ["TV_Modify()","commands/TreeView.htm#TV_Modify"],
  ["TV_SetImageList()","commands/TreeView.htm#TV_SetImageList"],
  ["Unicode text and clipboard","commands/Transform.htm"],
  ["Until","commands/Until.htm"],
  ["UpDown controls (GUI)","commands/GuiControls.htm#UpDown"],
  ["URLDownloadToFile","commands/URLDownloadToFile.htm"],
  ["UseHook","commands/_UseHook.htm"],
  ["user (run as a different user)","commands/RunAs.htm"],
  ["user library","Functions.htm#lib"],
  ["variables, assigning to","commands/SetEnv.htm"],
  ["variables, built-in","Variables.htm#BuiltIn"],
  ["variables, comparing them","commands/IfEqual.htm"],
  ["variables, ListVars","commands/ListVars.htm"],
  ["variables, MAIN","Variables.htm"],
  ["variables, type of data","commands/IfIs.htm"],
  ["variadic functions","Functions.htm#Variadic"],
  ["variants (duplicate hotkeys and hotstrings)","commands/_IfWinActive.htm#variant"],
  ["VarSetCapacity()","commands/VarSetCapacity.htm"],
  ["VBScript, embedded/inline","commands/DllCall.htm#COM"],
  ["version of a file","commands/FileGetVersion.htm"],
  ["virtual key","commands/Send.htm#vk"],
  ["volume (changing it)","commands/SoundSet.htm"],
  ["wait (sleep)","commands/Sleep.htm"],
  ["wait for a key to be released or pressed","commands/KeyWait.htm"],
  ["Wheel hotkeys for mouse","Hotkeys.htm#Wheel"],
  ["Wheel, simulating rotation","commands/Click.htm"],
  ["While-loop","commands/While.htm"],
  ["whitespace","commands/AutoTrim.htm"],
  ["wildcards (for files & folders)","commands/LoopFile.htm"],
  ["WinActivate","commands/WinActivate.htm"],
  ["WinActivateBottom","commands/WinActivateBottom.htm"],
  ["WinActivateForce","commands/_WinActivateForce.htm"],
  ["WinActive()","commands/WinActive.htm"],
  ["Winamp automation","misc/Winamp.htm"],
  ["WinClose","commands/WinClose.htm"],
  ["window group","misc/WinTitle.htm#ahk_group"],
  ["window messages","misc/SendMessageList.htm"],
  ["WinExist()","commands/WinExist.htm"],
  ["WinGet","commands/WinGet.htm"],
  ["WinGetActiveStats","commands/WinGetActiveStats.htm"],
  ["WinGetActiveTitle","commands/WinGetActiveTitle.htm"],
  ["WinGetClass","commands/WinGetClass.htm"],
  ["WinGetPos","commands/WinGetPos.htm"],
  ["WinGetText","commands/WinGetText.htm"],
  ["WinGetTitle","commands/WinGetTitle.htm"],
  ["WinHide","commands/WinHide.htm"],
  ["WinKill","commands/WinKill.htm"],
  ["WinLIRC, connecting to","scripts/WinLIRC.htm"],
  ["WinMaximize","commands/WinMaximize.htm"],
  ["WinMenuSelectItem","commands/WinMenuSelectItem.htm"],
  ["WinMinimize","commands/WinMinimize.htm"],
  ["WinMinimizeAll","commands/WinMinimizeAll.htm"],
  ["WinMinimizeAllUndo","commands/WinMinimizeAll.htm"],
  ["WinMove","commands/WinMove.htm"],
  ["WinRestore","commands/WinRestore.htm"],
  ["WinSet","commands/WinSet.htm"],
  ["WinSetTitle","commands/WinSetTitle.htm"],
  ["WinShow","commands/WinShow.htm"],
  ["WinSize (via WinMove)","commands/WinMove.htm"],
  ["WinTitle","misc/WinTitle.htm"],
  ["WinWait","commands/WinWait.htm"],
  ["WinWaitActive","commands/WinWaitActive.htm"],
  ["WinWaitClose","commands/WinWaitClose.htm"],
  ["WinWaitNotActive","commands/WinWaitActive.htm"],
  ["WM_* (Windows messages)","misc/SendMessageList.htm"],
  ["WM_COPYDATA","commands/OnMessage.htm#SendString"],
  ["working directory","commands/SetWorkingDir.htm"],
  ["wParam","commands/PostMessage.htm"],
  ["write file","commands/FileAppend.htm"],
  ["WS_* (GUI styles)","misc/Styles.htm"],
  ["XButton","commands/Click.htm"],
  ["YYYYMMDDHH24MISS","commands/FileSetTime.htm#YYYYMMDD"],
  ["{Blind}","commands/Send.htm#blind"]
];

translate = {
  hdSearchTxt: "Enter search term ...",
  hdSearchBtn: "Search",
  hdSearchLnk: "http://www.google.com/cse?cx=010629462602499112316:ywoq_rufgic&q={0}",
  sbContent: "Content",
  sbIndex: "Index",
  ftLicense: "License:",
  ftExtra: "",
  cdSelectBtn: "Select",
  cdDownloadBtn: "Download",
  verToolTipAHK_L: "Applies to:\nAutoHotkey_L Revision {0} and later\nAutoHotkey v1.0.90.00 and later",
  verToolTipDefault: "Applies to AutoHotkey {0} and later",
  tutLocalMessage: "Since you're viewing this documentation locally, you've probably already installed AutoHotkey and can skip to section b."
};
if (!IsInsideCHM() && !IsSearchBot())
{
  BuildStructure();
  AddContent();
}
$(document).ready(AddChmAndOnlineFeatures);

function GetWorkingDir() 
{
  var wDir = '';
  var pathArray = GetScriptDir().split('/');
  for (i = 0; i < pathArray.length - 1; i++)
    wDir += pathArray[i] + "/";
  return wDir.substr(0, wDir.lastIndexOf('/'));
}

function GetScriptDir()
{
  var scriptPath = '';
  var scriptEls = document.getElementsByTagName('script');
  for (i = 0; i < scriptEls.length; i++)
    if (scriptEls[i].src)
      scriptPath = scriptEls[i].src;
  return scriptPath.substr(0, scriptPath.lastIndexOf('/'));
}

function BuildStructure()
{
  var wDir = GetWorkingDir();
  var header  = '<div class="header"><table class="hdr-table"><tr><td class="hdr-image"><a href="' + wDir + '/"><img src="' + wDir + '/static/ahk_logo_no_text.png" width="217" height="70" alt="AutoHotkey"></a></td><td class="hdr-search"><form id="search-form"><input id="q" size="30" type="text" placeholder="' + translate.hdSearchTxt + '"></form><div id="search-btn">' + translate.hdSearchBtn + '</div></td><td class="hdr-language"><ul><li>Language<ul class="second"><li id="lng-btn-en">English</li><li id="lng-btn-de">Deutsch</li><li id="lng-btn-cn">&#20013;&#25991;</li></ul></li></ul></td></tr></table></div>';
  var main_1  = '<div class="main-content"><div id="app-body"><div id="headerbar"></div><div class="left-col"><ul class="nav"><li id="sb_content" class="selected"><span>' + translate.sbContent + '</span></li><li id="sb_index"><span>' + translate.sbIndex + '</span></li></ul><div id="sidebar"></div><div id="keywords" style="display: none;"><input id="IndexEntry" type="text"><select id="indexcontainer" name="IndexListbox" class="docstyle" size="20"></select></div></div><div class="right-col"><div id="main-content">';
  var main_2  = '</div></div><div class="float-clear"></div></div></div>';
  var footer  = '<div class="footer"><b>Copyright</b> &copy; 2003-' + new Date().getFullYear() + ' ' + location.host + ' - <span id="ftLicense">' + translate.ftLicense + '</span> <a href="' + wDir + '/license.htm">GNU General Public License</a><span id="ftExtra">' + translate.ftExtra + '</span></div>';
  document.write(header + main_1);
  $(document).ready(function() { $('body').append(main_2 + footer); });
}

function AddContent()
{
  $(window).unload(function () { $(window).unbind('unload'); }); // disable firefox's bfcache

  $(document).ready(function() {
    var wDir = GetWorkingDir();
    var relPath = location.href.replace(wDir + '/', '');

    //
    // set last used state of sidebar
    //

    (window.name == 2) ? ShowIndex() : ShowTOC();

    //
    // on events for sidebar buttons
    //

    $('#sb_content').on('click', function() { ShowTOC(); });
    $('#sb_index').on('click', function() { ShowIndex(); });

    //
    // on events for search field + button
    //

    $('.header #search-btn').on('click', function() {
      var query = $(".header #q").val();
      document.location = translate.hdSearchLnk.format(query);
    });

    $('.header #search-form').on('submit', function(event) {
        event.preventDefault();
        var query = $(".header #q").val();
        document.location = translate.hdSearchLnk.format(query);
    });

    //
    // Hide logo
    //

    $('#ahklogo').hide();

    //
    // Headings
    //

    // Change display of h1 header

    $('h1').attr("class", "navh1");

    // Provide anchor link

    $('h1, h2, h3, h4, h5, h6').each(function(index) {

      // Show paragraph sign on mouseover

      $(this).hover(
        function() {
          $(this).append("<span style='color:#888;font-size:smaller;'> &para;</span>");
        }, function() {
          $(this).find("span:last").remove();
        }
      );

      // Add anchor

      if(!$(this).attr('id')) // if id anchor not exist, create one
      {
        
        var str = $(this).text().replace(/\s/g, '_'); // replace spaces with _
        var str = str.replace(/[():.,;'#\[\]\/{}&="|?!]/g, ''); // remove special chars
        if($('#' + str).length) // if new id anchor exist already, set it to a unique one
          $(this).attr('id', str + '_' + index);
        else
          $(this).attr('id', str);
      }
      $(this).wrap('<a href="#' + $(this).attr('id') + '" style="text-decoration:none;color:#000"></a>');
    });

    //
    // language button
    //

    var en = 'http://ahkscript.org/docs/';
    var de = 'http://ragnar-f.github.io/docs/';
    var cn = 'http://ahkcn.sourceforge.net/docs/';

    $('#lng-btn-en').on('click', function() { document.location = en + relPath; } );
    $('#lng-btn-de').on('click', function() { document.location = de + relPath; } );
    $('#lng-btn-cn').on('click', function() { document.location = cn + relPath; } );

    $('.hdr-table .hdr-language').find('li').mouseenter(function() {
      $(this).children('ul').show();
      $(this).addClass('selected');
      $(this).mouseleave(function() {
        $(this).children('ul').hide();
        $(this).removeClass('selected');
      });
    });

    //
    // Create toc sidebar
    //

    var node_matched = [];

    $('#sidebar').tree({
      data:             toc,
      useContextMenu:   false,
      keyboardSupport:  false,
      saveState:        false,
      onCanSelectNode:  function(node) {
        if ((node.children.length) && (!node.path))
            return false;
        else
            return true;
      },
      onCreateLi:       function(node, $li) {
        if (node.path == relPath)
        {
          node_matched.push(node);
        }
      }
    });

    $('#sidebar').bind('tree.click', function(event) {
      var node = event.node;
      $(this).tree('toggle', node);
      if (node.path)
        window.location = wDir + "/" + node.path;
    });

    //
    // pre-select toc sidebar item
    //

    for (var i = 0, len = node_matched.length; i < len; i++)
    {
      $('#sidebar').tree('addToSelection', node_matched[i]);
      $('#sidebar').tree('openNode', node_matched[i]);
      $('#sidebar').tree('openNode', node_matched[i].parent);
    }

    //
    // Create keyword list sidebar
    //

    var newContent = '';

    index.sort(function(a, b) {
      var textA = a[0].toLowerCase(), textB = b[0].toLowerCase()
      return textA.localeCompare(textB);
    });

    for (var i = 0, len = index.length; i < len; i++)
    {
      newContent += '<option value="' + index[i][1] + '">' + index[i][0] + '</option>';
    };

    $("#indexcontainer").html(newContent);
    
    //
    // Make keyword list fill and follow the viewport
    //
    
    var nav = $('ul.nav')[0];
    (function(top) {
      var wasFixed, margin;
      function scrolled() {
        var fixed = $(window).scrollTop() > top;
        if (fixed != wasFixed) {
          if (wasFixed = fixed) {
            $('#keywords').css({position: 'fixed', top: '8px'});
            $('#IndexEntry').css('display', 'block');
            margin = 8 + 20 + 44;
          } else {
            $('#keywords').css({position: '', top: ''});
            $('#IndexEntry').css('display', '');
            margin = top + 20 + 8;
          }
          resized();
        }
      }
      function resized() {
        var ic = $('#indexcontainer');
        // Child height seems to always return 0 on IE, so calculate it this way:
        var itemHeight = ic.height() / (ic.attr('size') || 1);
        ic.attr('size', ~~(($(window).height() - margin) / itemHeight));
      }
      $(window).on({scroll: scrolled, resize: resized});
      scrolled();
    })(nav.offsetTop + nav.offsetHeight);
    
    //
    // pre-select keyword list sidebar item
    //

    var sb_index_lastselected = $('[value="' + relPath + '"]').index() + 1;
    var sb_index_item_last = $('#indexcontainer :nth-child(' + sb_index_lastselected + ')');
    sb_index_item_last.prop('selected', true);

    //
    // select closest listbox entry while typing
    //

    $("#IndexEntry").on('keyup', function() {
      var oList = $('#indexcontainer')[0];
      var ListLen = oList.length;
      var iCurSel = oList.selectedIndex; 
      var text = $("#IndexEntry").val().toLowerCase();
      var TextLen = text.length;
      if (!text) return
      for (var i = 0; i < ListLen; i++) { 
        var listitem = oList.item(i).text.substr(0, TextLen).toLowerCase(); 
        if (listitem == text) { 
          if (i != iCurSel) { 
            var iPos = i + oList.size - 1; 
            if(ListLen > iPos) 
              oList.selectedIndex = iPos; 
            else 
              oList.selectedIndex = ListLen-1; 
            oList.selectedIndex = i; 
          } 
          break; 
        } 
      } 
    });

    //
    // open document when pressing enter or select item
    //

    $("#indexcontainer, #IndexEntry").on('keydown dblclick', function(event) {
      if ((event.which && event.which==13) || (event.keyCode && event.keyCode==13) || (event.type == 'dblclick')) {
        var iSelect = document.getElementById("indexcontainer").selectedIndex;
        if (iSelect >= 0) {
          var URL = document.getElementById("indexcontainer").item(iSelect).value;
          if (URL.length > 0) {
            window.location = wDir + '/' + URL;
          }
        }
      }
    });
  });
};

function AddChmAndOnlineFeatures()
{
  // Make all external links open a new tab/window.
  $("a[href^='http']").attr('target', '_blank');
  
  (function() {
    var templ = $('<a class="ver"></a>');
    $('span.ver').each(function(idx, el) {
      // Give each version annotation a link to the changelog.
      var jel = $(el);
      var m, title, href, text = jel.text();
      if (m = /AHK_L (\d+)\+/.exec(text)) {
        title = translate.verToolTipAHK_L.format(m[1]);
        href = '/AHKL_ChangeLog.htm#L' + m[1];
        text = text.replace(m[0], 'v1.0.90+'); // For users who don't know what AHK_L was.
      } else if (m = /v\d\.\d\.(\d+\.)?\d+/.exec(text)) {
        title = translate.verToolTipDefault.format(m[0]);
        if (!m[1])
          m[0] = m[0] + '.00';
        if (m[0] <= 'v1.0.48.05')
          href = '/ChangeLogHelp.htm#' + m[0];
        else
          href = '/AHKL_ChangeLog.htm#' + m[0];
      } else return;
      jel.replaceWith(templ.clone(true)
        .attr('title', title)
        .attr('href', GetWorkingDir() + href)
        .text(text)
        );
    });
  })();
  
  //
  // Add useful features for code boxes
  //

  // Show select and download buttons in lower right corner of a pre box

  var divStyle = {fontSize: "11px", float: "right"};
  var aStyle = {cursor: "pointer", color: $("a:not([href=])").css("color")};
  var selectLink = $('<a id="selectCode">').text(translate.cdSelectBtn).css(aStyle);
  var downloadLink = $('<a id="downloadCode">').text(translate.cdDownloadBtn).css(aStyle);

  $('pre').each(function(index) {
    if ($(this).is(".Syntax")) {
      $.extend(divStyle, {marginTop: "-32px", marginRight: "7px"});
      $(this).after($('<div>').css(divStyle).prepend(selectLink.clone()));
    }
    else {
      $.extend(divStyle, {marginTop: "-28px", marginRight: "28px"});
      $(this).after($('<div>').css(divStyle).prepend(selectLink.clone(), [' | ', downloadLink.clone()]));
    }
  });

  // Select complete code when clicking

  $('a#selectCode').each(function(index) {
    $(this).on('click', function(e) {
      var doc = document
        , text = $(this).parent().prev('pre')[0]
        , range, selection
      ;
      if (doc.body.createTextRange) {
        range = document.body.createTextRange();
        range.moveToElementText(text);
        range.select();
      } else if (window.getSelection) {
        selection = window.getSelection();        
        range = document.createRange();
        range.selectNodeContents(text);
        selection.removeAllRanges();
        selection.addRange(range);
      }
    });
  });

  // Download complete code when clicking

  $('a#downloadCode').each(function(index) {
    $(this).on('click', function(e) {
      var textToWrite = '\ufeff' + $(this).parent().prev('pre').text().replace(/\n/g, "\r\n");
      var textFileAsBlob = new Blob([textToWrite], {type:'text/csv'});
      var fileNameToSaveAs = location.pathname.match(/([^\/]+)(?=\.\w+$)/)[0] + "-Script.ahk";

      var downloadLink = document.createElement("a");
      downloadLink.download = fileNameToSaveAs;
      downloadLink.innerHTML = "Download File";

      if (window.webkitURL != null) {
        // Chrome
        downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
        downloadLink.click();
      }
      else if (navigator.userAgent.indexOf("Trident")>-1) {
        // IE 10+
        navigator.msSaveBlob(textFileAsBlob, fileNameToSaveAs)
      }
      else {
        // Firefox
        downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
        downloadLink.style.display = "none";
        document.body.appendChild(downloadLink);
        downloadLink.click();
      }
    });
  });
}

function ShowTOC()
{
  window.name = 1;
  $('#sb_content').attr('class', 'selected');
  $('#sb_index').removeAttr('class');
  $('#keywords').hide();
  $('#sidebar').fadeIn();
}

function ShowIndex()
{
  window.name = 2;
  $('#sb_index').attr('class', 'selected');
  $('#sb_content').removeAttr('class');
  $('#sidebar').hide();
  $('#keywords').fadeIn();
  $(window).trigger('resize');
}

function IsInsideCHM()
{
  return (location.href.search(/::/) > 0) ? 1 : 0;
}

function IsSearchBot()
{
  return navigator.userAgent.match(/googlebot|bingbot|slurp/i);
}

String.prototype.format = function() {
  var args = arguments;
  return this.replace(/\{(\d+)\}/g, function(m, n) { return args[n]; });
};
