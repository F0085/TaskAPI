<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AreasRolesModel;
use App\AreaModel;
use App\SubAreaModel;
use DB;

class AreasRolesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

      public function __construct(AreasRolesModel $AreaRoles)
    {
        $this->AreaRoles=$AreaRoles;
    }


    public function index(AreasRolesModel $AreaRoles)
    {
        return $this->AreasRoles();
    }


    //LISTA LAS AREAS ROLES 
    public function AreasRoles(){
          $AreaRoles = AreaModel::with('SubArea')->get();
          return $AreaRoles;
    }
       //LISTA LAS AREAS ROLES 
    public function SubAreaPorArea($area){
       
          $AreaRoles = SubAreaModel::where('Id_Area',$area)->get();
          return $AreaRoles;
    }
        //LISTA LAS AREAS ROLES 
    public function AreasRolestabla(){


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

    //EXTRAE LOS ROLES QUE PERTENECEN A UNA AREA
    public function AreasRolesID($AR){
        $AreaRoles=DB::table('area_roles')
         ->join('area','area.Id_Area', '=', 'area_roles.Id_Area')
         ->join('roles','roles.Id_Roles', '=', 'area_roles.Id_Roles')
         ->select('area.Descripcion as Area',
                'area.Id_Area as Id_Area',
                'roles.Descripcion as Rol',
                'roles.Id_Roles as Id_Roles',
                'area_roles.Id_area_roles as Id_area_roles')
         ->where('area.Id_Area','=', $AR)
        ->get();
        return $AreaRoles;
    }

    //EXTRAE SOLO LAS AREAS UNA SOLA VEZ DE LA RELACION DE AREAROLES CON AREAS Y ROLES
      public function AreasRolesDistinct(){
        $AreaRoles=DB::table('area_roles')
         ->join('area','area.Id_Area', '=', 'area_roles.Id_Area')
         ->join('roles','roles.Id_Roles', '=', 'area_roles.Id_Roles')
         ->select('area.Descripcion as Area','area.Id_Area as Id_Area'
               )->distinct('area_roles.Id_Area')
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
      return $this->AreaRoles->create($input);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
          return $this->AreaRoles->find($id);
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

      $this->AreaRoles::where('Id_Area_Roles', $id)->update($input);
      return $this->AreaRoles->find($id);
      
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $AreaRoles = $this->AreaRoles->destroy($id);
      // return ['message' => 'deleted successfully', 'roles_id' => $AreaRoles];
    }
}
