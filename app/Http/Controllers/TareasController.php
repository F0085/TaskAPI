<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TareasModel;
use DB;


class TareasController extends Controller
{

    public function __construct(TareasModel $Tareas)
    {
        $this->Tareas=$Tareas;
    }
    
    public function index(TareasModel $Tareas)
    {

          $respon = TareasModel::with('Responsables')->get();
          return $respon;

        $usuarios=DB::table('tarea')
        ->join('responsableusuario','responsableusuario.Id_Tarea','=','tarea.Id_Tarea')
        ->join('usuarios','usuarios.Id_Usuario','=','responsableusuario.Id_Usuario')
        ->select('tarea.Nombre as Nombre','usuarios.Nombre as User')
        ->orderBy('tarea.Id_Tarea', 'asc')
        ->get();
        return Response()->json($usuarios);
        // return $Tareas->get();
    }

    public function MisTareas()
    {
        $usuarios=DB::table('tarea')
        ->join('responsableusuario','responsableusuario.Id_Tarea','=','tareas.Id_Tarea')
        ->join('usuarios','usuarios.Id_Usuario','=','responsableusuario.Id_Usuario')
        ->select('tarea.Nombre as Nombre','usuarios.Nombre as User')
        ->orderBy('tarea.Id_Tarea', 'asc')
        ->get();
        return Response()->json($usuarios);
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
