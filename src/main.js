const fs = require('fs');
const spawn = require('child_process').spawnSync;

fs.watch("/repo/rpms", { persistent: true, recursive: false, encoding: "UTF-8" }, (eventType, filename) => {
  spawn("createrepo", ["-o", "/repo", "/repo/rpms"]);
});
