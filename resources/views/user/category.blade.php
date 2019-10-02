@extends('user.layout.master')
@section("title","Post according to clicked Category")
@section('main-content')

<div class="container py-8">
    <div class="flex flex-col md:flex-row items-center md:items-start --mx-5">
        <div class="w-full md:w-3/5 lg:w-2/3 px-5">
            @foreach ($posts as $post)

            <div class="card w-full card--post mx-0">
                <div class="post__image">
                    <a href="{{ route('blog',$post->unique_val) }}">

                        <img src="{{Storage::disk('local')->url($post->image)}}" alt="">
                    </a>
                </div>
                <div class="post__content truncate text-grey">
                    <span class="label text-xs">
                        News
                        <span class="text-grey"> / </span>
                        <span class="text-grey">{{ $post->created_at }}</span>
                    </span>
                    <h2 class="text-2xl md:text-4xl"><a class="text-red hover:text-red-dark transition" href="{{ route('blog',$post->unique_val) }}">{{$post->title}}</a></h2>
                    <p>{{@htmlspecialchars(substr(substr($post->body , 0 ,300) , 0 ,strripos($post->body ,' ')))}}</p>
                    <a class="absolute bottom-0 z-200 text-grey-lighter text-sm hover:text-red transition" href="{{ route('blog',$post->unique_val) }}">Read more&hellip;</a>
                </div>

                @include('user.navlayout.social')

            </div>
            @endforeach
            <style>
            .pagination{ text-align: center; }
            .pagination ul li{ display: inline-block; border: 1px solid gray;padding: 10px 16px;background-color: #fff;border-radius: 5px; font-size: 22px;}
            .pagination ul li:hover{background-color: cornflowerblue; }
        </style>
        <div class="pagination">
            {!!$posts->links()!!}
        </div>
    </div>
    
    
    @include('user.navlayout.sidebar')

</div>
</div>
@endsection