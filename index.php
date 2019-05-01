<?php
include_once 'db.php';
include_once 'users.php';

$users = new Users;
$users->getAll();
?>
<hr>
<a href="/login.php" class="btn btn-primary">Войти</a>
<a href="/add.php" class="btn btn-primary">Зарегистрироваться</a>