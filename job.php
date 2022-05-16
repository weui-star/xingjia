{include file=comm/head.html} {include file=comm/nav.html}

<div class="container pages">

    {include file=comm/position.html}

    <h2 class="text-center fs-sm-28 fs-24">{content:title}</h2>
    <div class="text-center border-bottom text-secondary pb-2 mb-3">
        时间：{content:date style=Y-m-d}&nbsp;&nbsp;&nbsp;访问量：{content:visits}
    </div>
    <div class="content mb-3">{content:content}</div>
    <div class="text-secondary lh-2">
        <p>上一篇：{content:precontent}</p>
        <p>下一篇：{content:nextcontent}</p>
    </div>

</div>

{include file=comm/comment.html} {include file=comm/foot.html}