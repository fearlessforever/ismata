<table border="1">
	<thead><tr><th>No</th><th>Nomor Induk</th><th>Nama</th><th>Alamat</th><th>Tanggal Lahir</th><th>Tanggal Masuk</th><th>Action</th></tr></thead>
	<tbody>
<?php
	if(!empty($karyawan)){
		$no=0;
		foreach($karyawan as $kar){
			echo '<tr><td>'.++$no.'</td>
					<td>'.$kar['attributes']['Nomor_induk'].'</td>
					<td>'.$kar['attributes']['Nama'].'</td>					
					<td>'.$kar['attributes']['Alamat'].'</td>				
					<td>'.$kar['attributes']['Tanggal_lahir'].'</td>					
					<td>'.$kar['attributes']['Tanggal_masuk'].'</td>
					<td>
						<a href="'.base_url('crud/form/'.$kar['attributes']['Nomor_induk']).'"><button>EDIT</button></a> &nbsp;
						<a href="'.base_url('crud/hapus/'.$kar['attributes']['Nomor_induk']).'"><button>DELETE</button></a> &nbsp;
					</td>
			</tr>';
		}
	}
?>
	</tbody>
</table>