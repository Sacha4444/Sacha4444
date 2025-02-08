// Code ci-dessous:

/* let age = parseInt(prompt('age'));

if (age <= 18 && age >= 12) {
	console.log('bienvenue à TUMO !');
} else if (age < 12) {
	console.log('Tu est trop petit pour venir à TUMO');
} else {
	console.log('Part');
} */

let a = parseFloat(prompt('Premier nombre'));
let b = parseFloat(prompt('Deuxième nombre'));
let signe = prompt('Choisi une opération (+ - / *)');
let c;
let résultat = true;

if (signe == '+') {
	c = a + b;
} else if (signe == '-') {
	c = a - b;
} else if (signe == '/' && b == 0) {
	console.log('Tu ne peux pas diviser par 0');
	résultat = false;
} else if (signe == '/' && b != 0) {
	c = a / b;
} else if (signe == '*') {
	c = a * b;
}
if (résultat == true) {
	console.log(c);
}
