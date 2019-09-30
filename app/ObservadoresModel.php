<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ObservadoresModel extends Model
{
    protected $table = 'observador_usuario';
    protected $primaryKey  = 'IdObservador_Usuario';
    public $timestamps = false;

    protected $fillable = [
        'Id_Tarea', 'Id_Usuario'
    ];

    public function Tarea()
    {
        return $this->belongsTo('App\TareasModel', 'Id_Tarea', 'Id_tarea')->with('Responsables','Participantes','Usuario','Observadores');
    }

    public function Usuario()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }
}
