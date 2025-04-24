"use strict"

const assert = require("node:assert/strict");


const array_sum = (arr) => {
    let sum = 0;
    for (let el of arr) {
        sum += el;
    }
    return sum;
}

    

const arr = [1, 2, 3, 4, 10, 11];

const imper_res = array_sum(arr);
const funct_res =  arr.reduce((a, c) => a + c);

assert.equal(imper_res, 31);
assert.equal(funct_res, 31);
