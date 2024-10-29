<?php
$pass = readline("Enter your password :: ");
if (strlen($pass) < 8) {
    echo "Weak password, too short.\n";
} elseif (!preg_match("/[A-z]/", $pass)) {
    echo "Weak password, missing letter.\n";
} elseif (!preg_match("/[0-9]/", $pass)) {
    echo "Weak password, missing number.\n";
} else {
    echo "Perfect password";
}
?>
