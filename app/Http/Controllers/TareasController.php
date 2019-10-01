<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TareasModel;
use App\ResponsablesModel;
use App\ParticipantesModel;
use App\ObservadoresModel;
use DB;


class TareasController extends Controller
{

    public function __construct(TareasModel $Tareas)
    {
        $this->Tareas=$Tareas;
    }
    
    public function index()
    {
          $respon = TareasModel::with('Usuario','Responsables','Participantes','Observadores','SubTareas')->where('tip_tar','=','T')->get();
               return $respon;        
    }

    public function TareasEstado($estado,$idUsuario)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas')->where('tip_tar','=','T')->where('Estado_Tarea','=',$estado)->where('Id_Usuario','=',$idUsuario)->get();
          return $respon;
    }

    public function TareasPersonales($idUsuario)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas')->where('tip_tar','=','T')->where('Id_Usuario','=',$idUsuario)->where('Id_Tipo_Tarea','=','4')->get();
          return $respon;
    }

    public function TareasPorTipo($estado,$tipo,$idUsuario)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas')->where('tip_tar','=','T')->where('Estado_Tarea','=',$estado)->where('Id_Tipo_Tarea','=',$tipo)->where('Id_Usuario','=',$idUsuario)->get();
          return $respon;
    }

    //TRAER TAREAS POR RESPONSABLES LOGUEADO
    public function MisTareasResponsables($idUsuario)
    {
        $res=ResponsablesModel::with('Tarea','Usuario')->where('Id_Usuario','=',$idUsuario)->get();
        return $res;
    }
    //TRAER TAREAS POR PARTICPANTE LOGUEADO
    public function MisTareasParticipantes($idUsuario)
    {
        $res=ParticipantesModel::with('Tarea','Usuario')->where('Id_Usuario','=',$idUsuario)->get();
        return $res;
    }
    //TRAER TAREAS POR OBSERVADOR LOGUEADO
    public function MisTareasObservadores($idUsuario)
    {
        $res=ObservadoresModel::with('Tarea','Usuario')->where('Id_Usuario','=',$idUsuario)->get();
        return $res;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
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
      $input = $request->all();
      return $this->Tareas->create($input);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
          $respon = TareasModel::with('Usuario','Responsables','Participantes','Observadores','SubTareas')->where('Id_Tarea','=',$id)->get();
               return $respon;  
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
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
