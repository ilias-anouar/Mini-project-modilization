<?php
include "connect.php";

$json_file = file_get_contents('formateur.json');
$formateur = json_decode($json_file, true);
foreach ($formateur as $one) {

    echo "<pre>";
    var_dump($one);
    echo "</pre>";

    $nom = $one['nom'];
    $prenom = $one['prenom'];
    $email = $one['email'];
    $competences = $one['competences'];
    $password = $one['password'];

    $hash_pass = password_hash($password, PASSWORD_BCRYPT);

    echo $hash_pass;

    $sql = "INSERT INTO `formateur`(`nom`, `prenom`, `email`, `competences`, `password`) VALUES ('$nom','$prenom','$email','$competences','$hash_pass')";

    $conn->exec($sql);
}

$conn = null;


?>