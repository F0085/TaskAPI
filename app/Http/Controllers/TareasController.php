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

          $respon = TareasModel::with('Usuario','Responsables','Participantes','Observadores','SubTareas','Observacion')->where('tip_tar','=','T')->get();
               return $respon;        
    }

    public function tareasCPM($estado)
    {

          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion')->where('Estado_Tarea','=',$estado)->get();
               return $respon;        
    }


    public function TareasEstado($estado,$idUsuario)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion')->where('tip_tar','=','T')->where('Estado_Tarea','=',$estado)->where('Id_Usuario','=',$idUsuario)->orderBy('FechaFin', 'asc')->get();
          return $respon;
    }

    public function TareasAdministrador($estado)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion')->where('tip_tar','=','T')->where('Estado_Tarea','=',$estado)->orderBy('FechaFin', 'asc')->get();
          return $respon;
    }

    public function TareasEstadoAdministrador($estado)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion')->where('Estado_Tarea','=',$estado)->get();
          return $respon;
    }

    public function TareasPersonales($idUsuario)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion')->orderBy('FechaFin', 'asc')->where('tip_tar','=','T')->where('Id_Usuario','=',$idUsuario)->where('Id_Tipo_Tarea','=','4')->get();
          return $respon;
    }

    public function TareasPorTipo($estado,$tipo,$idUsuario)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion','TipoTareas')->orderBy('FechaFin', 'asc')->where('Estado_Tarea','=',$estado)->where('Id_Tipo_Tarea','=',$tipo)->where('Id_Usuario','=',$idUsuario)->get();
          return $respon;
    }

    public function TareasPorTipoPendiente($estado,$tipo,$idUsuario)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion','TipoTareas')->orderBy('FechaFin', 'asc')->where('Estado_Tarea','=',$estado)->where('Id_Tipo_Tarea','=',$tipo)->where('tip_tar','=','T')->where('Id_Usuario','=',$idUsuario)->get();
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

    //PARA SABER SI TIENE SUBTAREAS PENDIENTES
    public function TareasPendientesPorTareas($idtareas,$idUsuario)
    {
          $respon = TareasModel::with('SubTareas')->where('Estado_Tarea','=','Pendiente')->where('tareasIdTareas','=',$idtareas)->where('Id_Usuario','=',$idUsuario)->get();
          return $respon;
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
          $respon = TareasModel::with('Usuario','Responsables','Participantes','Observadores','SubTareas','Observacion','Documento','TipoTareas')->where('Id_Tarea','=',$id)->get();
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
      $input = $request->all();
      $this->Tareas->where('Id_tarea', $id)->update($input);
      return $this->Tareas ->find($id);
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

    public function TotalTareasResponsables($Id_Usuario){
        $pendiente=0;
        $terminada=0;
        $vencida=0;
        $totalRespo=0;
        $Efectividad=0;
        $dato=array();

        //$cont=ResponsablesModel::where('Id_Usuario','=','120')->count();
          $res=ResponsablesModel::with('Tarea')-> where('Id_Usuario','=',$Id_Usuario)->get();
          foreach ($res as $key => $value) {
            $totalRespo=$totalRespo+1;
            if(($value['tarea']['Estado_Tarea'])=='Pendiente'){
                $pendiente=$pendiente+1;
            }
            if(($value['tarea']['Estado_Tarea'])=='Terminada'){
                $terminada=$terminada+1;
            }
            if(($value['tarea']['Estado_Tarea'])=='Vencida'){
                $vencida=$vencida+1;
            }

            $Efectividad=($terminada*$totalRespo)/100;
          }
           $dato['Total_Responsables']= ($totalRespo);
           $dato['Total_Pendiente']= ($pendiente);
           $dato['Total_Terminada']= ($terminada);
           $dato['Total_Vencida']= ($vencida);
           $dato['Efectividad']= ($Efectividad);


           return $dato;
       

    }
}
