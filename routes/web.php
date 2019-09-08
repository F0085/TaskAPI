<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
// $router->get('/', function () use ($router) {
//     return $router->app->version();
// });





//#########################  GESTIÓN USUARIOS ################################//
	
	//CRUD TABLA USUARIOS
	route::resource('Usuarios', 'UsuariosController');

	//CRUD TABLA AREA
	route::resource('Area', 'AreaController');

	//CRUD TABLA ROLES
	route::resource('Roles', 'RolesController');

	//CRUD TABLA ROLES
	route::resource('AreasRoles', 'AreasRolesController');

	//LISTA LAS AREAS CON LOS ROLES
	route::get('ListAreaRoles', 'AreasRolesController@AreasRoles');
	route::get('ListAreaRoles2', 'AreasRolesController@AreasRolestabla');

	//ROLES POR IDAREA PARA LOS SELECT DEL REGISTRO DE USUARIOS
	route::get('RolesArId/{AR}', 'AreasRolesController@AreasRolesID');

	//LOGIN CON EL EMAIL Y CONTRASEÑA
	route::post('Login', 'UsuariosController@Login');


	//REGISTRAR EN LA TABLA USUARIOS ROLES 
	route::resource('UsuariosRoles', 'UsuariosRolesController');
	// route::put('StoreUserRoles', 'RolesController@UsuarioRolesAtc');



	route::resource('Tareas', 'TareasController');
	
	route::resource('Responsables', 'ResponsablesController');
	route::resource('Participantes', 'ParticipantesController');
	route::resource('Observadores', 'ObservadoresController');


	//EXTRAE LAS AREAS DE LAS RELACIONES DE AREASROLES
	route::get('disntinArea', 'AreasRolesController@AreasRolesDistinct');

	//EXTRAE LAS AREAS DE LAS RELACIONES DE AREASROLES
	route::get('UserRoles/{area}/{rol}', 'GestioUsuariosController@UsuarioRoles');


