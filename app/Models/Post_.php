<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Tulisan Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Fowaz Alvarez",
            "body" => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus modi tempore labore officia, molestias, nemo voluptas facilis assumenda saepe vero reprehenderit incidunt in ea consectetur dolor quidem dolore vel doloremque ratione necessitatibus fugiat reiciendis repudiandae. Dicta accusantium consequuntur dignissimos voluptate hic eius aut deserunt quos praesentium dolorem laborum ratione eum, quae neque, ad veritatis dolorum atque qui porro tempore iure fuga ea explicabo. Earum enim velit, eos sed facere consequuntur maxime explicabo minus, neque magnam accusamus ipsum? Quis, accusantium reiciendis."
        ],
        [
            "title" => "Judul Tulisan Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Amran Alvarez",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab quibusdam omnis saepe? Debitis perspiciatis nostrum fugiat, animi, accusantium magnam molestiae nihil vitae, ratione nesciunt harum nam hic ex blanditiis unde maiores recusandae atque possimus repellendus necessitatibus excepturi quasi. Corporis iste, eveniet similique hic voluptates exercitationem dicta officiis libero ipsam! Voluptatum, facilis accusamus? Aspernatur deleniti, iure neque ullam omnis explicabo nemo, eos voluptatibus vero necessitatibus quia nostrum sunt odit! Perspiciatis quasi iure voluptate consequuntur in fugit neque totam aliquid atque cumque omnis nulla beatae tempore, blanditiis mollitia doloremque commodi iste voluptates expedita. Laudantium dolorum repudiandae minima beatae velit molestias, corporis incidunt!"
        ],
    ];

public static function all() 
    {
    return collect(self::$blog_posts);
    }

    public static function find ($slug)
    {
        $posts = static::all();
        // $post = [];
        // foreach($posts as $p) {
        //     if($post["slug"] === $slug) {
        //         $post = $p;
        //     }
        // }
        return $posts -> firstWhere('slug', $slug);
    }

}
