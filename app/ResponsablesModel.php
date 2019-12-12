<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ResponsablesModel extends Model
{
    protected $table = 'responsableusuario';
    protected $primaryKey  = 'IdResponsableUsuario';
    public $timestamps = false;

    protected $fillable = [
        'Id_Tarea', 'Id_Usuario'
    ];

    public function Tarea()
    {
        return $this->belongsTo('App\TareasModel', 'Id_Tarea', 'Id_tarea')->with('Observadores','Participantes','Usuario','Responsables','TipoTareas')->where('estadoEliminar','false');
    }
    //SOLO NECESITO LOS DATOS DE LA TAREA NADA MAS
    public function TareaResponsable()
    {
        return $this->belongsTo('App\TareasModel', 'Id_Tarea', 'Id_tarea')->with('TipoTareas')->where('estadoEliminar','false');
    }


    public function Usuario()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }
}
