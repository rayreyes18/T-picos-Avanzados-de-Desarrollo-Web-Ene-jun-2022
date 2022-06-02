<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bookstore;
use App\Models\Book;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator; 


class BookstoreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bookstores = Bookstore::all();
        return $bookstores;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required',
            'user_id' => 'required',
        ]);
        if ($validator->fails()){
            return $validator->errors();
        }
        $bookstore = Bookstore::create([
            'id' => $request->id,
            'Name' => $request->Name,
            'Mandated' => $request->Mandated,
            'Address' => $request->Address,
            'City' => $request->City,
            'Phone' => $request->Phone,
            'Mail' => $request->Mail,
            'Web' => $request->Web,
            'Review' => $request->Review,
            'Image' => $request->Image,
            'user_id' => $request->user_id
        ]);
        $bookstore->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $bookstore = Bookstore::where('City', $request -> City)->get();
        return $bookstore;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required'
            //'user_id' => 'required|exists:user_id',
        ]);
        if ($validator->fails()){
            return $validator->errors();
        }

        $bookstore = Bookstore::where('id', $request -> id)
        ->update(['Mandated' => $request -> Mandated,
        'Phone' => $request -> Phone,
        'Review' => $request -> Review]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $bookstore = Bookstore::where('id', $request -> id)->delete();
    }

    public function showToken(){
        echo csrf_token();
    }
}
