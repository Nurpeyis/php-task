<?php
    include_once 'db.php';
    include_once 'users.php';

    $errors = [];
    $success = '';
    $login =  '';
    $password = '';

    if ($_POST) {
        $login = $_POST['login'];
        $password = $_POST['password'];

        if (strlen($login) < 6) {
            array_push($errors, 'Поле login должен содержать минимум 6 символов');
        }
        if (strlen($password) < 6) {
            array_push($errors, 'Поле password должен содержать минимум 6 символов');
        }

        if (count($errors) == 0) {
            $db = new Db;
            $db->connect();

            $users = new Users;
            $success = $users->addUser($login, $password);
        }
    }
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<div class="container mt-4">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <?php
                foreach ($errors as $error) :
            ?>
                <div class="alert alert-danger" role="alert"><?php echo $error; ?></div>
            <?php endforeach; ?>
            <form action="" method="post">
                <div class="form-group">
                    <label for="login">Login</label>
                    <input type="text" name="login" class="form-control" id="login" value="<?php echo $login; ?>" placeholder="Enter login">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" id="password" value="<?php echo $password; ?>" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Registration</button>
            </form>
            <?php if ($success != '') : ?>
                <br>
                <div class="alert alert-success" role="alert">
                    <?php print_r($success); ?>
                </div>
            <?php endif; ?>
        </div>
    </div>
</div>
</body>
</html>