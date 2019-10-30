<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AsistenciaModel;
class AsistenciaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct(AsistenciaModel $Asistencia)
    {
        $this->Asistencia=$Asistencia;
    }
    public function index()
    {
        //
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
      return $this->Asistencia->create($input);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // $respon = AsistenciaModel()->where('Id_Usuario','=',$id)->get();
        //        return $respon;  
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
      $this->Asistencia->where('Id_Usuario', $Id_Usuario)->where('IdReunion',$IdReunion)->update($input);
      // return $this->Tareas ->find($id);
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
