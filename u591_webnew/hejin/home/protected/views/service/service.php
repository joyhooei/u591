<?php if($this->beginCache($id,array('duration'=>3600,'varyByParam'=>array('page')))) { ?>
<h4 class="data_header"style="margin-top: 20px;">
    <span>客服专区</span>
</h4>
    <div class="menu layout">
    <div id="paper_real_content" class="faq" style="background-color: #FFFFFF;">
    <div class="modules layout" style="height: 527px;" >
<div class="btn_page_wrapper">
    <div class="newerGuide">
        <ul class="quickEntry layout">
            <li style="margin-bottom: 30px;">
                <a href="javascript:;">客服热线</a>
                <p style="margin-top: 10px;">0591-87678008</p>
            </li>
            <li style="margin-bottom: 30px;">
                <a href="javascript:;">客服QQ</a>
                <p style="margin-top: 10px;">2637357440</p>
                <p style="margin-top: 10px;">3327487243</p>
            </li>
            <li style="margin-bottom: 30px;">
                <a href="javascript:;">官方玩家QQ群</a>
                <p style="margin-top: 10px;">①480538707</p>
                <p style="margin-top: 10px;">②385068242</p>
            </li>
            <li>
                <a href="javascript:;">客服在线时间</a>
                <p style="margin-top: 10px;">8:00-23:00</p>
            </li>
        </ul>
    </div>
    <div class="nav">
        <ul>
        <li>
            <a onClick="return confirm('请联系客服电话：0591-87678008');">
                <img src="<?=ASSETS_URL; ?>images/password.png" >
                <h3 style="width: 90px; margin-left: 52px;">被盗找回</h3>
            </a>
        </li>
            <li>
            <a href="problem">
                <img src="<?=ASSETS_URL; ?>images/question.png" >
                <h3 style="width: 90px; margin-left: 52px;">问题反馈</h3>
            </a>
            </li>
            <li>
                <a href="suggest">
                    <img src="<?=ASSETS_URL; ?>images/idea.png" >
                    <h3 style="width: 90px; margin-left: 52px;">意见收集</h3>
                </a>
            </li>
            <li>
                <a href="javascrpt:;" style="padding-left: 35px;">&nbsp;</a>
            </li>
            <li>
                <a href="javascript:;">
                    <img src="<?=ASSETS_URL; ?>images/qr.png" >
                    <h3 style="width: 190px; border-left-width: 0px; margin-left: -22px;" >扫描二维码关注微信公众号</h3>
                </a>
            </li>
        </ul>
     </div>
    </div>
    </div>
  </div>
</div>

</div>
    <style>
        .faq {
            padding: 12px 0 0;
        }
        body, div, p, form, ul, ol, dl, dt, dd, h1, h2, h3, h4, h5, h6 {
            margin: 0;
            padding: 0;
        }

        .layout {
            clear: both;
            overflow: hidden;
        }
        body, div, p, form, ul, ol, dl, dt, dd, h1, h2, h3, h4, h5, h6 {
            margin: 0;
            padding: 0;
        }

        .newerGuide {
            float: right;
            height: 370px;
            padding: 20px;
            width: 220px;
        }
        body, div, p, form, ul, ol, dl, dt, dd, h1, h2, h3, h4, h5, h6 {
            margin: 0;
            padding: 0;
        }

        .modules .nav {
            display: inline;
            float: left;
            padding: 24px 0 24px 24px;
            width: 654px;
        }
        body, div, p, form, ul, ol, dl, dt, dd, h1, h2, h3, h4, h5, h6 {
            margin: 0;
            padding: 0;
        }

        ul, ol {
            list-style: outside none none;
        }
        body, div, p, form, ul, ol, dl, dt, dd, h1, h2, h3, h4, h5, h6 {
            margin: 0;
            padding: 0;
        }
        .nav li {
            float: left;
        }

        .nav li a {
            border: 1px solid #fff;
            color: #333;
            display: block;
            display: block;
            padding: 12px 18px;
            width: 180px;
        }
        a:link {
            color: #1e50a2;
            text-decoration: none;
        }
        img {
            border: medium none;
        }

        .nav li h3 {
            font-size: 14px;
            font-weight: bold;
            line-height: 32px;
        }

    </style>
 <?php $this->endCache(); } ?>