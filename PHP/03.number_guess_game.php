<?php
$rnum = rand(1, 10);
$attempts = 0;
echo "Guess a number between 1 and 10\n";
while (true) {
    $gnum = (int) readline("Your number :: ");
    $attempts++;
    if ($gnum == $rnum) {
        echo "Congratulation ! You won the game in $attempts attempts.\n";
        break;
    } elseif ($rnum > $gnum) {
        echo "Your number is too low.\n";
    } else {
        echo "Your number is too high. \n";
    }
}

?>
