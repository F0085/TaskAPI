<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Reunio_Participante_Model;

class Reunio_Participante_Controller extends Controller
{
/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct(Reunio_Participante_Model $Participantes)
    {
        $this->Participantes=$Participantes;
    }

    public function index(Reunio_Participante_Model $Participantes)
    {
        return $Participantes->get();
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
      return $this->Participantes->create($input);
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
    public function ActualizarAsistencia(Request $request, $Id_Usuario,$IdReunion)
    {
      $input = $request->all();
      $this->Participantes->where('Id_Usuario', $Id_Usuario)->where('IdReunion',$IdReunion)->update($input);
      // return $this->Tareas ->find($id);
    }

    
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
           $this->Participantes->where('Id_Tarea', $id)->delete();
    }
}
