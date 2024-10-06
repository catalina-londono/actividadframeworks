<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Traits\ApiResponse2;
use Illuminate\Http\Request;
use Illuminate\Http\Response;


class PostsCrontoller extends Controller
{
    use ApiResponse2;
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts = Post::all();
        return response()->json(
            [
                "status" => Response::HTTP_OK,
                "message" => "Lista de Posts obtenida con exito",
                "data" => $posts
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
        $respuesta = Post::create($inputs);
        return response()->json(
            [
                "status" => Response::HTTP_CREATED,
                "message" => "Posts creado con exito",
                "data" => $respuesta
            ],
            Response::HTTP_CREATED
        );
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $existeid = Post::find($id);
        if ($existeid) {
            return response()->json(
                [
                    "status" => Response::HTTP_OK,
                    "message" => " Registro de Post obtenido con exito",
                    "data" => $existeid
                ],
                Response::HTTP_OK
            );
        } else {
            return response()->json(
                [
                    "status" => Response::HTTP_CONFLICT,
                    "message" => " Registro de Post no obtenido con exito",
                    "error" => true
                ],
                Response::HTTP_CONFLICT
            );
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $existe = Post::find($id);
        if (isset($existe)) {
            $existe->titulo = $request->titulo;
            $existe->contenido = $request->contenido;
            $existe->autor = $request->autor;
            if ($existe->save()) {
                return response()->json(
                    [
                        "status" => Response::HTTP_ACCEPTED,
                        "message" => "Posts actualizado con exito",
                        "data" => $existe
                    ],
                    Response::HTTP_ACCEPTED
                );
            } else {
                return response()->json(
                    [
                        "status" => Response::HTTP_CONFLICT,
                        "error" => true,
                        "message" => "Posts NO actualizado con exito",
                    ],
                    Response::HTTP_CONFLICT
                );
            }
        } else {
            return response()->json(
                [
                    "status" => Response::HTTP_CONFLICT,
                    "message" => "NO EXISTE EL REGISTRO CON ID =" . $id,
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
        $esreal = Post::find($id);
        if (isset($esreal)) {
            $res = Post::destroy($id);
            if ($res) {
                return response()->json(
                    [
                        "status" => Response::HTTP_OK,
                        "message" => " Registro de Post eliminado con exito",
                        "data" => $esreal
                    ],
                    Response::HTTP_OK
                );
            } else {
                return response()->json(
                    [
                        "status" => Response::HTTP_CONFLICT,
                        "message" => " Registro de Post no eliminado con ID=" . $id,
                        "error" => true
                    ],
                    Response::HTTP_CONFLICT
                );
            }
        } else {
            return response()->json(
                [
                    "status" => Response::HTTP_CONFLICT,
                    "message" => " Registro de Post no existe",
                    "error" => true
                ],
                Response::HTTP_CONFLICT
            );
        }
    }
    public function CategoriaXPost($id)
    { // para mirar qué categoría tiene cada Post

        $post = Post::find($id);

        if (!$post) {
            return $this->errorResponse('Post no encontrado', 404);
        }
        $categories = $post->categories;

        return $this->successResponse($categories, 'Categorias a la que pertenece el post');
    }

    public function asignarCategoriaPost(Request $request)
    {

        $postId = $request->input('post_id');
        $categoryId = $request->input('category_id');

        $post = Post::find($postId);
        if (!$post) {
            return $this->errorResponse('Post no encontrado', 404);
        }

        $category = Category::find($categoryId);
        if (!$category) {
            return $this->errorResponse('Categoria no encontrada', 404);
        }

        if ($post->categories()->where('post_id', $categoryId)->exists()) {
            return $this->errorResponse('Ya fue asignado ese post a la categoria', 400);
        }

        $post->categories()->attach($categoryId);

        $data = [
            'post' => [
                'id' => $post->id,
                'titulo' => $post->titulo,
                'contenido' => $post->contenido,
                'autor' => $post->autor,
            ],
            'category' => [
                'id' => $category->id,
                'nombre' => $category->nombre,
                'descripcion' => $category->descripcion,
                'foto' => $category->foto,
            ]
        ];
        return $this->successResponse($data, 'Post categorizado con éxito');
    }

    public function eliminarPostDeCategoria(Request $request)
    {
        $postId = $request->input('post_id');
        $categoryId = $request->input('category_id');

        // validar si el post existe
        $post = Post::find($postId);

        if (!$post) {
            return $this->errorResponse('Post no encontrado', 400);
        }

        // validar que la categoría exista
        $category = Category::find($categoryId);

        if (!$category) {
            return $this->errorResponse('Categoría no encontrada', 400);
        }

        // validar que el post esté en la categoría
        if (!$post->categories()->where('category_id', $categoryId)->exists()) {
            return $this->errorResponse('El post no está en la categoría', 400);
        }

        // eliminar post de categoría
        $post->categories()->detach($categoryId);

        // preparar la data de respuesta
        $data = [
            'post' => [
                'id' => $post->id,
                'titulo' => $post->titulo,
                'contenido' => $post->contenido,
                'autor' => $post->autor,
            ],
            'category' => [
                'id' => $category->id,
                'nombre' => $category->nombre,
                'descripcion' => $category->descripcion,
                'foto' => $category->foto,
            ]
        ];

        return $this->successResponse($data, 'Post eliminado con éxito de la categoría');
    }
}
