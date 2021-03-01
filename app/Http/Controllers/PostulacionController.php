<?php

namespace App\Http\Controllers;

use App\Postulacion;
use App\Anuncio;
use App\Persona;
use App\Http\Helper\ResponseBuilder;
use Illuminate\Http\Request;
use Laravel\Lumen\Routing\Controller as BaseController;



class PostulacionController extends BaseController
{

#Listar todas las postulaciones
    public function index(Request $request){
   		$postulaciones = Postulacion::all();
   		return response()->json($postulaciones, 200);
	}

#Crear una postulacion
	public function createPostulacion(Request $request){
   	$anuncio = Anuncio::where('anuncio_id', $request->anuncio_id)->first();
    $persona = Persona::where('persona_id', $request->persona_id)->first();
    $postulacion = new Postulacion();
   	$postulacion->salario = $request->salario;
   	$postulacion->mensaje = $request->mensaje;
   	$postulacion->anuncio_id = $anuncio->anuncio_id;
	  $postulacion->persona_id = $persona->persona_id;
   	$postulacion->save();
     return response()->json($postulacion, 200);
	}

#Listar postulaciones por anuncio
  public function getPostulacion(Request $request, $id){
    $postulaciones = Postulacion::where('anuncio_id', $id)->get();
    return response()->json($postulaciones, 200);      
  }

  #Eliminar postulacion
   public function deletePostulacion(Request $request, $id){
    $postulacion = Postulacion::where('postulacion_id', $id)->first();
    $postulacion->delete();        
    return response()->json(200);
   }     

}
