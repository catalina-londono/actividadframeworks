<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $u = User::all();
        return response()->json(
            [
                "status" => Response::HTTP_OK,
                "message" => "Lista de Usuarios obtenida con exito",
                "data" => $u
            ],
            Response::HTTP_OK
        );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $inputs = $request->input();
        $inputs['password'] = Hash::make(trim($request->password));
        $respuesta = User::create($inputs);
        return response()->json([
            "status" => Response::HTTP_CREATED,
            "message" => "Usuario creado con exito",
            "data" => $respuesta
        ], Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $u = User::find($id);
        if (isset($u)) {
            $u->name = $request->name;
            $u->email = $request->email;
            $u->password = Hash::make(trim($request->password));
            if ($u->save()) {
                return response()->json([
                    "status" => Response::HTTP_ACCEPTED,
                    "message" => "Usuario actualizado con exito",
                    "data" => $u
                ], Response::HTTP_ACCEPTED);
            } else {
                return response()->json(
                    [
                        "status" => Response::HTTP_BAD_REQUEST,
                        "error" => true,
                        "message" => "No se actualizó el usuario con ID: " . $id,
                    ],
                    Response::HTTP_BAD_REQUEST
                );
            }
        } else {
            return response()->json(
                [
                    "status" => Response::HTTP_CONFLICT,
                    "error" => true,
                    "message" => "No existe el usuario con ID: " . $id,
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
        $u = User::find($id);
        if (isset($u)) {
            $res = User::destroy($id);
            if ($res) {
                return response()->json([
                    "status" => Response::HTTP_OK,
                    "message" => "Usuario eliminado con exito",
                    "data" => $u
                ], Response::HTTP_OK);
            } else {
                return response()->json(
                    [
                        "status" => Response::HTTP_BAD_REQUEST,
                        "error" => true,
                        "message" => "No se pudo eliminar el usuario con ID: " . $id,
                    ],
                    Response::HTTP_BAD_REQUEST
                );
            }
        } else {
            return response()->json(
                [
                    "status" => Response::HTTP_CONFLICT,
                    "error" => true,
                    "message" => "No existe el usuario con ID: " . $id,
                ],
                Response::HTTP_CONFLICT
            );
        }
    }
}
