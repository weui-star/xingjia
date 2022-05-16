{include file=comm/head.html} {include file=comm/nav.html}

<div class="container pages">

    {include file=comm/position.html}

    <!-- 分类筛选 -->
    <div class="my-3">
        <div class="row">
            <div class="col-12 col-sm-2 col-md-1">类型：</div>
            <div class="col-12 col-sm-10 col-md-11">
                {pboot:selectall field=ext_type text=全部 class='mb-3 btn btn-light' active='mb-3 btn btn-info'} {pboot:select field=ext_type}
                <a href="[select:link]" class="mb-3 btn {pboot:if('[select:value]'=='[select:current]')}btn-info{else}btn-light{/pboot:if}">[select:value]</a> {/pboot:select}
            </div>
        </div>
    </div>

    <!-- 图文列表 -->
    <div class="row">
        {pboot:list num=8 order=sorting}
        <div class="col-12 col-sm-6 col-lg-3 wow zoomIn" data-wow-delay="[list:i]00ms" data-wow-duration="1s" style="margin-bottom:15px;">
            <div class="card">
                <div class="card-img-150">
                    <a href="[list:link]"><img class="card-img-top" src="[list:ico]" alt="[list:title]"></a>
                </div>
                <div class="card-body">
                    <h5 class="card-title">
                        <a href="[list:link]">[list:title lencn=12]</a><br>
                        <a href="[list:link]" style="font-size:16px;">[list:subtitle]</a>
                    </h5>

                    <p>
                        {pboot:tags id=[list:id] scode={sort:tcode}}
                        <a href="[tags:link]"><span>[tags:text]</span></a> {/pboot:tags}
                    </p>
                </div>
            </div>
        </div>
        {/pboot:list}
    </div>

    {include file=comm/page.html}

    <!-- 搜索-->
    <form class="form-inline mb-5 justify-content-center" action="{pboot:scaction}" method="get">
        <div class="form-group mx-sm-3 mb-2">
            <input type="text" name="keyword" class="form-control" placeholder="请输入关键字">
        </div>
        <button type="submit" class="btn btn-info mb-2">搜索</button>
    </form>

</div>

{include file=comm/foot.html}