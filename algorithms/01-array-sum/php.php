<?php
function sum_array(array &$arr, int $n): int {
    $sum = 0;
    for ($i = 0; $i < $n; $i++) {
        $sum += $arr[$i];
    }
    return $sum;
}

$arr = array(1, 2, 3, 4, 10, 11);
$n = 6;
$sum =  sum_array($arr, $n);
echo $sum . "\n";
echo array_sum($arr). "\n";
echo array_reduce($arr, function($a, $c) { return $a + $c; }) . "\n";
?>
