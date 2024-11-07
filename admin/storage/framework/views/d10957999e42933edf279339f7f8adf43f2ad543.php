<?php $__env->startSection('main'); ?>
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Add Help Sub Category
      </h1>
      <ol class="breadcrumb">
        <li><a href="dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="help_subcategory">Help Sub Category</a></li>
        <li class="active">Add</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content" ng-controller="category_language">
      <div class="row">
        <!-- right column -->
        <div class="col-md-12">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Add Help Sub Category Form</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
              <?php echo Form::open(['url' => 'admin/add_help_subcategory', 'class' => 'form-horizontal']); ?>

              <div class="box-body">
              <span class="text-danger">(*)Fields are Mandatory</span>
              <div class="form-group">
                  <label for="input_status" class="col-sm-3 control-label">Language<em class="text-danger">*</em></label>

                  <div class="col-md-7 col-sm-offset-1">
                    <?php echo Form::select('language_code',$language, 'en', ['class' => 'form-control', 'id' => 'input_status', 'placeholder' => 'Select','disabled'=>'disabled']); ?>

                    <span class="text-danger"><?php echo e($errors->first('language_code')); ?></span>
                  </div>
                </div>
                <div class="form-group">
                  <label for="input_name" class="col-sm-3 control-label">Name<em class="text-danger">*</em></label>

                  <div class="col-md-7 col-sm-offset-1">
                    <?php echo Form::text('name', '', ['class' => 'form-control', 'id' => 'input_name', 'placeholder' => 'Name']); ?>

                    <span class="text-danger"><?php echo e($errors->first('name')); ?></span>
                  </div>
                </div>
                <div class="form-group">
                  <label for="input_category" class="col-sm-3 control-label">Category<em class="text-danger">*</em></label>
                  <div class="col-md-7 col-sm-offset-1">
                    <?php echo Form::select('category_id', $category->pluck('name', 'id'), '', ['class' => 'form-control', 'id' => 'input_category_id', 'placeholder' => 'Select']); ?>

                    <span class="text-danger"><?php echo e($errors->first('category_id')); ?></span>
                  </div>
                </div>
                <div class="form-group">
                  <label for="input_description" class="col-sm-3 control-label">Description</label>

                  <div class="col-md-7 col-sm-offset-1">
                    <?php echo Form::textarea('description', '', ['class' => 'form-control', 'id' => 'input_description', 'placeholder' => 'Description', 'rows' => 3]); ?>

                    <span class="text-danger"><?php echo e($errors->first('description')); ?></span>
                  </div>
                </div>
                <div class="form-group">
                  <label for="input_status" class="col-sm-3 control-label">Status<em class="text-danger">*</em></label>

                  <div class="col-md-7 col-sm-offset-1">
                    <?php echo Form::select('status', array('Active' => 'Active', 'Inactive' => 'Inactive'), '', ['class' => 'form-control', 'id' => 'input_status', 'placeholder' => 'Select']); ?>

                    <span class="text-danger"><?php echo e($errors->first('status')); ?></span>
                  </div>
                </div>
              </div>

               <div class="panel" ng-init="translations = <?php echo e(json_encode(old('translations') ?: array())); ?>; removed_translations =  []; errors = <?php echo e(json_encode($errors->getMessages())); ?>;" ng-cloak>
                  <div class="panel-header">
                    <h4 class="box-title text-center">Translations</h4>
                  </div>
                  <div class="panel-body">
                    <input type="hidden" name="removed_translations" ng-value="removed_translations.toString()">
                    <div class="row" ng-repeat="translation in translations">
                      <input type="hidden" name="translations[{{$index}}][id]" value="{{translation.id}}">
                      <div class="form-group">
                        <label for="input_language_{{$index}}" class="col-sm-3 control-label">Language<em class="text-danger">*</em></label>
                        <div class="col-md-7 col-sm-offset-1">
                          <select name="translations[{{$index}}][locale]" class="form-control" id="input_language_{{$index}}" ng-model="translation.locale" >
                            <option value="" ng-if="translation.locale == ''">Select Language</option>
                            <?php $__currentLoopData = $languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <option value="<?php echo e($key); ?>" ng-if="(('<?php echo e($key); ?>' | checkKeyValueUsedInStack : 'locale': translations) || '<?php echo e($key); ?>' == translation.locale) && '<?php echo e($key); ?>' != 'en'"><?php echo e($value); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                          </select>
                          <span class="text-danger ">{{ errors['translations.'+$index+'.locale'][0] }}</span>
                        </div>
                        <div class="col-sm-1 p-0">
                          <button class="btn btn-danger btn-xs" ng-click="translations.splice($index, 1); removed_translations.push(translation.id)">
                            <i class="fa fa-trash"></i>
                          </button>
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="input_name_{{$index}}" class="col-sm-3 control-label">Name<em class="text-danger">*</em></label>
                        <div class="col-md-7 col-sm-offset-1">
                          <?php echo Form::text('translations[{{$index}}][name]', '{{translation.name}}', ['class' => 'form-control', 'id' => 'input_name_{{$index}}', 'placeholder' => 'Name']); ?>

                          <span class="text-danger ">{{ errors['translations.'+$index+'.name'][0] }}</span>
                        </div>
                      </div>

                      <div class="form-group"  ng-init="multiple_editors($index)">
                        <label for="input_content_{{$index}}" class="col-sm-3 control-label">Description</label>
                        <div class="col-md-7 col-sm-offset-1">
                          <textarea class="form-control" id="description_{{$index}}" name="translations[{{$index}}][description]">{{translation.description}}</textarea>
                          <span class="text-danger ">{{ errors['translations.'+$index+'.description'][0] }}</span>
                        </div>
                      </div>

                      <legend ng-if="$index+1 < translations.length"></legend>
                    </div>
                  </div>
                  <div class="panel-footer">
                    <div class="row" ng-show="translations.length <  <?php echo e(count($languages) - 1); ?>">
                      <div class="col-sm-10 col-sm-offset-1 text-center">
                        <button type="button" class="btn btn-info" ng-click="translations.push({locale:''});" >
                          <i class="fa fa-plus"></i> Add Translation
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              
              </div>
              <!-- /.box-body -->
              <div class="box-footer text-center">
                <button type="submit" class="btn btn-info" name="submit" value="submit">Submit</button>
                 <button type="submit" class="btn btn-default" name="cancel" value="cancel">Cancel</button>
              </div>
              <!-- /.box-footer -->
            <?php echo Form::close(); ?>

          </div>
          <!-- /.box -->
        </div>
        <!--/.col (right) -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u536447607/domains/buskart.in/public_html/book/resources/views/admin/help_subcategory/add.blade.php ENDPATH**/ ?>