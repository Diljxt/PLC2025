// Function to generate an array of integers from a to b
function arrFunc(a, b) {
    let arr = [];
    for (let i = a; i <= b; i++) {
        arr.push(i);
    }
    return arr;
}

// Function to compute sum or average
function applicatorFunc(inpFunc, a, b, s) {
    const arr = inpFunc(a, b); // Generate array using inpFunc
    let sum = arr.reduce((acc, val) => acc + val, 0);
    return s === 's' ? sum : sum / arr.length; // Compute sum or average
}

// Take user input
const a = parseInt(prompt("Enter the starting number (a):"));
const b = parseInt(prompt("Enter the ending number (b):"));
const s = prompt("Enter 's' for sum or any other character for average:");

// Call the function and display the result
const result = applicatorFunc(arrFunc, a, b, s);
console.log("Result =", result);
