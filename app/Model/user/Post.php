<?php

namespace App\Model\user;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Post extends Model
{
        protected $table = "posts";
 	protected $fillable = [
        'title', 'subtitle','unique_val', 'body','image',];

        protected $casts = ['unique_val' => 'string'];

        


        public function tags()
        {
        	return $this->belongsToMany('App\Model\user\Tag','post_tags')->withTimestamps();
        }

        public function categories()
        {
        	return $this->belongsToMany('App\Model\user\Category','category_posts')->withTimestamps();
        }

        public function getRouteKeyName()
        {
        	return 'unique_val';
        }


        public function getCreatedAtAttribute($value)
        {
                return Carbon::parse($value)->diffForHumans();
        }

        public function likes()
        {
                return $this->hasMany('App\Model\user\Likes');
        }

        public function getSlugAttribute($value)
        {
                return route('unique_val',$value);
        }
}
