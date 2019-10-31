<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * Indicates whether the XSRF-TOKEN cookie should be set on the response.
     *
     * @var bool
     */
    protected $addHttpCookie = true;

    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    protected $except = [
        'Area',
        'Area/*',
        'Usuarios',
        'Usuarios/*',
        'Roles',
        'Roles/*',
        'UserRoles',
        'UserRoles/*',
        'RolesAreas',
        'RolesAreas/*',
        'RolesAreasID',
        'RolesAreasID/*',
        'RolesIdArea',
        'RolesIdArea/*',
        'Login',
        'Login/*',
        'StoreUserRoles',
        'StoreUserRoles/*',
        'AreasRoles',
        'AreasRoles/*',
        'UsuariosRoles',
        'UsuariosRoles/*',
        'Tareas',
        'Tareas/*',
        'Responsables',
        'Responsables/*',
        'Participantes',
        'Participantes/*',
        'Observadores',
        'Observadores/*',
        'TipoTareas',
        'TipoTareas/*',
        'SubArea',
        'SubArea/*',
        'Observaciones',
        'Observaciones/*',
        'Reunion',
        'Reunion/*',
        'Reunio_Participante',
        'Reunio_Participante/*',
        'Reunio_Responsable',
        'Reunio_Responsable/*',
        'ActualizarAsistencia',
        'ActualizarAsistencia/*',
        'ObservacionesReuniones',
        'ObservacionesReuniones/*'
        
        
        
        
        
        
    ];
}
