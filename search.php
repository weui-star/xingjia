{include file=comm/head.html} {include file=comm/nav.html}{include file=comm/search.html}

<div class="container pages">

    {include file=comm/position.html}

    <div class="row">
        {pboot:search num=12 order=sorting scode=5 field='title|content'}
        <div class="col-12 col-sm-6 col-lg-3">
            <div class="card">
                <div class="card-img-150">
                    <a href="[search:link]"><img class="card-img-top" src="[search:ico]" alt="[search:title]"></a>
                </div>
                <div class="card-body">
                    <h5 class="card-title"><a href="[search:link]">[search:title len=12 mark=1]</a></h5>
                </div>
            </div>
        </div>
        {/pboot:search}
    </div>

    <!-- 分页 -->
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