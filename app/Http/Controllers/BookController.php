<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Bookstore;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;


class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = Book::all();
        return $books;
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
            'bookstore_id' => 'required',
            'user_id' => 'required'
        ]);
        if ($validator->fails()){
            return $validator->errors();
        } 

            $book = Book::create([
            'id' => $request->id,
            'Tittle' => $request->Tittle,
            'Genre' => $request->Genre,
            'Editorial' => $request->Editorial,
            'Price' => $request->Price,
            'Author' => $request->Author,
            'Reading_age' => $request->Reading_age,
            'Format' => $request->Format,
            'Review' => $request->Review,
            'Score' => $request->Score,
            'Image' => $request->Image,
            'user_id' => $request->user_id,
            'bookstore_id' => $request->bookstore_id
            ]);
            $book->save();

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $book = Book::where('Author', $request -> Author)->get();
        return $book;
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
        ]);
        if ($validator->fails()){
            return $validator->errors();
        }

        /* Book::find($request -> id)
        $book => $request -> Price,
        $book => $request -> Format,
        $book => $request -> Review,
        $book => $request -> Score

        $book->save(); */
        
        $book = Book::where('id', $request->id)
        ->update(['Price'=>$request->Price, 
        'Format'=>$request->Format,
        'Review'=>$request->Review,
        'Score'=>$request->Score]);
    }

    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        //$book = Book::where('id', $request -> id)->delete();
        $book = Book::where('id', $request -> id)->delete();
    }

    public function showToken(){
        return csrf_token();
    }
}
