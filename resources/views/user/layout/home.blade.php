
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>@yield('title')</title>
    <link rel="icon" sizes="180x180" href="{{ asset('img/fav.png') }}">
<!--     <link rel="canonical" href="https://laravel-news.com/" itemprop="url">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="referrer" content="always">
<meta property="fb:pages" content="214020072130601">
<link rel="publisher" href="https://plus.google.com/+Laravel-news">
<link rel="alternate" type="application/rss+xml" title="Laravel News &raquo; Feed" href="https://feed.laravel-news.com/">
<link rel="alternate" title="Laravel News Feed" type="application/json" href="https://laravel-news.com/feed/json" />
<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
<link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32">
<link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16">
<link rel="manifest" href="/manifest.json">
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#f4645f">
<meta name="theme-color" content="#ffffff">
<meta name="description" content="Laravel News is the official blog of Laravel. Every day bringing you the latest news, tutorials, and packages for the framework." />
<meta property="og:locale" content="en_US" />
<meta property="og:type" content="article" />
<meta property="og:title" content="Laravel News" />
<meta property="og:description" content="Stay up to date with Laravel with Laravel News" />
<meta property="og:url" content="https://laravel-news.com/" />
<meta property="og:site_name" content="Laravel News" />
<meta property="article:publisher" content="https://www.facebook.com/laravelnews" />
<meta property="fb:admins" content="100007722642618" />
<meta property="fb:app_id" content="440569919467159" />
<meta property="og:image" content="https://laravel-news.com/assets/images/home-share.png" />
<meta name="twitter:image" content="https://laravel-news.com/assets/images/home-share.png" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:description" content="Stay up to date with Laravel with Laravel News" />
<meta name="twitter:title" content="Laravel News" />
<meta name="twitter:site" content="@laravelnews" />
<meta name="twitter:creator" content="@laravelnews" />
<link rel="canonical" href="https://laravel-news.com" />
<meta name="pocket-site-verification" content="12fdf4685a3942013999fea43acb45" /> -->
<link href='https://fonts.googleapis.com/css?family=Miriam+Libre:400,700|Source+Sans+Pro:400,700,600,400italic,700italic' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="{{ asset('css/style.css') }}">


</head>
<body id="site-layout" class="bg-white font-sans text-base text-grey-darker leading-loose">


    @include('user.navlayout.index')

    <main class="site-main">
        <div class="px-5 md:p-10">
            <div class="container">
             <div class="gutter clearfix">

                <!-- main content start-->
                <div class="float-left md-col-7 lg-col-8 card card--lg bg-black">
                    <a href="{{ route('blog',$post->unique_val) }}" class="card__image bg-grey-lighter">
                        <img class="block group-hover:opacity-50 transition" src="{{Storage::disk('local')->url($post->image)}}" alt="">
                    </a>
                    <div class="card__content">
                        <span class="label text-sm">POST</span>
                        <h3 class="text-4xl mb-2">
                            <a href="{{ route('blog',$post->unique_val) }}" class="text-white">
                                {{$post->title}}
                            </a>
                        </h3>
                    </div> 
                    <!-- main content start-->

                </div>
                <div class="float-left md-col-5 lg-col-4 card bg-red">
                    <div class="card__header ml-8 py-5 pr-6 flex items-center justify-between border-b border-semi-white">
                        <h2 class="text-white mb-0 text-4xl leading-tight">Newsletter</h2>
                        <img class="header__icon block" src="{{asset('img/min/icon-newsletter.png')}}">
                    </div>
                    <div class="card__content py-5 px-6">
                        <p class="mb-4">Join the weekly newsletter and more.</p>
                        <form action="" method="post" class="newsletter-form" data-area="home">
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
                <div class="float-left md-col-5 lg-col-4 card bg-black">
                   <header class="card__header ml-8 py-5 pr-6 flex items-center justify-between border-b border-semi-white">
                    <h2 class="text-white mb-0 text-4xl leading-tight">All Categories</h2>
                    <img class="header__icon block" src="{{asset('img/icon-chair.png')}}">
                </header>
                <div class="card__content h-auto">
                 @foreach ($categories as $category)
                 <a href="{{ route('category',$category->slug) }}" class="font-bold text-white hover:text-grey-lighter transition" rel="nofollow">
                    <small style="padding: 5px;">
                        {{ $category->name  }} |
                    </small>
                </a>
                @endforeach
            </div>
        </div>
        <div class="float-left md-col-5 lg-col-4 card bg-black">
            <a href="/laravel-5-8-33" class="card__image bg-grey-lighter">
                <img src="https://i1.wp.com/wp.laravel-news.com/wp-content/uploads/2019/08/laravel-5.8.33.png?fit=2200%2C1125&amp;ssl=1?resize=1400%2C709" alt="">
            </a>
            <div class="card__content">
                <span class="label text-xs">News</span>
                <h3 class="text-base leading-none mb-0">
                    <a href="/laravel-5-8-33" class="text-white text-base">
                        New Email Validation Rule Options in Laravel 5.8.33
                    </a>
                </h3>
            </div> </div>
            <div class="float-left md-col-5 lg-col-4 card bg-black">
                <a href="https://www.honeybadger.io/for/laravel/?affiliate=vxYuzl" rel="nofollow" class="card__image bg-grey-lighter">
                    <img src="https://i1.wp.com/wp.laravel-news.com/wp-content/uploads/2018/12/honeybadger-vue.png">
                </a>
            </div>
            <div class="float-left md-col-5 lg-col-4 card bg-teal-darker">
                <div class="card__header ml-8 py-5 pr-6 flex items-center justify-between border-b border-semi-white">
                    <h2 class="text-white mb-0 text-4xl leading-tight">Previous Post</h2>
                    <img class="header__icon block" src="{{ asset('img/icon-chair.png') }}">
                </div>
                <div class="card__content">
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
                <div class="m-0">
                    <a href="{{ url('/blog') }}" class="text-teal hover:text-black hover:opacity-75 transition">View more </a>
                </div>
            </div>
        </div>
    </div> 
</div>
</div>
<div class="bg-off-white px-5 md:px-8 py-10 md:py-24">
    <div class="container">
        <div class="category mb-10">
            <header class="category__header">
                <h2 class="category__title">Latest News</h2>
                <a class="category__link link--black" href="{{ url('/blog') }}">View all news</a>
            </header>
            <div class="gutter flex flex-wrap items-stretch justify-center sm:justify-start">
                @foreach($all_post as $each_post)
                <a href="/laravel-custom-casts-package" class="card col w-1/3">
                    <div class="card__image">
                        <img src="{{Storage::disk('local')->url($each_post->image)}}" alt="">
                    </div>
                    <div class="card__content">
                        <span class="label text-xs">{{$each_post->created_at}}</span>
                        <h4>{{$each_post->title}}</h4>
                    </div>
                </a>
                @endforeach
            </div>
        </div>
    </div>
</div>
</main>
<footer class="bg-grey-darkest font-miriam uppercase tracking-extra text-xs text-center clear-both">
    <div class="container py-10 px-6 md:p-10">
        <ul class="list-none pl-0 flex items-center justify-center">
            <li>
                <a rel="nofollow" href="https://twitter.com/laravelnews" class="rounded-full flex items-center justify-center m-3 p-3 text-white bg-twitter hover:bg-black transition">
                   <i class="fa fa-twitter"></i>
               </a>
           </li>
           <li>
            <a rel="nofollow" href="https://www.facebook.com/laravelnews" class="rounded-full flex items-center justify-center m-3 p-3 text-white bg-facebook hover:bg-black transition">
                <i class="fa fa-facebook"></i>
            </a>
        </li>
        <li>
            <a rel="nofollow" href="https://instagram.com/laravelnews" class="rounded-full flex items-center justify-center m-3 p-3 text-white bg-grey hover:bg-black transition">
                <i class="fa fa-instagram"></i>
            </a>
        </li>
        <li>
            <a rel="nofollow" href="https://www.linkedin.com/company/laravel-news" class="rounded-full flex items-center justify-center m-3 p-3 text-white bg-linkedin hover:bg-black transition">
                <i class="fa fa-linkedin"></i>
            </a>
        </li>
    </ul>
    <nav>
        <ol class="list-none pl-0 flex flex-wrap justify-center">
            <li class="my-1 mx-6"><a class="text-white hover:text-red transition" href="{{ url('/blog') }}">Blog</a></li>
            <li class="my-1 mx-6"><a class="text-white hover:text-red transition" href="{{ route('profile') }}">Profile</a></li>
            <li class="my-1 mx-6"><a class="text-white hover:text-red transition" href="{{ route('contact') }}">Contact</a></li>
            <li class="my-1 mx-6"><a class="text-white hover:text-red transition" href="/archive">Resources</a></li>
        </ol>
    </nav>
</div>
</footer>
<script src="{{ asset('js/custom.js') }}" ></script>
<script type="text/javascript">
    var timer = setInterval("autoRefresher()", 60 * 10000);
    function autoRefresher(){self.location.reload(true);}
</script>
</div>
<script type='text/javascript' src='https://stats.wp.com/e-201631.js' async defer></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="{{ asset('js/scroll-to-top.js') }}" ></script>
</body>
</html>
