<div class="w-full md:w-2/5 lg:w-1/3 px-5">
        <div class="mx-0 card w-full bg-red">
            <div class="card__header ml-8 py-5 pr-6 flex items-center justify-between border-b border-semi-white">
                <h2 class="text-white mb-0 text-4xl leading-tight">Newsletter</h2>
                <img class="header__icon block" src="{{asset('img/min/icon-newsletter.png')}}">
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
                <h2 class="text-white mb-0 text-4xl leading-tight">All Categories</h2>
                <img class="header__icon block" src="{{asset('img/icon-chair.png')}}">
            </header>
            <div class="card__content h-auto">
               @foreach ($categories as $category)
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
            @foreach ($tags as $tag)
            <a href="{{ route('tag',$tag->slug) }}" class="font-bold text-white hover:text-grey-lighter transition" rel="nofollow">
                <small style="margin: 10px;border-radius: 5px;border: 1px solid gray;padding: 5px;">
                    {{ $tag->name }}
                </small>
            </a>
            @endforeach
        </div>
    </div>

</div>