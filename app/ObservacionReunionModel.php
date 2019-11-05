<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ObservacionReunionModel extends Model
{
    protected $table="observacion_reunion";
    protected $primaryKey="Id_observacion_reunion";
    public $timestamps=false;

    protected $fillable = [
        'Descripcion', 'Id_Reunion','Id_Usuario','Fecha','Observacion_ID','Tipo'
    ];

    public function Usuario()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }

    public function Reunion()
    {
        return $this->belongsTo('App\ReunionModel', 'Id_Reunion', 'Id_Reunion');
    }

    public function Observacion()
    {
        return $this->belongsTo('App\ObservacionReunionModel', 'Id_observacion_reunion','Observacion_ID');
    }
     public function SubObservaciones()
    {
        return $this->hasMany('App\ObservacionReunionModel', 'Observacion_ID','Id_observacion_reunion')->with('Usuario');
    }
}
