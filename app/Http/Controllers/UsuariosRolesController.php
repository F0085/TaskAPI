<?php

namespace App\Http\Controllers;
use App\UsuarioRolesModel;
use Illuminate\Http\Request;

class UsuariosRolesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct(UsuarioRolesModel $UserRoles)
    {
        $this->UserRoles=$UserRoles;
    }


    public function index(UsuarioRolesModel $UserRoles)
    {
        return $UserRoles->get();
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
      return $this->UserRoles->create($input);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
          return $this->UserRoles->find($id);
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
      $this->UserRoles->where('Id_Usuario', $id)->update($input);
      return $this->UserRoles->find($id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $UserRoles = $this->UserRoles->destroy($id);
      // return ['message' => 'deleted successfully', 'roles_id' => $roles];
    }
}
