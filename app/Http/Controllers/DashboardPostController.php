<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class DashboardPostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    // untuk menampilkan semua data post berdasarkan user tertentu
    public function index()
    {

        return view('dashboard.posts.index', [
            'posts' => Post::where('user_id', auth()->user()->id)->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    // menampilkan halaman tambah postingan
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    // menjalankan fungsi tambah 
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    // fungsi lihat detail stiap postingan
    public function show(Post $post)
    {
        return view('dashboard.posts.show', [
            'post' => $post
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    //halaman untuk menampilkan ubah data 
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    // halaman untuk proses ubah datanya
    public function update(Request $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    // untuk delete postingan
    public function destroy(Post $post)
    {
        //
    }
}
