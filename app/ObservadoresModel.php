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
}
