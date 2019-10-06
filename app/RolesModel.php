<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RolesModel extends Model
{
    protected $table = 'roles';
    protected $primaryKey  = 'Id_Roles';
    public $timestamps = false;

        protected $fillable = [
        'Descripcion', 'nivel','Id_Sub_Area'
    ];


    public function Sub_Area()
    {
        return $this->belongsTo('App\SubAreaModel', 'Id_Sub_Area', 'Id_Sub_Area');
    }

        public function UsuarioRoles()
    {
        return $this->hasMany('App\UsuarioRolesModel', 'Id_Roles', 'Id_Roles')->with('Usuarios');
    }
}
