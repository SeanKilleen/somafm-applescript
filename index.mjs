import {runAppleScript} from 'run-applescript';

const result = await runAppleScript('return "unicorn2"');

console.log(result);
//=> 'unicorn'