<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NotificacionesModel extends Model
{
    protected $table = 'notificaciones';
    protected $primaryKey  = 'Id_notificaciones';
    public $timestamps = false;

    protected $fillable = [
        'descripcion', 'Id_Usuario','FechaLimite','VistaWeb','VistaMovil','tipo','Id_Ttar_Reu','tipoRol'
    ];

}
