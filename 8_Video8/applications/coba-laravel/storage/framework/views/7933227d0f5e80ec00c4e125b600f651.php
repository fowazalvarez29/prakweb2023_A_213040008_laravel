

<?php $__env->startSection('container'); ?>
    <h1 class="mb-5">Halaman About</h1>
    
    <?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <article class="mb-5">
        <h2>
            <a href="/posts/<?php echo e($post->slug); ?>"><?php echo e($post->title); ?></a>
        </h2>
        <h5><?php echo e($post->author); ?> </h5>
        <p><?php echo e($post->excerpt); ?> </p>
    </article>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\fowaz\Documents\applications\coba-laravel\resources\views/posts.blade.php ENDPATH**/ ?>