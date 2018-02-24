<?php

namespace App\Model;

use Saya\DB;
use Illuminate\Database\Eloquent\Model;

Class Karyawan extends Model {
	
	protected $table = 'karyawan';
	protected $primaryKey = 'Nomor_induk';
	protected $keyType = 'string';
	public $timestamps = false;
	
	function __construct(){
		DB::koneksi(TRUE);
	}
	 
}