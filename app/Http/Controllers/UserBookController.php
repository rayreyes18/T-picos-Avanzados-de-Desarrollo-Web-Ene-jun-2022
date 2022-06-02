<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BookUser;
use App\Models\Bookstore;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class UserBookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bookus = Book::pluck('id');
        $br = User::pluck('id');

        foreach ($bookus as $bookuser) {
            echo "user_id: ", $bookuser, "\n";
        }

        foreach ($br as $brs){
            echo "book_id: ", $brs;

        }
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
        $books = $request->input("book_id");
        $users = $request->input("user_id");
        $bookus = new BookUser;
        $bookus->book_id = $books->book_id;
        $bookus->user_id = $users->user_id;
        $bookus->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $bookus = BookUser::where('book_id', $request -> book_id)->get();
        return $bookus;
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
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function showToken(){
        echo csrf_token();
    }
}
