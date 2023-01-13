import {runAppleScript} from 'run-applescript';
const { readFile } = require('fs/promises')

async function content(path) {  
    return await readFile(path, 'utf8')
  }

  const text = await content('./test.applescript')  
const result = await runAppleScript(text);

console.log(result);
//=> 'unicorn'