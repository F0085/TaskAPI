<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\RolesModel;
use App\UsuarioRolesModel;
use DB;
class RolesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct(RolesModel $roles)
    {
        $this->roles=$roles;
    }


    public function AreaRoles(){
        $RolesAreas= DB::table('roles')
        ->join('area','area.Id_Area','=','roles.Id_Area')
        ->select('roles.Descripcion as Rol',
                'roles.nivel as Nivel',
                'area.Descripcion as Area',
                'roles.Id_Roles as Id_Roles')
        ->get();
        return $RolesAreas;

    }





    public function UsuarioRolesRegistrar(Request $request)
    {
      $UsuarioRoles=new  UsuarioRolesModel();
      $input = $request->all();
      $UsuarioRoles->create($input);
      return [
          'data' => $input
      ];
    }

    public function UsuarioRolesAtc(Request $request, $id)
    {
      $UsuarioRoles=new  UsuarioRolesModel();
      $input = $request->all();
      $UsuarioRoles->where('Id_Usuario_Roles', $id)->update($input);
      return $this->roles->find($id);
      $UsuarioRoles->create($input);
      return [
          'data' => $input
      ];
    }

    public function index(RolesModel $roles)
    {
        return $roles->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $input = $request->all();
      return $this->roles->create($input);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
          return $this->roles->find($id);
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
      $input = $request->all();
      $this->roles->where('Id_Roles', $id)->update($input);
      return $this->roles->find($id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $roles = $this->roles->destroy($id);
      // return ['message' => 'deleted successfully', 'roles_id' => $roles];
    }
}