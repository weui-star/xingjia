﻿{include file=comm/head.html} {include file=comm/nav.html}

<div class="container pages">
    {include file=comm/position.html} {pboot:if({page:rows}>0)}
    <h5 class="border-bottom border-info pb-2"><i class="fa fa-sliders" aria-hidden="true"></i> 留言记录</h5>
    {/pboot:if}

    <!-- 留言记录 -->
    {pboot:message num=2}
    <div class="media border-bottom pb-3 pt-3">
        <img class="mr-3" src="[message:headpic]" height="25">
        <div class="media-body">
            <h5 class="mt-0">[message:nickname]：</h5>
            <p>[message:content]</p>
            <p>
                <span class="badge badge-light text-secondary font-weight-normal">[message:os]</span>
                <span class="badge badge-light text-secondary font-weight-normal">[message:bs]</span>
                <span class="badge badge-light text-secondary font-weight-normal">[message:askdate]</span>
            </p>

            {pboot:if('[message:recontent]'!='')}
            <div class="media mt-3 border-top-dashed pt-3">
                <img class="mr-3" src="{pboot:sitetplpath}/images/user.png" height="25">
                <div class="media-body">
                    <h5 class="mt-0">管理员回复：</h5>
                    <p>[message:recontent]</p>
                    <p><span class="badge badge-light text-secondary font-weight-normal">[message:replydate]</span></p>
                </div>
            </div>
            {/pboot:if}
        </div>
    </div>
    {/pboot:message}

    <!-- 分页 -->
    {pboot:if({page:rows}>0)}
    <nav aria-label="page navigation" class="my-4">
        <div class="pagination justify-content-center">
            <a class="page-item page-link" href="{page:index}">首页</a>
            <a class="page-item page-link" href="{page:pre}">上一页</a> {page:numbar}
            <!-- 数字条，小屏幕时自动隐藏-->
            <a class="page-item page-link" href="{page:next}">下一页</a>
            <a class="page-item page-link" href="{page:last}">尾页</a>
        </div>
    </nav>
    {/pboot:if}

    <!-- 留言表单 -->
    <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-12 col-lg-6">
            <form class="my-4" onsubmit="return submsg(this);">
                <div class="form-group">
                    <label for="contacts">联系人</label>
                    <div>
                        <input type="text" name="contacts" required id="contacts" class="form-control" placeholder="请输入联系人">
                    </div>
                </div>

                <div class="form-group">
                    <label for="mobile">手　机</label>
                    <div>
                        <input type="text" name="mobile" required id="mobile" class="form-control" placeholder="请输入联系人手机">
                    </div>
                </div>

                <div class="form-group">
                    <label for="content">内　容</label>
                    <div>
                        <textarea name="content" id="content" class="form-control" placeholder="请输入留言内容"></textarea>
                    </div>
                </div>

                {pboot:if({pboot:msgcodestatus})}
                <div class="form-group">
                    <label for="checkcode">验证码</label>
                    <div class="row">
                        <div class="col-6">
                            <input type="text" name="checkcode" required id="checkcode" class="form-control" placeholder="请输入验证码">
                        </div>
                        <div class="col-6">
                            <img title="点击刷新" class="codeimg" style="height:33px;" src="{pboot:checkcode}" onclick="this.src='{pboot:checkcode}?'+Math.round(Math.random()*10);" />
                        </div>
                    </div>
                </div>
                {/pboot:if}

                <div class="form-group">
                    <button type="submit" class="btn btn-info mb-2">提交留言</button>
                </div>
            </form>
        </div>
        <div class="col-lg-3"></div>
    </div>

</div>

<script src="{pboot:sitetplpath}/js/jquery-1.12.4.min.js"></script>
<script>
    //ajax提交留言
    function submsg(obj) {
        var url = '{pboot:msgaction}';
        var contacts = $(obj).find("#contacts").val();
        var mobile = $(obj).find("#mobile").val();
        var content = $(obj).find("#content").val();
        var checkcode = $(obj).find("#checkcode").val();

        $.ajax({
            type: 'POST',
            url: url,
            dataType: 'json',
            data: {
                contacts: contacts,
                mobile: mobile,
                content: content,
                checkcode: checkcode
            },
            success: function(response, status) {
                if (response.code) {
                    alert("谢谢您的反馈，我们会尽快联系您！");
                    $(obj)[0].reset();
                } else {
                    if (response.tourl != "") {
                        if (confirm(response.data + '是否立即跳转登录？')) {
                            location.href = response.tourl;
                        }
                    }
                    $('.codeimg').click(); //更新验证码
                }
            },
            error: function(xhr, status, error) {
                alert('返回数据异常！');
            }
        });
        return false;
    }
</script>


{include file=comm/foot.html}