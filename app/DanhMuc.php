<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DanhMuc extends Model
{
    protected $table = 'danhmuc';

    protected $fillable = ['TenDanhMuc'];

    public $timestamps = false;

    public function monan()
    {
        return $this->hasMany('App\MonAn', 'idDanhMuc', 'id');
    }
}
