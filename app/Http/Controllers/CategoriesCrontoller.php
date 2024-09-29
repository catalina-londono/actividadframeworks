<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class CategoriesCrontoller extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories= Category::all();
        return response()->json([
            "status"=>Response::HTTP_OK,
            "message"=>"Lista de Categorias obtenida con exito",
            "data"=>$categories
        ], 
        Response::HTTP_OK
    );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $inputs=$request->input();
        $respuesta=Category::create($inputs);
        return response()->json([
            "status"=>Response::HTTP_CREATED,
            "message"=>"Categoria creada con exito",
            "data"=>$respuesta
        ], Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $existeid=Category::find($id);
        if($existeid){
         return response()->json([
             "status"=>Response::HTTP_OK,
             "message"=>" Registro de Categoria obtenido con exito",
             "data"=>$existeid
         ], 
         Response::HTTP_OK);
        }
        else{
         return response()->json([
             "status"=>Response::HTTP_CONFLICT,
             "message"=>" Registro no encontrado",
             "error"=>true
         ], 
         Response::HTTP_CONFLICT);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $existe=Category::find($id);
        if (isset($existe)){
            $existe->nombre=$request->nombre;
            $existe->descripcion=$request->descripcion;
            $existe->foto=$request->foto;
            if( $existe->save()){
                return response()->json([
                    "status"=>Response::HTTP_ACCEPTED,
                    "message"=>"Categoria actualizada con exito",
                    "data"=>$existe
                ], 
                Response::HTTP_ACCEPTED
            );
            }
            else{
                return response()->json([
                    "status"=>Response::HTTP_CONFLICT,
                    "error"=>true,
                    "message"=>"Categoria NO actualizada con exito",
                ], 
                Response::HTTP_CONFLICT
            );
            }
        }
        else{
            return response()->json([
                "status"=>Response::HTTP_CONFLICT,
                "message"=>"NO EXISTE EL REGISTRO CON ID =".$id,
            ], 
            Response::HTTP_CONFLICT
        );
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $esreal=Category::find($id);
        if (isset($esreal)){
            $res=Category::destroy($id);
            if($res){
                return response()->json([
                    "status"=>Response::HTTP_OK,
                    "message"=>" Registro de Categoria eliminado con exito",
                    "data"=>$esreal
                ], 
                Response::HTTP_OK);
            }
            else{
                return response()->json([
                    "status"=>Response::HTTP_CONFLICT,
                    "message"=>" Registro de categoria no eliminado con ID=".$id,
                    "error"=>true
                ], 
                Response::HTTP_CONFLICT);
            }
        }
        else{
            return response()->json([
                "status"=>Response::HTTP_CONFLICT,
                "message"=>" Registro de Categoria no existe",
                "error"=>true
            ], 
            Response::HTTP_CONFLICT);
        }
    }
}
