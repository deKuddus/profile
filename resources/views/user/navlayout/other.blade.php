    <nav class="js-nav md:relative w-full bg-white fixed md:top-0 z-300 w-full lg:border-t-4 border-red shadow">
        <div class="lg:flex items-center container">
            <div class="px-5 flex flex-shrink-0 items-center justify-between">
                <a class="text-red py-4 flex items-center hover:text-red-darker" href="{{ url('/') }}">
                    <img src="{{ asset('img/me2.png') }}" alt="Logo">
                    <h4 class="font-bold text-grey-darkest mb-0 ml-4 tracking-tight">MAK PROFILE</h4>
                </a>
                <button type="button" class="nav__hamburger js-nav-toggle lg:hidden focus:outline-none">
                    <div class="hamburger-box">
                        <div class="hamburger-inner"></div>
                    </div>
                </button>
            </div>
            <div class="js-nav-content hidden lg:flex overflow-y-auto items-center bg-grey-darkest lg:bg-transparent h-full w-full fixed lg:static">
                <div class="border-t-2 lg:border-t-0 border-off-white bg-white flex items-center lg:justify-end w-full lg:w-auto order-3">
                    <form class="lg:border-l-2 border-off-white bg-white flex items-center lg:justify-end w-full lg:w-auto" action="/search">
                        <input type="text" placeholder="Search" name="q" class="placeholder-red flex-1 py-8 pl-8 lg:py-6 focus:outline-none">
                        <button type="submit" class="block py-8 pr-8 lg:py-6 focus:outline-none">
                            <svg class="block w-4 h-4 text-grey hover:text-red"><use xlink:href="#icon-search"></svg>
                            </button>
                        </form>
                    </div>
                    <div class="font-miriam text-2xl lg:text-base my-6 lg:my-0 px-5 w-full lg:w-auto order-1 text-white md:text-grey">
                      <ul class="list-none pl-0 sm:flex flex-wrap items-center justify-center text-center">
                        <li class="sm:mr-8"><a class="text-inherit hover:text-red" href="{{ url('/blog') }}">Blog</a></li>
                        <li class="sm:mr-8"><a class="text-inherit hover:text-red" href="{{ route('profile') }}">Profile</a></li>
                        <li class="sm:mr-8"><a class="text-inherit hover:text-red" href="{{ route('contact') }}">Contact</a></li>
                    </ul> 
                </div>
                <ul class="list-none pl-0 flex items-center justify-center lg:justify-end flex-1 lg:pl-0 lg:pr-3 order-2">
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
               <div class="my-8 lg:hidden">
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
                <div class="text-center pb-8">
                    <img class="m-8 w-32 mx-auto inline-block" src="/assets/images/min/dark-ln-elephant.png">
                </div>
            </div>
        </div>
    </div>
</nav>