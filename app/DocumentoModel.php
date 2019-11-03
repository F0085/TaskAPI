<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DocumentoModel extends Model
{
     protected $table="documento";
    protected $primaryKey="Id_Documento";
    public $timestamps=false;

    protected $fillable = [
        'Id_Tarea', 'Id_Usuario','Descripcion','Ruta','Fecha'
    ];


    public function Usuario()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }

    public function Tarea()
    {
        return $this->belongsTo('App\TareasModel', 'Id_Tarea', 'Id_Tarea');
    }
}
