<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table = 'usuarios';
    protected $primaryKey  = 'Id_Usuario';
    public $timestamps = false;

    protected $fillable = [
        'Nombre', 'Apellido', 'Cedula', 'email','Direccion','Celular','Sexo','Id_tipo_Usuarios','Password'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    // protected $hidden = [
    //     'Password',
    // ];


    public function Responsables()
    {
        return $this->hasMany('App\ResponsablesModel', 'Id_Usuario', 'Id_Usuario');
    }

    public function Tarea()
    {
        return $this->hasMany('App\TareasModel', 'Id_Usuario', 'Id_Usuario');
    }

    public function UsuarioRoles()
    {
        return $this->hasMany('App\UsuarioRolesModel', 'Id_Usuario', 'Id_Usuario');
    }

    public function Observacion()
    {
        return $this->hasMany('App\ObservacionModel', 'Id_Usuario', 'Id_Usuario');
    }

    public function Documento()
    {
        return $this->hasMany('App\DocumentoModel', 'Id_Usuario', 'Id_Usuario');
    }


}
