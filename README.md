# mardrinks

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

If this throws an error similar to the one below run the `fswatch_error_tempfix.sh` script as root.

```
INFO  Starting development server...
10% building modules 1/1 modules 0 activeevents.js:183                              
     throw er; // Unhandled 'error' event
     ^

Error: watch /path/to/directory/mardrinks/public ENOSPC
   at FSWatcher.start (fs.js:1382:19)
   at Object.fs.watch (fs.js:1408:11)
   at createFsWatchInstance (/path/to/directory/mardrinks/node_modules/chokidar/lib/nodefs-handler.js:37:15)
   at setFsWatchListener (/path/to/directory/mardrinks/node_modules/chokidar/lib/nodefs-handler.js:80:15)
   at FSWatcher.NodeFsHandler._watchWithNodeFs (/path/to/directory/mardrinks/node_modules/chokidar/lib/nodefs-handler.js:232:14)
   at FSWatcher.NodeFsHandler._handleDir (/path/to/directory/mardrinks/node_modules/chokidar/lib/nodefs-handler.js:414:19)
   at FSWatcher.<anonymous> (/path/to/directory/mardrinks/node_modules/chokidar/lib/nodefs-handler.js:462:19)
   at FSWatcher.<anonymous> (/path/to/directory/mardrinks/node_modules/chokidar/lib/nodefs-handler.js:467:16)
   at FSReqWrap.oncomplete (fs.js:153:5)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! mardrinks@0.1.0 serve: `vue-cli-service serve`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the mardrinks@0.1.0 serve script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```
