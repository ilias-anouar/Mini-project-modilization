<?php
include "connect.php";

$json_file = file_get_contents('formation.json');
$formation = json_decode($json_file, true);
foreach ($formation as $one) {

    echo "<pre>";
    var_dump($one);
    echo "</pre>";

    $sujet = $one['sujet'];
    $categorie = $one['categorie'];
    $masse_horaire = $one['masse horaire'];


    $sql = "INSERT INTO `formation_`(`sujet`, `categorie`, `masse_horaire`) VALUES ('$sujet','$categorie','$masse_horaire')";
    $conn->exec($sql);
}

$conn = null;


?>