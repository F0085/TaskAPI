<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubAreaModel extends Model
{
    protected $table = 'sub_area';
    protected $primaryKey  = 'Id_Sub_Area';
    public $timestamps = false;

    protected $fillable = [
        'Descripcion','Id_Area'
    ];

    public function Area()
    {
        return $this->belongsTo('App\AreaModel', 'Id_Area', 'Id_Area');
    }

    public function Roles()
    {
        return $this->hasMany('App\RolesModel', 'Id_Sub_Area', 'Id_Sub_Area')->with('UsuarioRoles');
    }
}
