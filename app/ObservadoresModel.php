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
        return $this->belongsTo('App\TareaModel', 'Id_tarea', 'Id_Tarea');
    }

    public function Usuario()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }
}
