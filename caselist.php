﻿{include file=comm/head.html} {include file=comm/nav.html}

<div class="container pages">

    {include file=comm/position.html}

    <!-- 图文列表 -->
    <div class="row">
        {pboot:list num=8 order=sorting}
        <div class="col-12 col-sm-6 col-lg-3 text-center">
            <figure class="figure">
                <div class="card-img-200">
                    <a href="[list:link]"><img src="[list:ico]" class="w-100" alt="[list:title]"></a>
                </div>
                <figcaption class="figure-caption text-center lh-2"><a href="[list:link]">[list:title lencn=15]</a></figcaption>
            </figure>
        </div>
        {/pboot:list}
    </div>

    {include file=comm/page.html}

</div>

{include file=comm/foot.html}