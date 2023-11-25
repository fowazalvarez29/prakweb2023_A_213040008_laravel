<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {


        User::create([
            'name' => 'Fowaz Amran',
            'username' => 'fowazamran',
            'email' => 'fowazamran@gmail.com',
            'password' => bcrypt('12345')
        ]);


        // User::create([
        //     'name' => 'Amran Alvarez',
        //     'email' => 'amranalvarez@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam, dicta vero temporibus iusto magni qui aliquid libero, odit odio laborum incidunt accusantium ex laboriosam cum nam provident tempora iste facere praesentium eos, delectus itaque nesciunt repellat eum? Ut praesentium dolorem adipisci asperiores voluptates facere qui eum quas consequatur rerum, sint exercitationem neque voluptatem deleniti cumque maiores voluptatum amet doloremque aspernatur aperiam repellendus magni. Corporis ipsum beatae officiis ea maxime rerum fuga nihil. Nesciunt, repellendus magnam error excepturi alias sequi quae aliquid facilis unde ipsum quibusdam eveniet voluptate aut, numquam quaerat hic. Dolor quod eligendi consequuntur ad et quo, cupiditate illo.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam, dicta vero temporibus iusto magni qui aliquid libero, odit odio laborum incidunt accusantium ex laboriosam cum nam provident tempora iste facere praesentium eos, delectus itaque nesciunt repellat eum? Ut praesentium dolorem adipisci asperiores voluptates facere qui eum quas consequatur rerum, sint exercitationem neque voluptatem deleniti cumque maiores voluptatum amet doloremque aspernatur aperiam repellendus magni. Corporis ipsum beatae officiis ea maxime rerum fuga nihil. Nesciunt, repellendus magnam error excepturi alias sequi quae aliquid facilis unde ipsum quibusdam eveniet voluptate aut, numquam quaerat hic. Dolor quod eligendi consequuntur ad et quo, cupiditate illo.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam, dicta vero temporibus iusto magni qui aliquid libero, odit odio laborum incidunt accusantium ex laboriosam cum nam provident tempora iste facere praesentium eos, delectus itaque nesciunt repellat eum? Ut praesentium dolorem adipisci asperiores voluptates facere qui eum quas consequatur rerum, sint exercitationem neque voluptatem deleniti cumque maiores voluptatum amet doloremque aspernatur aperiam repellendus magni. Corporis ipsum beatae officiis ea maxime rerum fuga nihil. Nesciunt, repellendus magnam error excepturi alias sequi quae aliquid facilis unde ipsum quibusdam eveniet voluptate aut, numquam quaerat hic. Dolor quod eligendi consequuntur ad et quo, cupiditate illo.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam, dicta vero temporibus iusto magni qui aliquid libero, odit odio laborum incidunt accusantium ex laboriosam cum nam provident tempora iste facere praesentium eos, delectus itaque nesciunt repellat eum? Ut praesentium dolorem adipisci asperiores voluptates facere qui eum quas consequatur rerum, sint exercitationem neque voluptatem deleniti cumque maiores voluptatum amet doloremque aspernatur aperiam repellendus magni. Corporis ipsum beatae officiis ea maxime rerum fuga nihil. Nesciunt, repellendus magnam error excepturi alias sequi quae aliquid facilis unde ipsum quibusdam eveniet voluptate aut, numquam quaerat hic. Dolor quod eligendi consequuntur ad et quo, cupiditate illo.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
