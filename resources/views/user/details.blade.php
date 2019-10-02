@extends('user.layout.master')
@section("title",$post->title)
@section('main-content')

<div class="container py-8">
    <div class="flex flex-col items-center">
        <div class="w-full flex flex-col md:flex-row items-center md:items-start --mx-5">
            <div class="w-full md:w-3/5 lg:w-2/3 px-5">
                <div class="card overflow-hidden post mx-auto h-auto w-full text-grey-darkest text-xl">
                    <div class="post__image w-full">
                        <img src="{{Storage::disk('local')->url($post->image)}}">
                    </div>

                    <div class="post__content py-8 px-10 lg:py-16 lg:px-20 lg:flex items-start">
                        <div class="w-full">
                            <header class="post__header">
                                <h1 class="text-center mb-0">{{$post->title}}</h1>
                                <div class="post__footer flex items-start justify-center py-2 px-0">
                                    <div class="post__author text-center">
                                        <img class="inline-block rounded-full w-12 mb-2" src="{{ asset('img/me2.png') }}" alt="Logo">
                                        <div class="author__content leading-none">
                                            <span class="label text-xs mb-0 mx-auto inline-block leading-loose">
                                                <span class="text-grey">{{$post->created_at}}</span>
                                                <span class="text-grey"> / </span>
                                                <a class="text-red whitespace-no-wrap hover:text-red-darker transition" href="https://www.facebook.com/kuddus137">M A Kuddus Munsi</a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </header>

                            {!! htmlspecialchars_decode($post->body) !!}

                            <hr>
                            <p class="text-sm">
                                <span class="mb-0 mx-auto inline-block"><b>Filed in:</b>
                                    <a class="text-red hover:text-red-darker transition" href="{{ url('/') }}">blog</a>
                                    <span class="text-grey"> / </span>
                                    <a class="link--black" href="{{ route('cat-by-post',$post->category) }}">{{$post->category}}</a>
                                </span>
                            </p>
                            <hr>
                            <div class="hidden md:block py-8" style="border-top: 3px solid #ddd;">
                                <h3 class="text-xl mb1 text-center">Enjoy this? Get  News delivered straight to your inbox every day.</h3>
                                <p class="text-center text-sm"><b class="text-grey-darkest">No Spam, ever.</b> We'll never share your email address and you can opt out at any time.</p>
                                <form action="https://laravelnews.createsend.com/t/d/s/owwr/" method="post" class="newsletter-form" data-area="home">
                                    <input type="hidden" id="fieldhrcf" name="cm-fd-hrcf-mn" value="8">
                                    <input type="hidden" id="fieldhrcfdy" name="cm-fd-hrcf-dy" value="24">
                                    <input type="hidden" id="fieldhrcfyr" name="cm-fd-hrcf-yr" value="2019">
                                    <div class="flex w-full">
                                        <input class="w-full flex-1 input w-full flex-1 border-r-0 rounded-r-none" type="email" placeholder="Email Address" name="cm-owwr-owwr" required>
                                        <button class="btn border-red p-4 bg-red rounded-r hover:bg-black transition newsletter-subscribe">Subscribe</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="w-full md:w-2/5 lg:w-1/3 px-5">
                <div class="mx-0 card w-full bg-red">
                    <div class="card__header ml-8 py-5 pr-6 flex items-center justify-between border-b border-semi-white">
                        <h2 class="text-white mb-0 text-4xl leading-tight">Newsletter</h2>
                        <img class="header__icon block" src="{{ asset('img/min/icon-newsletter.png') }}">
                    </div>
                    <div class="card__content py-5 px-6">
                        <p class="mb-4">Join the weekly newsletter and never miss out on new tips, tutorials, and more.</p>
                        <form action="https://laravelnews.createsend.com/t/d/s/owwr/" method="post" class="newsletter-form" data-area="home">
                            <input type="hidden" id="fieldhrcf" name="cm-fd-hrcf-mn" value="8">
                            <input type="hidden" id="fieldhrcfdy" name="cm-fd-hrcf-dy" value="24">
                            <input type="hidden" id="fieldhrcfyr" name="cm-fd-hrcf-yr" value="2019">
                            <div class="flex w-full">
                                <input class="w-full flex-1 input w-full flex-1 border-r-0 rounded-r-none" type="email" placeholder="Email Address" name="cm-owwr-owwr" required>
                                <button class="btn border-red-darker p-4 bg-red-darker rounded-r hover:bg-black transition newsletter-subscribe">Subscribe</button>
                            </div>
                        </form>
                    </div>
                </div>


                <div class="mx-0 card w-full bg-grey-darkest text-white h-auto">
                    <header class="card__header ml-8 py-5 pr-6 flex items-center justify-between border-b border-semi-white">
                        <h2 class="text-white mb-0 text-4xl leading-tight">Post Category</h2>
                    </header>
                    <div class="card__content h-auto">

                       @foreach ($post->categories as $category)
                       <a href="{{ route('category',$category->slug) }}" class="font-bold text-white hover:text-grey-lighter transition" rel="nofollow">
                        <small style="padding: 5px;">
                            {{ $category->name }}
                        </small>
                    </a>
                    @endforeach
                </div>
            </div>

            <div class="mx-0 card w-full bg-red">
                <div class="card__header ml-8 py-5 pr-6 flex items-center justify-between border-b border-semi-white">
                    <h2 class="text-white mb-0 text-4xl leading-tight">Post Tags</h2>
                </div>

                <div class="card__content py-5 px-6">
                    @foreach ($post->tags as $tag)
                    <a href="{{ route('tag',$tag->slug) }}" class="font-bold text-white hover:text-grey-lighter transition" rel="nofollow">
                        <small style="margin-right: 20px;border-radius: 5px;border: 1px solid gray;padding: 5px;">
                            {{ $tag->name }}
                        </small>
                    </a>
                    @endforeach
                </div>
            </div>

            <div class="mx-0 card w-full bg-grey-darkest text-white h-auto">
                <header class="card__header ml-8 py-5 pr-6 flex items-center justify-between border-b border-semi-white">
                    <h2 class="text-white mb-0 text-4xl leading-tight">Post Category</h2>
                </header>
                <div class="card__content h-auto" style="font-size: 25px">
                    @foreach ($all_post as $key=>$single_post)
                    <h2 title="{{ $single_post->title }}">  
                       <a href="{{ route('blog',$single_post->unique_val) }}" class="font-bold text-white hover:text-grey-lighter transition" rel="nofollow">
                        <small style="padding: 5px;">
                            {{$key+1}}]
                            {{ substr($single_post->title , 0 ,40)}}...
                        </small>
                    </a>
                </h2>
                @endforeach
            </div>
        </div>

    </div>
</div>
</div>
</div>

@endsection