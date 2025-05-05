"use strict"

const assert = require("node:assert/strict");


let array_sum: (arr: number[]) => number;
array_sum =  (arr) => {
    let sum: number = 0;
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
