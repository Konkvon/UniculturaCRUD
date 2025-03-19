<?php
//Este programa é para executar a operação consulta do api
 include 'AlunosService.php';
 include 'LoginService.php';
 //cabeçalho para retornar os dados em formato JSON na saida
 header("Content-Type: application/json; charset=UTF-8");
 header("Content-Type: application/json; charset=UTF-8;");    
 header("Access-Control-Allow-Origin: *");  // Necessário para a mesma máquina (localhost)  

 header("Access-Control-Allow-Methods: GET,POST,PUT,DELETE");
 header("Access-Control: no-cache, no-store, must-revalidate");
 header("Access-Control-Allow-Headers: *");
 header("Access-Control-Max-Age: 86400");
 //Variável $_GET[] é para pegar URL ou link
 if ($_GET['url']){
    $url = explode('/', $_GET['url']);
    if ($url[0]==='api'){
        array_shift($url);
        $service = ucfirst($url[0]).'Service';
        array_shift($url);

        $method = strtolower($_SERVER['REQUEST_METHOD']);

        try{
            $response = call_user_func_array(array(new $service, $method),$url);
            http_response_code(200);
            echo json_encode(array('status' => 'sucess','information' => $response));
        }
        catch(Exception $e){
            http_response_code(400);
            echo json_encode(array('status' => 'error','information'=> $e->getMessage()));
        }
    }
 }




?>