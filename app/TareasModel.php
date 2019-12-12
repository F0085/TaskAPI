<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TareasModel extends Model
{
    protected $table = 'tarea';
    protected $primaryKey  = 'Id_tarea';
    public $timestamps = false;

    protected $fillable = [
        'Id_Usuario', 'Estado_Tarea', 'Id_Tipo_Tarea', 'Nombre','FechaInicio','FechaFin','FechaCreacion','Descripcion','tareaFavorita','tareasIdTareas','Hora_Inicio','Hora_Fin','tip_tar','FechaEntrega','estadoVencida','estadoEliminar'
    ];



    public function Responsables()
    {
        return $this->hasMany('App\ResponsablesModel', 'Id_Tarea', 'Id_tarea')->with('Usuario');
    }

    public function ResponsablesTareas()
    {
        return $this->hasMany('App\ResponsablesModel', 'Id_Tarea', 'Id_tarea');
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
        return $this->hasMany('App\TareasModel', 'tareasIdTareas','Id_tarea')->with('Responsables','Participantes','Observadores','Usuario','SubTareas','Observacion','TipoTareas','Documento')->where('estadoEliminar','false');
    }

    public function ReporteSubTareas()
    {
        return $this->hasMany('App\TareasModel', 'tareasIdTareas','Id_tarea')->with('Responsables','Participantes','Observadores','Usuario','ReporteSubTareas','Observacion','TipoTareas','Documento')->where('estadoEliminar','false');;
    }

    public function TipoTareas(){
        return $this->hasMany('App\TipoTareasModel','Id_Tipo_Tarea','Id_Tipo_Tarea');
    }

    public function Observacion()
    {
        return $this->hasMany('App\ObservacionModel', 'Id_Tarea', 'Id_tarea')->where('tipo','C')->with('Usuario','SubObservaciones');
    }
    public function Documento()
    {
        return $this->hasMany('App\DocumentoModel', 'Id_Tarea', 'Id_tarea')->with('Usuario');
    }



}
