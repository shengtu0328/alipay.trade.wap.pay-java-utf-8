<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.alipay.config.AlipayConfig" %>
<%@page import="com.alipay.api.AlipayClient" %>
<%@page import="com.alipay.api.DefaultAlipayClient" %>
<%@page import="com.alipay.api.request.AlipayTradeQueryRequest" %>
<%@page import="com.alipay.api.response.AlipayTradeQueryResponse" %>
<%@page import="com.alipay.api.domain.AlipayTradeQueryModel" %>
 
 <%
/* *
 * 功能：支付宝手机网站alipay.trade.query (统一收单线下交易查询)调试入口页面
 * 版本：2.0
 * 修改日期：2016-11-28
 * 说明：
 * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 请确保项目文件有可写权限，不然打印不了日志。
 */
 %>
 <%
 if(request.getParameter("WIDout_trade_no")!=null||request.getParameter("WIDtrade_no")!=null){
	 //商户订单号，商户网站订单系统中唯一订单号，必填
	 String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"),"UTF-8");
	 //支付宝交易号
	 String trade_no = new String(request.getParameter("WIDtrade_no").getBytes("ISO-8859-1"),"UTF-8");
	 /**********************/
	 // SDK 公共请求类，包含公共请求参数，以及封装了签名与验签，开发者无需关注签名与验签     
	 AlipayClient client = new DefaultAlipayClient(AlipayConfig.URL, AlipayConfig.APPID, AlipayConfig.RSA_PRIVATE_KEY, AlipayConfig.FORMAT, AlipayConfig.CHARSET, AlipayConfig.ALIPAY_PUBLIC_KEY,AlipayConfig.SIGNTYPE);
	 AlipayTradeQueryRequest alipay_request = new AlipayTradeQueryRequest();
	 
	 AlipayTradeQueryModel model=new AlipayTradeQueryModel();
     model.setOutTradeNo(out_trade_no);
     model.setTradeNo(trade_no);
     alipay_request.setBizModel(model);
     
     AlipayTradeQueryResponse alipay_response =client.execute(alipay_request);
     System.out.println(alipay_response.getBody());

     /**
      * {"out_trade_no":"2023214175625702","trade_no":""}^_^52ms,356ms,8ms
      * {"alipay_trade_query_response":{"code":"10000","msg":"Success","buyer_logon_id":"cww***@sandbox.com","buyer_pay_amount":"0.00","buyer_user_id":"2088722007963943","buyer_user_type":"PRIVATE","invoice_amount":"0.00","out_trade_no":"2023214175625702","point_amount":"0.00","receipt_amount":"0.00","send_pay_date":"2023-02-14 17:57:49","total_amount":"0.01","trade_no":"2023021422001463940503936091","trade_status":"TRADE_SUCCESS"},"sign":"CvNCk4bHA51tI12f5U2ZlY0/DWGBqSSdbmZQ8qsKvBAmfWCzgfMPU6D4H+zjXQ5Ou4IfVOe0hGxIvt2tps50ga8QGOlK9ea904qCp1lzNyxb6t71A0lQhbn+HdOJ0oZctIBpVXoVccYnoh8DJsCDmwdkSVNGYcHjTSznTJ6s/gTxPiVDkrEfjx9RAlNr0gGgrW8QRd5j5IvV9xTgdfOtV/SQx5i9Ni/bmjdIUzAyH5CpBUlj1yLg5lcY7oS4aSLCgZcrZKH5gaePI97qFbag6IB7zfNpvG+xe9a6vKZWI69gxv/0PEhg5bDOEOVtEGNnRAblif/C2Pkc7S12wNxmjg=="}
      */
 }
 %>
<!DOCTYPE html>
<html>
	<head>
	<title>支付宝手机网站alipay.trade.query (统一收单线下交易查询)</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
    *{
        margin:0;
        padding:0;
    }
    ul,ol{
        list-style:none;
    }
    body{
        font-family: "Helvetica Neue",Helvetica,Arial,"Lucida Grande",sans-serif;
    }
    .hidden{
        display:none;
    }
    .new-btn-login-sp{
        padding: 1px;
        display: inline-block;
        width: 75%;
    }
    .new-btn-login {
        background-color: #02aaf1;
        color: #FFFFFF;
        font-weight: bold;
        border: none;
        width: 100%;
        height: 30px;
        border-radius: 5px;
        font-size: 16px;
    }
    #main{
        width:100%;
        margin:0 auto;
        font-size:14px;
    }
    .red-star{
        color:#f00;
        width:10px;
        display:inline-block;
    }
    .null-star{
        color:#fff;
    }
    .content{
        margin-top:5px;
    }
    .content dt{
        width:100px;
        display:inline-block;
        float: left;
        margin-left: 20px;
        color: #666;
        font-size: 13px;
        margin-top: 8px;
    }
    .content dd{
        margin-left:120px;
        margin-bottom:5px;
    }
    .content dd input {
        width: 85%;
        height: 28px;
        border: 0;
        -webkit-border-radius: 0;
        -webkit-appearance: none;
    }
    #foot{
        margin-top:10px;
        position: absolute;
        bottom: 15px;
        width: 100%;
    }
    .foot-ul{
        width: 100%;
    }
    .foot-ul li {
        width: 100%;
        text-align:center;
        color: #666;
    }
    .note-help {
        color: #999999;
        font-size: 12px;
        line-height: 130%;
        margin-top: 5px;
        width: 100%;
        display: block;
    }
    #btn-dd{
        margin: 20px;
        text-align: center;
    }
    .foot-ul{
        width: 100%;
    }
    .one_line{
        display: block;
        height: 1px;
        border: 0;
        border-top: 1px solid #eeeeee;
        width: 100%;
        margin-left: 20px;
    }
    .am-header {
        display: -webkit-box;
        display: -ms-flexbox;
        display: box;
        width: 100%;
        position: relative;
        padding: 7px 0;
        -webkit-box-sizing: border-box;
        -ms-box-sizing: border-box;
        box-sizing: border-box;
        background: #1D222D;
        height: 50px;
        text-align: center;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        box-pack: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        box-align: center;
    }
    .am-header h1 {
        -webkit-box-flex: 1;
        -ms-flex: 1;
        box-flex: 1;
        line-height: 18px;
        text-align: center;
        font-size: 18px;
        font-weight: 300;
        color: #fff;
    }
</style>
</head>
<body text=#000000 bgColor="#ffffff" leftMargin=0 topMargin=4>
<header class="am-header">
        <h1>支付宝手机网站alipay.trade.query (统一收单线下交易查询)</h1>
</header>
<div id="main">
        <form name=alipayment action='' method=post target="_blank">
            <div id="body" style="clear:left">
                <dl class="content">
                    <dt>商户订单号
：</dt>
                    <dd>
                        <input id="WIDout_trade_no" name="WIDout_trade_no" />
                    </dd>
                    <hr class="one_line">
                    <dt>支付宝交易号：</dt>
                    <dd>
                        <input id="WIDtrade_no" name="WIDtrade_no" />
                    </dd>
                    <hr class="one_line">
                    <dt></dt>
                    <dd>
                        <span style="line-height: 28px; color:red;">注意：商户订单号和支付宝交易号不能同时为空。 trade_no、  out_trade_no如果同时存在优先取trade_no</span>
                    </dd>
                    <dd id="btn-dd">
                        <span class="new-btn-login-sp">
                            <button class="new-btn-login" type="submit" style="text-align:center;">确 认</button>
                        </span>
                        <span class="note-help">如果您点击“确认”按钮，即表示您同意该次的执行操作。</span>
                    </dd>
                </dl>
            </div>
		</form>
        <div id="foot">
			<ul class="foot-ul">
				<li>
					支付宝版权所有 2015-2018 ALIPAY.COM 
				</li>
			</ul>
		</div>
	</div>
</body>
</html>