import {runAppleScript} from 'run-applescript';

const result = await runAppleScript('return "unicorn"');

console.log(result);
//=> 'unicorn'