<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BookstoreUser;
use App\Models\Bookstore;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class BookstoreUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bstoreus = Bookstore::pluck('id');
        $br = User::pluck('id');

        foreach ($bstoreus as $bstoreuser) {
            echo "user_id: ", $bstoreuser, "\n";
        }

        foreach ($br as $brs){
            echo "bookstore_id: ", $brs;

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
        $bookstores = $request->input("bookstore_id");
        $users = $request->input("user_id");
        $bstoreus = new BookstoreUser;
        $bstoreus->bookstore_id = $bookstores->bookstore_id;
        $bstoreus->user_id = $users->user_id;
        $bstoreus->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $bstoreus = BookstoreUser::where('bookstore_id', $request -> bookstore_id)->get();
        return $bstoreus;
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
