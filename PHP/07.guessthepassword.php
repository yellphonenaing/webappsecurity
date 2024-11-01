<?php
function check_places($password){
    $letters = ['l','Y','h','K','c','M'];
    $numbers = [7,5,12,15,14,3];
    $count = count($numbers);
    while($count != 0){
        $count--;
        if($letters[$count] != mb_substr($password,$numbers[$count]-1,1)){
            return "Try again.\n";
        }
        
        if(mb_substr($password,7,1) == (mb_substr($password,5,1)+(-2)) && mb_substr($password,5,1) == mb_substr($password,15,1) && mb_substr($password,1,1) == (mb_substr($password,5,1)+mb_substr($password,15,1))){
            echo "You won the game.\n";exit();
        }

       
    }
}
function check_middle($password){
    if(mb_substr($password,8,1)  == base64_decode(strrev('==QI'))){
    check_places($password);
    }
    return "Try again.\n";
}
function check_numbers($password){
    if(mb_substr($password,1,1) == ((0.7+0.8)*4) && mb_substr($password,3,1) == ((mb_substr($password,1,1)%2)+2.5+5.2+1)-(0.3*9)){
        check_at($password);
    }
    return "Try again.\n";
}
function check_begin_end($password){
    if(str_starts_with($password,'M') && str_ends_with($password,'R')){
        check_numbers($password);
    }
    return "Try again.\n";
}
function check_at($password){
    if(substr_count($password,'@') == 2){
        check_middle($password);
    }
    return "Try again.\n";
}
function check_password($password){
    if(strlen($password) === 17){
        check_numbers($password);
    }
    echo "Try again.\n";
    return false;
}
echo "Guess the password Game\n";
while(true){
    $password = readline("Enter password :: \n");
    if(check_password($password)){
        echo "You won the game.\n";break;
    }
}
?>
