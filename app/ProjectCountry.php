<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProjectCountry extends Model
{
    //An instance of Project_country relates with strictly 1 country instance
    public function country(){
        return $this->belongsTo('App\Country');
    }

    //An instance of Project_country relates with strictly 1 project instance
    public function project(){
        return $this->belongsTo('App\Project');
    }
}
