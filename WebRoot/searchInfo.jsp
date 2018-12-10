<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
        * {
      padding: 0;
      margin: 0;
    }
    body,html {
      width: 100%;
      height: 100%;
      font-size: 14px;
    }
    .main-left {
      float: left;
      width: 20%;
      height: 100%;
      position: relative;
      left: 5%;
    }
    .main-left .title {
      position: absolute; 
      left: 20%;
      top: 12px;
    }
    .container {
      width: 200px;
      border: .4px solid rgba(0, 0, 0, .5);
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
      border-radius: 5px;
      box-shadow: .5px .5px 3px gray;
      cursor: pointer;
    }
    .container .items {
      width: 100%;
      line-height: 30px;
      position: relative;
      border-bottom: .3px solid rgba(0, 0, 0, .5);
    }
    
    .items .items-word {
      margin-left: 50px;
      color: purple;
    }
    .triangle {
      width: 0;
      height: 0;
      display: block;
      border-width: 6px;
      border-style: solid;
      border-color: purple transparent transparent transparent;
      position: absolute;
      left: 25px;
      top: 12px;
    }
    .items .content {
      margin-left: 50px;
      position: relative;
    }
    input[type=radio] {
      display: none;
    }
    .radio {
      background: url('img/inputradio.gif') no-repeat -27px -1px;
      width: 17px;
      height: 16px;
      position: absolute;
      display: block;
      left: -28px;
      top: 6.5px;
    }
    .on {
      background: url('img/inputradio.gif') no-repeat -3px 0;
      width: 17px;
      height: 18px;
    }
    
    .search-button{
      width: 500px;
      height: 25px;
      background: white;
      border-radius: 25px;
      left: 50%;
      top: 2%;
      transform: translate(-50%,0%);
      border: 1px solid gray;
      position: absolute;
      cursor: pointer;
    }
    .search-button input {
      width: 90%;
      height: 100%;
      outline: none;
      border: none;
      border-radius: 50px;
      font-size: 20px;
      margin: 0 auto;
      display: block;
      line-height: 45px;
    }
    #body {
      background: rgba(128, 0, 128, .05);
    }

    .main-right {
      width: 72%;
      float: right;
      position: relative;
    }
    .main-right {
      margin-top: 75px;
    }
    .main-right .orderData {
      width: 85%;
      height: 120px;
      position: relative;
    }
    .main-right .orderData:nth-child(odd) {
    }
    .main-right .orderData:not(:first-child) {
    }

    .orderData .order-img {
      width: 18%;
      height: 75%;
      background: url('img/th.jpg') no-repeat 0 0;
      background-size: cover;
      display: block;
      float: left;
      border-radius: 3px;
      position: relative;
    }

    .orderData .order-detail {
      width: 75%;
      height: 100%;
      float: left;
    }
    .space {
      width: 100%;
      height: 1px;
      background: purple;
      position: absolute;
      bottom: 14px;
      left: 0;
    }
  </style>
    <script type="text/javascript" src="js/jquery.js"></script>
</head>

<body id="body">
  <div class="main-left">
    <h2 class="title">订单查询</h2>
    <div class="container">
      <div class="items">
        <span class="triangle"></span>
        <span class="items-word">姓名</span>
        <div class="content">
          <i class="radio"><input type="radio" value="customerName"></i>
          <span>姓名</span>
        </div>
      </div>
      <div class="items">
        <span class="items-word">房间</span>
        <div class="content">
          <i class="radio"><input type="radio" value="roomNumber"></i><span>房间号</span>
        </div>
        <div class="content">
          <i class="radio"><input type="radio" value="roomType"></i><span>房间类型</span>
        </div>
        <span class="triangle"></span>
      </div>
      <div class="items">
        <span class="triangle"></span>
        <span class="items-word">时间</span>
        <div class="content">
          <i class="radio"><input type="radio" value="checkInTime"></i><span>入住时间</span>
        </div>
        <div class="content">
          <i class="radio"><input type="radio"></i><span>退房时间</span>
        </div>
        <div class="content">
          <i class="radio"><input type="radio" value="orderTime"></i><span></span>预订时间
        </div>
        <div class="content">
          <i class="radio"><input type="radio" value="checkOutTime"></i><span>退房时间</span>
        </div>
      </div>
      <div class="items">
        <span class="triangle"></span>
        <span class="items-word">联系方式</span>
        <div class="content">
          <i class="radio"><input type="radio" value="customerPhoneNumber"></i><span>联系方式</span>
        </div>
      </div>
      <div class="items">
        <span class="triangle"></span>
        <span class="items-word">金额</span>
        <div class="content">
          <i class="radio">
            <input type="radio" value="totalMoney">
          </i>
          <span>金额</span>
        </div>
      </div>
    </div>
  </div>
    
    <div class="search-button">
      <input type="text" id="search" placeholder="">
    </div>
    
   <div class="main-right">
      <div class="orderData">
          <div class="order-img"></div>
          <div class="order-detail">
            
          </div>
          <div class="space"></div>
      </div>
      <div class="orderData">
        <div class="order-img"></div>
          <div class="order-detail">
            
          </div>
          <div class="space"></div>
      </div>
      <div class="orderData">
        <div class="order-img"></div>
          <div class="order-detail">
            
          </div>
          <div class="space"></div>
      </div>
      <div class="orderData">
        <div class="order-img"></div>
          <div class="order-detail">
            
          </div>
          <div class="space"></div>
      </div>
   </div>


</body>
<script type="text/javascript">
  $(function() {
    var $search = $("#search");
    var inputValue,selectValue = "customerName";
    window.onload = function (){
      init();
      getData();
    }
    function init(){
      $search.attr('placeholder', '请输入姓名');
      $(".radio").on("click", function() {
          selectValue = $(this).find('input').val();
            var $placeholderContent = $(this).siblings('span').text();
            console.log($placeholderContent);
            $search.attr('placeholder', "请输入" + $placeholderContent);
        });
    }
    function getData(){
      $search.on('input', function(event) {
        inputValue = $(this).val();
        throttle(processGet);
      });
    }
    function throttle(method, context) {
        context = context || window;
        //用tId清除定时器
        clearTimeout(method.tId);
        //然后继续产生这个定时器
        method.tId = setTimeout(function() {
            //让执行上下文(这里是window)调用一下method ===>即这里的proccess
            method.call(context); //相当于window.proccess();
        }, 800);
    }
    function processGet(){
      if(inputValue == ""){
        return;
      }
      if(inputValue == "checkOutTime" || inputValue == "checkInTime") {
        inputValue = changeDate(inputValue);
      } 
      console.log(selectValue);
      console.log(inputValue);
      $.ajax({
        url: 'SearchInfoServlet',
        type: 'get',
        dataType: 'json',
        data: {
          'orderProperty': selectValue,
          'SearchInfo': encodeURI(inputValue)
        }
      })
      .done(function(data) {
        processData(data);
      })
      .fail(function(e) {
        console.log(e.status);
      })
    }
    function changeDate(inputValue){
      var date = inputValue.split('-');
      return date[0] + "-" + (date[1] < 10 ? "0" + date[1] : date[1] ) + "-" + (date[2] < 10 ? "0" + date[2] : date[2] );
    }
    function processData(data) {
        console.log(data);
        
    }
  });
  $(function (){
    var $radio = $(".items .content i");
    $radio.on('click', function(event) {
      $(this).addClass('on');
      $(this).parents('.content').siblings().find('i').removeClass('on');
      $(this).parents('.items').siblings().find('.content i').removeClass('on');      
    });
  });
</script>

</html>