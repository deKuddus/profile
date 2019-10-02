<nav class="js-nav bg-white md:bg-transparent fixed md:relative w-full md:top-0 z-100 w-full">
    <div class="h-full md:h-auto">
        <div class="px-5 shadow md:shadow-none flex items-center justify-between md:border-t-4 border-red">
            <a class="text-red py-4 md:py-0 md:w-64 flex items-center md:flex-col md:absolute top-0 inset-x-0 md:mx-auto z-100 hover:text-red-darker" href="https://laravel-news.com">
                <img src="{{ asset('img/me.png') }}" alt="Logo">
                <h4 class="font-bold text-grey-darkest mb-0 ml-4 md:ml-0 tracking-tight">MAK PROFILE</h4>
                <p class="hidden md:block font-miriam text-grey-darker text-2xs uppercase tracking-wide mt-px" style="font-size: .5625rem;letter-spacing: .2em">
                    The <b class="text-grey-darkest">Official</b> Mak Portfolio
                </p>
            </a>
            <button type="button" class="nav__hamburger js-nav-toggle md:hidden focus:outline-none">
                <div class="hamburger-box">
                    <div class="hamburger-inner"></div>
                </div>
            </button>
        </div>
        <div class="js-nav-content nav-container hidden md:block overflow-y-auto bg-grey-darkest md:bg-transparent h-full md:flex flex-row-reverse justify-between md:pb-40 container">
            <div class="bg-white flex-1 flex justify-end">
                <form class="border-t-2 md:border-t-0 md:border-l-2 border-off-white bg-white flex items-center md:justify-end w-full md:w-auto" action="/search">
                    <input id="search" type="text" placeholder="Search" name="q" class="placeholder-red flex-1 py-8 pl-8 md:py-6 focus:outline-none">
                    <button type="submit" class="block py-8 pr-8 md:py-6 lg:pr-0 focus:outline-none">
                        <svg class="block w-4 h-4 text-grey hover:text-red"><use xlink:href="#icon-search"></svg>
                        </button>
                    </form>
                </div>
                <div class="font-miriam text-2xl md:text-xl my-6 md:mb-0 px-5 md:absolute bottom-0 inset-x-0 w-full text-white md:text-grey-darkest">
                    <ul class="list-none pl-0 sm:flex flex-wrap items-center justify-center text-center">
                        <li class="sm:mr-8"><a class="text-inherit hover:text-red" href="{{ url('/blog') }}">Blog</a></li>
                        <li class="sm:mr-8"><a class="text-inherit hover:text-red" href="{{ route('profile') }}">Profile</a></li>
                        <li class="sm:mr-8"><a class="text-inherit hover:text-red" href="{{ route('contact') }}">Contact</a></li>
                    </ul> 
                </div>
                <ul class="list-none pl-0 flex items-center justify-center md:justify-start flex-1 md:pl-8 lg:pl-0">
                    <li class="m-3 xl:ml-0"><a href="https://twitter.com/kuddus137" class="flex items-center justify-center rounded-full p-2 lg:p-0 text-white lg:text-grey lg:hover:text-twitter bg-twitter lg:bg-transparent hover:bg-black lg:hover:bg-transparent transition">
                        <i class="fa fa-twitter"></i>
                    </a></li>
                    <li class="m-3"><a href="https://www.facebook.com/kuddus137" class="flex items-center justify-center rounded-full p-2 lg:p-0 text-white lg:text-grey lg:hover:text-facebook bg-facebook lg:bg-transparent hover:bg-black lg:hover:bg-transparent transition">
                        <i class="fa fa-facebook"></i>
                    </a></li>
                    <li class="m-3"><a rel="nofollow" href="https://www.linkedin.com/in/kuddus137" class="flex items-center justify-center rounded-full p-2 lg:p-0 text-white lg:text-grey lg:hover:text-linkedin bg-linkedin lg:bg-transparent hover:bg-black lg:hover:bg-transparent transition">
                       <i class="fa fa-linkedin"></i>
                   </a></li>
                   <li class="m-3"><a rel="nofollow" href="https://gitlab.com/kuddus_munsi" class="flex items-center justify-center rounded-full p-2 lg:p-0 text-white lg:text-grey lg:hover:text-linkedin bg-linkedin lg:bg-transparent hover:bg-black lg:hover:bg-transparent transition">
                      <i class="fa fa-github"></i>
                   </a></li>
               </ul>
            <div class="my-8 md:hidden">
                <ol class="list-none pl-0 sm:flex flex-wrap items-center justify-center text-center font-sans">
                    <li class="block" style="letter-spacing: 2.2px;">
                        <a class="block text-xs text-grey uppercase mx-4 my-3" href="/category/laravel-tutorials">Laravel Tutorials</a>
                    </li>
                    <li class="block" style="letter-spacing: 2.2px;">
                        <a class="block text-xs text-grey uppercase mx-4 my-3" href="/category/laravel-packages">Laravel Packages</a>
                    </li>
                    <li class="block" style="letter-spacing: 2.2px;">
                        <a class="block text-xs text-grey uppercase mx-4 my-3" href="/category/laravel-books">Laravel Books</a>
                    </li>
                    <li class="block" style="letter-spacing: 2.2px;">
                        <a class="block text-xs text-grey uppercase mx-4 my-3" href="/category/interviews">The Artisan Files</a>
                    </li>
                    <li class="block" style="letter-spacing: 2.2px;">
                        <a class="block text-xs text-grey uppercase mx-4 my-3" href="/category/laravel-applications">Laravel Applications</a>
                    </li>
                    <li class="block" style="letter-spacing: 2.2px;">
                        <a class="block text-xs text-grey uppercase mx-4 my-3" href="/category/homestead">Laravel Homestead</a>
                    </li>
                </ol>
                <div class="text-center p-8">
                    <img class="w-32 mb-8 mx-auto inline-block" src="/assets/images/min/dark-ln-elephant.png">
                </div>
            </div>
        </div>
    </div>
</nav>