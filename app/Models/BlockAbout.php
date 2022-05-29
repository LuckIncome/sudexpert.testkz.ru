<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class BlockAbout extends BaseModel
{
    use HasFactory, Translatable;

    protected $translatable = ['first_title', 'second_title', 'subtitle', 'first_alt_image', 'second_alt_image'];

    public function getWebpImageAttribute()
    {
        return str_replace('.' . pathinfo(\Voyager::image($this->image), PATHINFO_EXTENSION), '.webp', \Voyager::image($this->image));
    }
}
