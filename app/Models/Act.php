<?php

namespace App\Models;

use App\Models\BaseModel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Act extends BaseModel
{
    use HasFactory, Translatable;

    protected $table = 'act';

    protected $translatable = ['title', 'subtitle', 'content', 'seo_title', 'meta_description', 'meta_keywords'];

    public function getWebpImageAttribute()
    {
        return str_replace('.' . pathinfo(\Voyager::image($this->image), PATHINFO_EXTENSION), '.webp', \Voyager::image($this->image));
    }
}
