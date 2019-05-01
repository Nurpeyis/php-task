<?php

class Users extends Db
{
    public function getAll()
    {
        $stmt = $this->connect()->prepare('SELECT * FROM users');
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($results, JSON_PRETTY_PRINT);
    }

    public function addUser($login, $password)
    {
        $stmt = $this->connect()->prepare('INSERT INTO users (login, password) VALUES (?,?)');

        if ($stmt->execute([$login, md5($password)])) {

            $stmt = $this->connect()->prepare('SELECT id, login FROM users ORDER BY id DESC LIMIT 1');
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return json_encode($results, JSON_PRETTY_PRINT);
        }
    }

    public function auth($login, $password)
    {
        $stmt = $this->connect()->prepare('SELECT id FROM users WHERE login=? AND password=?');
        $stmt->execute([$login, md5($password)]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}