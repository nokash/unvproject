<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    //One Project instance can relate to many Project_country entries
    public function projectCountry(){
        return $this->hasMany('App\ProjectCountry');
    }

    //One Project is strictly implemented by 1 office
    public function office(){
        return $this->belongsTo('App\Office');
    }
}
