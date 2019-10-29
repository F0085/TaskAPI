<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reunio_Participante_Model extends Model
{
    protected $table = 'participante_reunion_usuario';
    protected $primaryKey  = 'Id_participante_reunion_usuario';
    public $timestamps = false;

    protected $fillable = [
        'Id_Reunion', 'Id_Usuario'
    ];

    public function Reunion()
    {
        return $this->belongsTo('App\ReunionModel', 'Id_Reunion', 'Id_Reunion')->with('Responsables','Usuario');
    }

    public function Usuario()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }
}
