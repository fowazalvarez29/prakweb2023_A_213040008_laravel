

<?php $__env->startSection('container'); ?>
<h1 class="mb-5">Halaman Categories</h1>
    
    <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    
    <ul>
        <li>
        <h2><a href="/categories/<?php echo e($category->slug); ?>"><?php echo e($category->name); ?></a></h2>
        </li>
    </ul>

    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\fowaz\Documents\applications\coba-laravel\resources\views/categories.blade.php ENDPATH**/ ?>