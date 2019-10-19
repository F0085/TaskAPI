<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use DB;

class UsuariosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function __construct(User $user)
    {
        $this->user=$user;
    }
    

    public function index()
    {
        $usuarios=DB::table('usuarios')
        ->join('tipo_usuarios','tipo_usuarios.Id_Tipo_Usuario','=','usuarios.Id_tipo_Usuarios')
        ->select('usuarios.Id_Usuario as Id_Usuario',
                 'usuarios.Nombre as Nombre',
                 'usuarios.Apellido as Apellido',
                 'usuarios.Cedula as Cedula',
                 'usuarios.email as email',
                 'usuarios.Direccion as Direccion',
                 'usuarios.Celular as Celular',
                 'usuarios.Sexo as Sexo',
                 'tipo_usuarios.Descripcion as TipoUsuario',
                 'tipo_usuarios.Id_Tipo_Usuario as Id_Tipo_Usuario')
        ->orderBy('usuarios.Id_Usuario', 'asc')
        ->get();
        return Response()->json($usuarios);
    }

    public function Login(Request $request){
   
        $usuario=$this->user->where([["email","=",$request->email],["Password","=",$request->password]])->get();
        return $usuario;
    }

    public function store(Request $request)
    {
      $input = $request->all();
      return $this->user->create($input);
    }

    
    //API PARA BUSCAR USUARIO PARA SABER SI ENCUENTRA REGISTRADO O NO
    public function buscarUsuario($correo){
        $usuario = User::where('email',$correo)->first();
        return $usuario;

    }

    //API PARA BUSCAR USUARIO Y PREPARAR EL REGISTRO
    public function buscarUsuarioPreparar($cedula){
        $usuario = User::where('Cedula',$cedula)->first();
        return $usuario;

    }
    public function show($id)
    {
        $usuarios=DB::table('usuarios')
        ->join('tipo_usuarios','tipo_usuarios.Id_Tipo_Usuario','=','usuarios.Id_tipo_Usuarios')
        ->join('usuario_roles','usuario_roles.Id_Usuario','=','usuarios.Id_Usuario')
        ->join('roles','roles.Id_Roles','=','usuario_roles.Id_Roles')
        ->join('sub_area','sub_area.Id_Sub_Area','=','roles.Id_Sub_Area')
         ->join('area','area.Id_Area','=','sub_area.Id_Area')
        // ->join('area','area.Id_Area','=','area_roles.Id_Area')

        ->where('usuarios.Id_Usuario','=',$id)
        ->select('usuarios.Id_Usuario as Id_Usuario',
                 'usuarios.Nombre as Nombre',
                 'usuarios.Apellido as Apellido',
                 'usuarios.Cedula as Cedula',
                 'usuarios.email as email',
                 'usuarios.Direccion as Direccion',
                 'usuarios.Celular as Celular',
                 'usuarios.Sexo as Sexo',
                 'tipo_usuarios.Descripcion as TipoUsuario',
                 'tipo_usuarios.Id_Tipo_Usuario as Id_Tipo_Usuario',
                 'roles.Descripcion as Rol',
                 'roles.Id_Roles as Id_Roles',
                 'area.Descripcion as Area',
                 'area.Id_Area as Id_Area',
                 'sub_area.Descripcion as SubArea',
                 'sub_area.Id_Sub_Area as Id_Sub_Area')
        ->first();
        return Response()->json($usuarios);
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
      $this->user->where('Id_Usuario', $id)->update($input);
      return $this->user->find($id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = $this->user->destroy($id);
        return 1;
    }
}
