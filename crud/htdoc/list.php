<?php

$connection = new mysqli("localhost", "root", "", "db_crud_flutter");
$data = mysqli_query($connection, "SELECT * FROM tb_note_app");
$data = mysqli_fetch_all($data, MYSQLI_ASSOC);

echo json_encode($data);
?>
