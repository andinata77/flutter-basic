<?php

$connection = new mysqli("localhost", "root", "", "db_crud_flutter");

$id = $_POST['id'];

$result = mysqli_query($connection, "DELETE FROM tb_note_app WHERE id='$id'");

if($result) {
    echo json_encode(['message' => 'Data delete successfully']);
} else {
    echo json_encode(['message' => 'Data Failed to delete']);
}

?>
