<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SubAreaModel;
use DB;
class SubAreaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct(SubAreaModel $SubArea)
    {
        $this->SubArea=$SubArea;
    }

    public function index(SubAreaModel $SubArea)
    {      
        return $SubArea->get();
    }

//TRAE LAS AREAS CON SUS SUBAREAS EN GENERAL
    public function AreaSubArea(){
        $SubArea=DB::table('sub_area')
        ->join('area','area.Id_Area','=','sub_area.Id_Area')
        ->select('area.Id_Area as Id_Area',
                 'area.Descripcion as Area',
                 'sub_area.Id_Sub_Area as Id_Sub_Area',
                 'sub_area.Descripcion as SubArea')
        ->get();
        return Response()->json($SubArea);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
        return $this->SubArea->create($input);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return $this->SubArea->find($id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

      $input = $request->all();

      $this->SubArea::where('Id_Sub_Area', $id)->update($input);
      return $this->SubArea->find($id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         $SubArea = $this->SubArea->destroy($id);
    }
}
