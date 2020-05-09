<?php

namespace App\Http\Controllers\admin;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TaiKhoanController extends Controller {
	public function DanhSachTaiKhoan() {
		return view('admin.TaiKhoan.DanhSachTaiKhoan', ['TaiKhoan' => User::all()]);
	}
	public function ThemTaiKhoan() {
		return view('admin.TaiKhoan.ThemTaiKhoan');
	}

	public function PostThemTaiKhoan(Request $req) {
		$req->merge(['password'=>bcrypt($req->password)]);
		User::create($req->all());
		return redirect()->route('danhsachtaikhoan');
	}

	public function XoaTaiKhoan($id) {
		User::destroy($id);
		return redirect()->route('danhsachtaikhoan');
	}
}
