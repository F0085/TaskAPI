<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\NotificacionesModel;

class NotificacionesController extends Controller
{
    public function __construct(NotificacionesModel $Notificaciones)
    {
        $this->Notificaciones=$Notificaciones;
    }

    public function index(NotificacionesModel $Notificaciones)
    {
    	$respon = NotificacionesModel::orderBy('Id_notificaciones', 'desc')->get();
        return $respon;
        // return $Notificaciones->orderBy('FechaFin', 'asc')->get();
    }

    public function ContarNotificacionWeb(NotificacionesModel $Notificaciones,$Id_usuario)
    {

        return $Notificaciones->where('Id_Usuario',$Id_usuario)->where('VistaWeb','0')->count();
    }

    public function ContarNotificacionMovil(NotificacionesModel $Notificaciones,$Id_usuario)
    {

        return $Notificaciones->where('Id_Usuario',$Id_usuario)->where('VistaMovil','0')->count();
    }

    public function store(Request $request){
    	 $input = $request->all();
         return $this->Notificaciones->create($input);

    }

    public function update(Request $request, $id)
    {
      $input = $request->all();
      $this->Notificaciones->where('Id_notificaciones', $id)->update($input);
      return $this->Notificaciones->find($id);
    }
}
