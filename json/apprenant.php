<?php
include "connect.php";

$json_file = file_get_contents('apprenant.json');
$apprenant = json_decode($json_file, true);
foreach ($apprenant as $one) {

    echo "<pre>";
    var_dump($one);
    echo "</pre>";

    $name = $one['name'];
    $prenom = $one['prenom'];
    $email = $one['email'];
    $password = $one['password'];

    $hash_pass = password_hash($password, PASSWORD_BCRYPT);

    echo $hash_pass;

    $sql = "INSERT INTO `apprenant_`(`nom_`, `prenom`, `email`, `password`) VALUES ('$name','$prenom','$email','$hash_pass')";

    $conn->exec($sql);
}

$conn = null;


?>