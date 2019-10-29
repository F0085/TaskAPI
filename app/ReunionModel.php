<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ReunionModel extends Model
{
    protected $table = 'reunion';
    protected $primaryKey  = 'Id_Reunion';
    public $timestamps = false;

    protected $fillable = [
        'Descripcion', 'Lugar', 'Id_Usuario', 'FechadeReunion','HoraReunion'
    ];



    public function Responsables()
    {
        return $this->hasMany('App\Reunio_Responsable_Model', 'Id_Reunion', 'Id_Reunion')->with('Usuario');
    }
    public function Participantes()
    {
        return $this->hasMany('App\Reunio_Participante_Model', 'Id_Reunion', 'Id_Reunion')->with('Usuario');
    }

    public function Usuario()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }

}
