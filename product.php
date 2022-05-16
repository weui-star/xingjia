{include file=comm/head.html} {include file=comm/nav.html}

<div class="container pages">
    {include file=comm/position.html}

    <div class="row">
        <div class="col-12 col-lg-6 mb-5">
            <div class="view">
                <a class="arrow-left" href="#"></a>
                <a class="arrow-right" href="#"></a>
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="{content:ico}" style="width:100%">
                        </div>
                        {pboot:pics num=10 id={content:id}}
                        <div class="swiper-slide">
                            <img src="[pics:src]">
                        </div>
                        {/pboot:pics}
                    </div>
                </div>
            </div>


        </div>

        <div class="col-12 col-lg-6 mb-3 pr-3">
            <h2 class="border-bottom pb-2 fs-sm-28 fs-20">{content:title}</h2>
            <div class="text-secondary my-3 border-bottom-dashed lh-3">
                上架时间：{content:date style=Y-m-d}
            </div>
            <div class="text-secondary my-3 border-bottom-dashed lh-3">
                浏览次数：{content:visits}
            </div>

            <div class="text-secondary my-3 border-bottom-dashed lh-3">
                产品类型：{content:ext_type}
            </div>


            <div class="my-3 lh-3">
                {pboot:sort scode=11}
                <a href="[sort:link]" class="btn btn-danger">马上咨询</a> {/pboot:sort}
            </div>
        </div>
    </div>

    <h5 class="border-bottom border-info pb-2 mb-2"><i class="fa fa-sliders" aria-hidden="true"></i> 产品详情</h5>
    <div class="content">{content:content}</div>
    <!-- 新闻推荐 -->
    <div class="product-new">
        <h5>新闻推荐</h5>
        <hr>
        <ul>
            {pboot:list scode=2 num=3 order=date}
            <li>
                <a href="[list:link]" target="_blank">[list:title len=18]</a>
                <span>[list:date style=Y-m-d]</span>
            </li>
            {/pboot:list}
        </ul>
    </div>

    <!-- 产品推荐 -->
    <h5>产品推荐</h5>
    <hr>
    <div class="pro-recom">
        {pboot:list scode=5 num=3 order=random}
        <div class="probd-top" style="margin-right:20px;">
            <img src="[list:ico]" alt="[list:title]">
            <div class="probd-bottom">
                <div>
                    <h5>[list:title]</h5>
                    <span>[list:subtitle]</span>
                </div>
                <div><a href="[list:link]">查看详情+</a></div>
            </div>
        </div>
        {/pboot:list}
    </div>


    <div class="text-secondary lh-2">
        <p>上一篇：{content:precontent}</p>
        <p>下一篇：{content:nextcontent}</p>
    </div>
</div>

{include file=comm/foot.html}

<script src="{pboot:sitetplpath}/swiper-4.3.5/js/swiper.min.js"></script>
<script>
    var viewSwiper = new Swiper('.view .swiper-container', {
        on: {
            slideChangeTransitionStart: function() {
                updateNavPosition()
            }
        }
    })

    $('.view .arrow-left,.preview .arrow-left').on('click', function(e) {
        e.preventDefault()
        if (viewSwiper.activeIndex == 0) {
            viewSwiper.slideTo(viewSwiper.slides.length - 1, 1000);
            return
        }
        viewSwiper.slidePrev()
    })
    $('.view .arrow-right,.preview .arrow-right').on('click', function(e) {
        e.preventDefault()
        if (viewSwiper.activeIndex == viewSwiper.slides.length - 1) {
            viewSwiper.slideTo(0, 1000);
            return
        }
        viewSwiper.slideNext()
    })

    var previewSwiper = new Swiper('.preview .swiper-container', {
        //visibilityFullFit: true,
        slidesPerView: 'auto',
        allowTouchMove: false,
        on: {
            tap: function() {
                viewSwiper.slideTo(previewSwiper.clickedIndex)
            }
        }
    })

    function updateNavPosition() {
        $('.preview .active-nav').removeClass('active-nav')
        var activeNav = $('.preview .swiper-slide').eq(viewSwiper.activeIndex).addClass('active-nav')
        if (!activeNav.hasClass('swiper-slide-visible')) {
            if (activeNav.index() > previewSwiper.activeIndex) {
                var thumbsPerNav = Math.floor(previewSwiper.width / activeNav.width()) - 1
                previewSwiper.slideTo(activeNav.index() - thumbsPerNav)
            } else {
                previewSwiper.slideTo(activeNav.index())
            }
        }
    }
</script>

{include file=comm/foot.html