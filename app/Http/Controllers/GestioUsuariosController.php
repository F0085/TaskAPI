<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class GestioUsuariosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    //USUARIOS Y ROLES POR AREA Y ROL
    public function UsuarioRoles($area,$rol){
        $UsuarioRoles=DB::table('usuario_roles')
        ->join('roles', 'roles.Id_Roles', '=', 'usuario_roles.Id_Roles')
        ->join('usuarios', 'usuarios.Id_Usuario', '=', 'usuario_roles.Id_Usuario')
        ->join('area', 'area.Id_Area', '=', 'usuario_roles.Id_Area')
     
        ->select('usuarios.Nombre as Nombre',
              'usuarios.Id_Usuario as Id_Usuario',
                'usuarios.Apellido as Apellido',
                'area.Descripcion as Area',
                'area.Id_Area as Id_Area',
                'roles.Id_Roles as Id_Roles',

                'roles.Descripcion as Roles')
        ->where('area.Id_Area','=', $area )
        ->where('roles.Id_Roles','=', $rol )
        ->get();
        return $UsuarioRoles;

    }

    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
