<?php
  session_start(); 
    
?>

@extends('layouts.app')
@section('contenido')



<div id="cargar"></div>
    <div class="col-md-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">@if(isset($_SESSION['nombre'])){{$_SESSION['nombre']}}@endif GESTIÓN ADMINISTRATIVA</h4>
                <!-- Nav tabs -->
                <ul class="nav nav-tabs mb-3" role="tablist">
                    <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#AreaP"><span><i class="ti-map"></i>  Registro de Áreas</span></a>
                    </li>
                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Roles"><span><i class="ti-layers"></i>  Registro de Roles</span></a>
                    </li>
   <!--                  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Usuarios"><span><i class="ti-user"></i>  Registro de Usuarios</span></a>
                    </li> -->
                </ul>
                <!-- Tab panes -->
                <div class="tab-content tabcontent-border">
                    <div class="tab-pane fade show active" id="AreaP" role="tabpanel">
                        <div class="p-t-15">
                            <div  class="row">
                                <div class="col-md-12" style="padding-top: 3%">             
                                    <div class="card" style="width: 100%; height: 100%">
                                        <div class="card-body">
                                            <div class="basic-form">
                                                <div class="row">

                                                    @if(session()->has('rol_existe'))
                                                         <script type="text/javascript">
                                                            $(document).ready(function () {
                                                                 alertify.@if(session()->has('success')) success('{{session('rol_existe')}}') @else error('{{session('rol_existe')}}') @endif;
                                                            });
                                                        </script>            
                                                    @endif 
                                                
                                                    <div class="col-md-5">
                                                        <h4 align="center">Ingreso de Área</h4>
                                                        <hr style=" background-color: red; height: 1px">
                                                        <form > 
                                                            
                                                                <div class="form-group row">
                                                                    <div class="col-md-2" id="inputId"></div>
                                                                    <div class="col-md-8" style="padding-top: 20px">
                                                                         <input type="text" id="Area" name="Area" class="form-control input-default" placeholder="Nombre del área" required title="Ingrese el nombre del área a registrar" >
                                                                    </div>
                                                                    <div class="col-md-2"></div>
                                                                </div>
                                                                <div class=" form-group row">
                                                                    <div class="col-md-2"></div>
                                                                    <div class="col-md-8" id="IngresarArea" >
                                                                        <button onclick="RegistrarArea()" type="button" class="btn btn-primary btn-block ">Ingresar </button>

                                                                    </div> 
                                                                   <div class="col-md-2"></div> 
                                                                </div>
                                                        </form>
                                                    </div>
                                                    <div class="col-md-7" >
                                                        <h4 align="center">Áreas Registradas</h4>
                                                        <hr style=" background-color: red; height: 1px">
                                                            <div class="table-responsive" style="overflow:scroll; height:230px; width:100%;">
                                                                <table class="table table-bordered table-sm " style="color: black" >
                                                                    <thead>
                                                                        <tr align="center"  >
                                                                            <th >Área</th>
                                                                            <th>Acción</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="table_Area">
                                                                        @if(isset($Areas))
                                                                            @foreach($Areas as $valor)
                                                                                <tr align="center">
                                                                                    <td >{{$valor['Descripcion']}}</td>
                                                                                    <td><button  type="button" class=" btn btn-info btn-sm" onclick="EditarArea('{{$valor['Id_Area']}}')">  <span class="ti-pencil-alt"></span></button>  <button  type="button" class=" btn btn-danger btn-sm" onclick="EliminarArea('{{$valor['Id_Area']}}')">  <span class="icon-trash"></span></button>
                                                                                    </td>
                                                                                </tr>
                                                                            @endforeach
                                                                        @endif
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="tab-pane fade" id="Roles" role="tabpanel">
                    <div class="p-t-15">
                                    
                             <div  class="row">
                                <div class="col-md-12" style="padding-top: 3%">             
                                    <div class="card" style="width: 100%; height: 100%">
                                        <div class="card-body">
                                            <div class="basic-form">
                                                <div class="row">

                                                    @if(session()->has('rol_existe'))
                                                         <script type="text/javascript">
                                                            $(document).ready(function () {
                                                                 alertify.@if(session()->has('success')) success('{{session('rol_existe')}}') @else error('{{session('rol_existe')}}') @endif;
                                                            });
                                                        </script>            
                                                    @endif 
                                                
                                                    <div class="col-md-5">
                                                        <h4 align="center">Ingreso de Roles</h4>
                                                        <hr style=" background-color: red; height: 1px">
                                                        <form > 
                                                            <div hidden id="inputIdRol"></div>
                                                                <div class="form-group row">
                                                                    <div class="col-md-8" style="padding-top: 20px">
                                                                         <input type="text" id="Rol" name="Rol" class="form-control input-default" placeholder="Nombre del rol" required title="Ingrese el nombre del rol a registrar" >
                                                                    </div>
                                                                    <div class="col-md-4" style="padding-top: 20px" >
                                                                         <input type="number" id="nivelRol" name="nivelRol" class="form-control input-default" placeholder="Nivel" required title="Ingrese el nivel del rol a registrar" >
                                                                    </div>
                                                                </div>
                                                                 <div class="form-group row">
                                                                    <div class="col-md-12" >
                                                                         <select name="AreaRol" id="AreaRol"  class="form-control input-default">
                                                                                <option value="">Seleccione el Área...</option>
                                                                            @if(isset($Areas))
                                                                              @foreach($Areas as $valor)
                                                                                <option value="{{$valor['Id_Area']}}">{{$valor['Descripcion']}}</option>
                                                                              @endforeach
                                                                            @endif
                                                                         </select>
                                                                    </div>

                                                                </div>
                                                                <div class=" form-group row">
                                                                    <div class="col-md-12" id="IngresarRol" >
                                                                        <button onclick="RegistrarRol()" type="button" class="btn btn-primary btn-block ">Ingresar </button>

                                                                    </div> 
                                                                </div>
                                                        </form>
                                                    </div>
                                                    <div class="col-md-7" >
                                                        <h4 align="center">Roles Registrados</h4>
                                                        <hr style=" background-color: red; height: 1px">
                                                            <div class="table-responsive" style="overflow:scroll; height:230px; width:100%;">
                                                                <table class="table table-bordered table-sm " style="color: black" >
                                                                    <thead>
                                                                        <tr align="center"  >
                                                                            <th >Rol</th>
                                                                            <th>Nivel</th>
                                                                            <th>Área</th>
                                                                            <th>Acción</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="table_Rol">
                                                                        @if(isset($Roles))
                                                                            @foreach($Roles as $valor)
                                                                                <tr align="center">
                                                                                    <td >{{$valor['Rol']}}</td>
                                                                                     <td >{{$valor['Nivel']}}</td>
                                                                                     <td >{{$valor['Area']}}</td>
                                                                                    <td><button  type="button" class=" btn btn-info btn-sm" onclick="EditarRol('{{$valor['Id_Roles']}}')">  <span class="ti-pencil-alt"></span></button>  <button  type="button" class=" btn btn-danger btn-sm" onclick="EliminarRol('{{$valor['Id_Roles']}}')">  <span class="icon-trash"></span></button>
                                                                                    </td>
                                                                                </tr>
                                                                            @endforeach
                                                                        @endif
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
               
                    </div>
                </div>
                <div class="tab-pane fade" id="Usuarios" role="tabpanel">
                    <div class="p-t-15">
                        <h4>This is icon title</h4>
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor.</p>
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor.</p>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
      <script src="{{ asset('js/AdministracionGeneral.js') }}"></script>
<!--       <script src="{{ asset('js/tablesorter.js') }}"></script> -->
 @endsection