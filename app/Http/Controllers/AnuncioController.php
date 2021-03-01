<?php

namespace App\Http\Controllers;

use App\Anuncio;
use App\Postulacion;
use App\Http\Helper\ResponseBuilder;
use Illuminate\Http\Request;
use Laravel\Lumen\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;


class AnuncioController extends BaseController
{
#Listar todos los anuncios
    public function index(Request $request){
   		$anuncios = Anuncio::all();
   		return response()->json($anuncios, 200);
	}
#Crear anuncio
	public function createAnuncio(Request $request){
   	$anuncio = new Anuncio();
   	$anuncio->titulo = $request->titulo;
   	$anuncio->puesto = $request->puesto;
   	$anuncio->descripcion = $request->descripcion;
   	$anuncio->area = $request->area;
   	$anuncio->pais = "Ecuador";
   	$anuncio->provincia = $request->provincia;
   	$anuncio->ciudad = $request->ciudad;
   	$anuncio->direccion = $request->direccion;
	   $anuncio->persona_id = $request->persona_id;
   	$anuncio->save();
      return response()->json($anuncio, 200);
	}

#Listar anuncios por consulta
	public function getAnuncio(Request $request, $consulta){
   	$anuncios = DB::select("SELECT * FROM modelo_anuncio WHERE titulo LIKE '%".$consulta."%'");
   	return response()->json($anuncios, 200);  		
	}	

#Modificar anuncio
   public function modifyAnuncio(Request $request, $id){
    $anuncio = Anuncio::where('anuncio_id', $id)->first();
    $anuncio->titulo = $request->titulo;
    $anuncio->puesto = $request->puesto;
    $anuncio->descripcion = $request->descripcion;
    $anuncio->area = $request->area;
    $anuncio->provincia = $request->provincia;
    $anuncio->ciudad = $request->ciudad;
    $anuncio->direccion = $request->direccion;
    $anuncio->save();     
    return response()->json($anuncio, 200);
   }  

#Eliminar anuncio
   public function deleteAnuncio(Request $request, $id){
    $postulaciones = Postulacion::where('anuncio_id', $id)->get();
    foreach ($postulaciones as $postul) {
      $postul->delete();
    }
    $anuncio = Anuncio::where('anuncio_id', $id)->first();
    $anuncio->delete();          
   }  


}
