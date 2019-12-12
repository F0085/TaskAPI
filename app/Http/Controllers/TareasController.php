<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TareasModel;
use App\ResponsablesModel;
use App\ParticipantesModel;
use App\ObservadoresModel;
use App\Reunio_Responsable_Model;
use App\Reunio_Participante_Model;
use App\ReunionModel;
use App\User;
use DB;


class TareasController extends Controller
{

    public function __construct(TareasModel $Tareas)
    {
        $this->Tareas=$Tareas;
    }
    
    public function index()
    {

          $respon = TareasModel::with('Usuario','Responsables','Participantes','Observadores','SubTareas','Observacion')->where('tip_tar','=','T')->where('estadoEliminar','false')->get();
               return $respon;        
    }

    public function tareasCPM($estado,$idUsuario)
    {

          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion')->where('Estado_Tarea','=',$estado)->where('Id_Usuario','=',$idUsuario)->where('estadoEliminar','false')->get();
               return $respon;        
    }


    public function TareasEstado($estado,$idUsuario)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion')->where('tip_tar','=','T')->where('Estado_Tarea','=',$estado)->where('Id_Usuario','=',$idUsuario)->where('estadoEliminar','false')->orderBy('FechaFin', 'asc')->get();
          return $respon;
    }

    public function TareasReporte($estado)
    {
          $respon = TareasModel::where('Estado_Tarea','=',$estado)->where('Id_Tipo_Tarea','=','5')->where('estadoEliminar','false')->get();
          return $respon;
    }

    public function TareasAdministrador($estado)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion')->where('tip_tar','=','T')->where('Estado_Tarea','=',$estado)->orderBy('FechaFin', 'asc')->where('estadoEliminar','false')->get();
          return $respon;
    }

    public function TareasEstadoAdministrador($estado)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion')->where('Estado_Tarea','=',$estado)->where('estadoEliminar','false')->get();
          return $respon;
    }

    public function TareasPersonales($idUsuario)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion')->orderBy('FechaFin', 'asc')->where('tip_tar','=','T')->where('Id_Usuario','=',$idUsuario)->where('Id_Tipo_Tarea','=','4')->where('estadoEliminar','false')->get();
          return $respon;
    }

    public function TareasPorTipo($estado,$tipo,$idUsuario)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion','TipoTareas')->orderBy('FechaFin', 'asc')->where('Estado_Tarea','=',$estado)->where('Id_Tipo_Tarea','=',$tipo)->where('Id_Usuario','=',$idUsuario)->where('estadoEliminar','false')->get();
          return $respon;
    }

    public function TareasPorTipoPendiente($estado,$tipo,$idUsuario)
    {
          $respon = TareasModel::with('Usuario','TipoTareas','Responsables','Participantes','Observadores','SubTareas','Observacion','TipoTareas')->orderBy('FechaFin', 'asc')->where('Estado_Tarea','=',$estado)->where('Id_Tipo_Tarea','=',$tipo)->where('tip_tar','=','T')->where('Id_Usuario','=',$idUsuario)->where('estadoEliminar','false')->get();
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
          $respon = TareasModel::with('SubTareas')->where('Estado_Tarea','=','Pendiente')->where('tareasIdTareas','=',$idtareas)->where('estadoEliminar','false')->get();
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
          $respon = TareasModel::with('Usuario','Responsables','Participantes','Observadores','SubTareas','Observacion','Documento','TipoTareas')->where('Id_Tarea','=',$id)->where('estadoEliminar','false')->get();
               return $respon;  
    }

        public function Reporteshow($id)
    {
          $respon = TareasModel::with('Usuario','Responsables','Participantes','Observadores','ReporteSubTareas','Observacion','Documento','TipoTareas')->where('Id_Tarea','=',$id)->where('estadoEliminar','false')->get();
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
        $Laboral=0;
        $Personal=0;
        $pendienteP=0;
        $terminadaP=0;
        $vencidaP=0;
        $totalRespoP=0;
        $EfectividadP=0;
        $reunionRespon=0;
        $reunionparticipa=0;
        $dato=array();
        $c=0;
        //$cont=ResponsablesModel::where('Id_Usuario','=','120')->count();
        $res=ResponsablesModel::with('Tarea')-> where('Id_Usuario','=',$Id_Usuario)->get();
        $ReunionR=Reunio_Responsable_Model::with('ContarReunion')-> where('Id_Usuario','=',$Id_Usuario)->get();
        foreach ($ReunionR as $key => $valueR) {
            if($valueR['ContarReunion']['Estado']=='Pendiente'){
              $reunionRespon=$reunionRespon+1;
            }
        }
        $ReunionP=Reunio_Participante_Model::with('ContarReunion')-> where('Id_Usuario','=',$Id_Usuario)->get();
        foreach ($ReunionP as $key => $valueP) {
            if($valueP['ContarReunion']['Estado']=='Pendiente'){
                 $reunionparticipa=$reunionparticipa+1;
            }
        }

          foreach ($res as $key => $value) {

            
          
             // dd($value['Tarea']['TipoTareas'][$key]['Descripcion']);
            if($value['Tarea']['TipoTareas'][0]['Descripcion']=="Laboral" && $value['tarea']['Estado_Tarea']=='Pendiente'){
                $Laboral=$Laboral+1;
            }
            if($value['Tarea']['TipoTareas'][0]['Descripcion']=='Personal' && $value['tarea']['Estado_Tarea']=='Pendiente'){
                $Personal=$Personal+1;

            }
    
            //TAREAS LABORALES
            if(($value['tarea']['Id_Tipo_Tarea'] == '5')){
                 $totalRespo=$totalRespo+1;
            }
            if(($value['tarea']['Estado_Tarea']=='Pendiente') && ($value['tarea']['Id_Tipo_Tarea'] == '5')){
                $pendiente=$pendiente+1;
            }
            if(($value['tarea']['Estado_Tarea']=='Terminada' && $value['tarea']['estadoVencida'] =='false') && ($value['tarea']['Id_Tipo_Tarea'] == '5')){
                $terminada=$terminada+1;
            }
            if(($value['tarea']['estadoVencida'] =='true') && ($value['tarea']['Id_Tipo_Tarea'] == '5')){
                $vencida=$vencida+1;
            }

            //TAREAS PERSONALES
            if(($value['tarea']['Id_Tipo_Tarea'] == '4')){
                 $totalRespoP=$totalRespoP+1;
            }
            if(($value['tarea']['Estado_Tarea']=='Pendiente') && ($value['tarea']['Id_Tipo_Tarea'] == '4')){
                $pendienteP=$pendienteP+1;
            }
            if(($value['tarea']['Estado_Tarea']=='Terminada' && $value['tarea']['estadoVencida'] =='false') && ($value['tarea']['Id_Tipo_Tarea'] == '4')){
                $terminadaP=$terminadaP+1;
            }
            if(($value['tarea']['estadoVencida'] =='true') && ($value['tarea']['Id_Tipo_Tarea'] == '4')){
                $vencidaP=$vencidaP+1;
            }

            
            
            $c=$c+1;
          }
          if($terminada!=0 && $totalRespo!=0){
           $Efectividad=round(($terminada/$totalRespo)*100,1);
     
          }else{
            $Efectividad=0;
            
          }
            if($terminadaP!=0 && $totalRespoP != 0){
           $EfectividadP=round(($terminadaP/$totalRespoP)*100,1);
     
          }else{
            $EfectividadP=0;
            
          }


           // $fechaactual=strtotime(date('Y-m-j'));
           // $Mes=date("m",$fechaactual);
           // $Anio=date("Y",$fechaactual);
           $dato['Total_Responsables']= ($totalRespo);
           $dato['Total_Pendiente']= ($pendiente);
           $dato['Total_Terminada']= ($terminada);
           $dato['Total_Vencida']= ($vencida);
           $dato['Efectividad']= ($Efectividad);
           $dato['Laboral']= ($Laboral);
           $dato['Personal']= ($Personal);
           // $dato['MesActual']= ($Mes);
           // $dato['AnioActual']= ($Anio);

           //CALCULOS PARA PERSONALES
           $dato['Total_ResponsablesP']= ($totalRespoP);
           $dato['Total_PendienteP']= ($pendienteP);
           $dato['Total_TerminadaP']= ($terminadaP);
           $dato['Total_VencidaP']= ($vencidaP);
           $dato['EfectividadP']= ($EfectividadP);
           $dato['ReunionResponsable']= ($reunionRespon);
           $dato['ReunionParticipante']= ($reunionparticipa);


           return $dato;
       

    }

    public function TotalTareasResponsablesLaboral($Id_Usuario,$Anio,$Mes){
        $pendiente=0;
        $terminada=0;
        $vencida=0;
        $dato=array();
        //$cont=ResponsablesModel::where('Id_Usuario','=','120')->count();
          $res=ResponsablesModel::with('Tarea')-> where('Id_Usuario','=',$Id_Usuario)->get();

        foreach ($res as $key => $value) {
            $fechaComoEntero=strtotime($value['tarea']['FechaFin']);
            $anio = date("Y", $fechaComoEntero);
            $mes = date("m", $fechaComoEntero);
            if($anio== $Anio && $mes ==$Mes){
                if(($value['tarea']['Estado_Tarea']=='Pendiente') && ($value['tarea']['Id_Tipo_Tarea'] == '5')){
                    $pendiente=$pendiente+1;
                }
                if(($value['tarea']['Estado_Tarea']=='Terminada' && $value['tarea']['estadoVencida'] =='false') && ($value['tarea']['Id_Tipo_Tarea'] == '5')){
                    $terminada=$terminada+1;
                }
                if(($value['tarea']['estadoVencida'] =='true') && ($value['tarea']['Id_Tipo_Tarea'] == '5')){
                    $vencida=$vencida+1;
                }
            }                
        }
        if($pendiente != 0 || $terminada!=0 || $vencida!= 0){
           $dato['Total_Pendiente']= ($pendiente);
           $dato['Total_Terminada']= ($terminada);
           $dato['Total_Vencida']= ($vencida);
           return $dato;
        }else{
            return 0;
        }
    }

     public function TotalTareasResponsablesPersonal($Id_Usuario,$Anio,$Mes){
        $pendiente=0;
        $terminada=0;
        $vencida=0;
        $dato=array();
        //$cont=ResponsablesModel::where('Id_Usuario','=','120')->count();
          $res=ResponsablesModel::with('Tarea')-> where('Id_Usuario','=',$Id_Usuario)->get();

        foreach ($res as $key => $value) {
            $fechaComoEntero=strtotime($value['tarea']['FechaFin']);
            $anio = date("Y", $fechaComoEntero);
            $mes = date("m", $fechaComoEntero);
            if($anio== $Anio && $mes ==$Mes){
                if(($value['tarea']['Estado_Tarea']=='Pendiente') && ($value['tarea']['Id_Tipo_Tarea'] == '4')){
                    $pendiente=$pendiente+1;
                }
                if(($value['tarea']['Estado_Tarea']=='Terminada' && $value['tarea']['estadoVencida'] =='false') && ($value['tarea']['Id_Tipo_Tarea'] == '4')){
                    $terminada=$terminada+1;
                }
                if(($value['tarea']['estadoVencida'] =='true') && ($value['tarea']['Id_Tipo_Tarea'] == '4')){
                    $vencida=$vencida+1;
                }
            }                
        }
        if($pendiente != 0 || $terminada!=0 || $vencida!= 0){
           $dato['Total_Pendiente']= ($pendiente);
           $dato['Total_Terminada']= ($terminada);
           $dato['Total_Vencida']= ($vencida);
           return $dato;
        }else{
            return 0;
        }
    }

    public function EfectividadPorMeses($Id_Usuario,$Anio,$Mes){
        $pendiente=0;
        $terminada=0;
        $vencida=0;
        $totalRespo=0;
        $Efectividad=0;
        $dato=array();
          $res=ResponsablesModel::with('Tarea')-> where('Id_Usuario','=',$Id_Usuario)->get();
                 foreach ($res as $key => $value) {
                    if($value['tarea']['FechaFin'] != null){
                        $fechaComoEntero=strtotime($value['tarea']['FechaFin']);
                        $anio = date("Y", $fechaComoEntero);
                        $mes = date("m", $fechaComoEntero);
                    

                   
                     // dd($value['Tarea']['TipoTareas'][$key]['Descripcion']);
                        if($anio== $Anio && $mes ==$Mes){
                            if(($value['tarea']['Id_Tipo_Tarea'] == '5')){
                                 $totalRespo=$totalRespo+1;
                            }
                            if(($value['tarea']['Estado_Tarea']=='Pendiente') && ($value['tarea']['Id_Tipo_Tarea'] == '5')){
                                $pendiente=$pendiente+1;
                            }
                            if(($value['tarea']['Estado_Tarea']=='Terminada' && $value['tarea']['estadoVencida'] =='false') && ($value['tarea']['Id_Tipo_Tarea'] == '5')){
                                $terminada=$terminada+1;
                            }
                            if(($value['tarea']['estadoVencida'] =='true') && ($value['tarea']['Id_Tipo_Tarea'] == '5')){
                                $vencida=$vencida+1;
                            }
                        }                
                        
                    }
                }
                if($totalRespo != 0 && $terminada!=0){
                    $Efectividad=round(($terminada/$totalRespo)*100,1);
                    $dato['Efectividad']= ($Efectividad); 
                    return $dato;
                }else{
                    return 0;
                }

    }

    public function EfectividadPorMesesPersonales($Id_Usuario,$Anio,$Mes){
        $pendiente=0;
        $terminada=0;
        $vencida=0;
        $totalRespo=0;
        $Efectividad=0;
        $dato=array();
          $res=ResponsablesModel::with('Tarea')-> where('Id_Usuario','=',$Id_Usuario)->get();
                 foreach ($res as $key => $value) {
                    if($value['tarea']['FechaFin'] != null){
                        $fechaComoEntero=strtotime($value['tarea']['FechaFin']);
                        $anio = date("Y", $fechaComoEntero);
                        $mes = date("m", $fechaComoEntero);
                    

                   
                     // dd($value['Tarea']['TipoTareas'][$key]['Descripcion']);
                        if($anio== $Anio && $mes ==$Mes){
                            if(($value['tarea']['Id_Tipo_Tarea'] == '4')){
                                 $totalRespo=$totalRespo+1;
                            }
                            if(($value['tarea']['Estado_Tarea']=='Pendiente') && ($value['tarea']['Id_Tipo_Tarea'] == '4')){
                                $pendiente=$pendiente+1;
                            }
                            if(($value['tarea']['Estado_Tarea']=='Terminada' && $value['tarea']['estadoVencida'] =='false') && ($value['tarea']['Id_Tipo_Tarea'] == '4')){
                                $terminada=$terminada+1;
                            }
                            if(($value['tarea']['estadoVencida'] =='true') && ($value['tarea']['Id_Tipo_Tarea'] == '4')){
                                $vencida=$vencida+1;
                            }
                        }               
                        
                    }
                }
                if($totalRespo != 0 && $terminada!=0){
                    $Efectividad=round(($terminada/$totalRespo)*100,1);
                    $dato['Efectividad']= ($Efectividad); 
                    return $dato;
                }else{
                    return 0;
                }

    }


    public function TotalTareasAdmin(){

        $Laboral=0;
        $Personal=0;
        $dato=array();
        $res=TareasModel::with('TipoTareas')->where('Estado_Tarea','=','Pendiente')->where('estadoEliminar','false')->get();
        $resReunion=ReunionModel::where('Estado','=','Pendiente')->count();
        foreach ($res as $key => $value) {
            if($value['TipoTareas'][0]['Descripcion']=="Laboral"){
                $Laboral=$Laboral+1;
            }
            if($value['TipoTareas'][0]['Descripcion']=='Personal'){
                $Personal=$Personal+1;
            }
        }
       $dato['Laboral']= ($Laboral);
       $dato['Personal']= ($Personal);
       $dato['ReunionPendientes']= ($resReunion);
       return $dato;
    }


     public function TotalEstadisticaAdmin(){
        $pendiente=0;
        $terminada=0;
        $vencida=0;
        $totalRespo=0;
        $Efectividad=0;
        $pendienteP=0;
        $terminadaP=0;
        $vencidaP=0;
        $totalRespoP=0;
        $EfectividadP=0;
        $dato=array();
        $MejoresEfectividad=array();
        $c=0;
        //$cont=ResponsablesModel::where('Id_Usuario','=','120')->count();
        $res=TareasModel::with('TipoTareas','Responsables')->where('estadoEliminar','false')->get();
          foreach ($res as $key => $value) {    
            //TAREAS LABORALES
            if($value['TipoTareas'][0]['Descripcion']=="Laboral"){
                 $totalRespo=$totalRespo+1;
            }
            if($value['Estado_Tarea']=='Pendiente' && $value['TipoTareas'][0]['Descripcion']=="Laboral"){
                $pendiente=$pendiente+1;
            }
            if($value['Estado_Tarea']=='Terminada' && $value['estadoVencida'] =='false' && $value['TipoTareas'][0]['Descripcion']=="Laboral"){
                $terminada=$terminada+1;
            }
            if($value['estadoVencida'] =='true' && $value['TipoTareas'][0]['Descripcion']=="Laboral"){
                $vencida=$vencida+1;
            }

            //TAREAS PERSONALES
            if($value['TipoTareas'][0]['Descripcion']=="Personal"){
                 $totalRespoP=$totalRespoP+1;
            }
            if(($value['Estado_Tarea']=='Pendiente') && $value['TipoTareas'][0]['Descripcion']=="Personal"){
                $pendienteP=$pendienteP+1;
            }
            if(($value['Estado_Tarea']=='Terminada' && ['estadoVencida'] =='false' && $value['tarea']['estadoVencida'] =='false') && $value['TipoTareas'][0]['Descripcion']=="Personal"){
                $terminadaP=$terminadaP+1;
            }
            if(($value['estadoVencida'] =='true') && $value['TipoTareas'][0]['Descripcion']=="Personal"){
                $vencidaP=$vencidaP+1;
            }

            
            
            $c=$c+1;
          }
          if($terminada!=0 && $totalRespo !=0){
           $Efectividad=round(($terminada/$totalRespo)*100,1);
     
          }else{
            $Efectividad=0;
            
          }
            if($terminadaP !=0 && $totalRespoP != 0){
           $EfectividadP=round(($terminadaP/$totalRespoP)*100,1);
     
          }else{
            $EfectividadP=0;
            
          }
           $dato['Total_Responsables']= ($totalRespo);
           $dato['Total_Pendiente']= ($pendiente);
           $dato['Total_Terminada']= ($terminada);
           $dato['Total_Vencida']= ($vencida);
           $dato['Efectividad']= ($Efectividad);
       
           //CALCULOS PARA PERSONALES
           $dato['Total_ResponsablesP']= ($totalRespoP);
           $dato['Total_PendienteP']= ($pendienteP);
           $dato['Total_TerminadaP']= ($terminadaP);
           $dato['Total_VencidaP']= ($vencidaP);
           $dato['EfectividadP']= ($EfectividadP);


           return $dato;
       

    }


    public function TotalEstadisticaUsuario($Id_Usuario){
        $pendiente=0;
        $terminada=0;
        $vencida=0;
        $totalRespo=0;
        $Efectividad=0;
        $pendienteP=0;
        $terminadaP=0;
        $vencidaP=0;
        $totalRespoP=0;
        $EfectividadP=0;
        $dato=array();
        //$cont=ResponsablesModel::where('Id_Usuario','=','120')->count();
        $res=ResponsablesModel::with('Tarea')-> where('Id_Usuario','=',$Id_Usuario)->get();

         foreach ($res as $key => $value) { 

            //TAREAS LABORALES
            if($value['tarea']['TipoTareas'][0]['Descripcion']=="Laboral"){
                 $totalRespo=$totalRespo+1;
            }
            if($value['tarea']['Estado_Tarea']=='Pendiente' && $value['tarea']['TipoTareas'][0]['Descripcion']=="Laboral"){
                $pendiente=$pendiente+1;
            }
            if($value['tarea']['Estado_Tarea']=='Terminada' && $value['tarea']['estadoVencida'] =='false' && $value['tarea']['TipoTareas'][0]['Descripcion']=="Laboral"){
                $terminada=$terminada+1;
            }
            if($value['tarea']['estadoVencida'] =='true' && $value['tarea']['TipoTareas'][0]['Descripcion']=="Laboral"){
                $vencida=$vencida+1;
            }

            //TAREAS PERSONALES
            if($value['tarea']['TipoTareas'][0]['Descripcion']=="Personal"){

                 $totalRespoP=$totalRespoP+1;
            }
           
            if(($value['tarea']['Estado_Tarea']=='Pendiente') && $value['tarea']['TipoTareas'][0]['Descripcion']=="Personal"){
                $pendienteP=$pendienteP+1;
            }
            if(($value['tarea']['Estado_Tarea']=='Terminada' && $value['tarea']['estadoVencida'] =='false') && $value['tarea']['TipoTareas'][0]['Descripcion']=="Personal"){
                 
                $terminadaP=$terminadaP+1;
            }
            if(($value['tarea']['estadoVencida'] =='true') && $value['tarea']['TipoTareas'][0]['Descripcion']=="Personal"){
                $vencidaP=$vencidaP+1;
            }


        }
          if($terminada!=0 && $totalRespo!=0){
           $Efectividad=round(($terminada/$totalRespo)*100,1);
     
          }else{
            $Efectividad=0;
            
          }
            if($terminadaP!=0 && $totalRespoP != 0){
           $EfectividadP=round(($terminadaP/$totalRespoP)*100,1);
     
          }else{
            $EfectividadP=0;
            
          }

           // $fechaactual=strtotime(date('Y-m-j'));
           // $Mes=date("m",$fechaactual);
           // $Anio=date("Y",$fechaactual);
           $dato['Total_Responsables']= ($totalRespo);
           $dato['Total_Pendiente']= ($pendiente);
           $dato['Total_Terminada']= ($terminada);
           $dato['Total_Vencida']= ($vencida);
           $dato['Efectividad']= ($Efectividad);
           //CALCULOS PARA PERSONALES
           $dato['Total_ResponsablesP']= ($totalRespoP);
           $dato['Total_PendienteP']= ($pendienteP);
           $dato['Total_TerminadaP']= ($terminadaP);
           $dato['Total_VencidaP']= ($vencidaP);
           $dato['EfectividadP']= ($EfectividadP);
           return $dato;
   
    }

       public function MejoresEfectividad(){
        $pendiente=0;
        $terminada=0;
        $vencida=0;
        $totalRespo=0;
        $Efectividad=0;
        $dato=array();
        $temp=array();
        $aux=0;
        //$cont=ResponsablesModel::where('Id_Usuario','=','120')->count();
        $res=User::with('ResponsablesTareas')->get();
       
          
         foreach ($res as $key1 => $tareas) { 
          foreach ($tareas['ResponsablesTareas'] as $key => $value) {
             if($value['TareaResponsable']['TipoTareas'][0]['Descripcion']=="Laboral"){
                   $totalRespo=$totalRespo+1;
              }
              // if($value['TareaResponsable']['Estado_Tarea']=='Pendiente' && $value['TareaResponsable']['TipoTareas'][0]['Descripcion']=="Laboral"){
              //     $pendiente=$pendiente+1;
              // }
              if($value['TareaResponsable']['Estado_Tarea']=='Terminada' && $value['tarea']['estadoVencida'] =='false' && $value['TareaResponsable']['TipoTareas'][0]['Descripcion']=="Laboral"){
                  $terminada=$terminada+1;
              }
              // if($value['TareaResponsable']['Estado_Tarea'] =='Vencida' && $value['TareaResponsable']['TipoTareas'][0]['Descripcion']=="Laboral"){
              //     $vencida=$vencida+1;
              // }

          }
          if($terminada!=0 && $totalRespo){
           $Efectividad=round(($terminada/$totalRespo)*100);

   
            // $temp[$key]=array('Efectividad'=>$Efectividad,'Usuario'=>$tareas['Nombre']);
            //  uksort($temp,'Efectividad');
          
          }else{
            $Efectividad=0;
          }
 
          $dato[$key1]=array('Usuario'=>$tareas['Nombre'],'Efectividad'=>$Efectividad);
          $terminada=0;
          $totalRespo=0;
         
        }
            

              
             

            // if($terminada!=0 && $totalRespo!=0){
            //   $Efectividad=round(($terminada/$totalRespo)*100,1);
            //    $dato[$key]= array('Efectivida'=>$Efectividad,'Usuario'=>$value['usuario']['Nombre']);
            // }else{
            //    $dato[$key]=0;
            // }

        

         // $dato['Total_Responsables']= ($totalRespo);
         // $dato['Total_Pendiente']= ($pendiente);
         // $dato['Total_Terminada']= ($terminada);
         // $dato['Total_Vencida']= ($vencida);
         // $dato['Efectividad']= ($Efectividad);
// $dato= sort($dato,SORT_REGULAR);

// function sort_by_orden ($a, $b) {
//     return $a['Efectividad'] - $b['Efectividad'];
// }
// usort($dato, 'sort_by_orden');
 // $dato = array_slice($dato, 0, 3);
         return $dato;
    }





}
