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
}
