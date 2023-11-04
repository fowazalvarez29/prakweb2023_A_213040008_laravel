

<?php $__env->startSection('container'); ?>
    <h2><?php echo e($post["title"]); ?></h2>
    <h5><?php echo e($post["author"]); ?></h5>
    <p><?php echo e($post["body"]); ?></p>

    <a href="/posts">Back To Posts</a>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\fowaz\Documents\applications\coba-laravel\resources\views/post.blade.php ENDPATH**/ ?>