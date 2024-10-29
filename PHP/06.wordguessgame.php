<?php
$words = ["apple", "grape", "coconut", "orange", "banana"];
$word = $words[array_rand($words)];
$encrypted = str_shuffle($word);
echo "Encrypted word :: $encrypted\n";
$guess = readline("Your guess :: ");
if ($guess == $word) {
    echo "You win\n";
} else {
    echo "You lose ! The correct word is $word\n";
}
?>
