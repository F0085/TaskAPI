<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\RolesModel;
use App\UsuarioRolesModel;
use App\SubAreaModel;
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


    // public function AreaRoles(){
    //     $RolesAreas= DB::table('roles')
    //     ->join('area','area.Id_Area','=','roles.Id_Area')
    //     ->select('roles.Descripcion as Rol',
    //             'roles.nivel as Nivel',
    //             'area.Descripcion as Area',
    //             'roles.Id_Roles as Id_Roles')
    //     ->get();
    //     return $RolesAreas;

    // }

    //SUBAREAS POR AREAS
    public function SubAreaPorArea($area){
       
          $SubAreas = SubAreaModel::where('Id_Area',$area)->get();
          return $SubAreas;
    }

    //ROLES POR SUBAREAS
    public function RolesPorSubArea($subarea){
       
          $Roles = RolesModel::where('Id_Sub_Area',$subarea)->get();
          return $Roles;
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
       $AreaRoles=DB::table('area')
        // ->join('area','area.Id_Area', '=', 'area_roles.Id_Area')
         ->join('sub_area','sub_area.Id_Area', '=', 'area.Id_Area')
         ->join('roles','roles.Id_Sub_Area', '=', 'sub_area.Id_Sub_Area')
         //->select('area.Descripcion as Area',
            ->select(
                'area.Id_Area as Id_Area',
                'area.Descripcion as Area',
                'sub_area.Descripcion as Sub_Area',
                'roles.Descripcion as Rol',
                'roles.nivel as nivel',
                'roles.Id_Roles as Id_Roles')
         ->orderBy('area.Descripcion','asc')
        ->get();           
        return $AreaRoles;
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
        $AreaRoles=DB::table('area')
         ->join('sub_area','sub_area.Id_Area', '=', 'area.Id_Area')
         ->join('roles','roles.Id_Sub_Area', '=', 'sub_area.Id_Sub_Area')
            ->select(
                'area.Id_Area as Id_Area',
                'area.Descripcion as Area',
                'sub_area.Descripcion as Sub_Area',
                'sub_area.Id_Sub_Area as Id_Sub_Area',
                'roles.Descripcion as Rol',
                'roles.Id_Roles as Id_Roles')->where('roles.Id_Roles','=',$id)
        ->get();           
        return $AreaRoles;
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
        return $roles;
      // return ['message' => 'deleted successfully', 'roles_id' => $roles];
    }
}