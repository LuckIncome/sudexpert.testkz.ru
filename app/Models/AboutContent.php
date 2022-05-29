<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class AboutContent extends Model
{
    use HasFactory, Translatable;

    protected $table = 'about_contents';

    protected $translatable = ['title', 'excerpt', 'content'];

    public function getWebpImageAttribute()
    {
        return str_replace('.' . pathinfo(\Voyager::image($this->image), PATHINFO_EXTENSION), '.webp', \Voyager::image($this->image));
    }
}
