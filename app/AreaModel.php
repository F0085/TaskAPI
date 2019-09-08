<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AreaModel extends Model
{
    protected $table = 'area';
    protected $primaryKey  = 'Id_Area';
    public $timestamps = false;

    protected $fillable = [
        'Descripcion'
    ];


    public function SubArea()
    {
        return $this->hasMany('App\SubAreaModel', 'Id_Area', 'Id_Area')->with('Roles');
    }

}
