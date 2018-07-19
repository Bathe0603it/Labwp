Hien thi sidebar voi ham get_sidebar()
<?php
	// Whether a sidebar is in use. = Liệu thanh bên có đang được sử dụng hay không. - Kiem tra xem sidebar co dang duoc su dung hay khong
	if (is_active_sidebar('main-sidebar')) {
		// Display dynamic sidebar - Hiển thị thanh bên động
		dynamic_sidebar('main-sidebar');
	}
	else{
		_e('This is sidebar. yOU HAVE TO ADD SOME widgets', 'lab1');
	}
?>