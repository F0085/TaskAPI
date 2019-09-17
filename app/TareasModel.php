<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TareasModel extends Model
{
    protected $table = 'tarea';
    protected $primaryKey  = 'Id_tarea';
    public $timestamps = false;

    protected $fillable = [
        'Id_Usuario', 'Estado_Tarea', 'Id_Tipo_Tarea', 'Nombre','FechaInicio','FechaFin','FechaCreacion','Descripcion','tareaFavorita','tareasIdTareas','Hora_Inicio','Hora_Fin','tip_tar'
    ];



    public function Responsables()
    {
        return $this->hasMany('App\ResponsablesModel', 'Id_Tarea', 'Id_tarea')->with('Usuario');
    }
    public function Participantes()
    {
        return $this->hasMany('App\ParticipantesModel', 'Id_Tarea', 'Id_tarea')->with('Usuario');
    }
    public function Observadores()
    {
        return $this->hasMany('App\ObservadoresModel', 'Id_Tarea', 'Id_tarea')->with('Usuario');
    }

    public function Usuario()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }

    public function Tareas()
    {
        return $this->belongsTo('App\TareasModel', 'Id_tarea','tareasIdTareas');
    }
       public function SubTareas()
    {
        return $this->hasMany('App\TareasModel', 'tareasIdTareas','Id_tarea')->with('Responsables','Participantes','Observadores','Usuario','SubTareas');
    }

    public function TipoTareas(){
        return $this->hasMany('App\TipoTareasModel','Id_Tipo_Tarea','Id_Tipo_Tarea');
    }


    // public function SubTareas()
    // {
    //     return $this->belongsTo('App\TareasModel', 'Id_tarea','tareasIdTareas');
    // }
    //    public function SubTareas2()
    // {
    //     return $this->hasMany('App\TareasModel', 'tareasIdTareas','Id_tarea');
    // }



//     public function SubTareas2()
// {
//    return $this->hasMany('App\TareasModel', 'Id_Tarea','Id_Tarea');
// }
// public function children_rec()
// {
//    return $this->SubTareas2()->with('children_rec');
//    //which is equivalent to:
//    //return $this->hasMany('App\CourseModule', 'parent')->with('children_rec);
// }
// //parent
// public function SubTareas()
// {
//    return $this->belongsTo('App\TareasModel','Id_Tarea','tareasIdTareas');
// }

// //all ascendants
// public function parent_rec()
// {
//    return $this->SubTareas()->with('parent_rec');
// }
}
