<?php
$fnum = (float) readline("Enter first number :: ");
$operator = readline("Enter an operator (+,-,*,/) :: ");
$snum = (float) readline("Enter second number :: ");
switch ($operator) {
    case "+":
        echo "The result : " . ($fnum + $snum) . "\n";
        break;
    case "-":
        echo "The result : " . ($fnum - $snum) . "\n";
        break;
    case "*":
        echo "The result : " . $fnum * $snum . "\n";
        break;
    case "/":
        if ($snum != 0) {
            echo "The result : " . $fnum / $snum . "\n";
        } else {
            echo "Invalid calculation";
        }
        break;
    default:
        echo "Invalid operator";
}
?>
