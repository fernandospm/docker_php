<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>¿Qué es Docker?</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 50px;
        }
        h1 {
            color: #0073e6;
        }
        img {
            width: 300px;
            height: auto;
            
        }
        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #0073e6;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <h1>¿Qué es Docker?</h1>
    <p>Docker es una plataforma de código abierto que automatiza el despliegue de aplicaciones dentro de contenedores de software, proporcionando una capa adicional de abstracción y automatización de virtualización a nivel de sistema operativo.</p>
    
    <img src="data:image/png;base64,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" alt="Logo de Docker">
    
    <br><br>
    
    <a class="btn" href="contacto.php">Contacto </a>

</body>
</html>
