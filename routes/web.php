<?php

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['prefix'=>'persona'], function($router){
	$router->get('/all','PersonaController@index');
	$router->post('/create','PersonaController@createPersona');
});

$router->group(['prefix'=>'anuncios'], function($router){
	$router->get('/all','AnuncioController@index');
	$router->get('/get/{consulta}','AnuncioController@getAnuncio');	
	$router->post('/create','AnuncioController@createAnuncio');
	$router->post('/modify/{id}','AnuncioController@modifyAnuncio');
	$router->post('/delete/{id}','AnuncioController@deleteAnuncio');
});

$router->group(['prefix'=>'postulaciones'], function($router){
	$router->get('/all','PostulacionController@index');
	$router->get('/get/{id}','PostulacionController@getPostulacion');
	$router->post('/create','PostulacionController@createPostulacion');
	$router->post('/delete/{id}','PostulacionController@deletePostulacion');
});

$router->group(['prefix'=>'usuarios'], function($router){
	$router->post('/ingresar','UserController@login');
	$router->post('/cerrar_sesion','UserController@logout');	
});