<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UsuarioRolesModel extends Model
{
    protected $table = 'usuario_roles';
    protected $primaryKey  = 'Id_Usuario_Roles';
    public $timestamps = false;

    protected $fillable = [
        'Id_Usuario', 'Id_Roles'
    ];

     public function Usuarios()
    {
        return $this->belongsTo('App\User', 'Id_Usuario', 'Id_Usuario');
    }

    public function Roles()
    {
        return $this->belongsTo('App\RolesModel', 'Id_Roles', 'Id_Roles');
    }
}
