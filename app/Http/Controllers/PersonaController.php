<?php

namespace App\Http\Controllers;
use App\Persona;
use App\Http\Helper\ResponseBuilder;
use Illuminate\Http\Request;
use Laravel\Lumen\Routing\Controller as BaseController;



class PersonaController extends BaseController
{

#Listar todas las personas
    public function index(Request $request){
   		$personas = Persona::all();
   		return response()->json($personas, 200);
	}

#Crear una persona
	public function createPersona(Request $request){
   	$persona = new Persona();
   	$persona->nombres = $request->nombres;
   	$persona->apellidos = $request->apellidos;
   	$persona->fecha_nacimiento = $request->fecha_nacimiento;
	$persona->celular = $request->celular;
   	$persona->correo = $request->correo;		
   	$persona->save();
	return response()->json($persona, 200);
	}

}
