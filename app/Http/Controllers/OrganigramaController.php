<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\AreaModel;

use DB;

class OrganigramaController extends Controller
{



    //LISTA LAS AREAS ROLES 
    public function Organigrama(){
          $organigrama = AreaModel::with('SubArea')->get();
          return $organigrama;
    }
       //LISTA LAS AREAS ROLES 
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

    



}
