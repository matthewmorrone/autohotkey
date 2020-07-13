const fs = require('fs')
const utils = require('./utils.js')
const args = process.argv.slice(2)


let dir = args[0] || "~"
let oldPwd = args[1]
let newPwd = args[2]
let depth = 6

fs.define("walkSync", function(dir, filelist, depth=1) {
    filelist = filelist || []
    let files = fs.getFolder(dir)
    files.each(function(file) {
        filelist.push(dir + '/' + file)
        if (depth === 0) return
        // // if (file.includes("node_modules")) return
        if (!fs.statSync(dir + '/' + file).isDirectory()) {
            try {
                if (file.split('.').pop() === "zip") return
                let contents = fs.getFile(dir + '/' + file)
                if(contents.indexOf(oldPwd) >= 0){
                    console.log("found! ", dir + '/' + file)
                    // console.log(contents.replace(oldPwd, newPwd))
                    fs.setFile(dir + '/' + file, contents.replace(oldPwd, newPwd))
                }
            }
            catch (e) {}
        }
        else {
            filelist.concat(fs.walkSync(dir + '/' + file, filelist, depth-1))
        }
    })
    return filelist;
})


let root = fs.walkSync(dir, [], depth)
// console.log(root)