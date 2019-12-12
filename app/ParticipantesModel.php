<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ParticipantesModel extends Model
{
    protected $table = 'participante_usuario';
    protected $primaryKey  = 'Id_Particpanteusuario';
    public $timestamps = false;

    protected $fillable = [
        'Id_Tarea', 'Id_Usuario'
    ];

    public function Tarea()
    {
        return $this->belongsTo('App\TareasModel', 'Id_Tarea', 'Id_tarea')->with('Responsables','Observadores','Usuario','Participantes','TipoTareas')->where('estadoEliminar','false');
    }

    public function Usuario()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }
}
