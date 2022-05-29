<?php

namespace App\Models;

use App\Models\BaseModel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Service extends BaseModel
{
    use HasFactory, Translatable;

    protected $table = 'service';

    protected $translatable = ['title', 'excerpt', 'content', 'seo_title', 'meta_description', 'meta_keywords'];

    public function getWebpImageAttribute()
    {
        return str_replace('.' . pathinfo(\Voyager::image($this->image), PATHINFO_EXTENSION), '.webp', \Voyager::image($this->image));
    }
}
