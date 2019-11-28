<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ReunionModel;
use App\Reunio_Responsable_Model;
use App\Reunio_Participante_Model;


class ReunionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct(ReunionModel $Reunion)
    {
        $this->Reunion=$Reunion;
    }
    
    public function index()
    {
          $respon = ReunionModel::with('Usuario','Responsables','Participantes')->get();
        return $respon;        
    }

    //TRAER REUNIONES POR ESTADO PENDIENTE Y POR EL USUARIO QUE LAS CREAR
    public function ReunionPorEstado_User($estado ,$idUsuario)
    {
          $respon = ReunionModel::with('Usuario','Responsables','Participantes')->where('Estado','=',$estado)->where('Id_Usuario','=',$idUsuario)->get();
        return $respon;        
    }

      //TRAER REUNIONES POR RESPONSABLES 
    public function MisReunionesResponsables($idUsuario)
    {
        $res=Reunio_Responsable_Model::with('Reunion','Usuario')->where('Id_Usuario','=',$idUsuario)->get();
        return $res;
    }

      //TRAER REUNIONES POR PARTICIPANTES 
    public function MisReunionesParticipantes($idUsuario)
    {
        $res=Reunio_Participante_Model::with('Reunion','Usuario')->where('Id_Usuario','=',$idUsuario)->get();
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
      return $this->Reunion->create($input);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $respon = ReunionModel::with('Usuario','Responsables','Participantes')->where('Id_Reunion','=',$id)->get();
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
      $this->Reunion->where('Id_Reunion', $id)->update($input);
      return $this->Reunion ->find($id);
    }

    public function ReporteReunionshow($id)
    {
          $respon = ReunionModel::with('Usuario','Responsables','Participantes','Observacion')->where('Id_Reunion','=',$id)->get();
               return $respon;  
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       
    }
}
