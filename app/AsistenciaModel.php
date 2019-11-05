<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AsistenciaModel extends Model
{
    protected $table = 'asistencia';
    protected $primaryKey  = 'Id_asistencia';
    public $timestamps = false;

    protected $fillable = [
        'Id_Usuario', 'asistencia','Id_Reunion'
    ];


    public function Usuario()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }


}
