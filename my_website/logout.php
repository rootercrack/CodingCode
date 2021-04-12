<?php
session_start();
//session_destroy();
unset($_SESSION['MEMBER']);
//landing page
header('location:http://localhost/my_website/index.php?hal=home');