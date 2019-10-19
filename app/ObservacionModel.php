<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ObservacionModel extends Model
{
    protected $table="observacion";
    protected $primaryKey="Id_Observacion";
    public $timestamps=false;

    protected $fillable = [
        'Id_Tarea', 'Id_Usuario','Descripcion','Fecha','ObservacionID','tipo'
    ];

    public function Usuario()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }

    public function Tarea()
    {
        return $this->belongsTo('App\TareasModel', 'Id_Tarea', 'Id_Tarea');
    }

    public function Observacion()
    {
        return $this->belongsTo('App\ObservacionModel', 'Id_Observacion','ObservacionID');
    }
     public function SubObservaciones()
    {
        return $this->hasMany('App\ObservacionModel', 'ObservacionID','Id_Observacion')->with('Usuario');
    }
}
