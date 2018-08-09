<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<div class="form-test">
	<form action="" method="POST">
		<div class="text-center">Vui Lòng nhập đầy đủ thông tin để nhận kết quả</div>
		<hr>
		<div class="row">
			<div class="col-md-10">
				<div class="row">
					<div class="form-group clearfix">
						<div class="col-md-8">
							<input type="text" name="phone" placeholder="Nhập đố điện thoại" autocomplete="off" class="form-control" required="">
						</div>
						<div class="col-md-4">
							<select name="gioitinh" id="" class="form-control" required="">
								<option value="1">Nam</option>
								<option value="0">Nữ</option>
							</select>
						</div>
					</div>
				</div>
				<div class="form-group clearfix">
					<div class="row">
						<div class="col-md-3">
							<select name="giosinh" id="" class="form-control">
								<option value="">Giờ sinh</option>
								<?php for($i=0;$i<=59;$i++): ?>
								<option value="<?php echo $i; ?>" <?php selected( $giosinh, $i ); ?>><?php echo $i; ?></option>
								<?php endfor ?>
							</select>
						</div>
						<div class="col-md-3">
							<select name="ngaysinh" id="" class="form-control">
								<option value="">Ngày sinh</option>
								<?php for($i=1;$i<=31;$i++): ?>
								<option value="<?php echo $i; ?>" <?php selected( $ngaysinh, $i ); ?>><?php echo $i; ?></option>
								<?php endfor ?>
							</select>
						</div>
						<div class="col-md-3">
							<select name="thangsinh" id="" class="form-control">
								<option value="">Tháng sinh</option>
								<?php for($i=1;$i<=12;$i++): ?>
								<option value="<?php echo $i; ?>"><?php echo $i; ?></option>
								<?php endfor ?>
							</select>
						</div>
						<div class="col-md-3">
							<select name="namsinh" id="" class="form-control">
								<option value="">Năm sinh</option>
								<?php for($i=1950;$i<=2018;$i++): ?>
								<option value="<?php echo $i; ?>"><?php echo $i; ?></option>
								<?php endfor ?>
							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="text-center">
					<button type="submit" name="submit" value="submit" class="btn btn-success">Xem Ngay</button>
				</div>
			</div>
		</div>
	</form>
</div>