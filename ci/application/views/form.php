
<form method="POST" action="<?php echo base_url('crud/proses') ?>">
	<label> Nomor Induk : </label><input type="text" name="nomor_induk"
		<?php echo !empty($karyawan['Nomor_induk']) ? 'value="'.$karyawan['Nomor_induk'].'" readonly ' :'' ?> /> </br>
	<label> Nama Karyawan : </label><input type="text" name="nama" 
		<?php echo !empty($karyawan['Nama']) ? 'value="'.$karyawan['Nama'].'" ' :'' ?> /> </br>
	<label> Alamat Karyawan : </label><input type="text" name="alamat" 
		<?php echo !empty($karyawan['Alamat']) ? 'value="'.$karyawan['Alamat'].'" ' :'' ?> /> </br>
	<label> Tanggal Lahir : </label><input type="text" name="tanggal_lahir" 
		<?php echo !empty($karyawan['Tanggal_lahir']) ? 'value="'.$karyawan['Tanggal_lahir'].'" ' :'' ?> /></br>
	<label> Tanggal Masuk : </label><input type="text" name="tanggal_masuk" 
		<?php echo !empty($karyawan['Tanggal_masuk']) ? 'value="'.$karyawan['Tanggal_masuk'].'" ' :'' ?> /></br>
	<input type="hidden" name="mode" value="<?php echo empty($karyawan['Nomor_induk']) ? 'tambah' : 'edit' ?>" />
	<input type="submit" value="Simpan">
</form>