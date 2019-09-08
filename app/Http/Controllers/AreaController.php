<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AreaModel;

class AreaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function __construct(AreaModel $area)
    {
        $this->area=$area;
    }

   public function index(AreaModel $area)
    {
        return $area->get();
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
      return $this->area->create($input);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
          return $this->area->find($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {

        // return $id;
        // return  $request->all();
    
      // dd($this->area->where('idAreas', $id)->get());
      $input = $request->all();

      $this->area::where('Id_Area', $id)->update($input);
      return $this->area->find($id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

       $area = $this->area->destroy($id);
   
    }
}