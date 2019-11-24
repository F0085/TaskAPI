<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reunio_Responsable_Model extends Model
{
    protected $table = 'responsable_reunion_usuario';
    protected $primaryKey  = 'Id_responsable_reunion_usuario';
    public $timestamps = false;

    protected $fillable = [
        'Id_Reunion', 'Id_Usuario'
    ];

    public function Reunion()
    {
        return $this->belongsTo('App\ReunionModel', 'Id_Reunion', 'Id_Reunion')->with('Participantes','Usuario','Responsables');
    }
    public function ContarReunion()
    {
        return $this->belongsTo('App\ReunionModel', 'Id_Reunion', 'Id_Reunion')->where('Estado','Pendiente')->with('Participantes','Usuario','Responsables');
    }

    public function Usuario()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }
}
