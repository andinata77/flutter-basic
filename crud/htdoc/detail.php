<?php

$connection = new mysqli("localhost", "root", "", "db_crud_flutter");
$data = mysqli_query($connection, "SELECT * FROM tb_note_app WHERE id=" . $_GET['id']);
$data = mysqli_fetch_array($data, MYSQLI_ASSOC);

echo json_encode($data);
?>
