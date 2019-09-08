<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TareasModel extends Model
{
    protected $table = 'tarea';
    protected $primaryKey  = 'Id_tarea';
    public $timestamps = false;

    protected $fillable = [
        'Id_Usuario', 'Id_Estado_Tarea', 'Id_Tipo_Tarea', 'Nombre','FechaInicio','FechaFin','FechaCreacion','Descripcion','tareaFavorita','tareasIdTareas','Hora_Inicio','Hora_Fin'
    ];



    public function Responsables()
    {
        return $this->hasMany('App\ResponsablesModel', 'Id_Tarea', 'Id_tarea')->with('Usuario');
    }
}
