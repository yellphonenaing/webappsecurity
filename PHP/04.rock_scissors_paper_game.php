<?php
$choices = ["rock", "scissors", "paper"];
$computerchoice = $choices[array_rand($choices)];
function play($computerchoice, $playerchoice)
{
    if ($computerchoice == $playerchoice) {
        echo "It's a tie !\n";
        exit();
    }
    if (
        ($playerchoice == "rock" && $computerchoice == "scissors") ||
        ($playerchoice == "scissors" && $computerchoice == "paper") ||
        ($playerchoice == "paper" && $computerchoice == "rock")
    ) {
        echo "You win!\n";
    } else {
        echo "You lose!\n";
    }
}
$playerchoice = strtolower(readline("Choose rock,scissors or paper :: "));
if (in_array($playerchoice, $choices)) {
    echo "Computer choice :: $computerchoice\n";
    play($computerchoice, $playerchoice);
} else {
    echo "Invalid choice\n";
}
?>
