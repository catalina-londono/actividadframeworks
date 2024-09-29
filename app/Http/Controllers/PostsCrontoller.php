<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class PostsCrontoller extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts= Post::all();
        return response()->json([
            "status"=>Response::HTTP_OK,
            "message"=>"Lista de Posts obtenida con exito",
            "data"=>$posts
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
        $respuesta=Post::create($inputs);
        return response()->json([
            "status"=>Response::HTTP_CREATED,
            "message"=>"Posts creado con exito",
            "data"=>$respuesta
        ], 
        Response::HTTP_CREATED
    );
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
       $existeid=Post::find($id);
       if($existeid){
        return response()->json([
            "status"=>Response::HTTP_OK,
            "message"=>" Registro de Post obtenido con exito",
            "data"=>$existeid
        ], 
        Response::HTTP_OK);
       }
       else{
        return response()->json([
            "status"=>Response::HTTP_CONFLICT,
            "message"=>" Registro de Post no obtenido con exito",
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
        $existe=Post::find($id);
        if (isset($existe)){
            $existe->titulo=$request->titulo;
            $existe->contenido=$request->contenido;
            $existe->autor=$request->autor;
            if( $existe->save()){
                return response()->json([
                    "status"=>Response::HTTP_ACCEPTED,
                    "message"=>"Posts actualizado con exito",
                    "data"=>$existe
                ], 
                Response::HTTP_ACCEPTED
            );
            }
            else{
                return response()->json([
                    "status"=>Response::HTTP_CONFLICT,
                    "error"=>true,
                    "message"=>"Posts NO actualizado con exito",
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
        $esreal=Post::find($id);
        if (isset($esreal)){
            $res=Post::destroy($id);
            if($res){
                return response()->json([
                    "status"=>Response::HTTP_OK,
                    "message"=>" Registro de Post eliminado con exito",
                    "data"=>$esreal
                ], 
                Response::HTTP_OK);
            }
            else{
                return response()->json([
                    "status"=>Response::HTTP_CONFLICT,
                    "message"=>" Registro de Post no eliminado con ID=".$id,
                    "error"=>true
                ], 
                Response::HTTP_CONFLICT);
            }
        }
        else{
            return response()->json([
                "status"=>Response::HTTP_CONFLICT,
                "message"=>" Registro de Post no existe",
                "error"=>true
            ], 
            Response::HTTP_CONFLICT);
        }
    }
}
