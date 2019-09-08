<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UsuarioRolesModel extends Model
{
    protected $table = 'usuario_roles';
    protected $primaryKey  = 'ID_Usuario_Roles';
    public $timestamps = false;

    protected $fillable = [
        'Id_Usuario', 'Id_Roles','Id_Area'
    ];
}
