<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Office extends Model
{
    public function project(){
        return $this->hasMany('App\Project');
    }

}
