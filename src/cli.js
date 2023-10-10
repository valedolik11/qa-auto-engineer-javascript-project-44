import readlineSync from 'readline-sync';
 
export const vopros = (name) =>{
var name = readlineSync.question('May I have your name? ');
console.log('Hello, ' + name + '!');
}
