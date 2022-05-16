{include file=comm/head.html} {include file=comm/nav.html}

<div class="container pages">

    {include file=comm/position.html}

    <!-- 列表内容 -->
    <div class="row">
        {pboot:list num=10 order=date}
        <div class="mb-3 col-12 col-sm-6 col-lg-3">
            <div class="card bg-light">
                <div class="card-header">招聘职位：[list:title]</div>
                <div class="card-body">
                    <p class="card-text">[list:content drophtml=1 dropblank=1 lencn=50]</p>
                    <a class="btn btn-info mt-2" href="[list:link]">查看详情</a>
                </div>
                <div class="card-footer">发布日期：[list:date style=Y-m-d]</div>
            </div>
        </div>
        {/pboot:list}
    </div>

    {include file=comm/page.html}
</div>

{include file=comm/foot.html}