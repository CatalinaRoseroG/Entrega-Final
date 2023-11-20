<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "petrescue"; 

// Obtener los datos del formulario de inicio de sesión
$nombreUsuario = $_POST['Nombre'];
$contrasena = $_POST['Contraseña'];


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Consulta SQL para verificar los datos de inicio de sesión
$sql = "SELECT * FROM usuarios WHERE Nombre = '$nombreUsuario' AND contraseña = '$contrasena'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Los datos de inicio de sesión son válidos
    echo "Usuario encontrado"; 
} else {
    // Los datos de inicio de sesión son inválidos
    echo "Usuario no encontrado"; 
}

$conn->close();
?>


