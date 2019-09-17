<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipoTareasModel extends Model
{
    protected $table ="tipo_tarea";
    protected $primaryKey="Id_Tipo_Tarea";
    public $timestamps=false;

    protected $fillable=['Descripcion'];

    public function Tareas(){
    	return $this->belongsTo('App\TareasModel','Id_Tipo_Tarea','Id_Tipo_Tarea');
    }

}
