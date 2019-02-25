<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    //
    public function projectCountry(){
        return $this->hasMany('App\ProjectCountry');
    }
}
