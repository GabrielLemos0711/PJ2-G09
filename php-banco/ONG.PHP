<?php
    require ('database.php'); 
    
    $nome = $_POST["nome"]; //name do input
    $email = $_POST["email"];
    $CNPJ = $_POST["CNPJ/CPF"];
    $senha = $_POST["senha"];
   
    

    // echo $. "<br>";
    // echo $email. "<br>";
    // echo $category. "<br>"; //só para exibir os dados na tela
    // echo $senha. "<br>";
    // echo $classification. "<br>";

    try {
        $stmt = $conn->prepare("INSERT INTO ongs (Nome ONG, CNPJ, email,  senha)
        VALUES (:nome, :email , :CNPJ/CPF, :senha)");
        $stmt->bindParam(':nome', $nome);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':CNPJ/CPF', $CNPJ);
        $stmt->bindParam(':senha', $senha);
        $stmt->execute();
        // echo "Cadastro com sucesso!";
        $id = $conn->lastInsertId();

        $result["success"]["message"] = "Cadastrado com sucesso!"; //criamos o array para devolver o resultado do insert numa mensagem de sucesso.

        $result["data"]["nome"] = $nome;
        $result["data"]["email"] = $email;
        $result["data"]["CNPJ/CPF"] = $CNPJ;
        $result["data"]["senha"] = $senha;

        header('Content-Type: Text/json'); //para ser enviado no formato json.
        echo json_encode($result); //exibir o resultado.

    } catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }
?>