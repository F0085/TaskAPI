<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AreasRolesModel extends Model
{
    protected $table = 'area_roles';
    protected $primaryKey  = 'Id_Area_Roles';
    public $timestamps = false;

    protected $fillable = [
        'Id_Area', 'Id_Roles'
    ];


    public function Area()
    {
        return $this->belongsTo('App\AreaModel', 'Id_Area', 'Id_Area');
    }

    public function Roles()
    {
        return $this->belongsTo('App\RolesModel', 'Id_Roles', 'Id_Roles');
    }



}
