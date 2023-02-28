<?php

namespace App\Http\Controllers;

use App\Models\Kategoriak;
use Illuminate\Http\Request;

class KategoriakController extends Controller
{
    public function index(){
        $kategoriaks =  Kategoriak::all();
        return $kategoriaks;
    }
    
    public function show($id)
    {
        $kategoria = Kategoriak::find($id);
        return $kategoria;
    }
    public function destroy($id)
    {
        Kategoriak::find($id)->delete();
    }
    public function store(Request $request)
    {
        $Kategoria = new Kategoriak();
        $Kategoria->id = $request->id;
        $Kategoria->nev = $request->nev;
        $Kategoria->save();
    }

    public function update(Request $request, $id)
    {
        $Kategoria = Kategoriak::find($id);
        $Kategoria->id = $request->nev;
        $Kategoria->nev = $request->nev;
    }
}
