<?php
    require ('database.php'); 
    
    $nome = $_POST["inputName"]; //name do input
    $email = $_POST["inputEmail4"];
    $senha = $_POST["inputPassword4"];
    $enderco = $_POST["inputAddress"];
    $cidade = $_POST["inputCity"];
    $estado = $_POST["inputState"];
    $tel = $_POST["inputZip"];
    

    // echo $. "<br>";
    // echo $email. "<br>";
    // echo $category. "<br>"; //só para exibir os dados na tela
    // echo $enderco. "<br>";
    // echo $classification. "<br>";

    try {
        $stmt = $conn->prepare("INSERT INTO cadastropessoa (nome, email, senha, enderco, cidade, estado, telefone)
        VALUES (:inputName, :inputEmail4 , :inputPassword4, :inputAddress, :inputCity, :inputState, :inputZip)");
        $stmt->bindParam(':inputName', $nome);
        $stmt->bindParam(':inputEmail4', $email);
        $stmt->bindParam(':inputPassword4', $senha);
        $stmt->bindParam(':inputAddress', $enderco);
        $stmt->bindParam(':inputCity', $cidade);
        $stmt->bindParam(':inputState', $estado);
        $stmt->bindParam(':inputZip', $tel);

        $stmt->execute();
        // echo "Cadastro com sucesso!";
        $id = $conn->lastInsertId();

        $result["success"]["message"] = "Cadastrado com sucesso!"; //criamos o array para devolver o resultado do insert numa mensagem de sucesso.

        $result["data"]["id"] = $id; //criamos o array para devolver o resultado do insert com os dados inseridos.
        $result["data"]["inputName"] = $nome;
        $result["data"]["inputEmail4"] = $email;
        $result["data"]["inputPassword4"] = $senha;
        $result["data"]["inputAddress"] = $enderco;
        $result["data"]["inputCity"] = $cidade;
        $result["data"]["inputState"] = $estado;
        $result["data"]["inputZip"] = $tel;

        header('Content-Type: Text/json'); //para ser enviado no formato json.
        echo json_encode($result); //exibir o resultado.

    } catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }
?>