<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Bookstorecomment;
use App\Models\Bookstore;
use App\Models\User;
use Illuminate\Support\Facades\Validator;

class BookstorecommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bookstorecomments = Bookstorecomment::all();
        return $bookstorecomments;
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
            'bookstore_id' => 'required'
            
        ]);
        if ($validator->fails()){
            return $validator->errors();
        }
        $bookstorecomment = Bookstorecomment::create([
            'id' => $request->id,
            'Review' => $request->Review,
            'user_id' => $request->user_id,
            'bookstore_id' => $request->bookstore_id
        ]);
        $bookstorecomment->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $bookstorecomment = Bookstorecomment::where('bookstore_id', $request -> bookstore_id)->get();
        return $bookstorecomment;
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
            'id' => 'required',
            'Review' => 'required',
        ]);
        if ($validator->fails()){
            return $validator->errors();
        }
        $bookstorecomment = Bookstorecomment::where('id', $request -> id)
                ->update(['Review'=> $request -> Review]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $bookstorecomment = Bookstorecomment::where('id', $request -> id)->delete();
    }

    public function showToken(){
        echo csrf_token();
    }
}
