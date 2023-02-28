<?php

namespace App\Http\Controllers;

use App\Models\Ingatlanok;
use Illuminate\Http\Request;

class IngatlanokController extends Controller
{
    public function index(){
        $ingatlanoks =  Ingatlanok::all();
        return $ingatlanoks;
    }
    
    public function show($id)
    {
        $ingatlan = Ingatlanok::find($id);
        return $ingatlan;
    }
    public function destroy($id)
    {
        Ingatlanok::find($id)->delete();
    }
    public function store(Request $request)
    {
        $Ingatlan = new Ingatlanok();
        $Ingatlan->id = $request->id;
        $Ingatlan->kategoria = $request->kategoria;
        $Ingatlan->leiras = $request->leiras;
        $Ingatlan->hirdetes_datuma = $request->hirdetes_datuma;
        $Ingatlan->tehermentes = $request->tehermentes;
        $Ingatlan->ar = $request->ar;
        $Ingatlan->kep_URL = $request->kep_URL;
        $Ingatlan->save();
    }

    public function update(Request $request, $id)
    {
        $Ingatlan = Ingatlanok::find($id);
        $Ingatlan->id = $request->id;
        $Ingatlan->kategoria = $request->kategoria;
        $Ingatlan->leiras = $request->leiras;
        $Ingatlan->hirdetes_datuma = $request->hirdetes_datuma;
        $Ingatlan->tehermentes = $request->tehermentes;
        $Ingatlan->ar = $request->ar;
        $Ingatlan->kep_URL = $request->kep_URL;
    }
}
