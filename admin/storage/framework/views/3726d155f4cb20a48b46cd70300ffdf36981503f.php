<?php $__env->startSection('main'); ?>
<div class="content-wrapper" ng-controller="driver_management">
  <section class="content-header">
    <h1> Edit Vehicle Make  </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo e(url(LOGIN_USER_TYPE.'/dashboard')); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?php echo e(url(LOGIN_USER_TYPE.'/vehicle_make')); ?>">Vehicle Make</a></li>
        <li class="active">Edit</li>
    </ol>
  </section>
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-info">
          <div class="box-header with-border">
            <h3 class="box-title">Edit Vehicle Make Form</h3>
          </div>
          <?php echo Form::open(['url' => LOGIN_USER_TYPE.'/edit-vehicle-make/'.$result->id, 'class' => 'form-horizontal','files' => true]); ?>

          <div class="box-body">
            <span class="text-danger">(*)Fields are Mandatory</span>
            <div class="form-group">
              <label for="input_first_name" class="col-sm-3 control-label">Vehicle Make<em class="text-danger">*</em></label>
              <div class="col-md-7 col-sm-offset-1">
                <?php echo Form::text('make_vehicle_name', $result->make_vehicle_name, ['class' => 'form-control', 'id' => 'input_make_name', 'placeholder' => 'Make Name']); ?>

                <span class="text-danger"><?php echo e($errors->first('make_vehicle_name')); ?></span>
              </div>
            </div>
            <div class="form-group">
              <label for="input_status" class="col-sm-3 control-label">Status<em class="text-danger">*</em></label>
              <div class="col-md-7 col-sm-offset-1">
                <?php echo Form::select('status', array('Active' => 'Active', 'Inactive' => 'Inactive'), $result->status, ['class' => 'form-control', 'id' => 'input_status', 'placeholder' => 'Select']); ?>

                <span class="text-danger"><?php echo e($errors->first('status')); ?></span>
              </div>
            </div>
          </div>
          <div class="box-footer text-center">
            <button type="submit" class="btn btn-info" name="submit" value="submit">Submit</button>
             <a href="<?php echo e(url(LOGIN_USER_TYPE.'/vehicle_make')); ?>" class="btn btn-default">Cancel</a>
          </div>
          <?php echo Form::close(); ?>

        </div>
      </div>
    </div>
  </section>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u536447607/domains/buskart.in/public_html/book/resources/views/admin/make_vehicle/edit.blade.php ENDPATH**/ ?>