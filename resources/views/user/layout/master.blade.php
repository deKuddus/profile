<!DOCTYPE html>
<html lang="en">
<head>
    <title>@yield('title')</title>
    <link href='https://fonts.googleapis.com/css?family=Miriam+Libre:400,700|Source+Sans+Pro:400,700,600,400italic,700italic' rel='stylesheet' type='text/css'>
    <link rel="icon" sizes="180x180" href="{{ asset('img/fav.png') }}">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="{{ asset('css/style.css') }}">
        <link rel="stylesheet" href="{{ asset('css/prism.css') }}">
    </head>
    <body class="bg-off-white font-sans text-base text-grey-darker leading-loose">

    @include('user.navlayout.other')

    <main class="site-main">
        @section('main-content')
        @show    
    </main>
    <footer class="bg-grey-darkest font-miriam uppercase tracking-extra text-xs text-center clear-both">
        <div class="container py-10 px-6 md:p-10">
            <ul class="list-none pl-0 flex items-center justify-center">
                <li>
                    <a rel="nofollow" href="https://twitter.com/kuddus137" class="rounded-full flex items-center justify-center m-3 p-3 text-white bg-twitter hover:bg-black transition">
                     <i class="fa fa-twitter"></i>
                 </a>
             </li>
             <li>
                <a rel="nofollow" href="https://www.facebook.com/kuddus137" class="rounded-full flex items-center justify-center m-3 p-3 text-white bg-facebook hover:bg-black transition">
                    <i class="fa fa-facebook"></i>
                </a>
            </li>
            <li>
                <a rel="nofollow" href="https://instagram.com/kuddus137" class="rounded-full flex items-center justify-center m-3 p-3 text-white bg-grey hover:bg-black transition">
                    <i class="fa fa-instagram"></i>
                </a>
            </li>
            <li>
                <a rel="nofollow" href="https://www.linkedin.com/in/kuddus137/"" class="rounded-full flex items-center justify-center m-3 p-3 text-white bg-linkedin hover:bg-black transition">
                    <i class="fa fa-linkedin"></i>
                </a>
            </li>
        </ul>
        <nav class="my-6">
            <ol class="list-none pl-0 flex flex-wrap justify-center">
                <li class="my-1 mx-6"><a class="text-white hover:text-red transition" href="{{ url('/blog') }}">Blog</a></li>
                <li class="my-1 mx-6"><a class="text-white hover:text-red transition" href="{{ route('profile') }}">Profile</a></li>
                <li class="my-1 mx-6"><a class="text-white hover:text-red transition" href="{{ route('contact') }}">Contact</a></li>
                <li class="my-1 mx-6"><a class="text-white hover:text-red transition" href="/archive">Resources</a></li>
            </ol>
        </nav>
        <div class="text-white">
            <p class="mb-3 text-xs">Design &amp; Front-end code by</p>
        </a>
    </div>
</div>
</footer>

<script src="/assets/js/app.js"></script>
<script type='text/javascript' src='https://stats.wp.com/e-201631.js' async defer></script>
<script type='text/javascript'>
    _stq = window._stq || [];
    _stq.push([ 'view', {v:'ext',j:'1:4.1.1',blog:'72585173',post:'0',tz:'-4',srv:'laravel-news.com'} ]);
    _stq.push([ 'clickTrackerInit', '72585173', '0' ]);
</script>
<script type='text/javascript' src='https://stats.wp.com/e-201631.js' async defer></script>
<script src="{{ asset('js/custom.js') }}" ></script>
<script src="{{ asset('js/prism.js') }}" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="{{ asset('js/scroll-to-top.js') }}" ></script>


</body>
</html>
