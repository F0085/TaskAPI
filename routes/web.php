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
header('Access-Control-Allow-Headers: Content-Type, x-xsrf-token');
// $router->get('/', function () use ($router) {
//     return $router->app->version();
// });





//#########################  GESTIÓN USUARIOS ################################//
	route::get('buscarUsuario/{correo}', 'UsuariosController@buscarUsuario');
	route::get('buscarUsuarioPreparar/{cedula}', 'UsuariosController@buscarUsuarioPreparar');

	//CRUD TABLA USUARIOS
	route::resource('Usuarios', 'UsuariosController');

	//CRUD TABLA AREA
	route::resource('Area', 'AreaController');

	//CRUD TABLA ROLES
	route::resource('Roles', 'RolesController');

	// //CRUD TABLA ROLES
	// route::resource('AreasRoles', 'AreasRolesController');

	//LISTA LAS AREAS CON SUBAREAS Y ROLES PARA EL ORGANIGRAMA
	route::get('Organigrama', 'OrganigramaController@Organigrama');
	route::get('ListAreaRoles2', 'OrganigramaController@AreasRolestabla');

	//ROLES POR IDAREA PARA LOS SELECT DEL REGISTRO DE USUARIOS
	// route::get('RolesArId/{AR}', 'AreasRolesController@AreasRolesID');

	//LOGIN CON EL EMAIL Y CONTRASEÑA
	route::post('Login', 'UsuariosController@Login');


	//REGISTRAR EN LA TABLA USUARIOS ROLES 
	route::resource('UsuariosRoles', 'UsuariosRolesController');
	// route::put('StoreUserRoles', 'RolesController@UsuarioRolesAtc');

	//BANDEJA DE ENTRADA DE TAREAS PPOR USUARIO
	route::get('MisTareasResponsables/{idUsuario}', 'TareasController@MisTareasResponsables');
	route::get('MisTareasParticipantes/{idUsuario}', 'TareasController@MisTareasParticipantes');
	route::get('MisTareasObservadores/{idUsuario}', 'TareasController@MisTareasObservadores');

	//SUBAREAS
	route::resource('SubArea', 'SubAreaController');
	route::get('AreaSubArea', 'SubAreaController@AreaSubArea');
	route::get('SubAreaPorArea/{area}', 'RolesController@SubAreaPorArea');
	route::get('RolesPorSubArea/{subarea}', 'RolesController@RolesPorSubArea');

	
	

	
	route::resource('Responsables', 'ResponsablesController');
	route::resource('Participantes', 'ParticipantesController');
	route::resource('Observadores', 'ObservadoresController');

	//TAREAS
	route::resource('Tareas', 'TareasController');

	//CREADAS POR MI
	route::get('TareasEstado/{estado}/{idUsuario}', 'TareasController@TareasEstado');

	//PARA TRAER LOS TIPOS DE TAREAS
	route::resource('TipoTareas','TipoTareasController');

   //PARA TRAER EL TIPO DE TAREA PERSONAL Y LABORAL
	route::get('TipoTareasPerTra','TipoTareasController@TipoTareasPerTra');

	//TAREAS POR TIPO DE TAREAS PERSONAL O LABORAL CON EL ESTADO DE PENDIENTE ETC
	route::get('TareasPorTipo/{estado}/{tipo}/{idUsuario}','TareasController@TareasPorTipo');

	route::get('TareasPorTipoPendiente/{estado}/{tipo}/{idUsuario}','TareasController@TareasPorTipoPendiente');
	

	//TRAER TAREAS PERSONALES
	route::get('TareasPersonales/{idUsuario}','TareasController@TareasPersonales');

	//PARA SABER SI TIENE TAREAS PENDIENTES
	route::get('TareasPendientesPorTareas/{idtareas}/{idUsuario}','TareasController@TareasPendientesPorTareas');
	route::get('tareasCPM/{estado}/{idUsuario}','TareasController@tareasCPM');


	//PARA TRAER LAS OBSERVACIONES DE TAREAS
	route::resource('Observaciones', 'ObservacionController');
	
	//DOCUMENTOS
	route::resource('Documento', 'DocumentoController');

	//REUNION
	route::resource('Reunion', 'ReunionController');

	// //EXTRAE LAS AREAS DE LAS RELACIONES DE AREASROLES
	// route::get('disntinArea', 'AreasRolesController@AreasRolesDistinct');

	// //EXTRAE LAS AREAS DE LAS RELACIONES DE AREASROLES
	// route::get('UserRoles/{area}/{rol}', 'GestioUsuariosController@UsuarioRoles');


	//REUNIONES
	//CREADAS POR MI
	route::get('ReunionPorEstado_User/{estado}/{idUsuario}', 'ReunionController@ReunionPorEstado_User');

	route::get('MisReunionesResponsables/{idUsuario}', 'ReunionController@MisReunionesResponsables');
	route::get('MisReunionesParticipantes/{idUsuario}', 'ReunionController@MisReunionesParticipantes');

	route::resource('Reunio_Participante', 'Reunio_Participante_Controller');
	route::resource('Reunio_Responsable', 'Reunio_Responsable_Controller');
	route::PUT('ActualizarAsistencia/{Id_Usuario}/{IdReunion}', 'Reunio_Participante_Controller@ActualizarAsistencia');
	// route::PUT('ActualizarAsistenciaResponsable/{Id_Usuario}/{IdReunion}', 'Reunio_Participante_Controller@ActualizarAsistencia');

	//PARA TRAER LAS OBSERVACIONES DE REUNIONES
	route::resource('ObservacionesReuniones', 'ObservacionReunionController');

	

	//ADMINISTRADOR
	route::get('TareasAdministrador/{estado}', 'TareasController@TareasAdministrador');

	route::get('TareasEstadoAdministrador/{estado}', 'TareasController@TareasEstadoAdministrador');

	route::get('TotalTareasResponsables/{Id_Usuario}', 'TareasController@TotalTareasResponsables');


	//DOCUMENTOS POR USUARIOS
	route::get('DocPorUsuarios/{Id_Usuario}', 'DocumentoController@DocPorUsuarios');
	

	route::get('TareasReporte/{estado}', 'TareasController@TareasReporte');

	route::get('Reporteshow/{id}', 'TareasController@Reporteshow');
	route::get('ReporteReunionshow/{id}', 'ReunionController@ReporteReunionshow');
	


	route::get('EfectividadPorMeses/{Id_Usuario}/{Anio}/{Mes}', 'TareasController@EfectividadPorMeses');

	route::get('EfectividadPorMesesPersonales/{Id_Usuario}/{Anio}/{Mes}', 'TareasController@EfectividadPorMesesPersonales');

	
	route::get('TotalTareasResponsablesLaboral/{Id_Usuario}/{Anio}/{Mes}', 'TareasController@TotalTareasResponsablesLaboral');

	route::get('TotalTareasResponsablesPersonal/{Id_Usuario}/{Anio}/{Mes}', 'TareasController@TotalTareasResponsablesPersonal');


	route::get('TotalTareasAdmin', 'TareasController@TotalTareasAdmin');

	route::get('TotalEstadisticaAdmin', 'TareasController@TotalEstadisticaAdmin');
	route::get('MejoresEfectividad', 'TareasController@MejoresEfectividad');
    route::get('TotalEstadisticaUsuario/{Id_Usuario}', 'TareasController@TotalEstadisticaUsuario');
 	route::resource('Notificaciones', 'NotificacionesController');
 	route::get('ContarNotificacionWeb/{Id_usuario}', 'NotificacionesController@ContarNotificacionWeb');
 	route::get('ContarNotificacionMovil/{Id_usuario}', 'NotificacionesController@ContarNotificacionMovil');
	route::get('ReunionAdmin/{estado}', 'ReunionController@ReunionAdmin');

 	
 	
    
	

	
