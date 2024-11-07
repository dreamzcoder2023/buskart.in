<?php $__env->startSection('main'); ?>
<div class="content-wrapper">
	<section class="content-header">
		<h1> View Referral Details </h1>
		<ol class="breadcrumb">
			<li>
				<a href="<?php echo e(url(LOGIN_USER_TYPE.'/dashboard')); ?>"><i class="fa fa-dashboard"></i> Home </a>
			</li>
			<li>
				<a href="<?php echo e(url(LOGIN_USER_TYPE.'/referrals/'.$user_type)); ?>"> Referral </a>
			</li>
			<li class="active">
				Details
			</li>
		</ol>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box ">
					<div class="box-header with-border">
						<!-- <h3 class="box-title">Referral Details</h3> -->
					</div>
					<div class="box-body">
						<div class="table-responsive">
						<table class="table" id="payout_methods">
							<thead>
								<tr class="text-truncate">
									<th> Referral name </th>
									<th> Trips </th>
									<th> Remaining Trips </th>
									<th> Remaining Days </th>
									<th> Amount </th>
									<th> Status </th>
								</tr>
							</thead>
							<tbody>
								<?php $__currentLoopData = $referral_details; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $referral): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<tr class="text-truncate">
									<td> <?php echo e($referral->referral_user->full_name); ?> </td>
									<td> <?php echo e($referral->trips); ?> </td>
									<td> <?php echo e($referral->remaining_trips); ?> </td>
									<td> <?php echo e($referral->remaining_days); ?> </td>
									<td> <?php echo e(html_string($referral->currency_symbol)); ?> <?php echo e($referral->amount); ?> </td>
									<td> <?php echo e($referral->payment_status); ?> </td>
								</tr>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							</tbody>
						</table>
					</div>
					
						<div class="box-footer text-center">
							<a class="btn btn-default" style="border: 1px solid #efefef;" href="<?php echo e(url(LOGIN_USER_TYPE.'/referrals/'.$user_type)); ?>">Back</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.template', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u536447607/domains/buskart.in/public_html/book/resources/views/admin/referrals/details.blade.php ENDPATH**/ ?>