

<?php $__env->startSection('container'); ?>
    <h2><?php echo e($post->title); ?></h2>
    <p>By. <a href="#" class="text-decoration-none"><?php echo e($post->user->name); ?> </a> <a href="/categories/<?php echo e($post->category->slug); ?>" class="text-decoration-none"><?php echo e($post->category->name); ?></a></p>

    <h5><?php echo e($post->author); ?></h5>
    <?php echo $post->body; ?>


    <a href="/posts" class="d-block mt-3">Back To Posts</a>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\fowaz\Documents\applications\coba-laravel\resources\views/post.blade.php ENDPATH**/ ?>