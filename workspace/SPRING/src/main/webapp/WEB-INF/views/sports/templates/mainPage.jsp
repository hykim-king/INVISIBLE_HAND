<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
  <meta name="viewport" content="width=1080px,maximum-scale=2.0,minimum-scale=0.4,user-scalable=yes">
  <meta property="og:image"       content="https://imgsports.pstatic.net/images/mobile/common/NAVERsports.png"/>
  <meta property="og:title"   content="야구 : 네이버 스포츠"/>
  <meta property="og:description" content="스포츠의 시작과 끝!"/>
  <meta name="description" content="스포츠의 모든 것, 네이버 스포츠와 함께 하세요">
  
    
      <meta name="robots" content="index,nofollow"/>
      <meta property="og:url"         content="https://sports.news.naver.com/kbaseball/index.nhn"/>
    
    
    
    
  
  <title>야구 : 네이버 스포츠</title>
  
    <link rel='stylesheet' type='text/css' href='https://ssl.pstatic.net/static.sports/resources/pc/171717/66/178/664600/css/generated/nsportsCss.css'>

    <link rel='stylesheet' type='text/css' href='https://ssl.pstatic.net/static.sports/resources/pc/171717/66/178/664600/css/generated/nsportsHome.css'>


  <link rel="shortcut icon" href="https://www.naver.com/favicon.ico?v=20140228" type="image/x-icon">
  <link rel="apple-touch-icon" href="https://imgsports.pstatic.net/images/mobile/favicon_20180622/ios/iOS6_57X57_iphone3.png"> 
  <link rel="apple-touch-icon" sizes="76x76" href="https://imgsports.pstatic.net/images/mobile/favicon_20180622/ios/iOS7_76X76_ipad.png"> 
  <link rel="apple-touch-icon" sizes="120x120" href="https://imgsports.pstatic.net/images/mobile/favicon_20180622/ios/iOS7_120X120_iphone.png"> 
  <link rel="apple-touch-icon" sizes="152x152" href="https://imgsports.pstatic.net/images/mobile/favicon_20180622/ios/iOS7_152X152_ipad_retina.png"> 
  <link rel="apple-touch-icon" sizes="167x167" href="https://imgsports.pstatic.net/images/mobile/favicon_20180622/ios/iOS_167X167_iPadPro.png"> <!-- 레티나 패드 -->
  <link rel="apple-touch-icon" sizes="180x180" href="https://imgsports.pstatic.net/images/mobile/favicon_20180622/ios/iOS_180X180_iPhone.png"> <!-- 레티나 패드 -->
  <!-- script -->
  <script type='text/javascript' src='https://ssl.pstatic.net/static.sports/resources/pc/171717/66/178/664600/js/generated/baseJsTop.js' charset='UTF-8'></script>

  <script type='text/javascript' src='https://ssl.pstatic.net/static.sports/resources/pc/171717/66/178/664600/js/lib/iscroll/iscroll.js' charset='UTF-8'></script>

  

<script>
  try {
    var deployPhase = 'release';
    if (deployPhase === 'release') {
      JEagleEyeClient.attachOnError();

    } else if (deployPhase === 'dev') {
      JEagleEyeClient.setDebugOnly(true);
      JEagleEyeClient.attachOnError();

    } else {
      // local
      JEagleEyeClient.attachOnError();
    }
  } catch (e) {
    console.log(e);
  }
</script>

    
    <script type='text/javascript' src='https://ssl.pstatic.net/static.sports/resources/pc/171717/66/178/664600/js/generated/sectionHomeJs.js' charset='UTF-8'></script>

    <script type='text/javascript' src='https://ssl.pstatic.net/static.sports/resources/pc/171717/66/178/664600/js/generated/sportsAdJs.js' charset='UTF-8'></script>


    <script>
    var nsc = "sports.baseball";
    </script>
</head>

  

<body
    
      
      
    
>
<!-- 사이드 광고 -->
<div id="veta_skin_left" data-veta-preview="p_sports_dpl" style="display:none;"></div>
<div id="veta_skin_right" data-veta-preview="p_sports_dpl" style="display:none;"></div>

<div id="u_skip">
  <a href="#lnb_main_sub" onclick="document.getElementById('lnb_main_sub').tabIndex=-1;document.getElementById('lnb_main_sub').focus();"><span>메인 메뉴로 바로가기</span></a>
  <div id="lnb_menu_link"></div>
  <div id="container_link"></div>
</div>

<div id="wrap">
  

  
  
    <header id="header" class="sports_header_pc">
      <div class="sports_gnb" role="banner">
        

<h1 class="logo_area">
  <a href="https://www.naver.com" class="logo_naver"
     onClick="clickcr(this, 'STA.naverlogo', '', '', event);"><span class="blind">네이버</span></a>
  <a href="https://sports.news.naver.com/" class="logo_sports"
     onClick="clickcr(this, 'STA.sports', '', '', event);"><span class="blind">스포츠</span></a>
</h1>
<div class="sub_logo_area">
  <a href="https://m.sports.naver.com/community/index" class="logo_community"
     onClick="clickcr(this, 'STA.community', '', '', event);"><span class="blind">커뮤니티</span></a>
</div>
<div class="service_area">
  <a href="https://news.naver.com/" onClick="clickcr(this, 'STA.news', '', '', event);" class="logo_news"><span
      class="blind">뉴스</span></a>
  <a href="https://weather.naver.com/" onClick="clickcr(this, 'STA.whether', '', '', event);"
     class="logo_weather"><span class="blind">날씨</span></a>
  <a href="https://entertain.naver.com/" onClick="clickcr(this, 'STA.entertain', '', '', event);"
     class="logo_entertain"><span class="blind">TV연예</span></a>
</div>

<script>
  function initCommunityUnreadMessageExist() {
    new naver.sports.common.CommunityUnreadMessage({
      porxyGWDomain: 'https://proxy-gateway.sports.naver.com'
    });
  }

  $(document).on('ready', initCommunityUnreadMessageExist);
</script>
        <!-- GNB -->
        <div class="tool_area">
          <div class="gnb_one" id="gnb"></div>
        </div>
        <!-- GNB -->
      </div>
      




<!-- 추후 제거, lnbMenuInfoList 를 받아오기 위하여 사용중 -->

<nav class="sports_lnb" role="navigation" id="_sports_lnb_menu">
  <h2 class="blind">메인 메뉴</h2>
  <ul id="lnb_list" class="lnb_list" role="menubar">
  
  <li class="lnb_item" role="presentation">
    <a href="/index" class="link_lnb" role="menuitem">스포츠 홈</a>
  </li>

  <li class="lnb_item" role="presentation">
    <a href="/kbaseball/index" class="link_lnb" role="menuitem" aria-current="true">야구</a>
  </li>

  <li class="lnb_item" role="presentation">
    <a href="/wbaseball/index" class="link_lnb" role="menuitem">해외야구</a>
  </li>

  <li class="lnb_item" role="presentation">
    <a href="/kfootball/index" class="link_lnb" role="menuitem">축구</a>
  </li>

  <li class="lnb_item" role="presentation">
    <a href="/wfootball/index" class="link_lnb" role="menuitem">해외축구</a>
  </li>

  <li class="lnb_item" role="presentation">
    <a href="/basketball/index" class="link_lnb" role="menuitem">농구</a>
  </li>

  <li class="lnb_item" role="presentation">
    <a href="/volleyball/index" class="link_lnb" role="menuitem">배구</a>
  </li>

  <li class="lnb_item" role="presentation">
    <a href="/golf/index" class="link_lnb" role="menuitem">골프</a>
  </li>

  <li class="lnb_item" role="presentation">
    <a href="/general/index" class="link_lnb" role="menuitem">일반</a>
  </li>

  <li class="lnb_item" role="presentation">
    <a href="https://game.naver.com/esports" class="link_lnb" role="menuitem">e스포츠</a>
  </li>

  <li class="lnb_item" role="presentation">
    <a href="https://m.sports.naver.com/column/storyteller" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.column', 'column', '', event);  javascript:lnbOpenPopup(this.href); return false; ; ">연재</a>
  </li>

  <li class="lnb_item" role="presentation">
    <a href="/scoreboard/index" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.scoreboard', 'scoreboard', '', event); ; ">오늘의 경기</a>
  </li>

  <li class="lnb_item" role="presentation">
    <a href="/ranking/index" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.ranking', 'ranking', '', event); ; ">랭킹</a>
  </li>
</ul>

  
  
  
  
  
  
  
  
  
  
  
  
</nav>
<nav class="sports_lnb_sub">
  <ul id="lnb_sub_list" class="lnb_sub_list" role="menubar">
  
  <li class="lnb_sub_item " role="presentation">
    <a href="/kbaseball/news/index" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.news', 'news', '', event); " aria-current="page">
    <span class="menu">최신뉴스</span>
    </a>
  </li>
  <li class="lnb_sub_item " role="presentation">
    <a href="/kbaseball/vod/index" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.video', 'video', '', event); ">
    <span class="menu">영상</span>
    </a>
  </li>
  <li class="lnb_sub_item " role="presentation">
    <a href="/photocenter/albumList?category=kbo" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.album', 'album', '', event); ">
    <span class="menu">생생화보</span>
    </a>
  </li>
  <li class="lnb_sub_item " role="presentation">
    <a href="/kbaseball/schedule/index" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.schedule', 'schedule', '', event); ">
    <span class="menu">일정/결과</span>
    </a>
  </li>
  <li class="lnb_sub_item " role="presentation">
    <a href="/kbaseball/record/index?category=kbo" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.datacenter', 'datacenter', '', event); ">
    <span class="menu">기록/순위</span>
    </a>
  </li>
  <li class="lnb_sub_item " role="presentation">
    <a href="/kbaseball/column/columnistList" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.issue', 'issue', '', event); ">
    <span class="menu">구단/협회</span>
    </a>
  </li>
  <li class="lnb_sub_item " role="presentation">
    <a href="https://m.sports.naver.com/kbollect" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.', '', '', event); ">
    <span class="menu_kbollect"><span class="blind">kbollect</span></span>
    </a>
  </li>
</ul>
</nav>

 </header>
    <script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/static.gn/templates/gnb_utf8.nhn?20230619"></script>
    <script type="text/javascript">
      //NOTE : GNB init
      var gnb_option = {
        gnb_one_naver: 1,
        gnb_brightness: 1,
        gnb_login: encodeURIComponent(window.location.href),
        gnb_logout: encodeURIComponent(window.location.href)
      };


      var section = window.location.pathname.split('/')[1];
      if (section === 'wfootball' || section === 'golf') {
        document.getElementById('header').className += ' type_' + section;
      }

      var queryVariablesStr = window.location.search.substring(1);
      var queryVariables = queryVariablesStr.split('&');
      for(var i = 0; i < queryVariables.length; i++){
        var paramName = queryVariables[i].split('=');
        if(paramName[0] === 'category' && (paramName[1] === 'wfootball' || paramName[1] === 'golf')){
          document.getElementById('header').className += ' type_' + paramName[1];
        }
      }


      (function () {
        function loadGNB() {
          //NOTE : https://ssl.pstatic.net/static.gn/templates/gnb_utf8.nhn 회원쪽 gnb src 을 못 가져 왔을 때 방어처리
          if (typeof getGNB === "function") {
            getGNB();
          }
        }

        window.attachEvent ? window.attachEvent('onload', loadGNB) : window.addEventListener('load', loadGNB, false);
      })();
    </script>
  

  <div id="container" >
  
<div id="spot">
    <div class="home_spot">
        
        
    </div>
</div>
<div class="cms_side_banner" id="_cms_side_banner">
</div>
<div id="content">
    <div class="home_wrap">
        <div class="home_feature">
            <script>
                var defaultHeadlinePage = 0;
            </script>
            <div class="feature_main">
                
            
            








<script id="_section_home_headline_template" type="text/x-handlebars-template">
  <a href="{{pcUrl}}" class="link_headline" onclick="clickcr(this, 'hdl.{{#ifCond iconType '==' 'video'}}video{{/ifCond}}cont{{num}}', '', '', event);">
    {{> innerTemplate}}
  </a>
</script>

<script id="_section_home_special_template" type="text/x-handlebars-template">
  <a href="{{pcUrl}}" class="link_special" onclick="clickcr(this, 'hdl.special', '', '', event);">
    {{> innerTemplate}}
  </a>
</script>

<script id="_section_home_inner_template" type="text/x-handlebars-template">
  <div class="image_area">
    {{#ifCond iconType '==' 'video'}}
    <span class="common_playicon"><span class="blind">동영상</span></span>
    <span class="common_video_length"><span class="blind">재생시간</span>{{playtime}}</span>
    {{/ifCond}}
    <span class="image">{{#if image}}<img
        src="https://dthumb-phinf.pstatic.net/?src={{image}}&type={{imageDthumbType}}"
        alt="{{title}}" onerror="imageOnError(this);">{{/if}}</span>
  </div>
  <div class="text_area">
    <span class="title">{{title}}</span>
    <span class="press">{{#if officeName}}{{officeName}}{{else if contentsCategoryName}}{{contentsCategoryName}}{{else}}네이버스포츠{{/if}}</span>
  </div>
</script>

<script>
  Handlebars.registerHelper('escapeString', function (str) {
    return (typeof (str) == "string") ? (str.replace(/\&/g, "&amp;").replace(/\"/g, "&quot;").replace(/\'/g, "&#39;").replace(/</g, "&lt;").replace(/\>/g, "&gt;")) : "";
  });
</script>


  
  

    <div class="headline">
      <h2 class="blind">헤드라인</h2>
      <div class="headline_list">
      </div>
    </div>


    <script>
      naver = window.naver || {};
      naver.sports = naver.sports || {};
      naver.sports.section = naver.sports.section || {};
      naver.sports.section.home = naver.sports.section.home || {};
      naver.sports.section.home.Headline = eg.Class({
        construct: function (htOption) {
          this._initVars(htOption);
          this._initHandlebarsTemplate();
          this._init();

        },
        _initVars: function (htOption) {
          this._imageDthumbType = {
            'default' : 'sports_nf160_95',
            'special' : 'sports_nf686_388'
          };
          this._headlineItemList = htOption.headlineItemList || {};
        },
        _initHandlebarsTemplate: function () {
          Handlebars.registerPartial('innerTemplate', $('#_section_home_inner_template').html());
          this._sectionHomeHeadlineTemplate = Handlebars.compile($("#_section_home_headline_template").html());
          this._sectionHomeSpecialHeadlineTemplate = Handlebars.compile($("#_section_home_special_template").html());
        },
        _init: function () {
          this._setHeadlineType();
          this._draw();
        },

        _setHeadlineType: function () {
          var headlineSize = _.size(this._headlineItemList);
          var $headlineRoot = $("div.home_feature");
          var isExistSpecialTemplate = _.some(this._headlineItemList, function (item) {
            return item.templateId === "section_home_headline_special";
          });

          if ($headlineRoot.length > 0) {
            if (headlineSize === 4 && !isExistSpecialTemplate) {
              $headlineRoot.addClass("type_headline_unit4")
            } else if (headlineSize === 5 && isExistSpecialTemplate) {
              $headlineRoot.addClass("type_headline_unit6")
            } else if (headlineSize === 6 && !isExistSpecialTemplate) {
              $headlineRoot.addClass("type_headline_unit6")
            }
          }
        },

        _draw: function () {
          this._drawSpecialTemplateIfExist();

          //일반 헤드라인
          var headlineChunkSize = 2;
          _.each(_.chunk(this._headlineItemList, headlineChunkSize), $.proxy(function (headlineItemChunk, listIdx) {
            var $headlineItem = $("<div></div>").addClass("headline_item");

            if (_.size(headlineItemChunk) === headlineChunkSize) {
              _.each(headlineItemChunk, $.proxy(function (headlineItem, chunkIdx) {
                var headlineData = _.first(headlineItem.dataList);

                headlineData.num = listIdx * headlineChunkSize + chunkIdx + 1;
                headlineData.imageDthumbType = this._imageDthumbType['default'];
                $headlineItem.append(this._sectionHomeHeadlineTemplate(headlineData));
              }, this));
            }
            $("div.headline_list").append($headlineItem);
          }, this));
        },

        _drawSpecialTemplateIfExist : function () {
          var isExistSpecialTemplate = _.some(this._headlineItemList, function (item) {
            return item.templateId === "section_home_headline_special";
          });

          //스페샬 템플릿
          if(isExistSpecialTemplate){
            var special = _.find(this._headlineItemList, function (item) {
              return item.templateId === "section_home_headline_special";
            });

            var $headlineItem = $("<div></div>").addClass("special_item");
            var headlineData = _.first(special.dataList);
            headlineData.imageDthumbType = this._imageDthumbType['special'];

            $headlineItem.append(this._sectionHomeSpecialHeadlineTemplate(headlineData));
            $("div.headline_list").append($headlineItem);

            // 스페셜 템플릿 데이터는 없는 셈 치고, 아무일 없던 것 처럼 하위 기존 로직 진행.
            this._headlineItemList = _.without(this._headlineItemList, special);
          }
        },

      });
      new naver.sports.section.home.Headline({
        "headlineItemList": [{"menuId":"kbaseball_home_headline_pc","itemId":"1687143817180","isEnable":"Y","title":"벤치클리어링 사건의 '전말 공개!' [위클리]","displayOrder":1,"score":0.0,"templateId":"section_home_headline","isFixed":"N","fixedPos":null,"dataTitleStyle":"","seq":0,"contentId":"video.1080878","sectionId":"kbaseball","newsType":"","itemType":"MANUAL","baseDateTime":null,"extraInfoJson":null,"extraInfo":{"duplicatedNewsItem":"N"},"mixPos":"","align":null,"template":{"templateId":"section_home_headline","templateName":"헤드라인","dataSetId":"home/section_home_headline","interfaceId":null,"pushPos":"1","isAuto":"N","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"pc/section_home_headline"},"viewMobile":{"view":"mobile/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"mobile/section_home_headline"},"viewJson":null,"description":"여러개가 있는 경우\n랜덤으로 노출됩니다. (모바일 홈 = 모바일 헤드라인(연동), 네이버 모바일 메인 영향 받음)\n고정 버튼(고정 할 시, 맨 위에 고정된 영상 1개만 계속 노출)","descriptionImage":null,"id":"section_home_headline"},"updateDatetime":"2023-06-19 12:03:37.0","createDatetime":"2023-06-19 12:03:37.0","dataList":[{"isShortForm":false,"videoTypeName":"크보연구소","videoId":1080878,"playtime":"02:55","title":"벤치클리어링 사건의 '전말 공개!' [위클리]","categoryName":"KBO리그","isEnable":"Y","contentsId":"video.1080878","awayTeamCode":"","datetime":"2023-06-19 12:00","hit":46,"dataId":"1687143821644","iconType":"video","mobileUrl":"/video?id=1080878","contentsCategoryName":"KBO리그","homeTeamCode":"","gameId":"","image":"https://sports-phinf.pstatic.net/20230618_169/1687074441340ylHIa_JPEG/%BA%A5%C4%A1%C5%AC%B8%AE%BE%EE%B8%B5_%27%BB%E7%B0%C7%C0%C7_%C0%FC%B8%BB_%B0%F8%B0%B3%27_%C0%A7%C5%AC%B8%AE.jpg","thumbnail":"https://sports-phinf.pstatic.net/20230618_169/1687074441340ylHIa_JPEG/%BA%A5%C4%A1%C5%AC%B8%AE%BE%EE%B8%B5_%27%BB%E7%B0%C7%C0%C7_%C0%FC%B8%BB_%B0%F8%B0%B3%27_%C0%A7%C5%AC%B8%AE.jpg","pcUrl":"/video?id=1080878","videoType":"크보연구소","playTimeSeconds":"175","sectionId":"kbaseball","masterVideoId":"9566DB897638BB6DDE5281E760F310062BC7","push":"video","endCardDataType":"video","upperCategory":"kbaseball","videoHit":33244,"category":"kbo","nvpPlayable":true,"subContent":""}],"dataSet":{"bo":"sectionHomeHeadlineDS","params":{"requiredItemCount":"5"},"forms":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},"dataSetBoName":"sectionHomeHeadlineDS","dataSetId":"home/section_home_headline","firstData":{"isShortForm":false,"videoTypeName":"크보연구소","videoId":1080878,"playtime":"02:55","title":"벤치클리어링 사건의 '전말 공개!' [위클리]","categoryName":"KBO리그","isEnable":"Y","contentsId":"video.1080878","awayTeamCode":"","datetime":"2023-06-19 12:00","hit":46,"dataId":"1687143821644","iconType":"video","mobileUrl":"/video?id=1080878","contentsCategoryName":"KBO리그","homeTeamCode":"","gameId":"","image":"https://sports-phinf.pstatic.net/20230618_169/1687074441340ylHIa_JPEG/%BA%A5%C4%A1%C5%AC%B8%AE%BE%EE%B8%B5_%27%BB%E7%B0%C7%C0%C7_%C0%FC%B8%BB_%B0%F8%B0%B3%27_%C0%A7%C5%AC%B8%AE.jpg","thumbnail":"https://sports-phinf.pstatic.net/20230618_169/1687074441340ylHIa_JPEG/%BA%A5%C4%A1%C5%AC%B8%AE%BE%EE%B8%B5_%27%BB%E7%B0%C7%C0%C7_%C0%FC%B8%BB_%B0%F8%B0%B3%27_%C0%A7%C5%AC%B8%AE.jpg","pcUrl":"/video?id=1080878","videoType":"크보연구소","playTimeSeconds":"175","sectionId":"kbaseball","masterVideoId":"9566DB897638BB6DDE5281E760F310062BC7","push":"video","endCardDataType":"video","upperCategory":"kbaseball","videoHit":33244,"category":"kbo","nvpPlayable":true,"subContent":""},"dataSetForm":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},{"menuId":"kbaseball_home_headline_pc","itemId":"1687122078951","isEnable":"Y","title":"'오스틴, 이 남자 정말 사랑하지 않을 수 없다!'","displayOrder":2,"score":0.0,"templateId":"section_home_headline","isFixed":"N","fixedPos":-1,"dataTitleStyle":"","seq":1,"contentId":"video.1080833","sectionId":"kbaseball","newsType":"","itemType":"MANUAL","baseDateTime":null,"extraInfoJson":null,"extraInfo":{"duplicatedNewsItem":"N"},"mixPos":"","align":null,"template":{"templateId":"section_home_headline","templateName":"헤드라인","dataSetId":"home/section_home_headline","interfaceId":null,"pushPos":"1","isAuto":"N","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"pc/section_home_headline"},"viewMobile":{"view":"mobile/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"mobile/section_home_headline"},"viewJson":null,"description":"여러개가 있는 경우\n랜덤으로 노출됩니다. (모바일 홈 = 모바일 헤드라인(연동), 네이버 모바일 메인 영향 받음)\n고정 버튼(고정 할 시, 맨 위에 고정된 영상 1개만 계속 노출)","descriptionImage":null,"id":"section_home_headline"},"updateDatetime":"2023-06-19 06:01:19.0","createDatetime":"2023-06-19 06:01:19.0","dataList":[{"isShortForm":false,"videoTypeName":"크보연구소","videoId":1080833,"playtime":"02:49","isMultiLine":"true","title":"'오스틴, 이 남자 정말 사랑하지 않을 수 없다!'","categoryName":"KBO리그","isEnable":"Y","contentsId":"video.1080833","awayTeamCode":"OB","datetime":"2023-06-19 07:12","hit":28,"dataId":"1687122086232","iconType":"video","mobileUrl":"/video?id=1080833","contentsCategoryName":"KBO리그","homeTeamCode":"LG","gameId":"20230618OBLG02023","image":"https://sports-phinf.pstatic.net/20230619_155/16871212879420My3f_JPEG/00.jpg","thumbnail":"https://sports-phinf.pstatic.net/20230619_155/16871212879420My3f_JPEG/00.jpg","pcUrl":"/video?id=1080833","videoType":"크보연구소","playTimeSeconds":"169","sectionId":"kbaseball","masterVideoId":"1B989B3BD0821F3BFEAB0A6DD4AD13278429","push":"video","endCardDataType":"video","upperCategory":"kbaseball","videoHit":43318,"linkType":"","category":"kbo","nvpPlayable":true,"subContent":""}],"dataSet":{"bo":"sectionHomeHeadlineDS","params":{"requiredItemCount":"5"},"forms":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},"dataSetBoName":"sectionHomeHeadlineDS","dataSetId":"home/section_home_headline","firstData":{"isShortForm":false,"videoTypeName":"크보연구소","videoId":1080833,"playtime":"02:49","isMultiLine":"true","title":"'오스틴, 이 남자 정말 사랑하지 않을 수 없다!'","categoryName":"KBO리그","isEnable":"Y","contentsId":"video.1080833","awayTeamCode":"OB","datetime":"2023-06-19 07:12","hit":28,"dataId":"1687122086232","iconType":"video","mobileUrl":"/video?id=1080833","contentsCategoryName":"KBO리그","homeTeamCode":"LG","gameId":"20230618OBLG02023","image":"https://sports-phinf.pstatic.net/20230619_155/16871212879420My3f_JPEG/00.jpg","thumbnail":"https://sports-phinf.pstatic.net/20230619_155/16871212879420My3f_JPEG/00.jpg","pcUrl":"/video?id=1080833","videoType":"크보연구소","playTimeSeconds":"169","sectionId":"kbaseball","masterVideoId":"1B989B3BD0821F3BFEAB0A6DD4AD13278429","push":"video","endCardDataType":"video","upperCategory":"kbaseball","videoHit":43318,"linkType":"","category":"kbo","nvpPlayable":true,"subContent":""},"dataSetForm":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},{"menuId":"kbaseball_home_headline_pc","itemId":"NORM1170003741558","isEnable":"Y","title":"이제 4회인데...'야구장을 떠난 관중들', 이런 야구 보려고 온 거 아닌데 '더위 먹은 두산 수비' [유진형의 현장 1mm]","displayOrder":3,"score":13.037879897184501,"templateId":"section_home_headline","isFixed":"N","fixedPos":null,"dataTitleStyle":"","seq":2,"contentId":"news.117.0003741558","sectionId":"kbo","newsType":null,"itemType":"AUTO","baseDateTime":"202306191440","extraInfoJson":null,"extraInfo":{"duplicatedNewsItem":null},"mixPos":"","align":null,"template":{"templateId":"section_home_headline","templateName":"헤드라인","dataSetId":"home/section_home_headline","interfaceId":null,"pushPos":"1","isAuto":"N","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"pc/section_home_headline"},"viewMobile":{"view":"mobile/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"mobile/section_home_headline"},"viewJson":null,"description":"여러개가 있는 경우\n랜덤으로 노출됩니다. (모바일 홈 = 모바일 헤드라인(연동), 네이버 모바일 메인 영향 받음)\n고정 버튼(고정 할 시, 맨 위에 고정된 영상 1개만 계속 노출)","descriptionImage":null,"id":"section_home_headline"},"updateDatetime":"2023-06-19 14:40:55.0","createDatetime":"2023-06-19 14:19:00.0","dataList":[{"officeName":"마이데일리","image":"http://imgnews.naver.net/image/117/2023/06/19/202306191320603423_1_20230619134702103.jpg","pcUrl":"/news?oid=117&aid=0003741558","modifyDatetime":"2023-06-19 13:47:02.0","oid":"117","sectionId":"kbo","isMultiLine":"true","title":"이제 4회인데...'야구장을 떠난 관중들', 이런 야구 보려고 온 거 아닌데 '더위 먹은 두산 수비' [유진형의 현장 1mm]","push":"news","newsType":1,"isEnable":"Y","contentsId":"news.117.0003741558","datetime":"2023-06-19 13:47:02.0","dataId":"AUTO0","originalTitle":"이제 4회인데...'야구장을 떠난 관중들', 이런 야구 보려고 온 거 아닌데 '더위 먹은 두산 수비' [유진형의 현장 1mm]","iconType":"none","mobileUrl":"https://n.news.naver.com/sports/kbaseball/article/117/0003741558","aid":"0003741558","subContent":"[마이데일리 = 유진형 기자] 4회말이 채 끝나기 전 관중들이 야구장을 떠나기 시작했다. 5회말 추가 실점을 하며 1-12가 되자 6회부터는 3루 관중석 곳곳에 빈자리가 상당수 보였다.18일 잠실야구장에서는 '2023 신한은행 SOL KBO리그' 두산 베어스와 LG 트윈스의 '한 지붕 두 가족' 잠실 라이벌이 열렸다. 양..."}],"dataSet":{"bo":"sectionHomeHeadlineDS","params":{"requiredItemCount":"5"},"forms":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},"dataSetBoName":"sectionHomeHeadlineDS","dataSetId":"home/section_home_headline","firstData":{"officeName":"마이데일리","image":"http://imgnews.naver.net/image/117/2023/06/19/202306191320603423_1_20230619134702103.jpg","pcUrl":"/news?oid=117&aid=0003741558","modifyDatetime":"2023-06-19 13:47:02.0","oid":"117","sectionId":"kbo","isMultiLine":"true","title":"이제 4회인데...'야구장을 떠난 관중들', 이런 야구 보려고 온 거 아닌데 '더위 먹은 두산 수비' [유진형의 현장 1mm]","push":"news","newsType":1,"isEnable":"Y","contentsId":"news.117.0003741558","datetime":"2023-06-19 13:47:02.0","dataId":"AUTO0","originalTitle":"이제 4회인데...'야구장을 떠난 관중들', 이런 야구 보려고 온 거 아닌데 '더위 먹은 두산 수비' [유진형의 현장 1mm]","iconType":"none","mobileUrl":"https://n.news.naver.com/sports/kbaseball/article/117/0003741558","aid":"0003741558","subContent":"[마이데일리 = 유진형 기자] 4회말이 채 끝나기 전 관중들이 야구장을 떠나기 시작했다. 5회말 추가 실점을 하며 1-12가 되자 6회부터는 3루 관중석 곳곳에 빈자리가 상당수 보였다.18일 잠실야구장에서는 '2023 신한은행 SOL KBO리그' 두산 베어스와 LG 트윈스의 '한 지붕 두 가족' 잠실 라이벌이 열렸다. 양..."},"dataSetForm":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},{"menuId":"kbaseball_home_headline_pc","itemId":"NORM4770000435558","isEnable":"Y","title":"염경엽 고대하던 '백업 주전' 온다…그런데 누굴 내리지? 좌타 유망주 or 우타 멀티맨","displayOrder":4,"score":12.257729943922802,"templateId":"section_home_headline","isFixed":"N","fixedPos":null,"dataTitleStyle":"","seq":3,"contentId":"news.477.0000435558","sectionId":"kbo","newsType":null,"itemType":"AUTO","baseDateTime":"202306191440","extraInfoJson":null,"extraInfo":{"duplicatedNewsItem":null},"mixPos":"","align":null,"template":{"templateId":"section_home_headline","templateName":"헤드라인","dataSetId":"home/section_home_headline","interfaceId":null,"pushPos":"1","isAuto":"N","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"pc/section_home_headline"},"viewMobile":{"view":"mobile/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"mobile/section_home_headline"},"viewJson":null,"description":"여러개가 있는 경우\n랜덤으로 노출됩니다. (모바일 홈 = 모바일 헤드라인(연동), 네이버 모바일 메인 영향 받음)\n고정 버튼(고정 할 시, 맨 위에 고정된 영상 1개만 계속 노출)","descriptionImage":null,"id":"section_home_headline"},"updateDatetime":"2023-06-19 14:40:55.0","createDatetime":"2023-06-19 14:09:25.0","dataList":[{"officeName":"스포티비뉴스","image":"http://imgnews.naver.net/image/477/2023/06/19/0000435558_001_20230619133403686.jpg","pcUrl":"/news?oid=477&aid=0000435558","modifyDatetime":"2023-06-19 13:34:03.0","oid":"477","sectionId":"kbo","isMultiLine":"true","title":"염경엽 고대하던 '백업 주전' 온다…그런데 누굴 내리지? 좌타 유망주 or 우타 멀티맨","push":"news","newsType":1,"isEnable":"Y","contentsId":"news.477.0000435558","datetime":"2023-06-19 13:34:03.0","dataId":"AUTO0","originalTitle":"염경엽 고대하던 '백업 주전' 온다…그런데 누굴 내리지? 좌타 유망주 or 우타 멀티맨","iconType":"none","mobileUrl":"https://n.news.naver.com/sports/kbaseball/article/477/0000435558","aid":"0000435558","subContent":"▲ LG 손호영 ⓒ 곽혜미 기자▲ 염경엽 감독 ⓒ곽혜미 기자[스포티비뉴스=신원철 기자] LG 염경엽 감독이 야수 로테이션을 위해 기다리고 기다리던 &#39;회심의 카드&#39;가 온다. 내야수 손호영이 퓨처스리그에서 실전 감각을 끌어올리면서 1군 복귀를 바라보고 있다. 이제는 선택의 시간이다. 누굴 내려야 할까. 손호영은..."}],"dataSet":{"bo":"sectionHomeHeadlineDS","params":{"requiredItemCount":"5"},"forms":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},"dataSetBoName":"sectionHomeHeadlineDS","dataSetId":"home/section_home_headline","firstData":{"officeName":"스포티비뉴스","image":"http://imgnews.naver.net/image/477/2023/06/19/0000435558_001_20230619133403686.jpg","pcUrl":"/news?oid=477&aid=0000435558","modifyDatetime":"2023-06-19 13:34:03.0","oid":"477","sectionId":"kbo","isMultiLine":"true","title":"염경엽 고대하던 '백업 주전' 온다…그런데 누굴 내리지? 좌타 유망주 or 우타 멀티맨","push":"news","newsType":1,"isEnable":"Y","contentsId":"news.477.0000435558","datetime":"2023-06-19 13:34:03.0","dataId":"AUTO0","originalTitle":"염경엽 고대하던 '백업 주전' 온다…그런데 누굴 내리지? 좌타 유망주 or 우타 멀티맨","iconType":"none","mobileUrl":"https://n.news.naver.com/sports/kbaseball/article/477/0000435558","aid":"0000435558","subContent":"▲ LG 손호영 ⓒ 곽혜미 기자▲ 염경엽 감독 ⓒ곽혜미 기자[스포티비뉴스=신원철 기자] LG 염경엽 감독이 야수 로테이션을 위해 기다리고 기다리던 &#39;회심의 카드&#39;가 온다. 내야수 손호영이 퓨처스리그에서 실전 감각을 끌어올리면서 1군 복귀를 바라보고 있다. 이제는 선택의 시간이다. 누굴 내려야 할까. 손호영은..."},"dataSetForm":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},{"menuId":"kbaseball_home_headline_pc","itemId":"NORM0570001750112","isEnable":"Y","title":"한화 윌리엄스, 빅리그 우투 상대 OPS 0.750…멕시칸리그 OPS 6위→35위는 불안요소","displayOrder":5,"score":12.14973714144385,"templateId":"section_home_headline","isFixed":"N","fixedPos":null,"dataTitleStyle":"","seq":4,"contentId":"news.057.0001750112","sectionId":"kbo","newsType":null,"itemType":"AUTO","baseDateTime":"202306191440","extraInfoJson":null,"extraInfo":{"duplicatedNewsItem":"N"},"mixPos":"","align":null,"template":{"templateId":"section_home_headline","templateName":"헤드라인","dataSetId":"home/section_home_headline","interfaceId":null,"pushPos":"1","isAuto":"N","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"pc/section_home_headline"},"viewMobile":{"view":"mobile/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"mobile/section_home_headline"},"viewJson":null,"description":"여러개가 있는 경우\n랜덤으로 노출됩니다. (모바일 홈 = 모바일 헤드라인(연동), 네이버 모바일 메인 영향 받음)\n고정 버튼(고정 할 시, 맨 위에 고정된 영상 1개만 계속 노출)","descriptionImage":null,"id":"section_home_headline"},"updateDatetime":"2023-06-19 14:40:55.0","createDatetime":"2023-06-19 14:09:25.0","dataList":[{"officeName":"MBN","image":"http://imgnews.naver.net/image/057/2023/06/19/0001750112_001_20230619135901126.jpg","pcUrl":"/news?oid=057&aid=0001750112","modifyDatetime":"2023-06-19 13:59:01.0","oid":"057","sectionId":"kbo","isMultiLine":"true","title":"한화 윌리엄스, 빅리그 우투 상대 OPS 0.750…멕시칸리그 OPS 6위→35위는 불안요소","push":"news","newsType":1,"isEnable":"Y","contentsId":"news.057.0001750112","datetime":"2023-06-19 13:50:46.0","dataId":"AUTO0","originalTitle":"한화 윌리엄스, 빅리그 우투 상대 OPS 0.750…멕시칸리그 OPS 6위→35위는 불안요소","iconType":"none","mobileUrl":"https://n.news.naver.com/sports/kbaseball/article/057/0001750112","aid":"0001750112","subContent":"한화의 새 외국인 타자 닉 윌리엄스. 사진 = 한화이글스한화 이글스의 새 외국인 타자 닉 윌리엄스(29)에 대한 팬들의 기대가 높습니다.당초 한화 새 외국인 타자를 두고 미국 메이저리그(MLB)와 트리플A의 다양한 선수들이 거론됐지만, 결론적으로 오피셜의 주인공은 미국이 아닌 멕시칸리그의 선수였습니다. 총액 45만 달러(..."}],"dataSet":{"bo":"sectionHomeHeadlineDS","params":{"requiredItemCount":"5"},"forms":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},"dataSetBoName":"sectionHomeHeadlineDS","dataSetId":"home/section_home_headline","firstData":{"officeName":"MBN","image":"http://imgnews.naver.net/image/057/2023/06/19/0001750112_001_20230619135901126.jpg","pcUrl":"/news?oid=057&aid=0001750112","modifyDatetime":"2023-06-19 13:59:01.0","oid":"057","sectionId":"kbo","isMultiLine":"true","title":"한화 윌리엄스, 빅리그 우투 상대 OPS 0.750…멕시칸리그 OPS 6위→35위는 불안요소","push":"news","newsType":1,"isEnable":"Y","contentsId":"news.057.0001750112","datetime":"2023-06-19 13:50:46.0","dataId":"AUTO0","originalTitle":"한화 윌리엄스, 빅리그 우투 상대 OPS 0.750…멕시칸리그 OPS 6위→35위는 불안요소","iconType":"none","mobileUrl":"https://n.news.naver.com/sports/kbaseball/article/057/0001750112","aid":"0001750112","subContent":"한화의 새 외국인 타자 닉 윌리엄스. 사진 = 한화이글스한화 이글스의 새 외국인 타자 닉 윌리엄스(29)에 대한 팬들의 기대가 높습니다.당초 한화 새 외국인 타자를 두고 미국 메이저리그(MLB)와 트리플A의 다양한 선수들이 거론됐지만, 결론적으로 오피셜의 주인공은 미국이 아닌 멕시칸리그의 선수였습니다. 총액 45만 달러(..."},"dataSetForm":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},{"menuId":"kbaseball_home_headline_pc","itemId":"NORM0760004021301","isEnable":"Y","title":"'우리 당분간 보지 말자' 포연 가득했던 광주 3연전, 9홈런 70안타 54득점...챔필은 투수의 무덤이었다","displayOrder":6,"score":11.94029148601281,"templateId":"section_home_headline","isFixed":"N","fixedPos":null,"dataTitleStyle":"","seq":5,"contentId":"news.076.0004021301","sectionId":"kbo","newsType":null,"itemType":"AUTO","baseDateTime":"202306191440","extraInfoJson":null,"extraInfo":{"duplicatedNewsItem":"N"},"mixPos":"","align":null,"template":{"templateId":"section_home_headline","templateName":"헤드라인","dataSetId":"home/section_home_headline","interfaceId":null,"pushPos":"1","isAuto":"N","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"pc/section_home_headline"},"viewMobile":{"view":"mobile/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"mobile/section_home_headline"},"viewJson":null,"description":"여러개가 있는 경우\n랜덤으로 노출됩니다. (모바일 홈 = 모바일 헤드라인(연동), 네이버 모바일 메인 영향 받음)\n고정 버튼(고정 할 시, 맨 위에 고정된 영상 1개만 계속 노출)","descriptionImage":null,"id":"section_home_headline"},"updateDatetime":"2023-06-19 14:40:55.0","createDatetime":"2023-06-19 13:48:52.0","dataList":[{"officeName":"스포츠조선","image":"http://imgnews.naver.net/image/076/2023/06/19/2023062001001457000183211_20230619133302964.jpg","pcUrl":"/news?oid=076&aid=0004021301","modifyDatetime":"2023-06-19 13:33:02.0","oid":"076","sectionId":"kbo","isMultiLine":"true","title":"'우리 당분간 보지 말자' 포연 가득했던 광주 3연전, 9홈런 70안타 54득점...챔필은 투수의 무덤이었다","push":"news","newsType":1,"isEnable":"Y","contentsId":"news.076.0004021301","datetime":"2023-06-19 13:33:02.0","dataId":"AUTO0","originalTitle":"'우리 당분간 보지 말자' 포연 가득했던 광주 3연전, 9홈런 70안타 54득점...챔필은 투수의 무덤이었다","iconType":"none","mobileUrl":"https://n.news.naver.com/sports/kbaseball/article/076/0004021301","aid":"0004021301","subContent":"2023 KBO리그 KIA타이거즈와 NC다이노스의 경기가 18일 광주기아챔피언스필드에서 열렸다. KIA 이우성이 9회말 2사 1,2루에서 2타점 동점 2루타를 치고 있다. 광주=최문영 기자deer@sportschosun.com /2023.06.18/[스포츠조선 정현석 기자]서로 고개를 절레절레 저었던 치열했던 광주 3연전..."}],"dataSet":{"bo":"sectionHomeHeadlineDS","params":{"requiredItemCount":"5"},"forms":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},"dataSetBoName":"sectionHomeHeadlineDS","dataSetId":"home/section_home_headline","firstData":{"officeName":"스포츠조선","image":"http://imgnews.naver.net/image/076/2023/06/19/2023062001001457000183211_20230619133302964.jpg","pcUrl":"/news?oid=076&aid=0004021301","modifyDatetime":"2023-06-19 13:33:02.0","oid":"076","sectionId":"kbo","isMultiLine":"true","title":"'우리 당분간 보지 말자' 포연 가득했던 광주 3연전, 9홈런 70안타 54득점...챔필은 투수의 무덤이었다","push":"news","newsType":1,"isEnable":"Y","contentsId":"news.076.0004021301","datetime":"2023-06-19 13:33:02.0","dataId":"AUTO0","originalTitle":"'우리 당분간 보지 말자' 포연 가득했던 광주 3연전, 9홈런 70안타 54득점...챔필은 투수의 무덤이었다","iconType":"none","mobileUrl":"https://n.news.naver.com/sports/kbaseball/article/076/0004021301","aid":"0004021301","subContent":"2023 KBO리그 KIA타이거즈와 NC다이노스의 경기가 18일 광주기아챔피언스필드에서 열렸다. KIA 이우성이 9회말 2사 1,2루에서 2타점 동점 2루타를 치고 있다. 광주=최문영 기자deer@sportschosun.com /2023.06.18/[스포츠조선 정현석 기자]서로 고개를 절레절레 저었던 치열했던 광주 3연전..."},"dataSetForm":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},{"menuId":"kbaseball_home_headline_pc","itemId":"1671839468150","isEnable":"Y","title":"[팀 오픈톡] 키움 히어로즈 팬 여러분! 오픈톡에서 대화해요!","displayOrder":7,"score":0.0,"templateId":"section_home_headline","isFixed":"Y","fixedPos":6,"dataTitleStyle":"","seq":6,"contentId":"item.1671839468150","sectionId":"kbo","newsType":"","itemType":"MANUAL","baseDateTime":null,"extraInfoJson":null,"extraInfo":{"duplicatedNewsItem":"N"},"mixPos":"","align":null,"template":{"templateId":"section_home_headline","templateName":"헤드라인","dataSetId":"home/section_home_headline","interfaceId":null,"pushPos":"1","isAuto":"N","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"pc/section_home_headline"},"viewMobile":{"view":"mobile/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"mobile/section_home_headline"},"viewJson":null,"description":"여러개가 있는 경우\n랜덤으로 노출됩니다. (모바일 홈 = 모바일 헤드라인(연동), 네이버 모바일 메인 영향 받음)\n고정 버튼(고정 할 시, 맨 위에 고정된 영상 1개만 계속 노출)","descriptionImage":null,"id":"section_home_headline"},"updateDatetime":"2022-12-24 08:51:04.0","createDatetime":"2022-12-24 08:51:04.0","dataList":[{"officeName":"네이버 스포츠 오픈톡","image":"https://sports-phinf.pstatic.net/admin/crop/1671841780889.png","pcUrl":"https://m.sports.naver.com/community/opentalk/index?section=kbaseball&category=kbo&team=OB#section","isMultiLine":"true","sectionId":"kbo","title":"[팀 오픈톡] 두산 베어스 팬 여러분! 오픈톡에서 대화해요!","url":"https://m.sports.naver.com/community/opentalk/index?section=kbaseball&category=kbo&team=OB#section","isEnable":"Y","contentsId":"","dataId":"1671841679675","iconType":"none","linkType":"","mobileUrl":"https://m.sports.naver.com/community/opentalk/index?section=kbaseball&category=kbo&team=OB#section","subContent":""}],"dataSet":{"bo":"sectionHomeHeadlineDS","params":{"requiredItemCount":"5"},"forms":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},"dataSetBoName":"sectionHomeHeadlineDS","dataSetId":"home/section_home_headline","firstData":{"officeName":"네이버 스포츠 오픈톡","image":"https://sports-phinf.pstatic.net/admin/crop/1671841780889.png","pcUrl":"https://m.sports.naver.com/community/opentalk/index?section=kbaseball&category=kbo&team=OB#section","isMultiLine":"true","sectionId":"kbo","title":"[팀 오픈톡] 두산 베어스 팬 여러분! 오픈톡에서 대화해요!","url":"https://m.sports.naver.com/community/opentalk/index?section=kbaseball&category=kbo&team=OB#section","isEnable":"Y","contentsId":"","dataId":"1671841679675","iconType":"none","linkType":"","mobileUrl":"https://m.sports.naver.com/community/opentalk/index?section=kbaseball&category=kbo&team=OB#section","subContent":""},"dataSetForm":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},{"menuId":"kbaseball_home_headline_pc","itemId":"NORM1170003741555","isEnable":"Y","title":"“김하성도 처음엔 거칠었다” KBO에 제2의 김하성이 떴다…21세 스위치히터 유격수 ‘위대한 도전’","displayOrder":8,"score":11.750922863558927,"templateId":"section_home_headline","isFixed":"N","fixedPos":null,"dataTitleStyle":"","seq":8,"contentId":"news.117.0003741555","sectionId":"kbo","newsType":null,"itemType":"AUTO","baseDateTime":"202306191440","extraInfoJson":null,"extraInfo":{"duplicatedNewsItem":null},"mixPos":"","align":null,"template":{"templateId":"section_home_headline","templateName":"헤드라인","dataSetId":"home/section_home_headline","interfaceId":null,"pushPos":"1","isAuto":"N","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"pc/section_home_headline"},"viewMobile":{"view":"mobile/section_home_headline","textView":null,"width":0,"jsonDto":null,"id":"mobile/section_home_headline"},"viewJson":null,"description":"여러개가 있는 경우\n랜덤으로 노출됩니다. (모바일 홈 = 모바일 헤드라인(연동), 네이버 모바일 메인 영향 받음)\n고정 버튼(고정 할 시, 맨 위에 고정된 영상 1개만 계속 노출)","descriptionImage":null,"id":"section_home_headline"},"updateDatetime":"2023-06-19 14:40:55.0","createDatetime":"2023-06-19 13:57:05.0","dataList":[{"officeName":"마이데일리","image":"http://imgnews.naver.net/image/117/2023/06/19/202306190649581196_1_20230619134004746.jpg","pcUrl":"/news?oid=117&aid=0003741555","modifyDatetime":"2023-06-19 13:40:04.0","oid":"117","sectionId":"kbo","isMultiLine":"true","title":"“김하성도 처음엔 거칠었다” KBO에 제2의 김하성이 떴다…21세 스위치히터 유격수 ‘위대한 도전’","push":"news","newsType":1,"isEnable":"Y","contentsId":"news.117.0003741555","datetime":"2023-06-19 13:40:04.0","dataId":"AUTO0","originalTitle":"“김하성도 처음엔 거칠었다” KBO에 제2의 김하성이 떴다…21세 스위치히터 유격수 ‘위대한 도전’","iconType":"none","mobileUrl":"https://n.news.naver.com/sports/kbaseball/article/117/0003741555","aid":"0003741555","subContent":"[마이데일리 = 김진성 기자] “김하성(샌디에이고 파드레스)도 처음엔 거칠었다. (김)주원이는 거침 속에 섬세함이 있다.”NC 강인권 감독의 립서비스라고 하기엔, 업계의 평가가 예사롭지 않다. SBS스포츠 이순철 해설위원도 16~18일 광주 KIA-NC전을 중계하면서 “앞으로 우리나라 최고의 유격수가 될 것이다”라고 했다..."}],"dataSet":{"bo":"sectionHomeHeadlineDS","params":{"requiredItemCount":"5"},"forms":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]},"dataSetBoName":"sectionHomeHeadlineDS","dataSetId":"home/section_home_headline","firstData":{"officeName":"마이데일리","image":"http://imgnews.naver.net/image/117/2023/06/19/202306190649581196_1_20230619134004746.jpg","pcUrl":"/news?oid=117&aid=0003741555","modifyDatetime":"2023-06-19 13:40:04.0","oid":"117","sectionId":"kbo","isMultiLine":"true","title":"“김하성도 처음엔 거칠었다” KBO에 제2의 김하성이 떴다…21세 스위치히터 유격수 ‘위대한 도전’","push":"news","newsType":1,"isEnable":"Y","contentsId":"news.117.0003741555","datetime":"2023-06-19 13:40:04.0","dataId":"AUTO0","originalTitle":"“김하성도 처음엔 거칠었다” KBO에 제2의 김하성이 떴다…21세 스위치히터 유격수 ‘위대한 도전’","iconType":"none","mobileUrl":"https://n.news.naver.com/sports/kbaseball/article/117/0003741555","aid":"0003741555","subContent":"[마이데일리 = 김진성 기자] “김하성(샌디에이고 파드레스)도 처음엔 거칠었다. (김)주원이는 거침 속에 섬세함이 있다.”NC 강인권 감독의 립서비스라고 하기엔, 업계의 평가가 예사롭지 않다. SBS스포츠 이순철 해설위원도 16~18일 광주 KIA-NC전을 중계하면서 “앞으로 우리나라 최고의 유격수가 될 것이다”라고 했다..."},"dataSetForm":[{"name":"헤드라인포토","count":"1","form":[{"label":"포토제목","type":"text","var":"title"},{"label":"2줄 여부","var":"isMultiLine","type":"radio","option":[["true","2줄"],["false","1줄"]],"defaultOption":"true"},{"label":"리드문","type":"textarea","var":"subContent"},{"label":"언론사명","type":"text","var":"officeName"},{"label":"컨텐츠 리그이름","type":"text","var":"contentsCategoryName"},{"label":"컨텐츠 날짜","type":"text","var":"datetime"},{"label":"이미지(320X190)","type":"image","var":"image","option":[{"width":"320","height":"190","caption":"PC 종홈 (320 x 190)","type":"sports_nf320_190"},{"width":"420","height":"264","caption":"PC 스홈 (420 x 264)","type":"nf420_264"},{"width":"335","height":"206","caption":"모바일 (335 x 206)","type":"sports_nf335_206"}],"required":"true"},{"label":"URL","type":"text","var":"url"},{"label":"링크","var":"linkType","type":"select","option":[["","본창"],["_blank","새창"]],"defaultOption":""},{"label":"리그정보","type":"select","var":"sectionId","required":"true","bo":"sectionsFO","params":{}},{"label":"리그이름","type":"text","var":"categoryName"},{"label":"아이콘타입","var":"iconType","type":"select","option":[["none","없음"],["video","영상"],["tv","중계"],["multiangle","멀티중계"],["poll","POLL"],["radio","라디오"],["photo","포토"],["column","칼럼"],["issue","이슈"],["radio","라디오"]],"defaultOption":"none"}]}]}]
      });
    </script>
  


            

            </div>
            <div class="feature_side">
                







<div class="good_news" style="display:block;">
  <h2 class="news_title">이 시각 많이 본 뉴스</h2>
  <button type="button" class="button_info_layer" aria-describedby="_wa_layer_message"><span class="blind">도움말</span></button>
  <div class="news_info_layer">
    <p id="_wa_layer_message" role="tooltip">최근 한 달 기사 중 오후 1시 ~ 2시까지 집계한 조회 수입니다. 총 누적과 다를 수 있습니다.</p>
    <button class="button_close"><span class="blind">도움말 닫기</span></button>
  </div>
  <ol class="news_list">
    
      <li><span class="number">1</span><a href="/news?oid=477&aid=0000435535" onclick="clickcr(this, 'pop.article', '', '', event);" class="link_news_end">"아팠겠지만, 고의 아닌데 왜 저래?"…나홀로 분노의 벤치클리어링 이유 있었네</a></li>
    
      <li><span class="number">2</span><a href="/news?oid=117&aid=0003741516" onclick="clickcr(this, 'pop.article', '', '', event);" class="link_news_end">KIA 34세 캡틴이 잠시 떠나면…유격수 김도영·2루수 박찬호 뜬다? 한 남자의 ‘선택’</a></li>
    
      <li><span class="number">3</span><a href="/news?oid=410&aid=0000944565" onclick="clickcr(this, 'pop.article', '', '', event);" class="link_news_end">괜히 거포들의 스승이 아니었다…위기에서 더 빛난 ‘내 탓이오’ 리더십</a></li>
    
      <li><span class="number">4</span><a href="/news?oid=311&aid=0001606259" onclick="clickcr(this, 'pop.article', '', '', event);" class="link_news_end">'상승세' LG-NC, 창원에서 격돌→'상무 출신 좌완' 20일 선발 맞대결 성사</a></li>
    
      <li><span class="number">5</span><a href="/news?oid=144&aid=0000894336" onclick="clickcr(this, 'pop.article', '', '', event);" class="link_news_end">추신수와 오승환, 1982년생 황금세대의 희비</a></li>
    
      <li><span class="number">6</span><a href="/news?oid=396&aid=0000647368" onclick="clickcr(this, 'pop.article', '', '', event);" class="link_news_end">흔들리는 뒷문…롯데가 진짜 시험대에 오른다</a></li>
    
      <li><span class="number">7</span><a href="/news?oid=241&aid=0003282456" onclick="clickcr(this, 'pop.article', '', '', event);" class="link_news_end">김기태 감독·서용빈 코치의 집중 지도, 마법사 '영 듀오'가 일으키는 새 바람</a></li>
    
      <li><span class="number">8</span><a href="/news?oid=410&aid=0000944568" onclick="clickcr(this, 'pop.article', '', '', event);" class="link_news_end">“야구장에서 실수해도 괜찮아”…3G 연속 실책으로 고개 숙였던 163cm 작은거인, 국민유격수 말에 자신감 얻다</a></li>
    
      <li><span class="number">9</span><a href="/news?oid=076&aid=0004021210" onclick="clickcr(this, 'pop.article', '', '', event);" class="link_news_end">"미트는 호재 형꺼…" 역사상 첫 포수 3명이 선발 라인업에 나란히… 7안타 3타점 11루타 합작, 연패 탈출 이끈 벤치의 파격</a></li>
    
      <li><span class="number">10</span><a href="/news?oid=477&aid=0000435552" onclick="clickcr(this, 'pop.article', '', '', event);" class="link_news_end">삼성에서 가장 바쁘다...38세 베테랑 포수의 여전한 존재감</a></li>
    
  </ol>
  <a href="/kbaseball/news/index?type=popular" onclick="clickcr(this, 'pop.more', '', '', event);" class="link_news_more"><span class="blind">뉴스 </span>더보기</a>
  
    
    
      <div class="news_ad">
        <a href="https://in.naver.com/skwyverns62/feed" onclick="clickcr(this, 'pop.banner', '', '', event);" class="" target="">
          <img src="https://sports-phinf.pstatic.net/20230516_8/1684205474230fdYH7_JPEG/%C7%D1%C0%AF%BC%B6_600x160.jpg" alt="" width="300" height="80" onerror="imageOnError(this);">
        </a>
      </div>
    
  
</div>
<script type="text/javascript">
  $(document).ready(function () {
    $('.button_info_layer').click(function () {
      $('.news_info_layer').addClass('is_active');
    });

    $('.news_info_layer .button_close').click(function() {
      $('.news_info_layer').removeClass('is_active');
    });
  });
</script>

            </div>
            
        </div>
        







<div class="home_video">
  <div class="home_video_tab" id="_home_vod_tab">
  </div>
  <div class="home_video_panel" role="tabpanel" id="_home_vod_list_wrap">
  </div>
  <div class="home_video_control" id="_home_video_control" style="display: none;">
    <button type="button" class="button_more_view"
        onclick="clickcr(this, 'vdo.more', '', '', event);">5개 영상 더보기
    </button>
  </div>
</div>

<script type="text/x-handlebars-template" id="_tab_list_template">
  <h2 class="blind">주요 영상</h2>
  <ul class="tab_list" role="tablist">
    {{#tabList}}
    <li class="tab_item" role="presentation">
      <!-- [D] 탭 메뉴 활성화 시 aria-selected 값을 "true"로 변경해주세요 -->
      <a href="#" role="tab" data-tab-idx="{{tabIndex}}" onclick="clickcr(this, 'vdo.tab', '', '', event);"
         aria-selected="{{#if @first}}true{{/if}}">{{tabName}}</a>
    </li>
    {{/
  tabList}}
  </ul>
</script>

<script type="text/x-handlebars-template" id="_video_list_template">
  {{#videoWrapList}}
  <ul class="video_list" style="{{#if ../isFold}}{{#unless @first}}display: none;{{/unless}}{{/if}}">
    {{#each
  this}}
    {{#if
  isEmptyBox}}
    <li class="video_item"></li>
    {{else}}
    <li class="video_item">
      
      
        
        <a href="/video?id={{videoMasterId}}" title="{{title}}"
           onclick="clickcr(this, 'vdo.image', '', '', event);" class="link_video_end">
          
          
          <div class="image_area">
            <span class="common_playicon"><span class="blind">동영상</span></span>
            <span class="common_video_length"><span class="blind">재생시간</span>{{playTime}}</span>
            <span class="image"><img width="194" height="112"
                         src="https://dthumb-phinf.pstatic.net/?src={{thumbnail}}&type=sports_nf750_432"
                         onerror="imageOnError(this);"
                         alt=""></span>
          </div>
          <div class="text_area">
            <span class="title">{{title}}</span>
          </div>
        </a>
    </li>
    {{/
  if}}
    {{/
  each}}
  </ul>
  {{/videoWrapList}}
</script>

<script>
  (function () {
    var showCountPerPage = 5;
    var tplDataList = makeTemplateData([{"menuId":null,"itemId":"1589937230994","isEnable":"Y","title":"크보연구소","displayOrder":null,"score":0.0,"templateId":"pc_center_video_meta","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1589937230994","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_meta","templateName":"종목홈 영상리스트 (메타)","dataSetId":"pc/center_video_meta","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_meta"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1589937256462,"isEnable":"Y","title":"크보연구소","type":"type|kbooriginal|크보연구소","videoList":[{"hit":32946,"thumbnail":"https://sports-phinf.pstatic.net/20230618_169/1687074441340ylHIa_JPEG/%BA%A5%C4%A1%C5%AC%B8%AE%BE%EE%B8%B5_%27%BB%E7%B0%C7%C0%C7_%C0%FC%B8%BB_%B0%F8%B0%B3%27_%C0%A7%C5%AC%B8%AE.jpg","originalTitle":"벤치클리어링 사건의 '전말 공개!' [위클리]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:55","videoMasterId":1080878,"title":"벤치클리어링 사건의 '전말 공개! ' ","category":"kbo","masterVideoId":"9566DB897638BB6DDE5281E760F310062BC7"},{"hit":43239,"thumbnail":"https://sports-phinf.pstatic.net/20230619_155/16871212879420My3f_JPEG/00.jpg","originalTitle":"'오스틴, 이 남자 정말 사랑하지 않을 수 없다!' [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:49","videoMasterId":1080833,"title":"'오스틴, 이 남자 정말 사랑하지 않을 수 없다! ' ","category":"kbo","masterVideoId":"1B989B3BD0821F3BFEAB0A6DD4AD13278429"},{"hit":37551,"thumbnail":"https://sports-phinf.pstatic.net/20230619_263/1687121938270HdT9D_JPEG/%C0%DA%B8%EA_%BE%DF%B1%B8.jpg","originalTitle":"'이런 적은 없었다!' 실책으로 무너진 두산의 자멸 야구 [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:08","videoMasterId":1080834,"title":"'이런 적은 없었다! ' 실책으로 무너진 두산의 자멸 ...","category":"kbo","masterVideoId":"BE63AA7E40838682F21856E9BE4B1EE33E3D"},{"hit":46708,"thumbnail":"https://sports-phinf.pstatic.net/20230618_145/1687037056900oWx8L_JPEG/00.jpg","originalTitle":"'설마 올해도 봄데...?' 롯데의 끝없는 추락! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:30","videoMasterId":1080600,"title":"'설마 올해도 봄데…? ' 롯데의 끝없는 추락! ","category":"kbo","masterVideoId":"1E04F6E3EB0F4CCC436B3EEDE749FF3FC015"},{"hit":11227,"thumbnail":"https://sports-phinf.pstatic.net/20230618_42/1687034171371Rz2bz_JPEG/%275%B0%E6%B1%E2_%BF%AC%BC%D3_%BF%AA%C0%FC%C6%D0%27_%BB%EF%BC%BA%BF%A1_%BF%A9%B8%A7%C0%BA_%BE%F0%C1%A6_%BF%C0%B7%C1%B3%AA_7AM.jpg","originalTitle":"'삼성, 5경기 연속 역전패!' 이러다 최하위로? [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:10","videoMasterId":1080597,"title":"'삼성, 5경기 연속 역전패! ' 이러다 최하위로? ","category":"kbo","masterVideoId":"42A2A2B14F97CF522F884304CA058CC3AD52"},{"hit":173815,"thumbnail":"https://sports-phinf.pstatic.net/20230617_40/1686946582079hjagY_JPEG/%27%BA%A5%C5%AC%BF%A1_%BB%D4%B3%AD_%BF%C0%BD%BA%C6%BE%27_%B1%D7%B7%B1%B5%A5_%BA%D0%C0%A7%B1%E2%B8%A6_%BA%B8%B4%CF..._7AM.jpg","originalTitle":"'벤클에 뿔난 오스틴!' 그런데 분위기를 보니... [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"01:51","videoMasterId":1080344,"title":"'벤클에 뿔난 오스틴! ' 그런데 분위기를 보니… ","category":"kbo","masterVideoId":"19DE72E1B7EF2B3F682067F2F9897408C13F"},{"hit":281978,"thumbnail":"https://sports-phinf.pstatic.net/20230617_164/1686951023356qpuax_JPEG/00.jpg","originalTitle":"'오승환 대폭발' 오심과 논란으로 얼룩진 금요일! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"03:11","videoMasterId":1080347,"title":"'오승환 대폭발' 오심과 논란으로 얼룩진 금요일! ","category":"kbo","masterVideoId":"211B2252B6F4BA3005B17594F82223D36B5B"},{"hit":13819,"thumbnail":"https://sports-phinf.pstatic.net/20230615_99/16868104018395jQKY_JPEG/%27%C8%A3%C8%ED%B1%E2_%B0%AE%B0%ED_%BF%CD%27_%BC%FB%C0%BA_%BD%AC%B0%ED_KBO_%C2%A9_%BA%B8%B7%AF_%B0%A1%BE%DF%C1%F6_%C5%A9%BA%B8.GIF.jpg","originalTitle":"'호흡기 갖고 와!' 숨은 쉬고 KBO 짤 보러 가야지! [크보.GIF]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:27","videoMasterId":1080041,"title":"'호흡기 갖고 와! ' 숨은 쉬고 KBO 짤 보러 가야...","category":"kbo","masterVideoId":"1098150A21D5DD8577DA0A6DD4AD13278429"},{"hit":100788,"thumbnail":"https://sports-phinf.pstatic.net/20230616_264/1686861785699KWUNs_JPEG/00.jpg","originalTitle":"'이 모든 게 하루에?!' 저항 없이 터지는 웃음 핵폭탄! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:27","videoMasterId":1079994,"title":"'이 모든 게 하루에?! ' 저항 없이 터지는 웃음 핵...","category":"kbo","masterVideoId":"5EC13B79841B39BC47173E18CECAAE499F65"},{"hit":42571,"thumbnail":"https://sports-phinf.pstatic.net/20230616_166/16868610197715oGaO_JPEG/%27%B1%D7_%C7%A5%C1%A4_%B5%EE%C0%E5%27_%C2%F9%C7%E584%B0%A1_%BA%D2%B7%AF%BF%C2_%BD%BD%B7%CE%BF%EC_%C4%BF%BA%EA%C0%C7_%C3%DF%BE%EF_7AM.jpg","originalTitle":"'그 표정 등장!' 찬헌84가 불러온 슬로우 커브의 추억 [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"01:58","videoMasterId":1079993,"title":"'그 표정 등장! ' 찬헌84가 불러온 슬로우 커브의 ...","category":"kbo","masterVideoId":"238123815EC44EB3DDC39FAD5E1112A5D0E0"},{"hit":62003,"thumbnail":"https://sports-phinf.pstatic.net/20230615_185/16867764027921GbWh_JPEG/%B9%DA%C1%BE%C8%C6_.jpg","originalTitle":"'볼넷-볼넷-볼넷-만루홈런' 박종훈이 소환한 제로퀵! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:52","videoMasterId":1079653,"title":"'볼넷-볼넷-볼넷-만루홈런' 박종훈이 소환한 제로퀵! ","category":"kbo","masterVideoId":"D424CCA8AD614EF39CF6880AE4DB2F78ED65"},{"hit":44713,"thumbnail":"https://sports-phinf.pstatic.net/20230615_116/1686775205678ET6RU_JPEG/00.jpg","originalTitle":"'KIA, 한 점차 승부 9연패?!' 팬들은 복장 터진다! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"01:39","videoMasterId":1079652,"title":"'KIA, 한 점차 승부 9연패?! ' 팬들은 복장 터...","category":"kbo","masterVideoId":"1BF0384160228B56643F7F063C6D15BD8317"},{"hit":38116,"thumbnail":"https://sports-phinf.pstatic.net/20230614_223/1686689733845SCpaC_JPEG/%27%B5%B5%BD%C3%B6%F4_%B9%E8%B4%DE%C0%CC%BF%E4%27_%BD%C2%B8%AE_%BF%E4%C1%A4_%B1%B8%B4%DC%C1%D6%B0%A1_%BB%E7%C1%F7%BF%A1_%B6%B9%B4%D9_7AM.jpg","originalTitle":"'도시락 배달이요~' 승리 요정 구단주가 사직에 떴다! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:02","videoMasterId":1079339,"title":"'도시락 배달이요~' 승리 요정 구단주가 사직에 떴다!...","category":"kbo","masterVideoId":"B7D4A28A077673BA642DE8F5A24AA2076035"},{"hit":19008,"thumbnail":"https://sports-phinf.pstatic.net/20230614_225/1686688298212nlDKp_JPEG/%27%C3%B5%B1%BA%B8%B8%B8%B6%27_%BF%B9%BA%F1%BF%AA_%BA%B4%C0%E5%B5%E9%C0%C7_%C8%AD%B7%C1%C7%D1_%C0%FC%BF%AA_%BD%C5%B0%ED_7AM.jpg","originalTitle":"'천군만마' 예비역 병장들의 화려한 전역 신고! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:08","videoMasterId":1079335,"title":"'천군만마' 예비역 병장들의 화려한 전역 신고! ","category":"kbo","masterVideoId":"E50F22A86A86B9B8B7FFA3A7CF99C0EDD325"},{"hit":12444,"thumbnail":"https://sports-phinf.pstatic.net/20230613_113/16866249640372WP1R_JPEG/%27%BB%E7%B6%F7_%B8%B8%B3%AA%B7%C1%B0%ED_%BE%DF%B1%B8%C7%CF%B4%C2_%BB%E7%B6%F7%27_KBO_%C2%A9_%B8%F0%C0%BD_%C5%A9%BA%B8.GIF.jpg","originalTitle":"'사람 만나려고 야구하는 사람' KBO 짤 모음! [크보.GIF]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:38","videoMasterId":1079131,"title":"'사람 만나려고 야구하는 사람' KBO 짤 모음! ","category":"kbo","masterVideoId":"08B362C27252FDB99B580E798E7B382BB0E8"},{"hit":36119,"thumbnail":"https://sports-phinf.pstatic.net/20230612_84/1686558600236bGA2q_JPEG/1.jpg","originalTitle":"'아야! 아야! 아야! 웃느라 날 새것다!' [KBO 주간예능]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"05:01","videoMasterId":1079021,"title":"'아야! 아야! 아야! 웃느라 날 새것다! ' ","category":"kbo","masterVideoId":"5E85D1C6575BB609A7E59C7C5F97885BFB1D"},{"hit":13265,"thumbnail":"https://sports-phinf.pstatic.net/20230611_215/1686472672969RpG1Y_JPEG/%BE%C6%BD%C3%BE%C8%B0%D4%C0%D3_%C1%D8%BA%F1_%B3%A1.jpg","originalTitle":"'AG 대표팀 명단 발표!' 일주일간의 바뀐 점! [위클리]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:09","videoMasterId":1078953,"title":"'AG 대표팀 명단 발표! ' 일주일간의 바뀐 점! ","category":"kbo","masterVideoId":"6B86CC9BA9B85B50241AE300A9B7110B6DD1"},{"hit":98496,"thumbnail":"https://sports-phinf.pstatic.net/20230612_133/1686508049928Oup0i_JPEG/7am_%BD%E6%B3%D7%C0%CF_%B9%CC%B4%CF.jpg","originalTitle":"'어떻게 이런 타율을...?' 우리가 알던 이정후가 돌아왔다! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"01:54","videoMasterId":1078887,"title":"'어떻게 이런 타율을…? ' 우리가 알던 이정후가 돌아...","category":"kbo","masterVideoId":"7F00712E2622DB1760D1DEE11D67F75BD088"},{"hit":44010,"thumbnail":"https://sports-phinf.pstatic.net/20230612_209/1686514980308jKSSR_JPEG/D%BF%CF%BC%BA.jpg","originalTitle":"'재미, 실력 다 잡은 강민호!' 유쾌한 강민호 친목 모음 [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:13","videoMasterId":1078891,"title":"'재미, 실력 다 잡은 강민호! ' 유쾌한 강민호 친목...","category":"kbo","masterVideoId":"E52448E9417ECF779D76880AE4DB2F78ED65"},{"hit":21452,"thumbnail":"https://sports-phinf.pstatic.net/20230611_25/1686431865011Qqrii_JPEG/%C5%B0%BF%F2.jpg","originalTitle":"'실책 만루포로 갚는 김혜성' 완벽투를 보여준 안우진 [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:06","videoMasterId":1078651,"title":"'실책 만루포로 갚는 김혜성' 완벽투를 보여준 안우진 ","category":"kbo","masterVideoId":"BC9802DC16607CD634960A6DD4AD13278429"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_meta","firstData":{"dataId":1589937256462,"isEnable":"Y","title":"크보연구소","type":"type|kbooriginal|크보연구소","videoList":[{"hit":32946,"thumbnail":"https://sports-phinf.pstatic.net/20230618_169/1687074441340ylHIa_JPEG/%BA%A5%C4%A1%C5%AC%B8%AE%BE%EE%B8%B5_%27%BB%E7%B0%C7%C0%C7_%C0%FC%B8%BB_%B0%F8%B0%B3%27_%C0%A7%C5%AC%B8%AE.jpg","originalTitle":"벤치클리어링 사건의 '전말 공개!' [위클리]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:55","videoMasterId":1080878,"title":"벤치클리어링 사건의 '전말 공개! ' ","category":"kbo","masterVideoId":"9566DB897638BB6DDE5281E760F310062BC7"},{"hit":43239,"thumbnail":"https://sports-phinf.pstatic.net/20230619_155/16871212879420My3f_JPEG/00.jpg","originalTitle":"'오스틴, 이 남자 정말 사랑하지 않을 수 없다!' [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:49","videoMasterId":1080833,"title":"'오스틴, 이 남자 정말 사랑하지 않을 수 없다! ' ","category":"kbo","masterVideoId":"1B989B3BD0821F3BFEAB0A6DD4AD13278429"},{"hit":37551,"thumbnail":"https://sports-phinf.pstatic.net/20230619_263/1687121938270HdT9D_JPEG/%C0%DA%B8%EA_%BE%DF%B1%B8.jpg","originalTitle":"'이런 적은 없었다!' 실책으로 무너진 두산의 자멸 야구 [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:08","videoMasterId":1080834,"title":"'이런 적은 없었다! ' 실책으로 무너진 두산의 자멸 ...","category":"kbo","masterVideoId":"BE63AA7E40838682F21856E9BE4B1EE33E3D"},{"hit":46708,"thumbnail":"https://sports-phinf.pstatic.net/20230618_145/1687037056900oWx8L_JPEG/00.jpg","originalTitle":"'설마 올해도 봄데...?' 롯데의 끝없는 추락! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:30","videoMasterId":1080600,"title":"'설마 올해도 봄데…? ' 롯데의 끝없는 추락! ","category":"kbo","masterVideoId":"1E04F6E3EB0F4CCC436B3EEDE749FF3FC015"},{"hit":11227,"thumbnail":"https://sports-phinf.pstatic.net/20230618_42/1687034171371Rz2bz_JPEG/%275%B0%E6%B1%E2_%BF%AC%BC%D3_%BF%AA%C0%FC%C6%D0%27_%BB%EF%BC%BA%BF%A1_%BF%A9%B8%A7%C0%BA_%BE%F0%C1%A6_%BF%C0%B7%C1%B3%AA_7AM.jpg","originalTitle":"'삼성, 5경기 연속 역전패!' 이러다 최하위로? [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:10","videoMasterId":1080597,"title":"'삼성, 5경기 연속 역전패! ' 이러다 최하위로? ","category":"kbo","masterVideoId":"42A2A2B14F97CF522F884304CA058CC3AD52"},{"hit":173815,"thumbnail":"https://sports-phinf.pstatic.net/20230617_40/1686946582079hjagY_JPEG/%27%BA%A5%C5%AC%BF%A1_%BB%D4%B3%AD_%BF%C0%BD%BA%C6%BE%27_%B1%D7%B7%B1%B5%A5_%BA%D0%C0%A7%B1%E2%B8%A6_%BA%B8%B4%CF..._7AM.jpg","originalTitle":"'벤클에 뿔난 오스틴!' 그런데 분위기를 보니... [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"01:51","videoMasterId":1080344,"title":"'벤클에 뿔난 오스틴! ' 그런데 분위기를 보니… ","category":"kbo","masterVideoId":"19DE72E1B7EF2B3F682067F2F9897408C13F"},{"hit":281978,"thumbnail":"https://sports-phinf.pstatic.net/20230617_164/1686951023356qpuax_JPEG/00.jpg","originalTitle":"'오승환 대폭발' 오심과 논란으로 얼룩진 금요일! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"03:11","videoMasterId":1080347,"title":"'오승환 대폭발' 오심과 논란으로 얼룩진 금요일! ","category":"kbo","masterVideoId":"211B2252B6F4BA3005B17594F82223D36B5B"},{"hit":13819,"thumbnail":"https://sports-phinf.pstatic.net/20230615_99/16868104018395jQKY_JPEG/%27%C8%A3%C8%ED%B1%E2_%B0%AE%B0%ED_%BF%CD%27_%BC%FB%C0%BA_%BD%AC%B0%ED_KBO_%C2%A9_%BA%B8%B7%AF_%B0%A1%BE%DF%C1%F6_%C5%A9%BA%B8.GIF.jpg","originalTitle":"'호흡기 갖고 와!' 숨은 쉬고 KBO 짤 보러 가야지! [크보.GIF]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:27","videoMasterId":1080041,"title":"'호흡기 갖고 와! ' 숨은 쉬고 KBO 짤 보러 가야...","category":"kbo","masterVideoId":"1098150A21D5DD8577DA0A6DD4AD13278429"},{"hit":100788,"thumbnail":"https://sports-phinf.pstatic.net/20230616_264/1686861785699KWUNs_JPEG/00.jpg","originalTitle":"'이 모든 게 하루에?!' 저항 없이 터지는 웃음 핵폭탄! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:27","videoMasterId":1079994,"title":"'이 모든 게 하루에?! ' 저항 없이 터지는 웃음 핵...","category":"kbo","masterVideoId":"5EC13B79841B39BC47173E18CECAAE499F65"},{"hit":42571,"thumbnail":"https://sports-phinf.pstatic.net/20230616_166/16868610197715oGaO_JPEG/%27%B1%D7_%C7%A5%C1%A4_%B5%EE%C0%E5%27_%C2%F9%C7%E584%B0%A1_%BA%D2%B7%AF%BF%C2_%BD%BD%B7%CE%BF%EC_%C4%BF%BA%EA%C0%C7_%C3%DF%BE%EF_7AM.jpg","originalTitle":"'그 표정 등장!' 찬헌84가 불러온 슬로우 커브의 추억 [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"01:58","videoMasterId":1079993,"title":"'그 표정 등장! ' 찬헌84가 불러온 슬로우 커브의 ...","category":"kbo","masterVideoId":"238123815EC44EB3DDC39FAD5E1112A5D0E0"},{"hit":62003,"thumbnail":"https://sports-phinf.pstatic.net/20230615_185/16867764027921GbWh_JPEG/%B9%DA%C1%BE%C8%C6_.jpg","originalTitle":"'볼넷-볼넷-볼넷-만루홈런' 박종훈이 소환한 제로퀵! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:52","videoMasterId":1079653,"title":"'볼넷-볼넷-볼넷-만루홈런' 박종훈이 소환한 제로퀵! ","category":"kbo","masterVideoId":"D424CCA8AD614EF39CF6880AE4DB2F78ED65"},{"hit":44713,"thumbnail":"https://sports-phinf.pstatic.net/20230615_116/1686775205678ET6RU_JPEG/00.jpg","originalTitle":"'KIA, 한 점차 승부 9연패?!' 팬들은 복장 터진다! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"01:39","videoMasterId":1079652,"title":"'KIA, 한 점차 승부 9연패?! ' 팬들은 복장 터...","category":"kbo","masterVideoId":"1BF0384160228B56643F7F063C6D15BD8317"},{"hit":38116,"thumbnail":"https://sports-phinf.pstatic.net/20230614_223/1686689733845SCpaC_JPEG/%27%B5%B5%BD%C3%B6%F4_%B9%E8%B4%DE%C0%CC%BF%E4%27_%BD%C2%B8%AE_%BF%E4%C1%A4_%B1%B8%B4%DC%C1%D6%B0%A1_%BB%E7%C1%F7%BF%A1_%B6%B9%B4%D9_7AM.jpg","originalTitle":"'도시락 배달이요~' 승리 요정 구단주가 사직에 떴다! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:02","videoMasterId":1079339,"title":"'도시락 배달이요~' 승리 요정 구단주가 사직에 떴다!...","category":"kbo","masterVideoId":"B7D4A28A077673BA642DE8F5A24AA2076035"},{"hit":19008,"thumbnail":"https://sports-phinf.pstatic.net/20230614_225/1686688298212nlDKp_JPEG/%27%C3%B5%B1%BA%B8%B8%B8%B6%27_%BF%B9%BA%F1%BF%AA_%BA%B4%C0%E5%B5%E9%C0%C7_%C8%AD%B7%C1%C7%D1_%C0%FC%BF%AA_%BD%C5%B0%ED_7AM.jpg","originalTitle":"'천군만마' 예비역 병장들의 화려한 전역 신고! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:08","videoMasterId":1079335,"title":"'천군만마' 예비역 병장들의 화려한 전역 신고! ","category":"kbo","masterVideoId":"E50F22A86A86B9B8B7FFA3A7CF99C0EDD325"},{"hit":12444,"thumbnail":"https://sports-phinf.pstatic.net/20230613_113/16866249640372WP1R_JPEG/%27%BB%E7%B6%F7_%B8%B8%B3%AA%B7%C1%B0%ED_%BE%DF%B1%B8%C7%CF%B4%C2_%BB%E7%B6%F7%27_KBO_%C2%A9_%B8%F0%C0%BD_%C5%A9%BA%B8.GIF.jpg","originalTitle":"'사람 만나려고 야구하는 사람' KBO 짤 모음! [크보.GIF]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:38","videoMasterId":1079131,"title":"'사람 만나려고 야구하는 사람' KBO 짤 모음! ","category":"kbo","masterVideoId":"08B362C27252FDB99B580E798E7B382BB0E8"},{"hit":36119,"thumbnail":"https://sports-phinf.pstatic.net/20230612_84/1686558600236bGA2q_JPEG/1.jpg","originalTitle":"'아야! 아야! 아야! 웃느라 날 새것다!' [KBO 주간예능]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"05:01","videoMasterId":1079021,"title":"'아야! 아야! 아야! 웃느라 날 새것다! ' ","category":"kbo","masterVideoId":"5E85D1C6575BB609A7E59C7C5F97885BFB1D"},{"hit":13265,"thumbnail":"https://sports-phinf.pstatic.net/20230611_215/1686472672969RpG1Y_JPEG/%BE%C6%BD%C3%BE%C8%B0%D4%C0%D3_%C1%D8%BA%F1_%B3%A1.jpg","originalTitle":"'AG 대표팀 명단 발표!' 일주일간의 바뀐 점! [위클리]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:09","videoMasterId":1078953,"title":"'AG 대표팀 명단 발표! ' 일주일간의 바뀐 점! ","category":"kbo","masterVideoId":"6B86CC9BA9B85B50241AE300A9B7110B6DD1"},{"hit":98496,"thumbnail":"https://sports-phinf.pstatic.net/20230612_133/1686508049928Oup0i_JPEG/7am_%BD%E6%B3%D7%C0%CF_%B9%CC%B4%CF.jpg","originalTitle":"'어떻게 이런 타율을...?' 우리가 알던 이정후가 돌아왔다! [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"01:54","videoMasterId":1078887,"title":"'어떻게 이런 타율을…? ' 우리가 알던 이정후가 돌아...","category":"kbo","masterVideoId":"7F00712E2622DB1760D1DEE11D67F75BD088"},{"hit":44010,"thumbnail":"https://sports-phinf.pstatic.net/20230612_209/1686514980308jKSSR_JPEG/D%BF%CF%BC%BA.jpg","originalTitle":"'재미, 실력 다 잡은 강민호!' 유쾌한 강민호 친목 모음 [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:13","videoMasterId":1078891,"title":"'재미, 실력 다 잡은 강민호! ' 유쾌한 강민호 친목...","category":"kbo","masterVideoId":"E52448E9417ECF779D76880AE4DB2F78ED65"},{"hit":21452,"thumbnail":"https://sports-phinf.pstatic.net/20230611_25/1686431865011Qqrii_JPEG/%C5%B0%BF%F2.jpg","originalTitle":"'실책 만루포로 갚는 김혜성' 완벽투를 보여준 안우진 [7AM]","videoType":"kbooriginal","upperCategory":"kbaseball","playTime":"02:06","videoMasterId":1078651,"title":"'실책 만루포로 갚는 김혜성' 완벽투를 보여준 안우진 ","category":"kbo","masterVideoId":"BC9802DC16607CD634960A6DD4AD13278429"}]},"dataSetForm":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},{"menuId":null,"itemId":"1680660339319","isEnable":"Y","title":"숏폼","displayOrder":null,"score":0.0,"templateId":"pc_center_video_meta","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1680660339319","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_meta","templateName":"종목홈 영상리스트 (메타)","dataSetId":"pc/center_video_meta","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_meta"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1680660342867,"isEnable":"Y","title":"숏폼","type":"type|shortform|숏폼","videoList":[{"hit":224,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_56/8WBMN_1687143651873X5GWg_JPEG/27a74bf5-0e4d-11ee-8de4-a0369ffdb264_10.jpg","originalTitle":"[크보캐치] 김영웅이 왜 빠른지 알아요?","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:43","videoMasterId":1080893,"title":" 김영웅이 왜 빠른지 알아요?","category":"kbo","masterVideoId":"56CC3D2122D82FDC72BE141B435665847E88"},{"hit":1657,"thumbnail":"https://sports-phinf.pstatic.net/20230619_168/1687120952243F0k9S_JPEG/2008.06.19_%27%C8%A5%C0%DA_%C7%CF%B3%D7%27_%BA%EA%B7%EB%B9%D9%2C_%C7%D1_%C0%CC%B4%D7_%C8%A8%B7%B1_2%B0%B3_%B1%E2%B7%CF_%B9%E9%C5%F5%B4%F5%BA%A3%C0%CC%BD%BA%BA%BC.jpg","originalTitle":"2008.06.19 '혼자 하네' 브룸바, 한 이닝 홈런 2개 기록! [백투더베이스볼]","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:36","videoMasterId":1080832,"title":"2008. 06. 19 '혼자 하네' 브룸바, 한 이닝...","category":"kbo","masterVideoId":"886BE8E805076A49B4AD27F137FDA3C19F4B"},{"hit":2958,"thumbnail":"https://sports-phinf.pstatic.net/20230619_215/16871195439634fAkn_JPEG/%C1%A4%BD%C5%C1%D9_%B3%F5%BE%C6%B9%F6%B8%B0_%C0%CC%C1%D8%C7%F5_%C4%B3%BD%BA%C5%CD_ShortForm.jpg","originalTitle":"정신줄 놓아버린 이준혁 캐스터 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:58","videoMasterId":1080830,"title":"정신줄 놓아버린 이준혁 캐스터 #ShortForm","category":"kbo","masterVideoId":"BBAAFD8667FAB5A33FD67F0CCCD89C1657BB"},{"hit":5176,"thumbnail":"https://sports-phinf.pstatic.net/20230619_178/1687113644925JU3Kl_JPEG/%B9%FA%BD%E1%BA%CE%C5%CD_%B0%ED%C5%EB%B9%DE%B4%C2_%B7%D4%B8%B0%C0%CC_ShortForm.jpg","originalTitle":"벌써부터 고통받는 롯린이 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:31","videoMasterId":1080829,"title":"벌써부터 고통받는 롯린이 #ShortForm","category":"kbo","masterVideoId":"663DCB5171B14253C65ABB16F34AC9175D92"},{"hit":2482,"thumbnail":"https://sports-phinf.pstatic.net/20230619_123/1687110343571NDMCO_JPEG/%C5%C2%C6%F2%B5%BF_%BD%C2%B8%AE_%BF%E4%C1%A4_%B5%EE%C0%E5_ShortForm.jpg","originalTitle":"태평동 승리 요정 등장! #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:17","videoMasterId":1080828,"title":"태평동 승리 요정 등장! #ShortForm","category":"kbo","masterVideoId":"D8572E6ACC976C9A62A7B915120ECAA4C9CF"},{"hit":20986,"thumbnail":"https://sports-phinf.pstatic.net/20230619_117/1687107097941AwzBa_JPEG/%B0%A1%C2%A5%B1%A4%B1%E2_vs_%C1%F8%C2%A5%B1%A4%B1%E2_ShortForm.jpg","originalTitle":"가짜 광기 vs 진짜 광기 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:18","videoMasterId":1080827,"title":"가짜 광기 vs 진짜 광기 #ShortForm","category":"kbo","masterVideoId":"EE62843C23D39DA506EE319896219C9FBE22"},{"hit":7881,"thumbnail":"https://sports-phinf.pstatic.net/20230618_145/1687086643463OXz71_JPEG/%B1%F4%C2%A6_%B3%EE%B6%F3%B4%C2_%B1%E8%C0%E7%BF%F5_ShortForm.jpg","originalTitle":"깜짝 놀라는 김재웅 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:27","videoMasterId":1080766,"title":"깜짝 놀라는 김재웅 #ShortForm","category":"kbo","masterVideoId":"C685C969AFB8FF588FD89C7C5F97885BFB1D"},{"hit":16830,"thumbnail":"https://sports-phinf.pstatic.net/20230618_92/1687083648681DvHJB_JPEG/%A1%AF%BA%CE%BB%F3_%C1%B6%BD%C9%A1%AF_2%B7%E7%BF%A1%BC%AD%C0%C7_%C3%E6%B5%B9_ShortForm.jpg","originalTitle":"’부상 조심’ 2루에서의 충돌 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:42","videoMasterId":1080735,"title":"'부상 조심' 2루에서의 충돌 #ShortForm","category":"kbo","masterVideoId":"B28BF17042034F11F6B2E3A92ED2C0D47010"},{"hit":33249,"thumbnail":"https://sports-phinf.pstatic.net/20230618_166/1687081278216VguS2_JPEG/%BF%C0%B7%A3%B8%B8%C0%CE%B5%A5_%C0%CC_150kmh%C0%C7_%B4%C0%B3%A6_ShortForm.jpg","originalTitle":"오랜만인데? 이 150km/h의 느낌 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:13","videoMasterId":1080710,"title":"오랜만인데? 이 150km/h의 느낌 #ShortFor...","category":"kbo","masterVideoId":"EA50E02BBBF924DF4BA11B453F39A27F4001"},{"hit":66258,"thumbnail":"https://sports-phinf.pstatic.net/20230618_112/1687079663612t555X_JPEG/LG_%C3%D6%C3%CA_%BF%DC%C0%CE_%C0%CE%BB%E7%C0%CC%B5%E5_%C6%C4%C5%A9_%C8%A8%B7%B1_ShortForm.jpg","originalTitle":"LG 외인 최초! 인사이드 파크 홈런 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:23","videoMasterId":1080696,"title":"LG 외인 최초! 인사이드 파크 홈런 #ShortFor...","category":"kbo","masterVideoId":"AA2BA7F77AAFC0ABC6711C657F61ADCAC6FD"},{"hit":12699,"thumbnail":"https://sports-phinf.pstatic.net/20230618_192/1687077127609UxIbp_JPEG/%C1%F7%B0%DD%C5%BA_%B5%B6%C4%A7_%BC%F6%B0%C5_ShortForm.jpg","originalTitle":"직격탄 독침 수거 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:23","videoMasterId":1080676,"title":"직격탄 독침 수거 #ShortForm","category":"kbo","masterVideoId":"D0AC19DCE392ABC3AACA9FBAC37C07F8CBB8"},{"hit":578,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_280/5rq6s_1687064175303pc9od_JPEG/39dedd97-0d91-11ee-8d97-b4055da548d1_10.jpg","originalTitle":"박영현의 올스타전이 궁금하다면?!⭐️","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:59","videoMasterId":1080631,"title":"박영현의 올스타전이 궁금하다면?! ⭐️","category":"kbo","masterVideoId":"5E43093FB46F1209D936107A3626FF485F4A"},{"hit":10448,"thumbnail":"https://sports-phinf.pstatic.net/20230618_2/1687035105514pbXc1_JPEG/2016.06.18_%273%B7%E7_%BA%B3%B4%C2%B5%A5%27_%C7%E3%B9%AB%C7%CF%B0%D4_%B5%B5%B7%E7_%C7%E3%BF%EB%C7%D1_KT_%B9%E9%C5%F5%B4%F5%BA%A3%C0%CC%BD%BA%BA%BC.jpg","originalTitle":"2016.06.18 '3루 비었는데?' 허무하게 도루 허용한 KT [백투더베이스볼]","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:55","videoMasterId":1080599,"title":"2016. 06. 18 '3루 비었는데? ' 허무하게 ...","category":"kbo","masterVideoId":"86CF03224D10BC515691693FC12A4E395EB3"},{"hit":145551,"thumbnail":"https://sports-phinf.pstatic.net/20230618_114/1687040000200xTYoy_JPEG/%B5%BF%BE%F7%C0%DA_%C1%A4%BD%C5%C0%CC_%BA%FB%B3%AD_%BE%E7%C0%C7%C1%F6%C0%C7_%B4%EB%C3%B3_ShortForm.jpg","originalTitle":"동업자 정신이 빛난 양의지의 대처 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:56","videoMasterId":1080596,"title":"동업자 정신이 빛난 양의지의 대처 #ShortForm","category":"kbo","masterVideoId":"33813BCD3DC494FC4D1651918E8BBD2DD31C"},{"hit":6229,"thumbnail":"https://sports-phinf.pstatic.net/20230618_102/1687028561704tqC2h_JPEG/%B8%AE%B8%AE%C4%DA%C0%C7_%C0%CC%B1%DB%BD%BA%C6%C4%C5%A9_Vlog_ShortForm.jpg","originalTitle":"리리코의 이글스파크 Vlog #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:53","videoMasterId":1080595,"title":"리리코의 이글스파크 Vlog #ShortForm","category":"kbo","masterVideoId":"FD316C20C8CEC246AF72D60B112A8C4FBCA7"},{"hit":16759,"thumbnail":"https://sports-phinf.pstatic.net/20230618_195/1687023332609OVymL_JPEG/%27%BB%EF%C0%FC%B5%E5_%BE%EE%BC%C0%BA%ED%27_in_%BC%F6%BF%F8_ShortForm.jpg","originalTitle":"'삼전드 어셈블!' in 수원 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:27","videoMasterId":1080594,"title":"'삼전드 어셈블! ' in 수원 #ShortForm","category":"kbo","masterVideoId":"E94D04755FDA3750F89E3DC2211053940046"},{"hit":12487,"thumbnail":"https://sports-phinf.pstatic.net/20230618_113/1687020290301DOOU5_JPEG/%27%B9%CE%B5%D5%BB%EA_%BF%A1%C0%CC%BD%BA%27_%B4%ED_%BD%BA%C6%AE%B7%B9%C0%CF%B8%AE_ShortForm.jpg","originalTitle":"'민둥산 에이스' 댄 스트레일리 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:21","videoMasterId":1080592,"title":"'민둥산 에이스' 댄 스트레일리 #ShortForm","category":"kbo","masterVideoId":"026AE345B7C81BD8A4A2E9AA6D9FAA781325"},{"hit":9251,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_205/aNiXA_16870200450777acap_JPEG/8adb166a-0d2c-11ee-a676-505dac8c385b_05.jpg","originalTitle":"이 홈은 이제 제껍니다","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:26","videoMasterId":1080593,"title":"이 홈은 이제 제껍니다","category":"kbo","masterVideoId":"BBD4E02E229B9CBE28F995F7AEFA132716F9"},{"hit":12756,"thumbnail":"https://sports-phinf.pstatic.net/20230617_256/1687000241332AvVLO_JPEG/%C0%DC%B5%F0%BF%A1_%B2%C8%C8%F9_%B9%E8%C6%AE_ShortForm.jpg","originalTitle":"잔디에 꽂힌 배트 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:21","videoMasterId":1080539,"title":"잔디에 꽂힌 배트 #ShortForm","category":"kbo","masterVideoId":"26D561515988B2E13E094CAE3E30FAC04BFA"},{"hit":32922,"thumbnail":"https://sports-phinf.pstatic.net/20230617_149/1686997564110j8DmQ_JPEG/%27%BD%BA%C6%AE%B7%B9%BD%BA_%B3%AF%B7%C1%B9%F6%B7%C1%27_%C3%E3%BD%C5%C3%E3%BF%D5_ShortForm.jpg","originalTitle":"'스트레스 날려버려' 춤신춤왕 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:15","videoMasterId":1080509,"title":"'스트레스 날려버려' 춤신춤왕 #ShortForm","category":"kbo","masterVideoId":"FC496768C2EC1814B5B3185158158FA1F14E"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_meta","firstData":{"dataId":1680660342867,"isEnable":"Y","title":"숏폼","type":"type|shortform|숏폼","videoList":[{"hit":224,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_56/8WBMN_1687143651873X5GWg_JPEG/27a74bf5-0e4d-11ee-8de4-a0369ffdb264_10.jpg","originalTitle":"[크보캐치] 김영웅이 왜 빠른지 알아요?","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:43","videoMasterId":1080893,"title":" 김영웅이 왜 빠른지 알아요?","category":"kbo","masterVideoId":"56CC3D2122D82FDC72BE141B435665847E88"},{"hit":1657,"thumbnail":"https://sports-phinf.pstatic.net/20230619_168/1687120952243F0k9S_JPEG/2008.06.19_%27%C8%A5%C0%DA_%C7%CF%B3%D7%27_%BA%EA%B7%EB%B9%D9%2C_%C7%D1_%C0%CC%B4%D7_%C8%A8%B7%B1_2%B0%B3_%B1%E2%B7%CF_%B9%E9%C5%F5%B4%F5%BA%A3%C0%CC%BD%BA%BA%BC.jpg","originalTitle":"2008.06.19 '혼자 하네' 브룸바, 한 이닝 홈런 2개 기록! [백투더베이스볼]","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:36","videoMasterId":1080832,"title":"2008. 06. 19 '혼자 하네' 브룸바, 한 이닝...","category":"kbo","masterVideoId":"886BE8E805076A49B4AD27F137FDA3C19F4B"},{"hit":2958,"thumbnail":"https://sports-phinf.pstatic.net/20230619_215/16871195439634fAkn_JPEG/%C1%A4%BD%C5%C1%D9_%B3%F5%BE%C6%B9%F6%B8%B0_%C0%CC%C1%D8%C7%F5_%C4%B3%BD%BA%C5%CD_ShortForm.jpg","originalTitle":"정신줄 놓아버린 이준혁 캐스터 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:58","videoMasterId":1080830,"title":"정신줄 놓아버린 이준혁 캐스터 #ShortForm","category":"kbo","masterVideoId":"BBAAFD8667FAB5A33FD67F0CCCD89C1657BB"},{"hit":5176,"thumbnail":"https://sports-phinf.pstatic.net/20230619_178/1687113644925JU3Kl_JPEG/%B9%FA%BD%E1%BA%CE%C5%CD_%B0%ED%C5%EB%B9%DE%B4%C2_%B7%D4%B8%B0%C0%CC_ShortForm.jpg","originalTitle":"벌써부터 고통받는 롯린이 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:31","videoMasterId":1080829,"title":"벌써부터 고통받는 롯린이 #ShortForm","category":"kbo","masterVideoId":"663DCB5171B14253C65ABB16F34AC9175D92"},{"hit":2482,"thumbnail":"https://sports-phinf.pstatic.net/20230619_123/1687110343571NDMCO_JPEG/%C5%C2%C6%F2%B5%BF_%BD%C2%B8%AE_%BF%E4%C1%A4_%B5%EE%C0%E5_ShortForm.jpg","originalTitle":"태평동 승리 요정 등장! #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:17","videoMasterId":1080828,"title":"태평동 승리 요정 등장! #ShortForm","category":"kbo","masterVideoId":"D8572E6ACC976C9A62A7B915120ECAA4C9CF"},{"hit":20986,"thumbnail":"https://sports-phinf.pstatic.net/20230619_117/1687107097941AwzBa_JPEG/%B0%A1%C2%A5%B1%A4%B1%E2_vs_%C1%F8%C2%A5%B1%A4%B1%E2_ShortForm.jpg","originalTitle":"가짜 광기 vs 진짜 광기 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:18","videoMasterId":1080827,"title":"가짜 광기 vs 진짜 광기 #ShortForm","category":"kbo","masterVideoId":"EE62843C23D39DA506EE319896219C9FBE22"},{"hit":7881,"thumbnail":"https://sports-phinf.pstatic.net/20230618_145/1687086643463OXz71_JPEG/%B1%F4%C2%A6_%B3%EE%B6%F3%B4%C2_%B1%E8%C0%E7%BF%F5_ShortForm.jpg","originalTitle":"깜짝 놀라는 김재웅 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:27","videoMasterId":1080766,"title":"깜짝 놀라는 김재웅 #ShortForm","category":"kbo","masterVideoId":"C685C969AFB8FF588FD89C7C5F97885BFB1D"},{"hit":16830,"thumbnail":"https://sports-phinf.pstatic.net/20230618_92/1687083648681DvHJB_JPEG/%A1%AF%BA%CE%BB%F3_%C1%B6%BD%C9%A1%AF_2%B7%E7%BF%A1%BC%AD%C0%C7_%C3%E6%B5%B9_ShortForm.jpg","originalTitle":"’부상 조심’ 2루에서의 충돌 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:42","videoMasterId":1080735,"title":"'부상 조심' 2루에서의 충돌 #ShortForm","category":"kbo","masterVideoId":"B28BF17042034F11F6B2E3A92ED2C0D47010"},{"hit":33249,"thumbnail":"https://sports-phinf.pstatic.net/20230618_166/1687081278216VguS2_JPEG/%BF%C0%B7%A3%B8%B8%C0%CE%B5%A5_%C0%CC_150kmh%C0%C7_%B4%C0%B3%A6_ShortForm.jpg","originalTitle":"오랜만인데? 이 150km/h의 느낌 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:13","videoMasterId":1080710,"title":"오랜만인데? 이 150km/h의 느낌 #ShortFor...","category":"kbo","masterVideoId":"EA50E02BBBF924DF4BA11B453F39A27F4001"},{"hit":66258,"thumbnail":"https://sports-phinf.pstatic.net/20230618_112/1687079663612t555X_JPEG/LG_%C3%D6%C3%CA_%BF%DC%C0%CE_%C0%CE%BB%E7%C0%CC%B5%E5_%C6%C4%C5%A9_%C8%A8%B7%B1_ShortForm.jpg","originalTitle":"LG 외인 최초! 인사이드 파크 홈런 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:23","videoMasterId":1080696,"title":"LG 외인 최초! 인사이드 파크 홈런 #ShortFor...","category":"kbo","masterVideoId":"AA2BA7F77AAFC0ABC6711C657F61ADCAC6FD"},{"hit":12699,"thumbnail":"https://sports-phinf.pstatic.net/20230618_192/1687077127609UxIbp_JPEG/%C1%F7%B0%DD%C5%BA_%B5%B6%C4%A7_%BC%F6%B0%C5_ShortForm.jpg","originalTitle":"직격탄 독침 수거 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:23","videoMasterId":1080676,"title":"직격탄 독침 수거 #ShortForm","category":"kbo","masterVideoId":"D0AC19DCE392ABC3AACA9FBAC37C07F8CBB8"},{"hit":578,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_280/5rq6s_1687064175303pc9od_JPEG/39dedd97-0d91-11ee-8d97-b4055da548d1_10.jpg","originalTitle":"박영현의 올스타전이 궁금하다면?!⭐️","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:59","videoMasterId":1080631,"title":"박영현의 올스타전이 궁금하다면?! ⭐️","category":"kbo","masterVideoId":"5E43093FB46F1209D936107A3626FF485F4A"},{"hit":10448,"thumbnail":"https://sports-phinf.pstatic.net/20230618_2/1687035105514pbXc1_JPEG/2016.06.18_%273%B7%E7_%BA%B3%B4%C2%B5%A5%27_%C7%E3%B9%AB%C7%CF%B0%D4_%B5%B5%B7%E7_%C7%E3%BF%EB%C7%D1_KT_%B9%E9%C5%F5%B4%F5%BA%A3%C0%CC%BD%BA%BA%BC.jpg","originalTitle":"2016.06.18 '3루 비었는데?' 허무하게 도루 허용한 KT [백투더베이스볼]","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:55","videoMasterId":1080599,"title":"2016. 06. 18 '3루 비었는데? ' 허무하게 ...","category":"kbo","masterVideoId":"86CF03224D10BC515691693FC12A4E395EB3"},{"hit":145551,"thumbnail":"https://sports-phinf.pstatic.net/20230618_114/1687040000200xTYoy_JPEG/%B5%BF%BE%F7%C0%DA_%C1%A4%BD%C5%C0%CC_%BA%FB%B3%AD_%BE%E7%C0%C7%C1%F6%C0%C7_%B4%EB%C3%B3_ShortForm.jpg","originalTitle":"동업자 정신이 빛난 양의지의 대처 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:56","videoMasterId":1080596,"title":"동업자 정신이 빛난 양의지의 대처 #ShortForm","category":"kbo","masterVideoId":"33813BCD3DC494FC4D1651918E8BBD2DD31C"},{"hit":6229,"thumbnail":"https://sports-phinf.pstatic.net/20230618_102/1687028561704tqC2h_JPEG/%B8%AE%B8%AE%C4%DA%C0%C7_%C0%CC%B1%DB%BD%BA%C6%C4%C5%A9_Vlog_ShortForm.jpg","originalTitle":"리리코의 이글스파크 Vlog #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:53","videoMasterId":1080595,"title":"리리코의 이글스파크 Vlog #ShortForm","category":"kbo","masterVideoId":"FD316C20C8CEC246AF72D60B112A8C4FBCA7"},{"hit":16759,"thumbnail":"https://sports-phinf.pstatic.net/20230618_195/1687023332609OVymL_JPEG/%27%BB%EF%C0%FC%B5%E5_%BE%EE%BC%C0%BA%ED%27_in_%BC%F6%BF%F8_ShortForm.jpg","originalTitle":"'삼전드 어셈블!' in 수원 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:27","videoMasterId":1080594,"title":"'삼전드 어셈블! ' in 수원 #ShortForm","category":"kbo","masterVideoId":"E94D04755FDA3750F89E3DC2211053940046"},{"hit":12487,"thumbnail":"https://sports-phinf.pstatic.net/20230618_113/1687020290301DOOU5_JPEG/%27%B9%CE%B5%D5%BB%EA_%BF%A1%C0%CC%BD%BA%27_%B4%ED_%BD%BA%C6%AE%B7%B9%C0%CF%B8%AE_ShortForm.jpg","originalTitle":"'민둥산 에이스' 댄 스트레일리 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:21","videoMasterId":1080592,"title":"'민둥산 에이스' 댄 스트레일리 #ShortForm","category":"kbo","masterVideoId":"026AE345B7C81BD8A4A2E9AA6D9FAA781325"},{"hit":9251,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_205/aNiXA_16870200450777acap_JPEG/8adb166a-0d2c-11ee-a676-505dac8c385b_05.jpg","originalTitle":"이 홈은 이제 제껍니다","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:26","videoMasterId":1080593,"title":"이 홈은 이제 제껍니다","category":"kbo","masterVideoId":"BBD4E02E229B9CBE28F995F7AEFA132716F9"},{"hit":12756,"thumbnail":"https://sports-phinf.pstatic.net/20230617_256/1687000241332AvVLO_JPEG/%C0%DC%B5%F0%BF%A1_%B2%C8%C8%F9_%B9%E8%C6%AE_ShortForm.jpg","originalTitle":"잔디에 꽂힌 배트 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:21","videoMasterId":1080539,"title":"잔디에 꽂힌 배트 #ShortForm","category":"kbo","masterVideoId":"26D561515988B2E13E094CAE3E30FAC04BFA"},{"hit":32922,"thumbnail":"https://sports-phinf.pstatic.net/20230617_149/1686997564110j8DmQ_JPEG/%27%BD%BA%C6%AE%B7%B9%BD%BA_%B3%AF%B7%C1%B9%F6%B7%C1%27_%C3%E3%BD%C5%C3%E3%BF%D5_ShortForm.jpg","originalTitle":"'스트레스 날려버려' 춤신춤왕 #ShortForm","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:15","videoMasterId":1080509,"title":"'스트레스 날려버려' 춤신춤왕 #ShortForm","category":"kbo","masterVideoId":"FC496768C2EC1814B5B3185158158FA1F14E"}]},"dataSetForm":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},{"menuId":null,"itemId":"1587448732823","isEnable":"Y","title":"H/L","displayOrder":null,"score":0.0,"templateId":"pc_center_video_meta","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1587448732823","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_meta","templateName":"종목홈 영상리스트 (메타)","dataSetId":"pc/center_video_meta","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_meta"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1587448735975,"isEnable":"Y","title":"H/L","type":"type|2|하이라이트","videoList":[{"hit":32237,"thumbnail":"https://sports-phinf.pstatic.net/20230618_183/1687093663217SMkdR_JPEG/%C0%FC%C3%BCHL_-_NC-KIA%2C_%BF%AC%C0%E5_%C1%A2%C0%FC_%B3%A1%BF%A1_%B9%AB%BD%C2%BA%CE.jpg","originalTitle":"[전체HL] NC-KIA, 연장 접전 끝에 무승부","videoType":"2","upperCategory":"kbaseball","playTime":"13:05","videoMasterId":1080821,"title":" NC-KIA, 연장 접전 끝에 무승부","category":"kbo","masterVideoId":"F0B667936DFF51FEA0DB379C7C4CE9085D86"},{"hit":23052,"thumbnail":"https://sports-phinf.pstatic.net/20230618_194/1687092841981nYifD_JPEG/%C0%FC%C3%BCHL_-_%27%C0%CC%C7%FC%C1%BE_%B0%E1%BD%C2%C5%B8%27_%C5%B0%BF%F2%2C_%C7%D1%C8%AD_%BB%F3%B4%EB%B7%CE_%BF%AC%C0%E5_%BD%C2%BA%CE_%B3%A1%BF%A1_%BD%C2%B8%AE.jpg","originalTitle":"[전체HL] '이형종 결승타' 키움, 한화 상대로 연장 승부 끝에 승리","videoType":"2","upperCategory":"kbaseball","playTime":"11:01","videoMasterId":1080818,"title":" '이형종 결승타' 키움, 한화 상대로 연장 승부 끝에...","category":"kbo","masterVideoId":"47706053A2664DC67D1E6F850D20745D59CD"},{"hit":36576,"thumbnail":"https://sports-phinf.pstatic.net/20230618_274/1687090000687MzwTF_JPEG/%C0%FC%C3%BCHL_-_%27%B1%E8%C1%F6%C2%F9_%B0%E1%BD%C2%C5%B8%2B%C0%CC%C0%E7%C7%F6_3%BE%C8%C5%B8%27_%BB%EF%BC%BA%2C_KT_%B2%AA%B0%ED_5%BF%AC%C6%D0_%C5%BB%C3%E2.jpg","originalTitle":"[전체HL] '김지찬 결승타+이재현 3안타' 삼성, KT 꺾고 5연패 탈출","videoType":"2","upperCategory":"kbaseball","playTime":"10:30","videoMasterId":1080798,"title":" '김지찬 결승타+이재현 3안타' 삼성, KT 꺾고 5...","category":"kbo","masterVideoId":"5C5BB340877DEA79DB9857707F7CE007402B"},{"hit":68209,"thumbnail":"https://sports-phinf.pstatic.net/20230618_170/1687088273862M04GV_JPEG/%C0%FC%C3%BCHL_-_%27%BD%D6%B5%BF%C8%F1_5%BE%C8%C5%B8%2B%B9%DD%C1%EE_7%C0%CC%B4%D7_%B9%AB%BD%C7%C1%A1%27_%B7%D4%B5%A5%2C_SSG_%B2%AA%B0%ED_%BF%AC%C6%D0_%C5%BB%C3%E2.jpg","originalTitle":"[전체HL] '쌍동희 5안타+반즈 7이닝 무실점' 롯데, SSG 꺾고 연패 탈출 ","videoType":"2","upperCategory":"kbaseball","playTime":"10:15","videoMasterId":1080783,"title":" '쌍동희 5안타+반즈 7이닝 무실점' 롯데, SSG ...","category":"kbo","masterVideoId":"29DC39E91F840148FB48240E3A71C91524BE"},{"hit":95514,"thumbnail":"https://sports-phinf.pstatic.net/20230618_110/16870875949127l6bQ_JPEG/%C0%FC%C3%BCHL_-_%2719%BE%C8%C5%B8_15%B5%E6%C1%A1%2B%C7%C3%B7%B5%C4%DA_9%BD%C2%27_LG%2C_%B5%CE%BB%EA_%BB%F3%B4%EB_%C0%A7%B4%D7%BD%C3%B8%AE%C1%EE.jpg","originalTitle":"[전체HL] '19안타 15득점+플럿코 9승' LG, 두산 상대 위닝시리즈","videoType":"2","upperCategory":"kbaseball","playTime":"09:51","videoMasterId":1080778,"title":" '19안타 15득점+플럿코 9승' LG, 두산 상대 ...","category":"kbo","masterVideoId":"29559357E6B3B92544B2C32BECB154C8C25A"},{"hit":198,"thumbnail":"https://sports-phinf.pstatic.net//20230618_48/1687082812609Tx5PG_JPEG/99b059bd-0dbf-11ee-88f2-d4f5ef5a9532_01.jpg","originalTitle":"[퓨처스리그] 삼성 vs SSG 하이라이트_20230618","videoType":"2","upperCategory":"kbaseball","playTime":"10:16","videoMasterId":1080730,"title":" 삼성 vs SSG 하이라이트_20230618","category":"futures","masterVideoId":"064F61C2233D1D4D509F18D00D22679809A4"},{"hit":53,"thumbnail":"https://sports-phinf.pstatic.net/20230618_156/1687083315566Cwnjo_JPEG/123.JPG","originalTitle":"연천미라클 vs 파주챌린저스 [2023 KBO DREAM CUP 독립야구대회 결승]","videoType":"2","upperCategory":"kbaseball","playTime":"24:54","videoMasterId":1080744,"title":"연천미라클 vs 파주챌린저스 ","category":"kbaseball","masterVideoId":"9E409B22D159A544992F78BB24C6D9E8DC79"},{"hit":17,"thumbnail":"https://sports-phinf.pstatic.net/20230618_165/1687083043048qKSx2_JPEG/1%C1%D8%B0%E1%BD%C2.JPG","originalTitle":"연천미라클 vs 가평웨일스 [2023 KBO DREAM CUP 독립야구대회 준결승]","videoType":"2","upperCategory":"kbaseball","playTime":"19:12","videoMasterId":1080740,"title":"연천미라클 vs 가평웨일스 ","category":"kbaseball","masterVideoId":"AF05A7CC57F3E91F2004E15F4392D0C9915A"},{"hit":9,"thumbnail":"https://sports-phinf.pstatic.net/20230618_292/1687083221008v4ATt_JPEG/123.JPG","originalTitle":"성남맥파이스 vs 파주챌린저스 [2023 KBO DREAM CUP 독립야구대회 준결승]","videoType":"2","upperCategory":"kbaseball","playTime":"17:18","videoMasterId":1080739,"title":"성남맥파이스 vs 파주챌린저스 ","category":"kbaseball","masterVideoId":"546362F757875519C99656E9BE4B1EE33E3D"},{"hit":23996,"thumbnail":"https://sports-phinf.pstatic.net/20230617_148/1687004376451NXEKv_JPEG/%C0%FC%C3%BCHL_-_%27%C0%CC%BF%F8%BC%AE_3%C5%B8%C1%A1%2B%B1%E8%C8%D6%C1%FD_%C5%F5%B7%B1%C6%F7%27_%C5%B0%BF%F2%2C_%C7%D1%C8%AD%BF%A1_%BD%C2%B8%AE.jpg","originalTitle":"[전체HL] '이원석 3타점+김휘집 투런포' 키움, 한화에 승리","videoType":"2","upperCategory":"kbaseball","playTime":"09:53","videoMasterId":1080583,"title":" '이원석 3타점+김휘집 투런포' 키움, 한화에 승리","category":"kbo","masterVideoId":"703E644CEA9260938837100E2C31ECCB96B8"},{"hit":27440,"thumbnail":"https://sports-phinf.pstatic.net/20230617_80/16870032983155EmWH_JPEG/%C0%FC%C3%BCHL_-_%27%C0%E5%B4%DC_19%BE%C8%C5%B8%27_NC%2C_KIA%BF%A1_%C0%FC%B3%AF_%C6%D0%B9%E8_%BC%B3%BF%E5.jpg","originalTitle":"[전체HL] '장단 19안타' NC, KIA에 전날 패배 설욕","videoType":"2","upperCategory":"kbaseball","playTime":"10:01","videoMasterId":1080575,"title":" '장단 19안타' NC, KIA에 전날 패배 설욕","category":"kbo","masterVideoId":"31F8BFFC9725ACB383FAC2262953FCCA04AD"},{"hit":16945,"thumbnail":"https://sports-phinf.pstatic.net/20230617_294/1687003172249ikakU_JPEG/%C0%FC%C3%BCHL_-_%27%C0%E5%C1%D8%BF%F8_3%C5%B8%C1%A1%27_KT%2C_%BB%EF%BC%BA_%B2%AA%B0%ED_4%BF%AC%BD%C2_%C1%FA%C1%D6.jpg","originalTitle":"[전체HL] '장준원 3타점' KT, 삼성 꺾고 4연승 질주","videoType":"2","upperCategory":"kbaseball","playTime":"10:16","videoMasterId":1080573,"title":" '장준원 3타점' KT, 삼성 꺾고 4연승 질주","category":"kbo","masterVideoId":"D14D883BEA058386147FB0D33924DE22D889"},{"hit":62164,"thumbnail":"https://sports-phinf.pstatic.net/20230617_259/168700306660932mmG_JPEG/%C0%FC%C3%BCHL_-_%278%C8%B8_7%B5%E6%C1%A1%27_SSG%2C_%B7%D4%B5%A5%BF%A1_%C2%A5%B8%B4%C7%D1_%BF%AA%C0%FC%BD%C2%C0%B8%B7%CE_%C0%A7%B4%D7%BD%C3%B8%AE%C1%EE_%C8%AE%BA%B8.jpg","originalTitle":"[전체HL] '8회 7득점' SSG, 롯데에 짜릿한 역전승으로 위닝시리즈 확보","videoType":"2","upperCategory":"kbaseball","playTime":"10:12","videoMasterId":1080572,"title":" '8회 7득점' SSG, 롯데에 짜릿한 역전승으로 위...","category":"kbo","masterVideoId":"5686D9AD57C0237CA233E300A9B7110B6DD1"},{"hit":37256,"thumbnail":"https://sports-phinf.pstatic.net/20230617_276/16870017578587mKEd_JPEG/%C0%FC%C3%BCHL_-_%27%B9%DA%B0%E8%B9%FC_%B0%E1%BD%C2%C5%B8%2B%B0%FB%BA%F3_%C8%A3%C5%F5%27_%B5%CE%BB%EA%2C_LG_%B2%AA%B0%ED_%BF%AC%C6%D0_%C5%BB%C3%E2.jpg","originalTitle":"[전체HL] '박계범 결승타+곽빈 호투' 두산, LG 꺾고 연패 탈출","videoType":"2","upperCategory":"kbaseball","playTime":"07:08","videoMasterId":1080555,"title":" '박계범 결승타+곽빈 호투' 두산, LG 꺾고 연패 ...","category":"kbo","masterVideoId":"810690B524D207B78A57710F9C16F7BCE814"},{"hit":33,"thumbnail":"https://sports-phinf.pstatic.net/20230618_269/16870828675566cJlb_JPEG/123.JPG","originalTitle":"[퓨처스리그] 삼성 vs SSG 하이라이트_20230617","videoType":"2","upperCategory":"kbaseball","playTime":"10:08","videoMasterId":1080731,"title":" 삼성 vs SSG 하이라이트_20230617","category":"futures","masterVideoId":"8D69AA3C3CB61036738810E32922173E9658"},{"hit":145551,"thumbnail":"https://sports-phinf.pstatic.net/20230616_257/1686924672747jMiKr_JPEG/%C0%FC%C3%BCHL_-_%27%C0%CC%BF%EC%BC%BA_%BF%AA%C0%FC%C6%F7%2B%C3%D6%C7%FC%BF%EC_%B8%D6%C6%BC%C6%F7%27_KIA%2C_NC%BF%CD_%B3%AD%C5%B8%C0%FC_%B3%A1%BF%A1_%BD%C2%B8%AE.jpg","originalTitle":"[전체HL] '이우성 역전포+최형우 멀티포' KIA, NC와 난타전 끝에 승리","videoType":"2","upperCategory":"kbaseball","playTime":"12:15","videoMasterId":1080310,"title":" '이우성 역전포+최형우 멀티포' KIA, NC와 난타...","category":"kbo","masterVideoId":"24A6DD8655104CB8C5357E788E22A210D8B9"},{"hit":16617,"thumbnail":"https://sports-phinf.pstatic.net/20230616_203/1686923655101Soqms_JPEG/%C0%FC%C3%BCHL_-_%C5%B0%BF%F2-%C7%D1%C8%AD%2C_%BC%AD%B7%CE_%BD%C2%B8%AE_%B1%E2%C8%B8%B8%A6_%B3%AA%B6%F5%C8%F7_%B3%F5%C4%A1%B8%E7_%B9%AB%BD%C2%BA%CE.jpg","originalTitle":"[전체HL] 키움-한화, 서로 승리 기회를 나란히 놓치며 무승부","videoType":"2","upperCategory":"kbaseball","playTime":"09:41","videoMasterId":1080305,"title":" 키움-한화, 서로 승리 기회를 나란히 놓치며 무승부","category":"kbo","masterVideoId":"05DDA4ED131940D23449D3D585AFB08C3E64"},{"hit":79061,"thumbnail":"https://sports-phinf.pstatic.net/20230616_207/1686922893337DFPgT_JPEG/%C0%FC%C3%BCHL_-_%27%C8%C4%B9%DD%BF%A1_%C8%E7%B5%E9%B8%B0_%B5%CE%BB%EA%27_LG%2C_%C4%A1%BF%AD%C7%D1_%BD%C2%BA%CE_%B3%A1%BF%A1_5%BF%AC%BD%C2.jpg","originalTitle":"[전체HL ] '후반에 흔들린 두산' LG, 치열한 승부 끝에 5연승","videoType":"2","upperCategory":"kbaseball","playTime":"09:30","videoMasterId":1080301,"title":" '후반에 흔들린 두산' LG, 치열한 승부 끝에 5연...","category":"kbo","masterVideoId":"8A1479C9C73C39A043EE52343672FE95E8B0"},{"hit":31387,"thumbnail":"https://sports-phinf.pstatic.net/20230616_267/1686921780922wjFRQ_JPEG/%C0%FC%C3%BCHL_-_%27%C0%CC%C8%A3%BF%AC_%B3%A1%B3%BB%B1%E2%27_KT%2C_%BB%EF%BC%BA%BF%A1_%C2%A5%B8%B4%C7%D1_%BF%AA%C0%FC%BD%C2.jpg","originalTitle":"[전체HL] '이호연 끝내기' KT, 삼성에 짜릿한 역전승","videoType":"2","upperCategory":"kbaseball","playTime":"11:00","videoMasterId":1080290,"title":" '이호연 끝내기' KT, 삼성에 짜릿한 역전승","category":"kbo","masterVideoId":"4978045F9CE83F3DA58020B7933A170CBA14"},{"hit":33138,"thumbnail":"https://sports-phinf.pstatic.net/20230616_250/1686920018633eQ92Q_JPEG/%C0%FC%C3%BCHL_-_%27%C8%A8%B7%B1_5%B9%E6%2B%B8%CD%C6%F8%27_SSG%2C_%B7%D4%B5%A5%BF%A1_%B4%EB%BD%C2.jpg","originalTitle":"[전체HL] '홈런 5방+맹폭' SSG, 롯데에 대승","videoType":"2","upperCategory":"kbaseball","playTime":"11:42","videoMasterId":1080295,"title":" '홈런 5방+맹폭' SSG, 롯데에 대승","category":"kbo","masterVideoId":"2FF1935460D8363D4A63AE2441E440F023C5"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_meta","firstData":{"dataId":1587448735975,"isEnable":"Y","title":"H/L","type":"type|2|하이라이트","videoList":[{"hit":32237,"thumbnail":"https://sports-phinf.pstatic.net/20230618_183/1687093663217SMkdR_JPEG/%C0%FC%C3%BCHL_-_NC-KIA%2C_%BF%AC%C0%E5_%C1%A2%C0%FC_%B3%A1%BF%A1_%B9%AB%BD%C2%BA%CE.jpg","originalTitle":"[전체HL] NC-KIA, 연장 접전 끝에 무승부","videoType":"2","upperCategory":"kbaseball","playTime":"13:05","videoMasterId":1080821,"title":" NC-KIA, 연장 접전 끝에 무승부","category":"kbo","masterVideoId":"F0B667936DFF51FEA0DB379C7C4CE9085D86"},{"hit":23052,"thumbnail":"https://sports-phinf.pstatic.net/20230618_194/1687092841981nYifD_JPEG/%C0%FC%C3%BCHL_-_%27%C0%CC%C7%FC%C1%BE_%B0%E1%BD%C2%C5%B8%27_%C5%B0%BF%F2%2C_%C7%D1%C8%AD_%BB%F3%B4%EB%B7%CE_%BF%AC%C0%E5_%BD%C2%BA%CE_%B3%A1%BF%A1_%BD%C2%B8%AE.jpg","originalTitle":"[전체HL] '이형종 결승타' 키움, 한화 상대로 연장 승부 끝에 승리","videoType":"2","upperCategory":"kbaseball","playTime":"11:01","videoMasterId":1080818,"title":" '이형종 결승타' 키움, 한화 상대로 연장 승부 끝에...","category":"kbo","masterVideoId":"47706053A2664DC67D1E6F850D20745D59CD"},{"hit":36576,"thumbnail":"https://sports-phinf.pstatic.net/20230618_274/1687090000687MzwTF_JPEG/%C0%FC%C3%BCHL_-_%27%B1%E8%C1%F6%C2%F9_%B0%E1%BD%C2%C5%B8%2B%C0%CC%C0%E7%C7%F6_3%BE%C8%C5%B8%27_%BB%EF%BC%BA%2C_KT_%B2%AA%B0%ED_5%BF%AC%C6%D0_%C5%BB%C3%E2.jpg","originalTitle":"[전체HL] '김지찬 결승타+이재현 3안타' 삼성, KT 꺾고 5연패 탈출","videoType":"2","upperCategory":"kbaseball","playTime":"10:30","videoMasterId":1080798,"title":" '김지찬 결승타+이재현 3안타' 삼성, KT 꺾고 5...","category":"kbo","masterVideoId":"5C5BB340877DEA79DB9857707F7CE007402B"},{"hit":68209,"thumbnail":"https://sports-phinf.pstatic.net/20230618_170/1687088273862M04GV_JPEG/%C0%FC%C3%BCHL_-_%27%BD%D6%B5%BF%C8%F1_5%BE%C8%C5%B8%2B%B9%DD%C1%EE_7%C0%CC%B4%D7_%B9%AB%BD%C7%C1%A1%27_%B7%D4%B5%A5%2C_SSG_%B2%AA%B0%ED_%BF%AC%C6%D0_%C5%BB%C3%E2.jpg","originalTitle":"[전체HL] '쌍동희 5안타+반즈 7이닝 무실점' 롯데, SSG 꺾고 연패 탈출 ","videoType":"2","upperCategory":"kbaseball","playTime":"10:15","videoMasterId":1080783,"title":" '쌍동희 5안타+반즈 7이닝 무실점' 롯데, SSG ...","category":"kbo","masterVideoId":"29DC39E91F840148FB48240E3A71C91524BE"},{"hit":95514,"thumbnail":"https://sports-phinf.pstatic.net/20230618_110/16870875949127l6bQ_JPEG/%C0%FC%C3%BCHL_-_%2719%BE%C8%C5%B8_15%B5%E6%C1%A1%2B%C7%C3%B7%B5%C4%DA_9%BD%C2%27_LG%2C_%B5%CE%BB%EA_%BB%F3%B4%EB_%C0%A7%B4%D7%BD%C3%B8%AE%C1%EE.jpg","originalTitle":"[전체HL] '19안타 15득점+플럿코 9승' LG, 두산 상대 위닝시리즈","videoType":"2","upperCategory":"kbaseball","playTime":"09:51","videoMasterId":1080778,"title":" '19안타 15득점+플럿코 9승' LG, 두산 상대 ...","category":"kbo","masterVideoId":"29559357E6B3B92544B2C32BECB154C8C25A"},{"hit":198,"thumbnail":"https://sports-phinf.pstatic.net//20230618_48/1687082812609Tx5PG_JPEG/99b059bd-0dbf-11ee-88f2-d4f5ef5a9532_01.jpg","originalTitle":"[퓨처스리그] 삼성 vs SSG 하이라이트_20230618","videoType":"2","upperCategory":"kbaseball","playTime":"10:16","videoMasterId":1080730,"title":" 삼성 vs SSG 하이라이트_20230618","category":"futures","masterVideoId":"064F61C2233D1D4D509F18D00D22679809A4"},{"hit":53,"thumbnail":"https://sports-phinf.pstatic.net/20230618_156/1687083315566Cwnjo_JPEG/123.JPG","originalTitle":"연천미라클 vs 파주챌린저스 [2023 KBO DREAM CUP 독립야구대회 결승]","videoType":"2","upperCategory":"kbaseball","playTime":"24:54","videoMasterId":1080744,"title":"연천미라클 vs 파주챌린저스 ","category":"kbaseball","masterVideoId":"9E409B22D159A544992F78BB24C6D9E8DC79"},{"hit":17,"thumbnail":"https://sports-phinf.pstatic.net/20230618_165/1687083043048qKSx2_JPEG/1%C1%D8%B0%E1%BD%C2.JPG","originalTitle":"연천미라클 vs 가평웨일스 [2023 KBO DREAM CUP 독립야구대회 준결승]","videoType":"2","upperCategory":"kbaseball","playTime":"19:12","videoMasterId":1080740,"title":"연천미라클 vs 가평웨일스 ","category":"kbaseball","masterVideoId":"AF05A7CC57F3E91F2004E15F4392D0C9915A"},{"hit":9,"thumbnail":"https://sports-phinf.pstatic.net/20230618_292/1687083221008v4ATt_JPEG/123.JPG","originalTitle":"성남맥파이스 vs 파주챌린저스 [2023 KBO DREAM CUP 독립야구대회 준결승]","videoType":"2","upperCategory":"kbaseball","playTime":"17:18","videoMasterId":1080739,"title":"성남맥파이스 vs 파주챌린저스 ","category":"kbaseball","masterVideoId":"546362F757875519C99656E9BE4B1EE33E3D"},{"hit":23996,"thumbnail":"https://sports-phinf.pstatic.net/20230617_148/1687004376451NXEKv_JPEG/%C0%FC%C3%BCHL_-_%27%C0%CC%BF%F8%BC%AE_3%C5%B8%C1%A1%2B%B1%E8%C8%D6%C1%FD_%C5%F5%B7%B1%C6%F7%27_%C5%B0%BF%F2%2C_%C7%D1%C8%AD%BF%A1_%BD%C2%B8%AE.jpg","originalTitle":"[전체HL] '이원석 3타점+김휘집 투런포' 키움, 한화에 승리","videoType":"2","upperCategory":"kbaseball","playTime":"09:53","videoMasterId":1080583,"title":" '이원석 3타점+김휘집 투런포' 키움, 한화에 승리","category":"kbo","masterVideoId":"703E644CEA9260938837100E2C31ECCB96B8"},{"hit":27440,"thumbnail":"https://sports-phinf.pstatic.net/20230617_80/16870032983155EmWH_JPEG/%C0%FC%C3%BCHL_-_%27%C0%E5%B4%DC_19%BE%C8%C5%B8%27_NC%2C_KIA%BF%A1_%C0%FC%B3%AF_%C6%D0%B9%E8_%BC%B3%BF%E5.jpg","originalTitle":"[전체HL] '장단 19안타' NC, KIA에 전날 패배 설욕","videoType":"2","upperCategory":"kbaseball","playTime":"10:01","videoMasterId":1080575,"title":" '장단 19안타' NC, KIA에 전날 패배 설욕","category":"kbo","masterVideoId":"31F8BFFC9725ACB383FAC2262953FCCA04AD"},{"hit":16945,"thumbnail":"https://sports-phinf.pstatic.net/20230617_294/1687003172249ikakU_JPEG/%C0%FC%C3%BCHL_-_%27%C0%E5%C1%D8%BF%F8_3%C5%B8%C1%A1%27_KT%2C_%BB%EF%BC%BA_%B2%AA%B0%ED_4%BF%AC%BD%C2_%C1%FA%C1%D6.jpg","originalTitle":"[전체HL] '장준원 3타점' KT, 삼성 꺾고 4연승 질주","videoType":"2","upperCategory":"kbaseball","playTime":"10:16","videoMasterId":1080573,"title":" '장준원 3타점' KT, 삼성 꺾고 4연승 질주","category":"kbo","masterVideoId":"D14D883BEA058386147FB0D33924DE22D889"},{"hit":62164,"thumbnail":"https://sports-phinf.pstatic.net/20230617_259/168700306660932mmG_JPEG/%C0%FC%C3%BCHL_-_%278%C8%B8_7%B5%E6%C1%A1%27_SSG%2C_%B7%D4%B5%A5%BF%A1_%C2%A5%B8%B4%C7%D1_%BF%AA%C0%FC%BD%C2%C0%B8%B7%CE_%C0%A7%B4%D7%BD%C3%B8%AE%C1%EE_%C8%AE%BA%B8.jpg","originalTitle":"[전체HL] '8회 7득점' SSG, 롯데에 짜릿한 역전승으로 위닝시리즈 확보","videoType":"2","upperCategory":"kbaseball","playTime":"10:12","videoMasterId":1080572,"title":" '8회 7득점' SSG, 롯데에 짜릿한 역전승으로 위...","category":"kbo","masterVideoId":"5686D9AD57C0237CA233E300A9B7110B6DD1"},{"hit":37256,"thumbnail":"https://sports-phinf.pstatic.net/20230617_276/16870017578587mKEd_JPEG/%C0%FC%C3%BCHL_-_%27%B9%DA%B0%E8%B9%FC_%B0%E1%BD%C2%C5%B8%2B%B0%FB%BA%F3_%C8%A3%C5%F5%27_%B5%CE%BB%EA%2C_LG_%B2%AA%B0%ED_%BF%AC%C6%D0_%C5%BB%C3%E2.jpg","originalTitle":"[전체HL] '박계범 결승타+곽빈 호투' 두산, LG 꺾고 연패 탈출","videoType":"2","upperCategory":"kbaseball","playTime":"07:08","videoMasterId":1080555,"title":" '박계범 결승타+곽빈 호투' 두산, LG 꺾고 연패 ...","category":"kbo","masterVideoId":"810690B524D207B78A57710F9C16F7BCE814"},{"hit":33,"thumbnail":"https://sports-phinf.pstatic.net/20230618_269/16870828675566cJlb_JPEG/123.JPG","originalTitle":"[퓨처스리그] 삼성 vs SSG 하이라이트_20230617","videoType":"2","upperCategory":"kbaseball","playTime":"10:08","videoMasterId":1080731,"title":" 삼성 vs SSG 하이라이트_20230617","category":"futures","masterVideoId":"8D69AA3C3CB61036738810E32922173E9658"},{"hit":145551,"thumbnail":"https://sports-phinf.pstatic.net/20230616_257/1686924672747jMiKr_JPEG/%C0%FC%C3%BCHL_-_%27%C0%CC%BF%EC%BC%BA_%BF%AA%C0%FC%C6%F7%2B%C3%D6%C7%FC%BF%EC_%B8%D6%C6%BC%C6%F7%27_KIA%2C_NC%BF%CD_%B3%AD%C5%B8%C0%FC_%B3%A1%BF%A1_%BD%C2%B8%AE.jpg","originalTitle":"[전체HL] '이우성 역전포+최형우 멀티포' KIA, NC와 난타전 끝에 승리","videoType":"2","upperCategory":"kbaseball","playTime":"12:15","videoMasterId":1080310,"title":" '이우성 역전포+최형우 멀티포' KIA, NC와 난타...","category":"kbo","masterVideoId":"24A6DD8655104CB8C5357E788E22A210D8B9"},{"hit":16617,"thumbnail":"https://sports-phinf.pstatic.net/20230616_203/1686923655101Soqms_JPEG/%C0%FC%C3%BCHL_-_%C5%B0%BF%F2-%C7%D1%C8%AD%2C_%BC%AD%B7%CE_%BD%C2%B8%AE_%B1%E2%C8%B8%B8%A6_%B3%AA%B6%F5%C8%F7_%B3%F5%C4%A1%B8%E7_%B9%AB%BD%C2%BA%CE.jpg","originalTitle":"[전체HL] 키움-한화, 서로 승리 기회를 나란히 놓치며 무승부","videoType":"2","upperCategory":"kbaseball","playTime":"09:41","videoMasterId":1080305,"title":" 키움-한화, 서로 승리 기회를 나란히 놓치며 무승부","category":"kbo","masterVideoId":"05DDA4ED131940D23449D3D585AFB08C3E64"},{"hit":79061,"thumbnail":"https://sports-phinf.pstatic.net/20230616_207/1686922893337DFPgT_JPEG/%C0%FC%C3%BCHL_-_%27%C8%C4%B9%DD%BF%A1_%C8%E7%B5%E9%B8%B0_%B5%CE%BB%EA%27_LG%2C_%C4%A1%BF%AD%C7%D1_%BD%C2%BA%CE_%B3%A1%BF%A1_5%BF%AC%BD%C2.jpg","originalTitle":"[전체HL ] '후반에 흔들린 두산' LG, 치열한 승부 끝에 5연승","videoType":"2","upperCategory":"kbaseball","playTime":"09:30","videoMasterId":1080301,"title":" '후반에 흔들린 두산' LG, 치열한 승부 끝에 5연...","category":"kbo","masterVideoId":"8A1479C9C73C39A043EE52343672FE95E8B0"},{"hit":31387,"thumbnail":"https://sports-phinf.pstatic.net/20230616_267/1686921780922wjFRQ_JPEG/%C0%FC%C3%BCHL_-_%27%C0%CC%C8%A3%BF%AC_%B3%A1%B3%BB%B1%E2%27_KT%2C_%BB%EF%BC%BA%BF%A1_%C2%A5%B8%B4%C7%D1_%BF%AA%C0%FC%BD%C2.jpg","originalTitle":"[전체HL] '이호연 끝내기' KT, 삼성에 짜릿한 역전승","videoType":"2","upperCategory":"kbaseball","playTime":"11:00","videoMasterId":1080290,"title":" '이호연 끝내기' KT, 삼성에 짜릿한 역전승","category":"kbo","masterVideoId":"4978045F9CE83F3DA58020B7933A170CBA14"},{"hit":33138,"thumbnail":"https://sports-phinf.pstatic.net/20230616_250/1686920018633eQ92Q_JPEG/%C0%FC%C3%BCHL_-_%27%C8%A8%B7%B1_5%B9%E6%2B%B8%CD%C6%F8%27_SSG%2C_%B7%D4%B5%A5%BF%A1_%B4%EB%BD%C2.jpg","originalTitle":"[전체HL] '홈런 5방+맹폭' SSG, 롯데에 대승","videoType":"2","upperCategory":"kbaseball","playTime":"11:42","videoMasterId":1080295,"title":" '홈런 5방+맹폭' SSG, 롯데에 대승","category":"kbo","masterVideoId":"2FF1935460D8363D4A63AE2441E440F023C5"}]},"dataSetForm":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},{"menuId":null,"itemId":"1581907527417","isEnable":"Y","title":"주요장면","displayOrder":null,"score":0.0,"templateId":"pc_center_video_meta","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1581907527417","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_meta","templateName":"종목홈 영상리스트 (메타)","dataSetId":"pc/center_video_meta","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_meta"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1581907530482,"isEnable":"Y","title":"주요장면","type":"type|1|주요장면","videoList":[{"hit":10953,"thumbnail":"https://sports-phinf.pstatic.net/20230618_93/1687093677581l4He6_JPEG/%C0%CC%BF%EC%BC%BAHL_-_9%C8%B8%B8%BB_%B1%D8%C0%FB%C0%CE_%B5%BF%C1%A1_2%B7%E7%C5%B8_%C0%DB%B7%C4.jpg","originalTitle":"이우성HL - 9회말 극적인 동점 2루타 작렬","videoType":"1","upperCategory":"kbaseball","playTime":"01:57","videoMasterId":1080820,"title":"이우성HL - 9회말 극적인 동점 2루타 작렬","category":"kbo","masterVideoId":"17063B18399112EC5AC89D2CF060E0593C9C"},{"hit":3691,"thumbnail":"https://sports-phinf.pstatic.net/20230618_34/16870935433927AcPm_JPEG/%C0%CC%B8%ED%C1%BEHL_-_%C6%C0%C0%BB_%C6%D0%B9%E8%C0%C7_%C0%A7%B1%E2%BF%A1%BC%AD_%B1%B8%C7%D8%B3%BD_%27%B0%AD%BD%C9%C0%E5%27.jpg","originalTitle":"이명종HL - 팀을 패배의 위기에서 구해낸 '강심장'","videoType":"1","upperCategory":"kbaseball","playTime":"02:20","videoMasterId":1080819,"title":"이명종HL - 팀을 패배의 위기에서 구해낸 '강심장'","category":"kbo","masterVideoId":"47815762A4ADBAAD381671714DD2B8E8E1AF"},{"hit":5864,"thumbnail":"https://sports-phinf.pstatic.net/20230618_271/1687092941371vsSGK_JPEG/22_NC_vs_KIA12%C8%B8%B8%BB_%B9%AB%BD%C2%BA%CE%B7%CE_%B0%E6%B1%E2%B8%A6_%B3%A1%B3%BB%B4%C2_%C0%FC%BB%E7%B9%CE.jpg","originalTitle":"무승부로 경기를 끝내는 전사민","videoType":"1","upperCategory":"kbaseball","playTime":"01:11","videoMasterId":1080817,"title":"무승부로 경기를 끝내는 전사민","category":"kbo","masterVideoId":"552D77A0519D2C7E4E910378DB39C0648C08"},{"hit":3928,"thumbnail":"https://sports-phinf.pstatic.net/20230618_225/1687092585919SS8Ce_JPEG/21_NC_vs_KIA12%C8%B8%C3%CA_%C0%B1%C1%DF%C7%F6%2C_%B9%AB%BB%E7_1%2C_2%B7%E7_%B9%FE%BE%EE%B3%AA%B8%E7_%BD%C7%C1%A1_%C0%A7%B1%E2_%C5%BB%C3%E2.jpg","originalTitle":"윤중현, 무사 1, 2루 벗어나며 실점 위기 탈출 ","videoType":"1","upperCategory":"kbaseball","playTime":"01:44","videoMasterId":1080816,"title":"윤중현, 무사 1, 2루 벗어나며 실점 위기 탈출 ","category":"kbo","masterVideoId":"A1AEBC78AE731E42D13EF7E23853C12B56AE"},{"hit":6622,"thumbnail":"https://sports-phinf.pstatic.net/20230618_249/1687091876614pt9Y5_JPEG/21_%C5%B0%BF%F2_vs_%C7%D1%C8%AD11%C8%B8%B8%BB_%B1%E8%BC%B1%B1%E2%2C_%BF%AC%C0%E5_%C7%F7%C5%F5%B8%A6_%B8%B6%B9%AB%B8%AE_%C1%FE%B4%C2_KKK.jpg","originalTitle":"김선기, 연장 혈투를 마무리 짓는 KKK","videoType":"1","upperCategory":"kbaseball","playTime":"03:52","videoMasterId":1080812,"title":"김선기, 연장 혈투를 마무리 짓는 KKK","category":"kbo","masterVideoId":"C921DC72DC85E7D2B4ADA26D7F39FD5EFBC1"},{"hit":4128,"thumbnail":"https://sports-phinf.pstatic.net/20230618_117/1687091863749E8UBT_JPEG/20_%C5%B0%BF%F2_vs_%C7%D1%C8%AD11%C8%B8%B8%BB_%B0%F8_%C1%DD%B4%D9%B0%A1_%B9%DA%C1%A4%C7%F6%C0%C7_%B9%E8%C6%AE%BF%A1_%B8%C2%BE%C6%B9%F6%B8%B0_%B1%E8%B5%BF%C7%E5.jpg","originalTitle":"공 줍다가 박정현의 배트에 맞아버린 김동헌","videoType":"1","upperCategory":"kbaseball","playTime":"01:01","videoMasterId":1080809,"title":"공 줍다가 박정현의 배트에 맞아버린 김동헌","category":"kbo","masterVideoId":"F96730112DFB971C84A4368977114FE19713"},{"hit":1369,"thumbnail":"https://sports-phinf.pstatic.net/20230618_90/16870914701906XRmE_JPEG/20_NC_vs_KIA11%C8%B8%B8%BB_%C0%FC%BB%E7%B9%CE%2C_%B0%DF%C1%A6_%BD%C7%C3%A5_%C7%DF%C0%B8%B3%AA_%B9%AB%BD%C7%C1%A1_%C7%C7%C4%AA.jpg","originalTitle":"전사민, 견제 실책 했으나 무실점 피칭","videoType":"1","upperCategory":"kbaseball","playTime":"01:31","videoMasterId":1080807,"title":"전사민, 견제 실책 했으나 무실점 피칭","category":"kbo","masterVideoId":"4E1436F8ABD92B9BF20E725B272FEAE4F646"},{"hit":5209,"thumbnail":"https://sports-phinf.pstatic.net/20230618_43/1687090988114gzjsd_JPEG/%B1%E8%C1%F6%C2%F9HL_-_%BF%AC%C6%D0_%C5%BB%C3%E2%C0%BB_%C0%CC%B2%F6_%B0%E1%BD%C2%C5%B8%C0%C7_%C1%D6%C0%CE%B0%F8.jpg","originalTitle":"김지찬HL - 연패 탈출을 이끈 결승타의 주인공","videoType":"1","upperCategory":"kbaseball","playTime":"02:02","videoMasterId":1080803,"title":"김지찬HL - 연패 탈출을 이끈 결승타의 주인공","category":"kbo","masterVideoId":"9352BEF3DE58A6D42DBE6FC03E0C056CFC55"},{"hit":5496,"thumbnail":"https://sports-phinf.pstatic.net/20230618_146/1687090545570MBlKt_JPEG/19_%C5%B0%BF%F2_vs_%C7%D1%C8%AD11%C8%B8%C3%CA_%27%BF%B5%BE%E7%B0%A1_%B8%B8%C1%A1%27_%C0%CC%C7%FC%C1%BE%C0%C7_%C3%B5%B1%DD%B0%B0%C0%BA_%C0%FB%BD%C3%C5%B8.jpg","originalTitle":"'영양가 만점' 이형종의 천금같은 적시타","videoType":"1","upperCategory":"kbaseball","playTime":"01:42","videoMasterId":1080799,"title":"'영양가 만점' 이형종의 천금같은 적시타","category":"kbo","masterVideoId":"562B21ED207DA1F0F86592E3F09625A5C496"},{"hit":6771,"thumbnail":"https://sports-phinf.pstatic.net/20230618_179/1687089781387tDmof_JPEG/17_%B5%CE%BB%EA_vs_LG9%C8%B8%C3%CA_%277%C0%CC%B4%D7_9K_9%BD%C2%27_%C7%C3%B7%B5%C4%DA%C0%C7_%B9%AB%C6%D0_%C7%E0%C1%F8.jpg","originalTitle":"'7이닝 9K 9승' 플럿코의 무패 행진","videoType":"1","upperCategory":"kbaseball","playTime":"03:53","videoMasterId":1080797,"title":"'7이닝 9K 9승' 플럿코의 무패 행진","category":"kbo","masterVideoId":"15BC70C7406A03AC8E992D20D8B1FC2ECB5E"},{"hit":5624,"thumbnail":"https://sports-phinf.pstatic.net/20230618_119/1687089600004har99_JPEG/%B9%DD%C1%EEHL_-_%C6%C0_%BF%AC%C6%D0%B8%A6_%B2%F7%BE%EE%B3%BD_7%C0%CC%B4%D7_%B9%AB%BD%C7%C1%A1_%BF%AA%C5%F5.jpg","originalTitle":"반즈HL - 팀 연패를 끊어낸 7이닝 무실점 역투","videoType":"1","upperCategory":"kbaseball","playTime":"04:55","videoMasterId":1080796,"title":"반즈HL - 팀 연패를 끊어낸 7이닝 무실점 역투","category":"kbo","masterVideoId":"0F268FD8E4F4E36375654D226B7D47A16CE7"},{"hit":4732,"thumbnail":"https://sports-phinf.pstatic.net/20230618_72/1687089478876gqKjP_JPEG/19_NC_vs_KIA10%C8%B8%C3%CA_%C3%D6%BF%F8%C1%D8%C0%C7_%BD%C7%C3%A5%C0%BB_%B5%A4%B4%C2_%B9%DA%C2%F9%C8%A3-%C8%B2%B5%BF%C7%CF.jpg","originalTitle":"최원준의 실책을 덮는 박찬호-황동하 ","videoType":"1","upperCategory":"kbaseball","playTime":"02:22","videoMasterId":1080793,"title":"최원준의 실책을 덮는 박찬호-황동하 ","category":"kbo","masterVideoId":"0BF712677DE412358365062E833F97B7DA2E"},{"hit":10259,"thumbnail":"https://sports-phinf.pstatic.net/20230618_124/1687089254572kdSY9_JPEG/16_%BB%EF%BC%BA_vs_KT9%C8%B8%B8%BB_%C6%C0%C0%C7_%BD%C2%B8%AE%B7%CE_%B0%E6%B1%E2%B8%A6_%B8%B6%B9%AB%B8%AE_%C1%FE%B4%C2_%C0%CC%BD%C2%C7%F6.jpg","originalTitle":"팀의 승리로 경기를 마무리 짓는 이승현","videoType":"1","upperCategory":"kbaseball","playTime":"01:56","videoMasterId":1080789,"title":"팀의 승리로 경기를 마무리 짓는 이승현","category":"kbo","masterVideoId":"774F6485AA6C0B22649318D00D22679809A4"},{"hit":24493,"thumbnail":"https://sports-phinf.pstatic.net/20230618_1/1687088986474rvXSN_JPEG/%BF%C0%BD%BA%C6%BEHL_-_%C6%AF%B1%DE_%C8%B0%BE%E0_%BA%B8%BF%A9%C1%D8_%BA%B9%B5%A2%C0%CC_%BF%DC%C0%CE_%C5%B8%C0%DA.jpg","originalTitle":"오스틴HL - 특급 활약 보여준 복덩이 외인 타자","videoType":"1","upperCategory":"kbaseball","playTime":"03:21","videoMasterId":1080786,"title":"오스틴HL - 특급 활약 보여준 복덩이 외인 타자","category":"kbo","masterVideoId":"3153C87F2E1A82DC1285443C60DE7E9DEE62"},{"hit":4330,"thumbnail":"https://sports-phinf.pstatic.net/20230618_166/1687088592591G1aja_JPEG/18_%C5%B0%BF%F2_vs_%C7%D1%C8%AD9%C8%B8%B8%BB_%B9%AB%BB%E7_2%B7%E7_%BB%F3%C8%B2%BF%A1%BC%AD_%B5%EE%C6%C7%2C_%C0%CC%B0%C9_%B8%B7%BE%C6%B3%BD_%C0%CC%B8%ED%C1%BE.jpg","originalTitle":"무사 2루 상황에서 등판, 이걸 막아낸 이명종","videoType":"1","upperCategory":"kbaseball","playTime":"04:02","videoMasterId":1080784,"title":"무사 2루 상황에서 등판, 이걸 막아낸 이명종","category":"kbo","masterVideoId":"3546BA5D809FABD49A1BE77B8BF50C066627"},{"hit":12061,"thumbnail":"https://sports-phinf.pstatic.net/20230618_207/1687088609374u3lx0_JPEG/18_NC_vs_KIA9%C8%B8%B8%BB_%C0%CC%BF%EC%BC%BA%2C_%BD%C2%BA%CE%B8%A6_%BF%AC%C0%E5%C0%B8%B7%CE_%C0%CC%B2%F4%B4%C2_%B5%BF%C1%A1_%C0%FB%BD%C3%C5%B8.jpg","originalTitle":"이우성, 승부를 연장으로 이끄는 동점 적시타","videoType":"1","upperCategory":"kbaseball","playTime":"02:10","videoMasterId":1080781,"title":"이우성, 승부를 연장으로 이끄는 동점 적시타","category":"kbo","masterVideoId":"B643CDBD00574EACBFE75BA194950ED52377"},{"hit":6671,"thumbnail":"https://sports-phinf.pstatic.net/20230618_239/1687087854633PGXsw_JPEG/15_%BB%EF%BC%BA_vs_KT8%C8%B8%C3%CA_%C8%B2%C0%E7%B1%D5%C0%C7_%BC%B1%C5%C3%C0%BB_%B9%D9%B2%D9%B0%D4_%C7%D1_%B1%E8%BC%BA%C0%B1%C0%C7_%BA%FC%B8%A5_%C8%A8_%BC%E2%B5%B5.jpg","originalTitle":"황재균의 선택을 바꾸게 한 김성윤의 빠른 홈 쇄도","videoType":"1","upperCategory":"kbaseball","playTime":"03:30","videoMasterId":1080777,"title":"황재균의 선택을 바꾸게 한 김성윤의 빠른 홈 쇄도","category":"kbo","masterVideoId":"A8AE9A65CB68C17359E9908C7BC077056D18"},{"hit":19005,"thumbnail":"https://sports-phinf.pstatic.net/20230618_47/1687087835697SIAua_JPEG/14_%B7%D4%B5%A5_vs_SSG9%C8%B8%B8%BB_%B1%B8%BD%C2%B9%CE%2C_%C8%A3%BC%F6%BA%F1_%B5%B5%BF%F2%C0%B8%B7%CE_%B0%E6%B1%E2_%B8%B6%B9%AB%B8%AE.jpg","originalTitle":"구승민, 호수비 도움으로 경기 마무리","videoType":"1","upperCategory":"kbaseball","playTime":"01:35","videoMasterId":1080776,"title":"구승민, 호수비 도움으로 경기 마무리","category":"kbo","masterVideoId":"5380998D1DC484CBD1B6DA0B300A64198F86"},{"hit":38748,"thumbnail":"https://sports-phinf.pstatic.net/20230618_120/1687087659289Cu0I3_JPEG/17_%C5%B0%BF%F2_vs_%C7%D1%C8%AD9%C8%B8%B8%BB_%27%B7%E7%C5%B0%C0%C7_%B1%D8%C0%FB%C0%CE_%C7%D1_%B9%E6%27_%B9%AE%C7%F6%BA%F3%C0%C7_9%C8%B8%B8%BB_%B5%BF%C1%A1_%C5%F5%B7%B1%C6%F7.jpg","originalTitle":"'루키의 극적인 한 방' 문현빈의 9회말 동점 투런포","videoType":"1","upperCategory":"kbaseball","playTime":"03:30","videoMasterId":1080775,"title":"'루키의 극적인 한 방' 문현빈의 9회말 동점 투런포","category":"kbo","masterVideoId":"D0F0C086A3321371B0D2A86216A57154FD95"},{"hit":18658,"thumbnail":"https://sports-phinf.pstatic.net/20230618_169/1687087069657v7rkO_JPEG/16_%B5%CE%BB%EA_vs_LG9%C8%B8%C3%CA_%C3%D6%B5%BF%C8%AF%2C_%BC%BC_%C5%B8%C0%DA%B7%CE_%B0%E6%B1%E2_%B8%B6%B9%AB%B8%AE.jpg","originalTitle":"최동환, 세 타자로 경기 마무리","videoType":"1","upperCategory":"kbaseball","playTime":"01:14","videoMasterId":1080769,"title":"최동환, 세 타자로 경기 마무리","category":"kbo","masterVideoId":"9F086E48CE1FE5FE9CE3928155487839090E"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_meta","firstData":{"dataId":1581907530482,"isEnable":"Y","title":"주요장면","type":"type|1|주요장면","videoList":[{"hit":10953,"thumbnail":"https://sports-phinf.pstatic.net/20230618_93/1687093677581l4He6_JPEG/%C0%CC%BF%EC%BC%BAHL_-_9%C8%B8%B8%BB_%B1%D8%C0%FB%C0%CE_%B5%BF%C1%A1_2%B7%E7%C5%B8_%C0%DB%B7%C4.jpg","originalTitle":"이우성HL - 9회말 극적인 동점 2루타 작렬","videoType":"1","upperCategory":"kbaseball","playTime":"01:57","videoMasterId":1080820,"title":"이우성HL - 9회말 극적인 동점 2루타 작렬","category":"kbo","masterVideoId":"17063B18399112EC5AC89D2CF060E0593C9C"},{"hit":3691,"thumbnail":"https://sports-phinf.pstatic.net/20230618_34/16870935433927AcPm_JPEG/%C0%CC%B8%ED%C1%BEHL_-_%C6%C0%C0%BB_%C6%D0%B9%E8%C0%C7_%C0%A7%B1%E2%BF%A1%BC%AD_%B1%B8%C7%D8%B3%BD_%27%B0%AD%BD%C9%C0%E5%27.jpg","originalTitle":"이명종HL - 팀을 패배의 위기에서 구해낸 '강심장'","videoType":"1","upperCategory":"kbaseball","playTime":"02:20","videoMasterId":1080819,"title":"이명종HL - 팀을 패배의 위기에서 구해낸 '강심장'","category":"kbo","masterVideoId":"47815762A4ADBAAD381671714DD2B8E8E1AF"},{"hit":5864,"thumbnail":"https://sports-phinf.pstatic.net/20230618_271/1687092941371vsSGK_JPEG/22_NC_vs_KIA12%C8%B8%B8%BB_%B9%AB%BD%C2%BA%CE%B7%CE_%B0%E6%B1%E2%B8%A6_%B3%A1%B3%BB%B4%C2_%C0%FC%BB%E7%B9%CE.jpg","originalTitle":"무승부로 경기를 끝내는 전사민","videoType":"1","upperCategory":"kbaseball","playTime":"01:11","videoMasterId":1080817,"title":"무승부로 경기를 끝내는 전사민","category":"kbo","masterVideoId":"552D77A0519D2C7E4E910378DB39C0648C08"},{"hit":3928,"thumbnail":"https://sports-phinf.pstatic.net/20230618_225/1687092585919SS8Ce_JPEG/21_NC_vs_KIA12%C8%B8%C3%CA_%C0%B1%C1%DF%C7%F6%2C_%B9%AB%BB%E7_1%2C_2%B7%E7_%B9%FE%BE%EE%B3%AA%B8%E7_%BD%C7%C1%A1_%C0%A7%B1%E2_%C5%BB%C3%E2.jpg","originalTitle":"윤중현, 무사 1, 2루 벗어나며 실점 위기 탈출 ","videoType":"1","upperCategory":"kbaseball","playTime":"01:44","videoMasterId":1080816,"title":"윤중현, 무사 1, 2루 벗어나며 실점 위기 탈출 ","category":"kbo","masterVideoId":"A1AEBC78AE731E42D13EF7E23853C12B56AE"},{"hit":6622,"thumbnail":"https://sports-phinf.pstatic.net/20230618_249/1687091876614pt9Y5_JPEG/21_%C5%B0%BF%F2_vs_%C7%D1%C8%AD11%C8%B8%B8%BB_%B1%E8%BC%B1%B1%E2%2C_%BF%AC%C0%E5_%C7%F7%C5%F5%B8%A6_%B8%B6%B9%AB%B8%AE_%C1%FE%B4%C2_KKK.jpg","originalTitle":"김선기, 연장 혈투를 마무리 짓는 KKK","videoType":"1","upperCategory":"kbaseball","playTime":"03:52","videoMasterId":1080812,"title":"김선기, 연장 혈투를 마무리 짓는 KKK","category":"kbo","masterVideoId":"C921DC72DC85E7D2B4ADA26D7F39FD5EFBC1"},{"hit":4128,"thumbnail":"https://sports-phinf.pstatic.net/20230618_117/1687091863749E8UBT_JPEG/20_%C5%B0%BF%F2_vs_%C7%D1%C8%AD11%C8%B8%B8%BB_%B0%F8_%C1%DD%B4%D9%B0%A1_%B9%DA%C1%A4%C7%F6%C0%C7_%B9%E8%C6%AE%BF%A1_%B8%C2%BE%C6%B9%F6%B8%B0_%B1%E8%B5%BF%C7%E5.jpg","originalTitle":"공 줍다가 박정현의 배트에 맞아버린 김동헌","videoType":"1","upperCategory":"kbaseball","playTime":"01:01","videoMasterId":1080809,"title":"공 줍다가 박정현의 배트에 맞아버린 김동헌","category":"kbo","masterVideoId":"F96730112DFB971C84A4368977114FE19713"},{"hit":1369,"thumbnail":"https://sports-phinf.pstatic.net/20230618_90/16870914701906XRmE_JPEG/20_NC_vs_KIA11%C8%B8%B8%BB_%C0%FC%BB%E7%B9%CE%2C_%B0%DF%C1%A6_%BD%C7%C3%A5_%C7%DF%C0%B8%B3%AA_%B9%AB%BD%C7%C1%A1_%C7%C7%C4%AA.jpg","originalTitle":"전사민, 견제 실책 했으나 무실점 피칭","videoType":"1","upperCategory":"kbaseball","playTime":"01:31","videoMasterId":1080807,"title":"전사민, 견제 실책 했으나 무실점 피칭","category":"kbo","masterVideoId":"4E1436F8ABD92B9BF20E725B272FEAE4F646"},{"hit":5209,"thumbnail":"https://sports-phinf.pstatic.net/20230618_43/1687090988114gzjsd_JPEG/%B1%E8%C1%F6%C2%F9HL_-_%BF%AC%C6%D0_%C5%BB%C3%E2%C0%BB_%C0%CC%B2%F6_%B0%E1%BD%C2%C5%B8%C0%C7_%C1%D6%C0%CE%B0%F8.jpg","originalTitle":"김지찬HL - 연패 탈출을 이끈 결승타의 주인공","videoType":"1","upperCategory":"kbaseball","playTime":"02:02","videoMasterId":1080803,"title":"김지찬HL - 연패 탈출을 이끈 결승타의 주인공","category":"kbo","masterVideoId":"9352BEF3DE58A6D42DBE6FC03E0C056CFC55"},{"hit":5496,"thumbnail":"https://sports-phinf.pstatic.net/20230618_146/1687090545570MBlKt_JPEG/19_%C5%B0%BF%F2_vs_%C7%D1%C8%AD11%C8%B8%C3%CA_%27%BF%B5%BE%E7%B0%A1_%B8%B8%C1%A1%27_%C0%CC%C7%FC%C1%BE%C0%C7_%C3%B5%B1%DD%B0%B0%C0%BA_%C0%FB%BD%C3%C5%B8.jpg","originalTitle":"'영양가 만점' 이형종의 천금같은 적시타","videoType":"1","upperCategory":"kbaseball","playTime":"01:42","videoMasterId":1080799,"title":"'영양가 만점' 이형종의 천금같은 적시타","category":"kbo","masterVideoId":"562B21ED207DA1F0F86592E3F09625A5C496"},{"hit":6771,"thumbnail":"https://sports-phinf.pstatic.net/20230618_179/1687089781387tDmof_JPEG/17_%B5%CE%BB%EA_vs_LG9%C8%B8%C3%CA_%277%C0%CC%B4%D7_9K_9%BD%C2%27_%C7%C3%B7%B5%C4%DA%C0%C7_%B9%AB%C6%D0_%C7%E0%C1%F8.jpg","originalTitle":"'7이닝 9K 9승' 플럿코의 무패 행진","videoType":"1","upperCategory":"kbaseball","playTime":"03:53","videoMasterId":1080797,"title":"'7이닝 9K 9승' 플럿코의 무패 행진","category":"kbo","masterVideoId":"15BC70C7406A03AC8E992D20D8B1FC2ECB5E"},{"hit":5624,"thumbnail":"https://sports-phinf.pstatic.net/20230618_119/1687089600004har99_JPEG/%B9%DD%C1%EEHL_-_%C6%C0_%BF%AC%C6%D0%B8%A6_%B2%F7%BE%EE%B3%BD_7%C0%CC%B4%D7_%B9%AB%BD%C7%C1%A1_%BF%AA%C5%F5.jpg","originalTitle":"반즈HL - 팀 연패를 끊어낸 7이닝 무실점 역투","videoType":"1","upperCategory":"kbaseball","playTime":"04:55","videoMasterId":1080796,"title":"반즈HL - 팀 연패를 끊어낸 7이닝 무실점 역투","category":"kbo","masterVideoId":"0F268FD8E4F4E36375654D226B7D47A16CE7"},{"hit":4732,"thumbnail":"https://sports-phinf.pstatic.net/20230618_72/1687089478876gqKjP_JPEG/19_NC_vs_KIA10%C8%B8%C3%CA_%C3%D6%BF%F8%C1%D8%C0%C7_%BD%C7%C3%A5%C0%BB_%B5%A4%B4%C2_%B9%DA%C2%F9%C8%A3-%C8%B2%B5%BF%C7%CF.jpg","originalTitle":"최원준의 실책을 덮는 박찬호-황동하 ","videoType":"1","upperCategory":"kbaseball","playTime":"02:22","videoMasterId":1080793,"title":"최원준의 실책을 덮는 박찬호-황동하 ","category":"kbo","masterVideoId":"0BF712677DE412358365062E833F97B7DA2E"},{"hit":10259,"thumbnail":"https://sports-phinf.pstatic.net/20230618_124/1687089254572kdSY9_JPEG/16_%BB%EF%BC%BA_vs_KT9%C8%B8%B8%BB_%C6%C0%C0%C7_%BD%C2%B8%AE%B7%CE_%B0%E6%B1%E2%B8%A6_%B8%B6%B9%AB%B8%AE_%C1%FE%B4%C2_%C0%CC%BD%C2%C7%F6.jpg","originalTitle":"팀의 승리로 경기를 마무리 짓는 이승현","videoType":"1","upperCategory":"kbaseball","playTime":"01:56","videoMasterId":1080789,"title":"팀의 승리로 경기를 마무리 짓는 이승현","category":"kbo","masterVideoId":"774F6485AA6C0B22649318D00D22679809A4"},{"hit":24493,"thumbnail":"https://sports-phinf.pstatic.net/20230618_1/1687088986474rvXSN_JPEG/%BF%C0%BD%BA%C6%BEHL_-_%C6%AF%B1%DE_%C8%B0%BE%E0_%BA%B8%BF%A9%C1%D8_%BA%B9%B5%A2%C0%CC_%BF%DC%C0%CE_%C5%B8%C0%DA.jpg","originalTitle":"오스틴HL - 특급 활약 보여준 복덩이 외인 타자","videoType":"1","upperCategory":"kbaseball","playTime":"03:21","videoMasterId":1080786,"title":"오스틴HL - 특급 활약 보여준 복덩이 외인 타자","category":"kbo","masterVideoId":"3153C87F2E1A82DC1285443C60DE7E9DEE62"},{"hit":4330,"thumbnail":"https://sports-phinf.pstatic.net/20230618_166/1687088592591G1aja_JPEG/18_%C5%B0%BF%F2_vs_%C7%D1%C8%AD9%C8%B8%B8%BB_%B9%AB%BB%E7_2%B7%E7_%BB%F3%C8%B2%BF%A1%BC%AD_%B5%EE%C6%C7%2C_%C0%CC%B0%C9_%B8%B7%BE%C6%B3%BD_%C0%CC%B8%ED%C1%BE.jpg","originalTitle":"무사 2루 상황에서 등판, 이걸 막아낸 이명종","videoType":"1","upperCategory":"kbaseball","playTime":"04:02","videoMasterId":1080784,"title":"무사 2루 상황에서 등판, 이걸 막아낸 이명종","category":"kbo","masterVideoId":"3546BA5D809FABD49A1BE77B8BF50C066627"},{"hit":12061,"thumbnail":"https://sports-phinf.pstatic.net/20230618_207/1687088609374u3lx0_JPEG/18_NC_vs_KIA9%C8%B8%B8%BB_%C0%CC%BF%EC%BC%BA%2C_%BD%C2%BA%CE%B8%A6_%BF%AC%C0%E5%C0%B8%B7%CE_%C0%CC%B2%F4%B4%C2_%B5%BF%C1%A1_%C0%FB%BD%C3%C5%B8.jpg","originalTitle":"이우성, 승부를 연장으로 이끄는 동점 적시타","videoType":"1","upperCategory":"kbaseball","playTime":"02:10","videoMasterId":1080781,"title":"이우성, 승부를 연장으로 이끄는 동점 적시타","category":"kbo","masterVideoId":"B643CDBD00574EACBFE75BA194950ED52377"},{"hit":6671,"thumbnail":"https://sports-phinf.pstatic.net/20230618_239/1687087854633PGXsw_JPEG/15_%BB%EF%BC%BA_vs_KT8%C8%B8%C3%CA_%C8%B2%C0%E7%B1%D5%C0%C7_%BC%B1%C5%C3%C0%BB_%B9%D9%B2%D9%B0%D4_%C7%D1_%B1%E8%BC%BA%C0%B1%C0%C7_%BA%FC%B8%A5_%C8%A8_%BC%E2%B5%B5.jpg","originalTitle":"황재균의 선택을 바꾸게 한 김성윤의 빠른 홈 쇄도","videoType":"1","upperCategory":"kbaseball","playTime":"03:30","videoMasterId":1080777,"title":"황재균의 선택을 바꾸게 한 김성윤의 빠른 홈 쇄도","category":"kbo","masterVideoId":"A8AE9A65CB68C17359E9908C7BC077056D18"},{"hit":19005,"thumbnail":"https://sports-phinf.pstatic.net/20230618_47/1687087835697SIAua_JPEG/14_%B7%D4%B5%A5_vs_SSG9%C8%B8%B8%BB_%B1%B8%BD%C2%B9%CE%2C_%C8%A3%BC%F6%BA%F1_%B5%B5%BF%F2%C0%B8%B7%CE_%B0%E6%B1%E2_%B8%B6%B9%AB%B8%AE.jpg","originalTitle":"구승민, 호수비 도움으로 경기 마무리","videoType":"1","upperCategory":"kbaseball","playTime":"01:35","videoMasterId":1080776,"title":"구승민, 호수비 도움으로 경기 마무리","category":"kbo","masterVideoId":"5380998D1DC484CBD1B6DA0B300A64198F86"},{"hit":38748,"thumbnail":"https://sports-phinf.pstatic.net/20230618_120/1687087659289Cu0I3_JPEG/17_%C5%B0%BF%F2_vs_%C7%D1%C8%AD9%C8%B8%B8%BB_%27%B7%E7%C5%B0%C0%C7_%B1%D8%C0%FB%C0%CE_%C7%D1_%B9%E6%27_%B9%AE%C7%F6%BA%F3%C0%C7_9%C8%B8%B8%BB_%B5%BF%C1%A1_%C5%F5%B7%B1%C6%F7.jpg","originalTitle":"'루키의 극적인 한 방' 문현빈의 9회말 동점 투런포","videoType":"1","upperCategory":"kbaseball","playTime":"03:30","videoMasterId":1080775,"title":"'루키의 극적인 한 방' 문현빈의 9회말 동점 투런포","category":"kbo","masterVideoId":"D0F0C086A3321371B0D2A86216A57154FD95"},{"hit":18658,"thumbnail":"https://sports-phinf.pstatic.net/20230618_169/1687087069657v7rkO_JPEG/16_%B5%CE%BB%EA_vs_LG9%C8%B8%C3%CA_%C3%D6%B5%BF%C8%AF%2C_%BC%BC_%C5%B8%C0%DA%B7%CE_%B0%E6%B1%E2_%B8%B6%B9%AB%B8%AE.jpg","originalTitle":"최동환, 세 타자로 경기 마무리","videoType":"1","upperCategory":"kbaseball","playTime":"01:14","videoMasterId":1080769,"title":"최동환, 세 타자로 경기 마무리","category":"kbo","masterVideoId":"9F086E48CE1FE5FE9CE3928155487839090E"}]},"dataSetForm":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},{"menuId":null,"itemId":"1576564873292","isEnable":"Y","title":"인기","displayOrder":null,"score":0.0,"templateId":"pc_center_video_ranking","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1576564873292","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_ranking","templateName":"종목홈 영상리스트 (인기)","dataSetId":"pc/center_video_ranking","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_ranking"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1576564876466,"isEnable":"Y","title":"인기","videoList":[{"rank":1,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080596","masterVideoId":"33813BCD3DC494FC4D1651918E8BBD2DD31C","title":"동업자 정신이 빛난 양의지의 대처 #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230618_114/1687040000200xTYoy_JPEG/%B5%BF%BE%F7%C0%DA_%C1%A4%BD%C5%C0%CC_%BA%FB%B3%AD_%BE%E7%C0%C7%C1%F6%C0%C7_%B4%EB%C3%B3_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:56","clipNo":null,"cnt":30017,"hit":145551,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:56<i class=\"u_hc\">초</i>"},{"rank":2,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080833","masterVideoId":"1B989B3BD0821F3BFEAB0A6DD4AD13278429","title":"'오스틴, 이 남자 정말 사랑하지 않을 수 없다!' [7AM]","thumbnail":"https://sports-phinf.pstatic.net/20230619_155/16871212879420My3f_JPEG/00.jpg","type":"kbooriginal","videoType":"kbooriginal","division":"","season":"633","iconType":"video","playTime":"02:49","clipNo":null,"cnt":26816,"hit":43239,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"02<i class=\"u_hc\">분</i>:49<i class=\"u_hc\">초</i>"},{"rank":3,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080834","masterVideoId":"BE63AA7E40838682F21856E9BE4B1EE33E3D","title":"'이런 적은 없었다!' 실책으로 무너진 두산의 자멸 야구 [7AM]","thumbnail":"https://sports-phinf.pstatic.net/20230619_263/1687121938270HdT9D_JPEG/%C0%DA%B8%EA_%BE%DF%B1%B8.jpg","type":"kbooriginal","videoType":"kbooriginal","division":"","season":"","iconType":"video","playTime":"02:08","clipNo":null,"cnt":24509,"hit":37551,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"02<i class=\"u_hc\">분</i>:08<i class=\"u_hc\">초</i>"},{"rank":4,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080778","masterVideoId":"29559357E6B3B92544B2C32BECB154C8C25A","title":"[전체HL] '19안타 15득점+플럿코 9승' LG, 두산 상대 위닝시리즈","thumbnail":"https://sports-phinf.pstatic.net/20230618_110/16870875949127l6bQ_JPEG/%C0%FC%C3%BCHL_-_%2719%BE%C8%C5%B8_15%B5%E6%C1%A1%2B%C7%C3%B7%B5%C4%DA_9%BD%C2%27_LG%2C_%B5%CE%BB%EA_%BB%F3%B4%EB_%C0%A7%B4%D7%BD%C3%B8%AE%C1%EE.jpg","type":"2","videoType":"2","division":"","season":"","iconType":"video","playTime":"09:51","clipNo":null,"cnt":18760,"hit":95514,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"09<i class=\"u_hc\">분</i>:51<i class=\"u_hc\">초</i>"},{"rank":5,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080827","masterVideoId":"EE62843C23D39DA506EE319896219C9FBE22","title":"가짜 광기 vs 진짜 광기 #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230619_117/1687107097941AwzBa_JPEG/%B0%A1%C2%A5%B1%A4%B1%E2_vs_%C1%F8%C2%A5%B1%A4%B1%E2_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:18","clipNo":null,"cnt":18043,"hit":20986,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:18<i class=\"u_hc\">초</i>"},{"rank":6,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080878","masterVideoId":"9566DB897638BB6DDE5281E760F310062BC7","title":"벤치클리어링 사건의 '전말 공개!' [위클리]","thumbnail":"https://sports-phinf.pstatic.net/20230618_169/1687074441340ylHIa_JPEG/%BA%A5%C4%A1%C5%AC%B8%AE%BE%EE%B8%B5_%27%BB%E7%B0%C7%C0%C7_%C0%FC%B8%BB_%B0%F8%B0%B3%27_%C0%A7%C5%AC%B8%AE.jpg","type":"kbooriginal","videoType":"kbooriginal","division":"","season":"","iconType":"video","playTime":"02:55","clipNo":null,"cnt":16291,"hit":32946,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"02<i class=\"u_hc\">분</i>:55<i class=\"u_hc\">초</i>"},{"rank":7,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080783","masterVideoId":"29DC39E91F840148FB48240E3A71C91524BE","title":"[전체HL] '쌍동희 5안타+반즈 7이닝 무실점' 롯데, SSG 꺾고 연패 탈출 ","thumbnail":"https://sports-phinf.pstatic.net/20230618_170/1687088273862M04GV_JPEG/%C0%FC%C3%BCHL_-_%27%BD%D6%B5%BF%C8%F1_5%BE%C8%C5%B8%2B%B9%DD%C1%EE_7%C0%CC%B4%D7_%B9%AB%BD%C7%C1%A1%27_%B7%D4%B5%A5%2C_SSG_%B2%AA%B0%ED_%BF%AC%C6%D0_%C5%BB%C3%E2.jpg","type":"2","videoType":"2","division":"","season":"","iconType":"video","playTime":"10:15","clipNo":null,"cnt":14859,"hit":68209,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"10<i class=\"u_hc\">분</i>:15<i class=\"u_hc\">초</i>"},{"rank":8,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080821","masterVideoId":"F0B667936DFF51FEA0DB379C7C4CE9085D86","title":"[전체HL] NC-KIA, 연장 접전 끝에 무승부","thumbnail":"https://sports-phinf.pstatic.net/20230618_183/1687093663217SMkdR_JPEG/%C0%FC%C3%BCHL_-_NC-KIA%2C_%BF%AC%C0%E5_%C1%A2%C0%FC_%B3%A1%BF%A1_%B9%AB%BD%C2%BA%CE.jpg","type":"2","videoType":"2","division":"","season":"","iconType":"video","playTime":"13:05","clipNo":null,"cnt":11993,"hit":32237,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"13<i class=\"u_hc\">분</i>:05<i class=\"u_hc\">초</i>"},{"rank":9,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080341","masterVideoId":"6BD3633ADCA0130F44F1A1F9C4B3F1CB3996","title":"처음보는 돌부처의 극대노 #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230617_263/1686941395546vLYjN_JPEG/%C3%B3%C0%BD%BA%B8%B4%C2_%B5%B9%BA%CE%C3%B3%C0%C7_%B1%D8%B4%EB%B3%EB_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:55","clipNo":null,"cnt":8934,"hit":181856,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:55<i class=\"u_hc\">초</i>"},{"rank":10,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080798","masterVideoId":"5C5BB340877DEA79DB9857707F7CE007402B","title":"[전체HL] '김지찬 결승타+이재현 3안타' 삼성, KT 꺾고 5연패 탈출","thumbnail":"https://sports-phinf.pstatic.net/20230618_274/1687090000687MzwTF_JPEG/%C0%FC%C3%BCHL_-_%27%B1%E8%C1%F6%C2%F9_%B0%E1%BD%C2%C5%B8%2B%C0%CC%C0%E7%C7%F6_3%BE%C8%C5%B8%27_%BB%EF%BC%BA%2C_KT_%B2%AA%B0%ED_5%BF%AC%C6%D0_%C5%BB%C3%E2.jpg","type":"2","videoType":"2","division":"","season":"","iconType":"video","playTime":"10:30","clipNo":null,"cnt":8016,"hit":36576,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"10<i class=\"u_hc\">분</i>:30<i class=\"u_hc\">초</i>"},{"rank":11,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080818","masterVideoId":"47706053A2664DC67D1E6F850D20745D59CD","title":"[전체HL] '이형종 결승타' 키움, 한화 상대로 연장 승부 끝에 승리","thumbnail":"https://sports-phinf.pstatic.net/20230618_194/1687092841981nYifD_JPEG/%C0%FC%C3%BCHL_-_%27%C0%CC%C7%FC%C1%BE_%B0%E1%BD%C2%C5%B8%27_%C5%B0%BF%F2%2C_%C7%D1%C8%AD_%BB%F3%B4%EB%B7%CE_%BF%AC%C0%E5_%BD%C2%BA%CE_%B3%A1%BF%A1_%BD%C2%B8%AE.jpg","type":"2","videoType":"2","division":"","season":"","iconType":"video","playTime":"11:01","clipNo":null,"cnt":7292,"hit":23052,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"11<i class=\"u_hc\">분</i>:01<i class=\"u_hc\">초</i>"},{"rank":12,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080696","masterVideoId":"AA2BA7F77AAFC0ABC6711C657F61ADCAC6FD","title":"LG 외인 최초! 인사이드 파크 홈런 #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230618_112/1687079663612t555X_JPEG/LG_%C3%D6%C3%CA_%BF%DC%C0%CE_%C0%CE%BB%E7%C0%CC%B5%E5_%C6%C4%C5%A9_%C8%A8%B7%B1_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:23","clipNo":null,"cnt":6928,"hit":66258,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:23<i class=\"u_hc\">초</i>"},{"rank":13,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080692","masterVideoId":"9295C500288A359C2126E3FC0321E6AF3497","title":"오스틴, 거침없는 질주로 인사이드 더 파크 홈런","thumbnail":"https://sports-phinf.pstatic.net/20230618_198/1687079129779LGhwg_JPEG/6_%B5%CE%BB%EA_vs_LG2%C8%B8%B8%BB_%BF%C0%BD%BA%C6%BE%2C_%B0%C5%C4%A7%BE%F8%B4%C2_%C1%FA%C1%D6%B7%CE_%C0%CE%BB%E7%C0%CC%B5%E5_%B4%F5_%C6%C4%C5%A9_%C8%A8%B7%B1.jpg","type":"1","videoType":"1","division":"23","season":"","iconType":"video","playTime":"01:55","clipNo":null,"cnt":6537,"hit":92132,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"01<i class=\"u_hc\">분</i>:55<i class=\"u_hc\">초</i>"},{"rank":14,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080735","masterVideoId":"B28BF17042034F11F6B2E3A92ED2C0D47010","title":"’부상 조심’ 2루에서의 충돌 #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230618_92/1687083648681DvHJB_JPEG/%A1%AF%BA%CE%BB%F3_%C1%B6%BD%C9%A1%AF_2%B7%E7%BF%A1%BC%AD%C0%C7_%C3%E6%B5%B9_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:42","clipNo":null,"cnt":5461,"hit":16830,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:42<i class=\"u_hc\">초</i>"},{"rank":15,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080829","masterVideoId":"663DCB5171B14253C65ABB16F34AC9175D92","title":"벌써부터 고통받는 롯린이 #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230619_178/1687113644925JU3Kl_JPEG/%B9%FA%BD%E1%BA%CE%C5%CD_%B0%ED%C5%EB%B9%DE%B4%C2_%B7%D4%B8%B0%C0%CC_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:31","clipNo":null,"cnt":4389,"hit":5176,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:31<i class=\"u_hc\">초</i>"},{"rank":16,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080775","masterVideoId":"D0F0C086A3321371B0D2A86216A57154FD95","title":"'루키의 극적인 한 방' 문현빈의 9회말 동점 투런포","thumbnail":"https://sports-phinf.pstatic.net/20230618_120/1687087659289Cu0I3_JPEG/17_%C5%B0%BF%F2_vs_%C7%D1%C8%AD9%C8%B8%B8%BB_%27%B7%E7%C5%B0%C0%C7_%B1%D8%C0%FB%C0%CE_%C7%D1_%B9%E6%27_%B9%AE%C7%F6%BA%F3%C0%C7_9%C8%B8%B8%BB_%B5%BF%C1%A1_%C5%F5%B7%B1%C6%F7.jpg","type":"1","videoType":"1","division":"23","season":"","iconType":"video","playTime":"03:30","clipNo":null,"cnt":4063,"hit":38748,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"03<i class=\"u_hc\">분</i>:30<i class=\"u_hc\">초</i>"},{"rank":17,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080769","masterVideoId":"9F086E48CE1FE5FE9CE3928155487839090E","title":"최동환, 세 타자로 경기 마무리","thumbnail":"https://sports-phinf.pstatic.net/20230618_169/1687087069657v7rkO_JPEG/16_%B5%CE%BB%EA_vs_LG9%C8%B8%C3%CA_%C3%D6%B5%BF%C8%AF%2C_%BC%BC_%C5%B8%C0%DA%B7%CE_%B0%E6%B1%E2_%B8%B6%B9%AB%B8%AE.jpg","type":"1","videoType":"1","division":"17","season":"","iconType":"video","playTime":"01:14","clipNo":null,"cnt":3808,"hit":18658,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"01<i class=\"u_hc\">분</i>:14<i class=\"u_hc\">초</i>"},{"rank":18,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080468","masterVideoId":"0E778D4F410577C69E300298BD90FA246E42","title":"목에 공을 맞고 쓰러지지만 다시 일어선 허도환","thumbnail":"https://sports-phinf.pstatic.net/20230617_250/1686992505321pxIx8_JPEG/5_%B5%CE%BB%EA_vs_LG3%C8%B8%C3%CA_%B8%F1%BF%A1_%B0%F8%C0%BB_%B8%C2%B0%ED_%BE%B2%B7%AF%C1%F6%C1%F6%B8%B8_%B4%D9%BD%C3_%C0%CF%BE%EE%BC%B1_%C7%E3%B5%B5%C8%AF.jpg","type":"1","videoType":"1","division":"22","season":"","iconType":"video","playTime":"02:13","clipNo":null,"cnt":3792,"hit":78106,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"02<i class=\"u_hc\">분</i>:13<i class=\"u_hc\">초</i>"},{"rank":19,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080776","masterVideoId":"5380998D1DC484CBD1B6DA0B300A64198F86","title":"구승민, 호수비 도움으로 경기 마무리","thumbnail":"https://sports-phinf.pstatic.net/20230618_47/1687087835697SIAua_JPEG/14_%B7%D4%B5%A5_vs_SSG9%C8%B8%B8%BB_%B1%B8%BD%C2%B9%CE%2C_%C8%A3%BC%F6%BA%F1_%B5%B5%BF%F2%C0%B8%B7%CE_%B0%E6%B1%E2_%B8%B6%B9%AB%B8%AE.jpg","type":"1","videoType":"1","division":"16","season":"","iconType":"video","playTime":"01:35","clipNo":null,"cnt":3756,"hit":19005,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"01<i class=\"u_hc\">분</i>:35<i class=\"u_hc\">초</i>"},{"rank":20,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080340","masterVideoId":"814F8B34052BD6A97A0518D00D22679809A4","title":"어서와! K벤클은 처음이지? #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230617_139/1686937202395UcTYy_JPEG/%BE%EE%BC%AD%BF%CD_K%BA%A5%C5%AC%C0%BA_%C3%B3%C0%BD%C0%CC%C1%F6_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:45","clipNo":null,"cnt":3731,"hit":84528,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:45<i class=\"u_hc\">초</i>"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"인기 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_ranking","firstData":{"dataId":1576564876466,"isEnable":"Y","title":"인기","videoList":[{"rank":1,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080596","masterVideoId":"33813BCD3DC494FC4D1651918E8BBD2DD31C","title":"동업자 정신이 빛난 양의지의 대처 #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230618_114/1687040000200xTYoy_JPEG/%B5%BF%BE%F7%C0%DA_%C1%A4%BD%C5%C0%CC_%BA%FB%B3%AD_%BE%E7%C0%C7%C1%F6%C0%C7_%B4%EB%C3%B3_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:56","clipNo":null,"cnt":30017,"hit":145551,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:56<i class=\"u_hc\">초</i>"},{"rank":2,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080833","masterVideoId":"1B989B3BD0821F3BFEAB0A6DD4AD13278429","title":"'오스틴, 이 남자 정말 사랑하지 않을 수 없다!' [7AM]","thumbnail":"https://sports-phinf.pstatic.net/20230619_155/16871212879420My3f_JPEG/00.jpg","type":"kbooriginal","videoType":"kbooriginal","division":"","season":"633","iconType":"video","playTime":"02:49","clipNo":null,"cnt":26816,"hit":43239,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"02<i class=\"u_hc\">분</i>:49<i class=\"u_hc\">초</i>"},{"rank":3,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080834","masterVideoId":"BE63AA7E40838682F21856E9BE4B1EE33E3D","title":"'이런 적은 없었다!' 실책으로 무너진 두산의 자멸 야구 [7AM]","thumbnail":"https://sports-phinf.pstatic.net/20230619_263/1687121938270HdT9D_JPEG/%C0%DA%B8%EA_%BE%DF%B1%B8.jpg","type":"kbooriginal","videoType":"kbooriginal","division":"","season":"","iconType":"video","playTime":"02:08","clipNo":null,"cnt":24509,"hit":37551,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"02<i class=\"u_hc\">분</i>:08<i class=\"u_hc\">초</i>"},{"rank":4,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080778","masterVideoId":"29559357E6B3B92544B2C32BECB154C8C25A","title":"[전체HL] '19안타 15득점+플럿코 9승' LG, 두산 상대 위닝시리즈","thumbnail":"https://sports-phinf.pstatic.net/20230618_110/16870875949127l6bQ_JPEG/%C0%FC%C3%BCHL_-_%2719%BE%C8%C5%B8_15%B5%E6%C1%A1%2B%C7%C3%B7%B5%C4%DA_9%BD%C2%27_LG%2C_%B5%CE%BB%EA_%BB%F3%B4%EB_%C0%A7%B4%D7%BD%C3%B8%AE%C1%EE.jpg","type":"2","videoType":"2","division":"","season":"","iconType":"video","playTime":"09:51","clipNo":null,"cnt":18760,"hit":95514,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"09<i class=\"u_hc\">분</i>:51<i class=\"u_hc\">초</i>"},{"rank":5,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080827","masterVideoId":"EE62843C23D39DA506EE319896219C9FBE22","title":"가짜 광기 vs 진짜 광기 #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230619_117/1687107097941AwzBa_JPEG/%B0%A1%C2%A5%B1%A4%B1%E2_vs_%C1%F8%C2%A5%B1%A4%B1%E2_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:18","clipNo":null,"cnt":18043,"hit":20986,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:18<i class=\"u_hc\">초</i>"},{"rank":6,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080878","masterVideoId":"9566DB897638BB6DDE5281E760F310062BC7","title":"벤치클리어링 사건의 '전말 공개!' [위클리]","thumbnail":"https://sports-phinf.pstatic.net/20230618_169/1687074441340ylHIa_JPEG/%BA%A5%C4%A1%C5%AC%B8%AE%BE%EE%B8%B5_%27%BB%E7%B0%C7%C0%C7_%C0%FC%B8%BB_%B0%F8%B0%B3%27_%C0%A7%C5%AC%B8%AE.jpg","type":"kbooriginal","videoType":"kbooriginal","division":"","season":"","iconType":"video","playTime":"02:55","clipNo":null,"cnt":16291,"hit":32946,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"02<i class=\"u_hc\">분</i>:55<i class=\"u_hc\">초</i>"},{"rank":7,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080783","masterVideoId":"29DC39E91F840148FB48240E3A71C91524BE","title":"[전체HL] '쌍동희 5안타+반즈 7이닝 무실점' 롯데, SSG 꺾고 연패 탈출 ","thumbnail":"https://sports-phinf.pstatic.net/20230618_170/1687088273862M04GV_JPEG/%C0%FC%C3%BCHL_-_%27%BD%D6%B5%BF%C8%F1_5%BE%C8%C5%B8%2B%B9%DD%C1%EE_7%C0%CC%B4%D7_%B9%AB%BD%C7%C1%A1%27_%B7%D4%B5%A5%2C_SSG_%B2%AA%B0%ED_%BF%AC%C6%D0_%C5%BB%C3%E2.jpg","type":"2","videoType":"2","division":"","season":"","iconType":"video","playTime":"10:15","clipNo":null,"cnt":14859,"hit":68209,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"10<i class=\"u_hc\">분</i>:15<i class=\"u_hc\">초</i>"},{"rank":8,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080821","masterVideoId":"F0B667936DFF51FEA0DB379C7C4CE9085D86","title":"[전체HL] NC-KIA, 연장 접전 끝에 무승부","thumbnail":"https://sports-phinf.pstatic.net/20230618_183/1687093663217SMkdR_JPEG/%C0%FC%C3%BCHL_-_NC-KIA%2C_%BF%AC%C0%E5_%C1%A2%C0%FC_%B3%A1%BF%A1_%B9%AB%BD%C2%BA%CE.jpg","type":"2","videoType":"2","division":"","season":"","iconType":"video","playTime":"13:05","clipNo":null,"cnt":11993,"hit":32237,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"13<i class=\"u_hc\">분</i>:05<i class=\"u_hc\">초</i>"},{"rank":9,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080341","masterVideoId":"6BD3633ADCA0130F44F1A1F9C4B3F1CB3996","title":"처음보는 돌부처의 극대노 #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230617_263/1686941395546vLYjN_JPEG/%C3%B3%C0%BD%BA%B8%B4%C2_%B5%B9%BA%CE%C3%B3%C0%C7_%B1%D8%B4%EB%B3%EB_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:55","clipNo":null,"cnt":8934,"hit":181856,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:55<i class=\"u_hc\">초</i>"},{"rank":10,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080798","masterVideoId":"5C5BB340877DEA79DB9857707F7CE007402B","title":"[전체HL] '김지찬 결승타+이재현 3안타' 삼성, KT 꺾고 5연패 탈출","thumbnail":"https://sports-phinf.pstatic.net/20230618_274/1687090000687MzwTF_JPEG/%C0%FC%C3%BCHL_-_%27%B1%E8%C1%F6%C2%F9_%B0%E1%BD%C2%C5%B8%2B%C0%CC%C0%E7%C7%F6_3%BE%C8%C5%B8%27_%BB%EF%BC%BA%2C_KT_%B2%AA%B0%ED_5%BF%AC%C6%D0_%C5%BB%C3%E2.jpg","type":"2","videoType":"2","division":"","season":"","iconType":"video","playTime":"10:30","clipNo":null,"cnt":8016,"hit":36576,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"10<i class=\"u_hc\">분</i>:30<i class=\"u_hc\">초</i>"},{"rank":11,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080818","masterVideoId":"47706053A2664DC67D1E6F850D20745D59CD","title":"[전체HL] '이형종 결승타' 키움, 한화 상대로 연장 승부 끝에 승리","thumbnail":"https://sports-phinf.pstatic.net/20230618_194/1687092841981nYifD_JPEG/%C0%FC%C3%BCHL_-_%27%C0%CC%C7%FC%C1%BE_%B0%E1%BD%C2%C5%B8%27_%C5%B0%BF%F2%2C_%C7%D1%C8%AD_%BB%F3%B4%EB%B7%CE_%BF%AC%C0%E5_%BD%C2%BA%CE_%B3%A1%BF%A1_%BD%C2%B8%AE.jpg","type":"2","videoType":"2","division":"","season":"","iconType":"video","playTime":"11:01","clipNo":null,"cnt":7292,"hit":23052,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"11<i class=\"u_hc\">분</i>:01<i class=\"u_hc\">초</i>"},{"rank":12,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080696","masterVideoId":"AA2BA7F77AAFC0ABC6711C657F61ADCAC6FD","title":"LG 외인 최초! 인사이드 파크 홈런 #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230618_112/1687079663612t555X_JPEG/LG_%C3%D6%C3%CA_%BF%DC%C0%CE_%C0%CE%BB%E7%C0%CC%B5%E5_%C6%C4%C5%A9_%C8%A8%B7%B1_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:23","clipNo":null,"cnt":6928,"hit":66258,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:23<i class=\"u_hc\">초</i>"},{"rank":13,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080692","masterVideoId":"9295C500288A359C2126E3FC0321E6AF3497","title":"오스틴, 거침없는 질주로 인사이드 더 파크 홈런","thumbnail":"https://sports-phinf.pstatic.net/20230618_198/1687079129779LGhwg_JPEG/6_%B5%CE%BB%EA_vs_LG2%C8%B8%B8%BB_%BF%C0%BD%BA%C6%BE%2C_%B0%C5%C4%A7%BE%F8%B4%C2_%C1%FA%C1%D6%B7%CE_%C0%CE%BB%E7%C0%CC%B5%E5_%B4%F5_%C6%C4%C5%A9_%C8%A8%B7%B1.jpg","type":"1","videoType":"1","division":"23","season":"","iconType":"video","playTime":"01:55","clipNo":null,"cnt":6537,"hit":92132,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"01<i class=\"u_hc\">분</i>:55<i class=\"u_hc\">초</i>"},{"rank":14,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080735","masterVideoId":"B28BF17042034F11F6B2E3A92ED2C0D47010","title":"’부상 조심’ 2루에서의 충돌 #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230618_92/1687083648681DvHJB_JPEG/%A1%AF%BA%CE%BB%F3_%C1%B6%BD%C9%A1%AF_2%B7%E7%BF%A1%BC%AD%C0%C7_%C3%E6%B5%B9_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:42","clipNo":null,"cnt":5461,"hit":16830,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:42<i class=\"u_hc\">초</i>"},{"rank":15,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080829","masterVideoId":"663DCB5171B14253C65ABB16F34AC9175D92","title":"벌써부터 고통받는 롯린이 #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230619_178/1687113644925JU3Kl_JPEG/%B9%FA%BD%E1%BA%CE%C5%CD_%B0%ED%C5%EB%B9%DE%B4%C2_%B7%D4%B8%B0%C0%CC_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:31","clipNo":null,"cnt":4389,"hit":5176,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:31<i class=\"u_hc\">초</i>"},{"rank":16,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080775","masterVideoId":"D0F0C086A3321371B0D2A86216A57154FD95","title":"'루키의 극적인 한 방' 문현빈의 9회말 동점 투런포","thumbnail":"https://sports-phinf.pstatic.net/20230618_120/1687087659289Cu0I3_JPEG/17_%C5%B0%BF%F2_vs_%C7%D1%C8%AD9%C8%B8%B8%BB_%27%B7%E7%C5%B0%C0%C7_%B1%D8%C0%FB%C0%CE_%C7%D1_%B9%E6%27_%B9%AE%C7%F6%BA%F3%C0%C7_9%C8%B8%B8%BB_%B5%BF%C1%A1_%C5%F5%B7%B1%C6%F7.jpg","type":"1","videoType":"1","division":"23","season":"","iconType":"video","playTime":"03:30","clipNo":null,"cnt":4063,"hit":38748,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"03<i class=\"u_hc\">분</i>:30<i class=\"u_hc\">초</i>"},{"rank":17,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080769","masterVideoId":"9F086E48CE1FE5FE9CE3928155487839090E","title":"최동환, 세 타자로 경기 마무리","thumbnail":"https://sports-phinf.pstatic.net/20230618_169/1687087069657v7rkO_JPEG/16_%B5%CE%BB%EA_vs_LG9%C8%B8%C3%CA_%C3%D6%B5%BF%C8%AF%2C_%BC%BC_%C5%B8%C0%DA%B7%CE_%B0%E6%B1%E2_%B8%B6%B9%AB%B8%AE.jpg","type":"1","videoType":"1","division":"17","season":"","iconType":"video","playTime":"01:14","clipNo":null,"cnt":3808,"hit":18658,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"01<i class=\"u_hc\">분</i>:14<i class=\"u_hc\">초</i>"},{"rank":18,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080468","masterVideoId":"0E778D4F410577C69E300298BD90FA246E42","title":"목에 공을 맞고 쓰러지지만 다시 일어선 허도환","thumbnail":"https://sports-phinf.pstatic.net/20230617_250/1686992505321pxIx8_JPEG/5_%B5%CE%BB%EA_vs_LG3%C8%B8%C3%CA_%B8%F1%BF%A1_%B0%F8%C0%BB_%B8%C2%B0%ED_%BE%B2%B7%AF%C1%F6%C1%F6%B8%B8_%B4%D9%BD%C3_%C0%CF%BE%EE%BC%B1_%C7%E3%B5%B5%C8%AF.jpg","type":"1","videoType":"1","division":"22","season":"","iconType":"video","playTime":"02:13","clipNo":null,"cnt":3792,"hit":78106,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"02<i class=\"u_hc\">분</i>:13<i class=\"u_hc\">초</i>"},{"rank":19,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080776","masterVideoId":"5380998D1DC484CBD1B6DA0B300A64198F86","title":"구승민, 호수비 도움으로 경기 마무리","thumbnail":"https://sports-phinf.pstatic.net/20230618_47/1687087835697SIAua_JPEG/14_%B7%D4%B5%A5_vs_SSG9%C8%B8%B8%BB_%B1%B8%BD%C2%B9%CE%2C_%C8%A3%BC%F6%BA%F1_%B5%B5%BF%F2%C0%B8%B7%CE_%B0%E6%B1%E2_%B8%B6%B9%AB%B8%AE.jpg","type":"1","videoType":"1","division":"16","season":"","iconType":"video","playTime":"01:35","clipNo":null,"cnt":3756,"hit":19005,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"01<i class=\"u_hc\">분</i>:35<i class=\"u_hc\">초</i>"},{"rank":20,"section":"baseball","upperCategoryId":"kbaseball","categoryId":"kbo","categoryName":"KBO리그","subSection":"kbaseball","subSectionName":"야구","date":"20230619","id":"1080340","masterVideoId":"814F8B34052BD6A97A0518D00D22679809A4","title":"어서와! K벤클은 처음이지? #ShortForm","thumbnail":"https://sports-phinf.pstatic.net/20230617_139/1686937202395UcTYy_JPEG/%BE%EE%BC%AD%BF%CD_K%BA%A5%C5%AC%C0%BA_%C3%B3%C0%BD%C0%CC%C1%F6_ShortForm.jpg","type":"shortform","videoType":"shortform","division":"","season":"","iconType":"video","playTime":"00:45","clipNo":null,"cnt":3731,"hit":84528,"modifiedDateTime":"2023-06-19 14:30:06.0","playTimeForWorldfootballVodList":"00<i class=\"u_hc\">분</i>:45<i class=\"u_hc\">초</i>"}]},"dataSetForm":[{"name":"인기 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"}]}]},{"menuId":null,"itemId":"1576565128548","isEnable":"Y","title":"핫클립","displayOrder":null,"score":0.0,"templateId":"pc_center_video_meta","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1576565128548","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_meta","templateName":"종목홈 영상리스트 (메타)","dataSetId":"pc/center_video_meta","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_meta"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1576565130473,"isEnable":"Y","title":"핫클립","type":"type|7|핫클립","videoList":[{"hit":41,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_253/IlEgy_16871493475346RQS1_JPEG/1687148823408.jpg","originalTitle":"하루 종일 빙고 춘 썰 푼다 ㅣ 김민규가 말하는 상무의 모든 것 [김민규 초대석]","videoType":"7","upperCategory":"kbaseball","playTime":"13:22","videoMasterId":1080899,"title":"하루 종일 빙고 춘 썰 푼다 ㅣ 김민규가 말하는 상무의...","category":"kbo","masterVideoId":"7E3EA9D97AC9F46F812BCD38197CAA537B5A"},{"hit":724,"thumbnail":"https://sports-phinf.pstatic.net/20230619_263/1687146067618YTopP_JPEG/20230619_1.00_15_24_15.%BD%BA%C6%BF_001.jpg","originalTitle":"현종이 점찍은 ➡️ NEXT 코리안리거는?! | 크보관계도 Ep.2  [스포타임]","videoType":"7","upperCategory":"kbaseball","playTime":"08:46","videoMasterId":1080890,"title":"현종이 점찍은 ➡️ NEXT 코리안리거는?! | 크보관...","category":"kbo","masterVideoId":"7B402545652EF3A0A4E93A75C12CA97E4061"},{"hit":423,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_119/sBxWp_1687098831569jNC0c_PNG/1687098822677.png","originalTitle":"한 사람을 위한 응원!! 쪼단의 선택은?","videoType":"7","upperCategory":"kbaseball","playTime":"01:58","videoMasterId":1080881,"title":"한 사람을 위한 응원!! 쪼단의 선택은?","category":"kbo","masterVideoId":"8EC46D19362DCDA6686192B3E8799DCE9E7A"},{"hit":1067,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_157/8T1Le_1687134394350rLtIz_JPEG/20230619_090219_675_1.jpg","originalTitle":"[미공개] 정용검-김선우를 위한 코너 ＜선. 용. 만. 사＞의 2회 게스트 '원성준' | ＜최강야구＞ 비하인드 cam 46","videoType":"7","upperCategory":"kbaseball","playTime":"12:16","videoMasterId":1080862,"title":" 정용검-김선우를 위한 코너 ＜선. 용. 만. 사＞의 ...","category":"baseballentertainment","masterVideoId":"7A4CFF40FF5C0B74002074C8F764FF75ADA9"},{"hit":370,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_11/w5MAi_1687096768352P70SB_JPEG/1687096627789.jpg","originalTitle":"한화 마침내 외국인 타자 영입 ㅣ닉 윌리엄스 선택 비하인드ㅣ BA 선정 톱 MLB 유망주 출신?","videoType":"7","upperCategory":"kbaseball","playTime":"08:02","videoMasterId":1080843,"title":"한화 마침내 외국인 타자 영입 ㅣ닉 윌리엄스 선택 비하...","category":"baseballlesson","masterVideoId":"C20C2E0D030275BBA1D7189A7EECD9C14039"},{"hit":410,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_265/On71M_1687129143973cwVlU_JPEG/1687129041866.jpg","originalTitle":"한화 닉 윌리엄스 영입까지│후보 리스트 및 접촉 선수들 공개│정근우의 야구이슈다","videoType":"7","upperCategory":"kbaseball","playTime":"10:39","videoMasterId":1080842,"title":"한화 닉 윌리엄스 영입까지│후보 리스트 및 접촉 선수들...","category":"baseballlesson","masterVideoId":"9FA4EF2945CD7BB70E13AB69615B6AC143AE"},{"hit":588,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_9/vZiHB_1687114437604GcUTS_JPEG/1687114404029.jpeg","originalTitle":"한화 이글스 거포 영입? 닉 윌리엄스는 어떤 선수인가? | DKTV","videoType":"7","upperCategory":"kbaseball","playTime":"05:37","videoMasterId":1080836,"title":"한화 이글스 거포 영입? 닉 윌리엄스는 어떤 선수인가?...","category":"baseballlesson","masterVideoId":"76241A7101720EA56597880AE4DB2F78ED65"},{"hit":652,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_152/YowDk_16870991977242zsXk_JPEG/bfcd78fb-0de5-11ee-9dc4-d4f5ef58ac88_03.jpg","originalTitle":"명종아 너 벌써 한 10마디 했어","videoType":"7","upperCategory":"kbaseball","playTime":"00:36","videoMasterId":1080826,"title":"명종아 너 벌써 한 10마디 했어","category":"kbo","masterVideoId":"03D06184E2EEBE5E80CC539917A6A68D3809"},{"hit":314,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_68/egLF2_1687089415941bEbpV_JPEG/1687089414026.jpg","originalTitle":"이진영 코치,'역시 코치는 코치 조형우 반려견도 단숨에 훈련 성공' [O! SPORTS]","videoType":"7","upperCategory":"kbaseball","playTime":"01:34","videoMasterId":1080837,"title":"이진영 코치'역시 코치는 코치 조형우 반려견도 단숨에 ...","category":"baseballlesson","masterVideoId":"3B5F0F4945C82EFCD9C519B4306C5D34BCF2"},{"hit":1,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_86/Rsx86_1687089205572GYgar_JPEG/1687089203378.jpg","originalTitle":"이진영 코치,'역시 코치는 코치 조형우 반려견도 단숨에 훈련 성공' [O! SPORTS]","videoType":"7","upperCategory":"kbaseball","playTime":"01:34","videoMasterId":1080788,"title":"이진영 코치'역시 코치는 코치 조형우 반려견도 단숨에 ...","category":"baseballlesson","masterVideoId":"B388302BA0B90C25D2824BBEE4B0DA1C3A7D"},{"hit":56,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_272/Ajtc8_1687075627944jfwMu_JPEG/1687075579043.jpg","originalTitle":"그저 곽'빛' 과 4타수 2안타 3타점의 '빛'계범⭐ [2023 잠실직캠] (06.17)","videoType":"7","upperCategory":"kbaseball","playTime":"14:32","videoMasterId":1080670,"title":"그저 곽'빛' 과 4타수 2안타 3타점의 '빛'계범⭐ ...","category":"kbo","masterVideoId":"1CAE72B32C8916E22799F782B75067CC5C53"},{"hit":16336,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_263/kNt2u_1687065687781tXErC_JPEG/20230618_140617_110_1.jpg","originalTitle":"[선공개] ＂50년 만에 처음이네＂ 스승의 날 기념 몬스터즈의 서프라이즈 재롱잔치(?) | 《최강야구》 6/19(월) 밤 10시 30분 방송!","videoType":"7","upperCategory":"kbaseball","playTime":"03:06","videoMasterId":1080641,"title":" ＂50년 만에 처음이네＂ 스승의 날 기념 몬스터즈의 ...","category":"baseballentertainment","masterVideoId":"12F47E6531484EEC168999203AABB8C05DE9"},{"hit":784,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_140/jFmxc_1686974956273LP8V4_JPEG/1686974241100.jpg","originalTitle":"장현석이 어느 정도인지 물어봤습니다 | 배지헌의 크보썰전 EP. 03","videoType":"7","upperCategory":"kbaseball","playTime":"08:47","videoMasterId":1080617,"title":"장현석이 어느 정도인지 물어봤습니다 | 배지헌의 크보썰...","category":"baseballlesson","masterVideoId":"42E75D6DE90A01406B8822D5B2DCD28D74D1"},{"hit":4535,"thumbnail":"https://phinf.pstatic.net/tvcast/20230614_191/H9mlI_16867268169902GV3M_JPEG/1686726807426.jpg","originalTitle":"성인구장을 쉽게 넘겨버리는 19살 소녀의 배팅","videoType":"7","upperCategory":"kbaseball","playTime":"09:07","videoMasterId":1080612,"title":"성인구장을 쉽게 넘겨버리는 19살 소녀의 배팅","category":"baseballlesson","masterVideoId":"68D4060A4C7C126178192F2A034F4C1F6D20"},{"hit":333,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_24/qxH3U_1687043164894zaOMe_JPEG/1687042662538.jpg","originalTitle":"또 역전승! 1년 만에 돌아온 쿠에바스와 싹쓸이 역전타의 장준원 [위즈덕후]","videoType":"7","upperCategory":"kbaseball","playTime":"14:54","videoMasterId":1080606,"title":"또 역전승! 1년 만에 돌아온 쿠에바스와 싹쓸이 역전타...","category":"kbo","masterVideoId":"F516FBAEF038624D79AEC10964006B52B35C"},{"hit":7299,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_49/VBI36_1687019048781uzLih_PNG/1687018737527.png","originalTitle":"만원관중 앞에서 선보인 야오이마이 모드, 대역전극의 서사는 8회부터ㅣ쓱케치(06.17)","videoType":"7","upperCategory":"kbaseball","playTime":"10:46","videoMasterId":1080602,"title":"만원관중 앞에서 선보인 야오이마이 모드, 대역전극의 서...","category":"kbo","masterVideoId":"F8BAC8E5376D941D096064BAEDD96BED6A22"},{"hit":390,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_9/aVHow_16870171250055fJ0g_JPEG/1687016973277.jpg","originalTitle":"연패스토퍼 곽빈, 복귀 후 2번째 QS 달성! [2023 애프터게임] (06.17)","videoType":"7","upperCategory":"kbaseball","playTime":"06:43","videoMasterId":1080591,"title":"연패스토퍼 곽빈, 복귀 후 2번째 QS 달성!  (06...","category":"kbo","masterVideoId":"62CAF8241709D104041F2BFAA8D9DF01B89C"},{"hit":232,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_154/ZIqzD_1686900615980dRmHC_JPEG/1686899700455.jpg","originalTitle":"스페셜이 뽑고 싶어요 | 포토카드 부스 체험기","videoType":"7","upperCategory":"kbaseball","playTime":"13:14","videoMasterId":1080562,"title":"스페셜이 뽑고 싶어요 | 포토카드 부스 체험기","category":"kbo","masterVideoId":"9B298989938F1AE74AC89EFD91C9673070FA"},{"hit":707,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_281/rMgEH_1686999230861XlUeL_JPEG/1686996782858.jpg","originalTitle":"포수 로또 된 박동원 | LG 차 단장 “켈리 교체 없다” | 주가 폭등 김주원 | 최강볼펜 25화","videoType":"7","upperCategory":"kbaseball","playTime":"21:55","videoMasterId":1080545,"title":"포수 로또 된 박동원 | LG 차 단장 \"켈리 교체 없...","category":"baseballlesson","masterVideoId":"BC826239D5BE3426081142F89DDFD0BD083E"},{"hit":982,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_167/KEZ0U_1686994694534dDBPK_JPEG/1686994602774.jpeg","originalTitle":"벤치 클리어링 그 이후의 이야기 [2023 잠실직캠] (06.16)","videoType":"7","upperCategory":"kbaseball","playTime":"16:36","videoMasterId":1080495,"title":"벤치 클리어링 그 이후의 이야기  (06. 16)","category":"kbo","masterVideoId":"65E72779D592F84369E65E54C3E5B8631559"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_meta","firstData":{"dataId":1576565130473,"isEnable":"Y","title":"핫클립","type":"type|7|핫클립","videoList":[{"hit":41,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_253/IlEgy_16871493475346RQS1_JPEG/1687148823408.jpg","originalTitle":"하루 종일 빙고 춘 썰 푼다 ㅣ 김민규가 말하는 상무의 모든 것 [김민규 초대석]","videoType":"7","upperCategory":"kbaseball","playTime":"13:22","videoMasterId":1080899,"title":"하루 종일 빙고 춘 썰 푼다 ㅣ 김민규가 말하는 상무의...","category":"kbo","masterVideoId":"7E3EA9D97AC9F46F812BCD38197CAA537B5A"},{"hit":724,"thumbnail":"https://sports-phinf.pstatic.net/20230619_263/1687146067618YTopP_JPEG/20230619_1.00_15_24_15.%BD%BA%C6%BF_001.jpg","originalTitle":"현종이 점찍은 ➡️ NEXT 코리안리거는?! | 크보관계도 Ep.2  [스포타임]","videoType":"7","upperCategory":"kbaseball","playTime":"08:46","videoMasterId":1080890,"title":"현종이 점찍은 ➡️ NEXT 코리안리거는?! | 크보관...","category":"kbo","masterVideoId":"7B402545652EF3A0A4E93A75C12CA97E4061"},{"hit":423,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_119/sBxWp_1687098831569jNC0c_PNG/1687098822677.png","originalTitle":"한 사람을 위한 응원!! 쪼단의 선택은?","videoType":"7","upperCategory":"kbaseball","playTime":"01:58","videoMasterId":1080881,"title":"한 사람을 위한 응원!! 쪼단의 선택은?","category":"kbo","masterVideoId":"8EC46D19362DCDA6686192B3E8799DCE9E7A"},{"hit":1067,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_157/8T1Le_1687134394350rLtIz_JPEG/20230619_090219_675_1.jpg","originalTitle":"[미공개] 정용검-김선우를 위한 코너 ＜선. 용. 만. 사＞의 2회 게스트 '원성준' | ＜최강야구＞ 비하인드 cam 46","videoType":"7","upperCategory":"kbaseball","playTime":"12:16","videoMasterId":1080862,"title":" 정용검-김선우를 위한 코너 ＜선. 용. 만. 사＞의 ...","category":"baseballentertainment","masterVideoId":"7A4CFF40FF5C0B74002074C8F764FF75ADA9"},{"hit":370,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_11/w5MAi_1687096768352P70SB_JPEG/1687096627789.jpg","originalTitle":"한화 마침내 외국인 타자 영입 ㅣ닉 윌리엄스 선택 비하인드ㅣ BA 선정 톱 MLB 유망주 출신?","videoType":"7","upperCategory":"kbaseball","playTime":"08:02","videoMasterId":1080843,"title":"한화 마침내 외국인 타자 영입 ㅣ닉 윌리엄스 선택 비하...","category":"baseballlesson","masterVideoId":"C20C2E0D030275BBA1D7189A7EECD9C14039"},{"hit":410,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_265/On71M_1687129143973cwVlU_JPEG/1687129041866.jpg","originalTitle":"한화 닉 윌리엄스 영입까지│후보 리스트 및 접촉 선수들 공개│정근우의 야구이슈다","videoType":"7","upperCategory":"kbaseball","playTime":"10:39","videoMasterId":1080842,"title":"한화 닉 윌리엄스 영입까지│후보 리스트 및 접촉 선수들...","category":"baseballlesson","masterVideoId":"9FA4EF2945CD7BB70E13AB69615B6AC143AE"},{"hit":588,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_9/vZiHB_1687114437604GcUTS_JPEG/1687114404029.jpeg","originalTitle":"한화 이글스 거포 영입? 닉 윌리엄스는 어떤 선수인가? | DKTV","videoType":"7","upperCategory":"kbaseball","playTime":"05:37","videoMasterId":1080836,"title":"한화 이글스 거포 영입? 닉 윌리엄스는 어떤 선수인가?...","category":"baseballlesson","masterVideoId":"76241A7101720EA56597880AE4DB2F78ED65"},{"hit":652,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_152/YowDk_16870991977242zsXk_JPEG/bfcd78fb-0de5-11ee-9dc4-d4f5ef58ac88_03.jpg","originalTitle":"명종아 너 벌써 한 10마디 했어","videoType":"7","upperCategory":"kbaseball","playTime":"00:36","videoMasterId":1080826,"title":"명종아 너 벌써 한 10마디 했어","category":"kbo","masterVideoId":"03D06184E2EEBE5E80CC539917A6A68D3809"},{"hit":314,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_68/egLF2_1687089415941bEbpV_JPEG/1687089414026.jpg","originalTitle":"이진영 코치,'역시 코치는 코치 조형우 반려견도 단숨에 훈련 성공' [O! SPORTS]","videoType":"7","upperCategory":"kbaseball","playTime":"01:34","videoMasterId":1080837,"title":"이진영 코치'역시 코치는 코치 조형우 반려견도 단숨에 ...","category":"baseballlesson","masterVideoId":"3B5F0F4945C82EFCD9C519B4306C5D34BCF2"},{"hit":1,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_86/Rsx86_1687089205572GYgar_JPEG/1687089203378.jpg","originalTitle":"이진영 코치,'역시 코치는 코치 조형우 반려견도 단숨에 훈련 성공' [O! SPORTS]","videoType":"7","upperCategory":"kbaseball","playTime":"01:34","videoMasterId":1080788,"title":"이진영 코치'역시 코치는 코치 조형우 반려견도 단숨에 ...","category":"baseballlesson","masterVideoId":"B388302BA0B90C25D2824BBEE4B0DA1C3A7D"},{"hit":56,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_272/Ajtc8_1687075627944jfwMu_JPEG/1687075579043.jpg","originalTitle":"그저 곽'빛' 과 4타수 2안타 3타점의 '빛'계범⭐ [2023 잠실직캠] (06.17)","videoType":"7","upperCategory":"kbaseball","playTime":"14:32","videoMasterId":1080670,"title":"그저 곽'빛' 과 4타수 2안타 3타점의 '빛'계범⭐ ...","category":"kbo","masterVideoId":"1CAE72B32C8916E22799F782B75067CC5C53"},{"hit":16336,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_263/kNt2u_1687065687781tXErC_JPEG/20230618_140617_110_1.jpg","originalTitle":"[선공개] ＂50년 만에 처음이네＂ 스승의 날 기념 몬스터즈의 서프라이즈 재롱잔치(?) | 《최강야구》 6/19(월) 밤 10시 30분 방송!","videoType":"7","upperCategory":"kbaseball","playTime":"03:06","videoMasterId":1080641,"title":" ＂50년 만에 처음이네＂ 스승의 날 기념 몬스터즈의 ...","category":"baseballentertainment","masterVideoId":"12F47E6531484EEC168999203AABB8C05DE9"},{"hit":784,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_140/jFmxc_1686974956273LP8V4_JPEG/1686974241100.jpg","originalTitle":"장현석이 어느 정도인지 물어봤습니다 | 배지헌의 크보썰전 EP. 03","videoType":"7","upperCategory":"kbaseball","playTime":"08:47","videoMasterId":1080617,"title":"장현석이 어느 정도인지 물어봤습니다 | 배지헌의 크보썰...","category":"baseballlesson","masterVideoId":"42E75D6DE90A01406B8822D5B2DCD28D74D1"},{"hit":4535,"thumbnail":"https://phinf.pstatic.net/tvcast/20230614_191/H9mlI_16867268169902GV3M_JPEG/1686726807426.jpg","originalTitle":"성인구장을 쉽게 넘겨버리는 19살 소녀의 배팅","videoType":"7","upperCategory":"kbaseball","playTime":"09:07","videoMasterId":1080612,"title":"성인구장을 쉽게 넘겨버리는 19살 소녀의 배팅","category":"baseballlesson","masterVideoId":"68D4060A4C7C126178192F2A034F4C1F6D20"},{"hit":333,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_24/qxH3U_1687043164894zaOMe_JPEG/1687042662538.jpg","originalTitle":"또 역전승! 1년 만에 돌아온 쿠에바스와 싹쓸이 역전타의 장준원 [위즈덕후]","videoType":"7","upperCategory":"kbaseball","playTime":"14:54","videoMasterId":1080606,"title":"또 역전승! 1년 만에 돌아온 쿠에바스와 싹쓸이 역전타...","category":"kbo","masterVideoId":"F516FBAEF038624D79AEC10964006B52B35C"},{"hit":7299,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_49/VBI36_1687019048781uzLih_PNG/1687018737527.png","originalTitle":"만원관중 앞에서 선보인 야오이마이 모드, 대역전극의 서사는 8회부터ㅣ쓱케치(06.17)","videoType":"7","upperCategory":"kbaseball","playTime":"10:46","videoMasterId":1080602,"title":"만원관중 앞에서 선보인 야오이마이 모드, 대역전극의 서...","category":"kbo","masterVideoId":"F8BAC8E5376D941D096064BAEDD96BED6A22"},{"hit":390,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_9/aVHow_16870171250055fJ0g_JPEG/1687016973277.jpg","originalTitle":"연패스토퍼 곽빈, 복귀 후 2번째 QS 달성! [2023 애프터게임] (06.17)","videoType":"7","upperCategory":"kbaseball","playTime":"06:43","videoMasterId":1080591,"title":"연패스토퍼 곽빈, 복귀 후 2번째 QS 달성!  (06...","category":"kbo","masterVideoId":"62CAF8241709D104041F2BFAA8D9DF01B89C"},{"hit":232,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_154/ZIqzD_1686900615980dRmHC_JPEG/1686899700455.jpg","originalTitle":"스페셜이 뽑고 싶어요 | 포토카드 부스 체험기","videoType":"7","upperCategory":"kbaseball","playTime":"13:14","videoMasterId":1080562,"title":"스페셜이 뽑고 싶어요 | 포토카드 부스 체험기","category":"kbo","masterVideoId":"9B298989938F1AE74AC89EFD91C9673070FA"},{"hit":707,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_281/rMgEH_1686999230861XlUeL_JPEG/1686996782858.jpg","originalTitle":"포수 로또 된 박동원 | LG 차 단장 “켈리 교체 없다” | 주가 폭등 김주원 | 최강볼펜 25화","videoType":"7","upperCategory":"kbaseball","playTime":"21:55","videoMasterId":1080545,"title":"포수 로또 된 박동원 | LG 차 단장 \"켈리 교체 없...","category":"baseballlesson","masterVideoId":"BC826239D5BE3426081142F89DDFD0BD083E"},{"hit":982,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_167/KEZ0U_1686994694534dDBPK_JPEG/1686994602774.jpeg","originalTitle":"벤치 클리어링 그 이후의 이야기 [2023 잠실직캠] (06.16)","videoType":"7","upperCategory":"kbaseball","playTime":"16:36","videoMasterId":1080495,"title":"벤치 클리어링 그 이후의 이야기  (06. 16)","category":"kbo","masterVideoId":"65E72779D592F84369E65E54C3E5B8631559"}]},"dataSetForm":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},{"menuId":null,"itemId":"1576565006116","isEnable":"Y","title":"구단","displayOrder":null,"score":0.0,"templateId":"pc_center_video_meta","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1576565006116","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_meta","templateName":"종목홈 영상리스트 (메타)","dataSetId":"pc/center_video_meta","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_meta"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1576565008504,"isEnable":"Y","title":"구단","type":"division|9111|구단특집","videoList":[{"hit":41,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_253/IlEgy_16871493475346RQS1_JPEG/1687148823408.jpg","originalTitle":"하루 종일 빙고 춘 썰 푼다 ㅣ 김민규가 말하는 상무의 모든 것 [김민규 초대석]","videoType":"7","upperCategory":"kbaseball","playTime":"13:22","videoMasterId":1080899,"title":"하루 종일 빙고 춘 썰 푼다 ㅣ 김민규가 말하는 상무의...","category":"kbo","masterVideoId":"7E3EA9D97AC9F46F812BCD38197CAA537B5A"},{"hit":224,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_56/8WBMN_1687143651873X5GWg_JPEG/27a74bf5-0e4d-11ee-8de4-a0369ffdb264_10.jpg","originalTitle":"[크보캐치] 김영웅이 왜 빠른지 알아요?","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:43","videoMasterId":1080893,"title":" 김영웅이 왜 빠른지 알아요?","category":"kbo","masterVideoId":"56CC3D2122D82FDC72BE141B435665847E88"},{"hit":423,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_119/sBxWp_1687098831569jNC0c_PNG/1687098822677.png","originalTitle":"한 사람을 위한 응원!! 쪼단의 선택은?","videoType":"7","upperCategory":"kbaseball","playTime":"01:58","videoMasterId":1080881,"title":"한 사람을 위한 응원!! 쪼단의 선택은?","category":"kbo","masterVideoId":"8EC46D19362DCDA6686192B3E8799DCE9E7A"},{"hit":652,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_152/YowDk_16870991977242zsXk_JPEG/bfcd78fb-0de5-11ee-9dc4-d4f5ef58ac88_03.jpg","originalTitle":"명종아 너 벌써 한 10마디 했어","videoType":"7","upperCategory":"kbaseball","playTime":"00:36","videoMasterId":1080826,"title":"명종아 너 벌써 한 10마디 했어","category":"kbo","masterVideoId":"03D06184E2EEBE5E80CC539917A6A68D3809"},{"hit":56,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_272/Ajtc8_1687075627944jfwMu_JPEG/1687075579043.jpg","originalTitle":"그저 곽'빛' 과 4타수 2안타 3타점의 '빛'계범⭐ [2023 잠실직캠] (06.17)","videoType":"7","upperCategory":"kbaseball","playTime":"14:32","videoMasterId":1080670,"title":"그저 곽'빛' 과 4타수 2안타 3타점의 '빛'계범⭐ ...","category":"kbo","masterVideoId":"1CAE72B32C8916E22799F782B75067CC5C53"},{"hit":578,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_280/5rq6s_1687064175303pc9od_JPEG/39dedd97-0d91-11ee-8d97-b4055da548d1_10.jpg","originalTitle":"박영현의 올스타전이 궁금하다면?!⭐️","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:59","videoMasterId":1080631,"title":"박영현의 올스타전이 궁금하다면?! ⭐️","category":"kbo","masterVideoId":"5E43093FB46F1209D936107A3626FF485F4A"},{"hit":333,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_24/qxH3U_1687043164894zaOMe_JPEG/1687042662538.jpg","originalTitle":"또 역전승! 1년 만에 돌아온 쿠에바스와 싹쓸이 역전타의 장준원 [위즈덕후]","videoType":"7","upperCategory":"kbaseball","playTime":"14:54","videoMasterId":1080606,"title":"또 역전승! 1년 만에 돌아온 쿠에바스와 싹쓸이 역전타...","category":"kbo","masterVideoId":"F516FBAEF038624D79AEC10964006B52B35C"},{"hit":914,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_284/UGkmQ_1687018339331iXKOE_JPEG/8027dc0e-0d29-11ee-a0e8-a0369ffabe18_02.jpg","originalTitle":"\"저에겐 매 타석이 소중해요\" 오늘의 숨은 MVP는 단연 #안상현 [쓱페셜_PLAYER]","videoType":"6","upperCategory":"kbaseball","playTime":"01:45","videoMasterId":1080601,"title":"\"저에겐 매 타석이 소중해요\" 오늘의 숨은 MVP는 단...","category":"kbo","masterVideoId":"2E031CEA255A305922A403CB055F979BE563"},{"hit":9251,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_205/aNiXA_16870200450777acap_JPEG/8adb166a-0d2c-11ee-a676-505dac8c385b_05.jpg","originalTitle":"이 홈은 이제 제껍니다","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:26","videoMasterId":1080593,"title":"이 홈은 이제 제껍니다","category":"kbo","masterVideoId":"BBD4E02E229B9CBE28F995F7AEFA132716F9"},{"hit":7299,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_49/VBI36_1687019048781uzLih_PNG/1687018737527.png","originalTitle":"만원관중 앞에서 선보인 야오이마이 모드, 대역전극의 서사는 8회부터ㅣ쓱케치(06.17)","videoType":"7","upperCategory":"kbaseball","playTime":"10:46","videoMasterId":1080602,"title":"만원관중 앞에서 선보인 야오이마이 모드, 대역전극의 서...","category":"kbo","masterVideoId":"F8BAC8E5376D941D096064BAEDD96BED6A22"},{"hit":390,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_9/aVHow_16870171250055fJ0g_JPEG/1687016973277.jpg","originalTitle":"연패스토퍼 곽빈, 복귀 후 2번째 QS 달성! [2023 애프터게임] (06.17)","videoType":"7","upperCategory":"kbaseball","playTime":"06:43","videoMasterId":1080591,"title":"연패스토퍼 곽빈, 복귀 후 2번째 QS 달성!  (06...","category":"kbo","masterVideoId":"62CAF8241709D104041F2BFAA8D9DF01B89C"},{"hit":232,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_154/ZIqzD_1686900615980dRmHC_JPEG/1686899700455.jpg","originalTitle":"스페셜이 뽑고 싶어요 | 포토카드 부스 체험기","videoType":"7","upperCategory":"kbaseball","playTime":"13:14","videoMasterId":1080562,"title":"스페셜이 뽑고 싶어요 | 포토카드 부스 체험기","category":"kbo","masterVideoId":"9B298989938F1AE74AC89EFD91C9673070FA"},{"hit":982,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_167/KEZ0U_1686994694534dDBPK_JPEG/1686994602774.jpeg","originalTitle":"벤치 클리어링 그 이후의 이야기 [2023 잠실직캠] (06.16)","videoType":"7","upperCategory":"kbaseball","playTime":"16:36","videoMasterId":1080495,"title":"벤치 클리어링 그 이후의 이야기  (06. 16)","category":"kbo","masterVideoId":"65E72779D592F84369E65E54C3E5B8631559"},{"hit":10822,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_68/mV1dv_1686994699044stANy_JPEG/1686994645751.jpeg","originalTitle":"돌아왔습니다.브랜든 와델 (재)입국 현장! [2023 잠실직캠]","videoType":"7","upperCategory":"kbaseball","playTime":"03:24","videoMasterId":1080496,"title":"돌아왔습니다. 브랜든 와델 (재)입국 현장! ","category":"kbo","masterVideoId":"C7645D833A2690A39C8BA47A7EA1EEDDAF77"},{"hit":962,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_22/7Ecqq_1686962182109gzbys_JPEG/1686961577540.jpg","originalTitle":"타이거즈 찐팬이 시구를 하면 일어나는 일 = 승리","videoType":"7","upperCategory":"kbaseball","playTime":"07:18","videoMasterId":1080401,"title":"타이거즈 찐팬이 시구를 하면 일어나는 일 = 승리","category":"kbo","masterVideoId":"295B96A432F88EFADD7957707F7CE007402B"},{"hit":252,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_211/cD1AO_1686899511111U0SHX_JPEG/d9eab22f-0c14-11ee-a103-505dac8c37f3_03.jpg","originalTitle":"[2023 KBO DREAM CUP 독립야구대회] 현장 스케치 이모저모","videoType":"7","upperCategory":"kbaseball","playTime":"06:10","videoMasterId":1080402,"title":" 현장 스케치 이모저모","category":"kbo","masterVideoId":"9BC2B65D715C8BA04FEA231E17F531B10E29"},{"hit":2677,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_58/aodJm_1686961230703yIPlo_JPEG/1686960970124.jpg","originalTitle":"테스 만루홈런 + 최형우  쓰리런 + 이우성 쓰리런 & 최형우 백투백홈런에 선수단 반응","videoType":"7","upperCategory":"kbaseball","playTime":"09:10","videoMasterId":1080358,"title":"테스 만루홈런 + 최형우  쓰리런 + 이우성 쓰리런 &...","category":"kbo","masterVideoId":"DA1AC3014B9DE92867DA5508428F425CE66C"},{"hit":578,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_145/BBavR_1686958227667olt06_JPEG/1686957717591.jpg","originalTitle":"5:0 → 6:7이 된다? 마법 같은 대역전 드라마! 이호연의 데뷔 첫 끝내기! [위즈덕후]","videoType":"7","upperCategory":"kbaseball","playTime":"11:56","videoMasterId":1080351,"title":"5:0 → 6:7이 된다? 마법 같은 대역전 드라마! ...","category":"kbo","masterVideoId":"38C874250F28727B42B20AF7884589909A7F"},{"hit":602,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_277/qEk3U_1686935676978g8OVT_PNG/1686935085832.png","originalTitle":"속이 뻥 뚫리는 홈런 파티 속 로맨틱한 반지 선물ㅣ쓱케치(06.16)","videoType":"7","upperCategory":"kbaseball","playTime":"21:26","videoMasterId":1080350,"title":"속이 뻥 뚫리는 홈런 파티 속 로맨틱한 반지 선물ㅣ쓱케...","category":"kbo","masterVideoId":"8A244FD880ADDB87B637880AE4DB2F78ED65"},{"hit":1005,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_26/IzOue_1686930023856cuSz8_JPEG/1686929752222.jpg","originalTitle":"정우성보다 이우성, 언제나 든든한 임기영 ｜6월 16일 승리의 챔터뷰","videoType":"7","upperCategory":"kbaseball","playTime":"03:34","videoMasterId":1080333,"title":"정우성보다 이우성, 언제나 든든한 임기영 ｜6월 16일...","category":"kbo","masterVideoId":"37E176A8FF8482EAE4A6C98E977570A60BA1"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_meta","firstData":{"dataId":1576565008504,"isEnable":"Y","title":"구단","type":"division|9111|구단특집","videoList":[{"hit":41,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_253/IlEgy_16871493475346RQS1_JPEG/1687148823408.jpg","originalTitle":"하루 종일 빙고 춘 썰 푼다 ㅣ 김민규가 말하는 상무의 모든 것 [김민규 초대석]","videoType":"7","upperCategory":"kbaseball","playTime":"13:22","videoMasterId":1080899,"title":"하루 종일 빙고 춘 썰 푼다 ㅣ 김민규가 말하는 상무의...","category":"kbo","masterVideoId":"7E3EA9D97AC9F46F812BCD38197CAA537B5A"},{"hit":224,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_56/8WBMN_1687143651873X5GWg_JPEG/27a74bf5-0e4d-11ee-8de4-a0369ffdb264_10.jpg","originalTitle":"[크보캐치] 김영웅이 왜 빠른지 알아요?","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:43","videoMasterId":1080893,"title":" 김영웅이 왜 빠른지 알아요?","category":"kbo","masterVideoId":"56CC3D2122D82FDC72BE141B435665847E88"},{"hit":423,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_119/sBxWp_1687098831569jNC0c_PNG/1687098822677.png","originalTitle":"한 사람을 위한 응원!! 쪼단의 선택은?","videoType":"7","upperCategory":"kbaseball","playTime":"01:58","videoMasterId":1080881,"title":"한 사람을 위한 응원!! 쪼단의 선택은?","category":"kbo","masterVideoId":"8EC46D19362DCDA6686192B3E8799DCE9E7A"},{"hit":652,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_152/YowDk_16870991977242zsXk_JPEG/bfcd78fb-0de5-11ee-9dc4-d4f5ef58ac88_03.jpg","originalTitle":"명종아 너 벌써 한 10마디 했어","videoType":"7","upperCategory":"kbaseball","playTime":"00:36","videoMasterId":1080826,"title":"명종아 너 벌써 한 10마디 했어","category":"kbo","masterVideoId":"03D06184E2EEBE5E80CC539917A6A68D3809"},{"hit":56,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_272/Ajtc8_1687075627944jfwMu_JPEG/1687075579043.jpg","originalTitle":"그저 곽'빛' 과 4타수 2안타 3타점의 '빛'계범⭐ [2023 잠실직캠] (06.17)","videoType":"7","upperCategory":"kbaseball","playTime":"14:32","videoMasterId":1080670,"title":"그저 곽'빛' 과 4타수 2안타 3타점의 '빛'계범⭐ ...","category":"kbo","masterVideoId":"1CAE72B32C8916E22799F782B75067CC5C53"},{"hit":578,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_280/5rq6s_1687064175303pc9od_JPEG/39dedd97-0d91-11ee-8d97-b4055da548d1_10.jpg","originalTitle":"박영현의 올스타전이 궁금하다면?!⭐️","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:59","videoMasterId":1080631,"title":"박영현의 올스타전이 궁금하다면?! ⭐️","category":"kbo","masterVideoId":"5E43093FB46F1209D936107A3626FF485F4A"},{"hit":333,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_24/qxH3U_1687043164894zaOMe_JPEG/1687042662538.jpg","originalTitle":"또 역전승! 1년 만에 돌아온 쿠에바스와 싹쓸이 역전타의 장준원 [위즈덕후]","videoType":"7","upperCategory":"kbaseball","playTime":"14:54","videoMasterId":1080606,"title":"또 역전승! 1년 만에 돌아온 쿠에바스와 싹쓸이 역전타...","category":"kbo","masterVideoId":"F516FBAEF038624D79AEC10964006B52B35C"},{"hit":914,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_284/UGkmQ_1687018339331iXKOE_JPEG/8027dc0e-0d29-11ee-a0e8-a0369ffabe18_02.jpg","originalTitle":"\"저에겐 매 타석이 소중해요\" 오늘의 숨은 MVP는 단연 #안상현 [쓱페셜_PLAYER]","videoType":"6","upperCategory":"kbaseball","playTime":"01:45","videoMasterId":1080601,"title":"\"저에겐 매 타석이 소중해요\" 오늘의 숨은 MVP는 단...","category":"kbo","masterVideoId":"2E031CEA255A305922A403CB055F979BE563"},{"hit":9251,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_205/aNiXA_16870200450777acap_JPEG/8adb166a-0d2c-11ee-a676-505dac8c385b_05.jpg","originalTitle":"이 홈은 이제 제껍니다","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:26","videoMasterId":1080593,"title":"이 홈은 이제 제껍니다","category":"kbo","masterVideoId":"BBD4E02E229B9CBE28F995F7AEFA132716F9"},{"hit":7299,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_49/VBI36_1687019048781uzLih_PNG/1687018737527.png","originalTitle":"만원관중 앞에서 선보인 야오이마이 모드, 대역전극의 서사는 8회부터ㅣ쓱케치(06.17)","videoType":"7","upperCategory":"kbaseball","playTime":"10:46","videoMasterId":1080602,"title":"만원관중 앞에서 선보인 야오이마이 모드, 대역전극의 서...","category":"kbo","masterVideoId":"F8BAC8E5376D941D096064BAEDD96BED6A22"},{"hit":390,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_9/aVHow_16870171250055fJ0g_JPEG/1687016973277.jpg","originalTitle":"연패스토퍼 곽빈, 복귀 후 2번째 QS 달성! [2023 애프터게임] (06.17)","videoType":"7","upperCategory":"kbaseball","playTime":"06:43","videoMasterId":1080591,"title":"연패스토퍼 곽빈, 복귀 후 2번째 QS 달성!  (06...","category":"kbo","masterVideoId":"62CAF8241709D104041F2BFAA8D9DF01B89C"},{"hit":232,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_154/ZIqzD_1686900615980dRmHC_JPEG/1686899700455.jpg","originalTitle":"스페셜이 뽑고 싶어요 | 포토카드 부스 체험기","videoType":"7","upperCategory":"kbaseball","playTime":"13:14","videoMasterId":1080562,"title":"스페셜이 뽑고 싶어요 | 포토카드 부스 체험기","category":"kbo","masterVideoId":"9B298989938F1AE74AC89EFD91C9673070FA"},{"hit":982,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_167/KEZ0U_1686994694534dDBPK_JPEG/1686994602774.jpeg","originalTitle":"벤치 클리어링 그 이후의 이야기 [2023 잠실직캠] (06.16)","videoType":"7","upperCategory":"kbaseball","playTime":"16:36","videoMasterId":1080495,"title":"벤치 클리어링 그 이후의 이야기  (06. 16)","category":"kbo","masterVideoId":"65E72779D592F84369E65E54C3E5B8631559"},{"hit":10822,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_68/mV1dv_1686994699044stANy_JPEG/1686994645751.jpeg","originalTitle":"돌아왔습니다.브랜든 와델 (재)입국 현장! [2023 잠실직캠]","videoType":"7","upperCategory":"kbaseball","playTime":"03:24","videoMasterId":1080496,"title":"돌아왔습니다. 브랜든 와델 (재)입국 현장! ","category":"kbo","masterVideoId":"C7645D833A2690A39C8BA47A7EA1EEDDAF77"},{"hit":962,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_22/7Ecqq_1686962182109gzbys_JPEG/1686961577540.jpg","originalTitle":"타이거즈 찐팬이 시구를 하면 일어나는 일 = 승리","videoType":"7","upperCategory":"kbaseball","playTime":"07:18","videoMasterId":1080401,"title":"타이거즈 찐팬이 시구를 하면 일어나는 일 = 승리","category":"kbo","masterVideoId":"295B96A432F88EFADD7957707F7CE007402B"},{"hit":252,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_211/cD1AO_1686899511111U0SHX_JPEG/d9eab22f-0c14-11ee-a103-505dac8c37f3_03.jpg","originalTitle":"[2023 KBO DREAM CUP 독립야구대회] 현장 스케치 이모저모","videoType":"7","upperCategory":"kbaseball","playTime":"06:10","videoMasterId":1080402,"title":" 현장 스케치 이모저모","category":"kbo","masterVideoId":"9BC2B65D715C8BA04FEA231E17F531B10E29"},{"hit":2677,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_58/aodJm_1686961230703yIPlo_JPEG/1686960970124.jpg","originalTitle":"테스 만루홈런 + 최형우  쓰리런 + 이우성 쓰리런 & 최형우 백투백홈런에 선수단 반응","videoType":"7","upperCategory":"kbaseball","playTime":"09:10","videoMasterId":1080358,"title":"테스 만루홈런 + 최형우  쓰리런 + 이우성 쓰리런 &...","category":"kbo","masterVideoId":"DA1AC3014B9DE92867DA5508428F425CE66C"},{"hit":578,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_145/BBavR_1686958227667olt06_JPEG/1686957717591.jpg","originalTitle":"5:0 → 6:7이 된다? 마법 같은 대역전 드라마! 이호연의 데뷔 첫 끝내기! [위즈덕후]","videoType":"7","upperCategory":"kbaseball","playTime":"11:56","videoMasterId":1080351,"title":"5:0 → 6:7이 된다? 마법 같은 대역전 드라마! ...","category":"kbo","masterVideoId":"38C874250F28727B42B20AF7884589909A7F"},{"hit":602,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_277/qEk3U_1686935676978g8OVT_PNG/1686935085832.png","originalTitle":"속이 뻥 뚫리는 홈런 파티 속 로맨틱한 반지 선물ㅣ쓱케치(06.16)","videoType":"7","upperCategory":"kbaseball","playTime":"21:26","videoMasterId":1080350,"title":"속이 뻥 뚫리는 홈런 파티 속 로맨틱한 반지 선물ㅣ쓱케...","category":"kbo","masterVideoId":"8A244FD880ADDB87B637880AE4DB2F78ED65"},{"hit":1005,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_26/IzOue_1686930023856cuSz8_JPEG/1686929752222.jpg","originalTitle":"정우성보다 이우성, 언제나 든든한 임기영 ｜6월 16일 승리의 챔터뷰","videoType":"7","upperCategory":"kbaseball","playTime":"03:34","videoMasterId":1080333,"title":"정우성보다 이우성, 언제나 든든한 임기영 ｜6월 16일...","category":"kbo","masterVideoId":"37E176A8FF8482EAE4A6C98E977570A60BA1"}]},"dataSetForm":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},{"menuId":null,"itemId":"1644737901288","isEnable":"Y","title":"창작자","displayOrder":null,"score":0.0,"templateId":"pc_center_video_meta","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1644737901288","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_meta","templateName":"종목홈 영상리스트 (메타)","dataSetId":"pc/center_video_meta","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_meta"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1644737912463,"isEnable":"Y","title":"창작자","category":"baseballlesson","videoList":[{"hit":13,"thumbnail":"https://sports-phinf.pstatic.net//20230619_280/1687151791720VYI2q_JPEG/CA202306190020.jpg","originalTitle":"'싸다구 매치?!' '3연전 합계 55득점!' 2023 최고의 대첩 NC vs KIA 3연전 #베이스볼런치 2023.06.19","videoType":"","upperCategory":"kbaseball","playTime":"08:53","videoMasterId":1080904,"title":"'싸다구 매치?! ' '3연전 합계 55득점! ' 20...","category":"baseballlesson","masterVideoId":"B43A78B3C8EC04D36377D0D35E98EA296CC1"},{"hit":170,"thumbnail":"https://sports-phinf.pstatic.net//20230619_171/16871466895458QWkB_JPEG/CA202306190018.jpg","originalTitle":"2군행 오승환, 관중석 공 투척은 너무했다! / 포수 김재성 1루 출전이 최선? #베이스볼런치 2023.06.19","videoType":"10001","upperCategory":"kbaseball","playTime":"15:06","videoMasterId":1080892,"title":"2군행 오승환, 관중석 공 투척은 너무했다! / 포수 ...","category":"baseballlesson","masterVideoId":"EE31321C83794D6E25987B57D78652ABE624"},{"hit":91,"thumbnail":"https://sports-phinf.pstatic.net//20230619_297/1687136790786EDrDr_JPEG/CA202306190015.jpg","originalTitle":"[#인터뷰] '5타수 3안타 1타점 1득점' 삼성 강민호 ＂더 열심히 하겠습니다＂ I #베이스볼투나잇 2023.06.18","videoType":"6","upperCategory":"kbaseball","playTime":"03:22","videoMasterId":1080870,"title":" '5타수 3안타 1타점 1득점' 삼성 강민호 ＂더 열...","category":"baseballlesson","masterVideoId":"BD5E9309D49D6986A3966ADFD10800810E81"},{"hit":58,"thumbnail":"https://sports-phinf.pstatic.net//20230619_117/1687136249959DgLOG_JPEG/CA202306190014.jpg","originalTitle":"[#인터뷰] '삼성의 현재이자 미래' 삼성 김지찬 ＂연패를 끊을 수 있어서 좋습니다＂ I #베이스볼투나잇 2023.06.18","videoType":"6","upperCategory":"kbaseball","playTime":"03:43","videoMasterId":1080869,"title":" '삼성의 현재이자 미래' 삼성 김지찬 ＂연패를 끊을 ...","category":"baseballlesson","masterVideoId":"654E138CFB9E5D52E0B3285572F2E8ADBC70"},{"hit":115,"thumbnail":"https://sports-phinf.pstatic.net//20230619_191/1687135350754kar4C_JPEG/CA202306190012.jpg","originalTitle":"'2회 7득점 빅이닝' LG 초반 카운터 펀치, 홈런 포함 8안타 7득점 맹공 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:34","videoMasterId":1080867,"title":"'2회 7득점 빅이닝' LG 초반 카운터 펀치, 홈런 ...","category":"baseballlesson","masterVideoId":"0FFE05DC09588983C7A871356ECCCE0CA94E"},{"hit":65,"thumbnail":"https://sports-phinf.pstatic.net//20230619_215/1687134995211Tq0KL_PNG/CA202306190011.png","originalTitle":"'개인 12연승' 플럿코, 7이닝 무사사구 시즌 최다 9K! 시즌 9승 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:07","videoMasterId":1080865,"title":"'개인 12연승' 플럿코, 7이닝 무사사구 시즌 최다 ...","category":"baseballlesson","masterVideoId":"E532639F3FA3996BB4678456F226F0183712"},{"hit":47,"thumbnail":"https://sports-phinf.pstatic.net//20230619_13/1687134695060gHSOf_JPEG/CA202306190010.jpg","originalTitle":"'부진탈출' 한동희 4월 .169 → 5월 이후 .278 올라오고 있는 타격감 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"01:51","videoMasterId":1080863,"title":"'부진탈출' 한동희 4월 . 169 → 5월 이후 . ...","category":"baseballlesson","masterVideoId":"16059DDB96406E580704FE8862D60967725A"},{"hit":39,"thumbnail":"https://sports-phinf.pstatic.net//20230619_76/1687134453516YGzbq_PNG/CA202306190009.png","originalTitle":"'속구 평균 145.4km/h' 반즈, 7이닝 4K 무실점 승리I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:33","videoMasterId":1080861,"title":"'속구 평균 145. 4km/h' 반즈, 7이닝 4K ...","category":"baseballlesson","masterVideoId":"02E37853FC889832820064038139B1DA06D8"},{"hit":34,"thumbnail":"https://sports-phinf.pstatic.net//20230619_74/1687134089666RhpUo_JPEG/CA202306190008.jpg","originalTitle":"최채흥, 6/13 복귀전 후 나흘 휴식 등판 4.2이닝 5실점 교체 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:07","videoMasterId":1080860,"title":"최채흥, 6/13 복귀전 후 나흘 휴식 등판 4. 2이...","category":"baseballlesson","masterVideoId":"BEDDA68DED100A8F303A1C835DE2F0FDBDF1"},{"hit":29,"thumbnail":"https://sports-phinf.pstatic.net//20230619_62/16871337920402AQaW_PNG/CA202306190007.png","originalTitle":"'뒷문을 잠그다' 삼성 불펜진, 3이닝 무실점 합작 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:28","videoMasterId":1080847,"title":"'뒷문을 잠그다' 삼성 불펜진, 3이닝 무실점 합작 I...","category":"baseballlesson","masterVideoId":"758CBC0604D7398F236104CC676647DAE467"},{"hit":35,"thumbnail":"https://sports-phinf.pstatic.net//20230619_123/1687133551981DuQrr_JPEG/CA202306190006.jpg","originalTitle":"'5연패 사슬을 끊다' 김지찬 초구 타격, 김성윤 완벽한 콘택트 플레이로 추가점 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:04","videoMasterId":1080846,"title":"'5연패 사슬을 끊다' 김지찬 초구 타격, 김성윤 완벽...","category":"baseballlesson","masterVideoId":"A9BC14DE768A52562554D32D06A6320D750B"},{"hit":37,"thumbnail":"https://sports-phinf.pstatic.net//20230619_63/16871335502791COjw_PNG/CA202306190005.png","originalTitle":"'세대교체 진행중' 김지찬-김현준 테이블세터, 이재현 6안타 4득점 3타점 합작 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"03:00","videoMasterId":1080845,"title":"'세대교체 진행중' 김지찬-김현준 테이블세터, 이재현 ...","category":"baseballlesson","masterVideoId":"E37E24A4C50AF138DF1D72C0FAABA9FCD700"},{"hit":41,"thumbnail":"https://sports-phinf.pstatic.net//20230619_142/1687133551115vs4kc_PNG/CA202306190004.png","originalTitle":"'리그 유일 3포수 체제' DH강민호-C김태군- 1B김재성 7안타 3타점 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:47","videoMasterId":1080844,"title":"'리그 유일 3포수 체제' DH강민호-C김태군- 1B김...","category":"baseballlesson","masterVideoId":"BAF9D65B19C59833C089B46ED2D16C5D6585"},{"hit":370,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_11/w5MAi_1687096768352P70SB_JPEG/1687096627789.jpg","originalTitle":"한화 마침내 외국인 타자 영입 ㅣ닉 윌리엄스 선택 비하인드ㅣ BA 선정 톱 MLB 유망주 출신?","videoType":"7","upperCategory":"kbaseball","playTime":"08:02","videoMasterId":1080843,"title":"한화 마침내 외국인 타자 영입 ㅣ닉 윌리엄스 선택 비하...","category":"baseballlesson","masterVideoId":"C20C2E0D030275BBA1D7189A7EECD9C14039"},{"hit":410,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_265/On71M_1687129143973cwVlU_JPEG/1687129041866.jpg","originalTitle":"한화 닉 윌리엄스 영입까지│후보 리스트 및 접촉 선수들 공개│정근우의 야구이슈다","videoType":"7","upperCategory":"kbaseball","playTime":"10:39","videoMasterId":1080842,"title":"한화 닉 윌리엄스 영입까지│후보 리스트 및 접촉 선수들...","category":"baseballlesson","masterVideoId":"9FA4EF2945CD7BB70E13AB69615B6AC143AE"},{"hit":588,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_9/vZiHB_1687114437604GcUTS_JPEG/1687114404029.jpeg","originalTitle":"한화 이글스 거포 영입? 닉 윌리엄스는 어떤 선수인가? | DKTV","videoType":"7","upperCategory":"kbaseball","playTime":"05:37","videoMasterId":1080836,"title":"한화 이글스 거포 영입? 닉 윌리엄스는 어떤 선수인가?...","category":"baseballlesson","masterVideoId":"76241A7101720EA56597880AE4DB2F78ED65"},{"hit":314,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_68/egLF2_1687089415941bEbpV_JPEG/1687089414026.jpg","originalTitle":"이진영 코치,'역시 코치는 코치 조형우 반려견도 단숨에 훈련 성공' [O! SPORTS]","videoType":"7","upperCategory":"kbaseball","playTime":"01:34","videoMasterId":1080837,"title":"이진영 코치'역시 코치는 코치 조형우 반려견도 단숨에 ...","category":"baseballlesson","masterVideoId":"3B5F0F4945C82EFCD9C519B4306C5D34BCF2"},{"hit":1,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_86/Rsx86_1687089205572GYgar_JPEG/1687089203378.jpg","originalTitle":"이진영 코치,'역시 코치는 코치 조형우 반려견도 단숨에 훈련 성공' [O! SPORTS]","videoType":"7","upperCategory":"kbaseball","playTime":"01:34","videoMasterId":1080788,"title":"이진영 코치'역시 코치는 코치 조형우 반려견도 단숨에 ...","category":"baseballlesson","masterVideoId":"B388302BA0B90C25D2824BBEE4B0DA1C3A7D"},{"hit":784,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_140/jFmxc_1686974956273LP8V4_JPEG/1686974241100.jpg","originalTitle":"장현석이 어느 정도인지 물어봤습니다 | 배지헌의 크보썰전 EP. 03","videoType":"7","upperCategory":"kbaseball","playTime":"08:47","videoMasterId":1080617,"title":"장현석이 어느 정도인지 물어봤습니다 | 배지헌의 크보썰...","category":"baseballlesson","masterVideoId":"42E75D6DE90A01406B8822D5B2DCD28D74D1"},{"hit":4535,"thumbnail":"https://phinf.pstatic.net/tvcast/20230614_191/H9mlI_16867268169902GV3M_JPEG/1686726807426.jpg","originalTitle":"성인구장을 쉽게 넘겨버리는 19살 소녀의 배팅","videoType":"7","upperCategory":"kbaseball","playTime":"09:07","videoMasterId":1080612,"title":"성인구장을 쉽게 넘겨버리는 19살 소녀의 배팅","category":"baseballlesson","masterVideoId":"68D4060A4C7C126178192F2A034F4C1F6D20"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_meta","firstData":{"dataId":1644737912463,"isEnable":"Y","title":"창작자","category":"baseballlesson","videoList":[{"hit":13,"thumbnail":"https://sports-phinf.pstatic.net//20230619_280/1687151791720VYI2q_JPEG/CA202306190020.jpg","originalTitle":"'싸다구 매치?!' '3연전 합계 55득점!' 2023 최고의 대첩 NC vs KIA 3연전 #베이스볼런치 2023.06.19","videoType":"","upperCategory":"kbaseball","playTime":"08:53","videoMasterId":1080904,"title":"'싸다구 매치?! ' '3연전 합계 55득점! ' 20...","category":"baseballlesson","masterVideoId":"B43A78B3C8EC04D36377D0D35E98EA296CC1"},{"hit":170,"thumbnail":"https://sports-phinf.pstatic.net//20230619_171/16871466895458QWkB_JPEG/CA202306190018.jpg","originalTitle":"2군행 오승환, 관중석 공 투척은 너무했다! / 포수 김재성 1루 출전이 최선? #베이스볼런치 2023.06.19","videoType":"10001","upperCategory":"kbaseball","playTime":"15:06","videoMasterId":1080892,"title":"2군행 오승환, 관중석 공 투척은 너무했다! / 포수 ...","category":"baseballlesson","masterVideoId":"EE31321C83794D6E25987B57D78652ABE624"},{"hit":91,"thumbnail":"https://sports-phinf.pstatic.net//20230619_297/1687136790786EDrDr_JPEG/CA202306190015.jpg","originalTitle":"[#인터뷰] '5타수 3안타 1타점 1득점' 삼성 강민호 ＂더 열심히 하겠습니다＂ I #베이스볼투나잇 2023.06.18","videoType":"6","upperCategory":"kbaseball","playTime":"03:22","videoMasterId":1080870,"title":" '5타수 3안타 1타점 1득점' 삼성 강민호 ＂더 열...","category":"baseballlesson","masterVideoId":"BD5E9309D49D6986A3966ADFD10800810E81"},{"hit":58,"thumbnail":"https://sports-phinf.pstatic.net//20230619_117/1687136249959DgLOG_JPEG/CA202306190014.jpg","originalTitle":"[#인터뷰] '삼성의 현재이자 미래' 삼성 김지찬 ＂연패를 끊을 수 있어서 좋습니다＂ I #베이스볼투나잇 2023.06.18","videoType":"6","upperCategory":"kbaseball","playTime":"03:43","videoMasterId":1080869,"title":" '삼성의 현재이자 미래' 삼성 김지찬 ＂연패를 끊을 ...","category":"baseballlesson","masterVideoId":"654E138CFB9E5D52E0B3285572F2E8ADBC70"},{"hit":115,"thumbnail":"https://sports-phinf.pstatic.net//20230619_191/1687135350754kar4C_JPEG/CA202306190012.jpg","originalTitle":"'2회 7득점 빅이닝' LG 초반 카운터 펀치, 홈런 포함 8안타 7득점 맹공 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:34","videoMasterId":1080867,"title":"'2회 7득점 빅이닝' LG 초반 카운터 펀치, 홈런 ...","category":"baseballlesson","masterVideoId":"0FFE05DC09588983C7A871356ECCCE0CA94E"},{"hit":65,"thumbnail":"https://sports-phinf.pstatic.net//20230619_215/1687134995211Tq0KL_PNG/CA202306190011.png","originalTitle":"'개인 12연승' 플럿코, 7이닝 무사사구 시즌 최다 9K! 시즌 9승 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:07","videoMasterId":1080865,"title":"'개인 12연승' 플럿코, 7이닝 무사사구 시즌 최다 ...","category":"baseballlesson","masterVideoId":"E532639F3FA3996BB4678456F226F0183712"},{"hit":47,"thumbnail":"https://sports-phinf.pstatic.net//20230619_13/1687134695060gHSOf_JPEG/CA202306190010.jpg","originalTitle":"'부진탈출' 한동희 4월 .169 → 5월 이후 .278 올라오고 있는 타격감 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"01:51","videoMasterId":1080863,"title":"'부진탈출' 한동희 4월 . 169 → 5월 이후 . ...","category":"baseballlesson","masterVideoId":"16059DDB96406E580704FE8862D60967725A"},{"hit":39,"thumbnail":"https://sports-phinf.pstatic.net//20230619_76/1687134453516YGzbq_PNG/CA202306190009.png","originalTitle":"'속구 평균 145.4km/h' 반즈, 7이닝 4K 무실점 승리I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:33","videoMasterId":1080861,"title":"'속구 평균 145. 4km/h' 반즈, 7이닝 4K ...","category":"baseballlesson","masterVideoId":"02E37853FC889832820064038139B1DA06D8"},{"hit":34,"thumbnail":"https://sports-phinf.pstatic.net//20230619_74/1687134089666RhpUo_JPEG/CA202306190008.jpg","originalTitle":"최채흥, 6/13 복귀전 후 나흘 휴식 등판 4.2이닝 5실점 교체 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:07","videoMasterId":1080860,"title":"최채흥, 6/13 복귀전 후 나흘 휴식 등판 4. 2이...","category":"baseballlesson","masterVideoId":"BEDDA68DED100A8F303A1C835DE2F0FDBDF1"},{"hit":29,"thumbnail":"https://sports-phinf.pstatic.net//20230619_62/16871337920402AQaW_PNG/CA202306190007.png","originalTitle":"'뒷문을 잠그다' 삼성 불펜진, 3이닝 무실점 합작 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:28","videoMasterId":1080847,"title":"'뒷문을 잠그다' 삼성 불펜진, 3이닝 무실점 합작 I...","category":"baseballlesson","masterVideoId":"758CBC0604D7398F236104CC676647DAE467"},{"hit":35,"thumbnail":"https://sports-phinf.pstatic.net//20230619_123/1687133551981DuQrr_JPEG/CA202306190006.jpg","originalTitle":"'5연패 사슬을 끊다' 김지찬 초구 타격, 김성윤 완벽한 콘택트 플레이로 추가점 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:04","videoMasterId":1080846,"title":"'5연패 사슬을 끊다' 김지찬 초구 타격, 김성윤 완벽...","category":"baseballlesson","masterVideoId":"A9BC14DE768A52562554D32D06A6320D750B"},{"hit":37,"thumbnail":"https://sports-phinf.pstatic.net//20230619_63/16871335502791COjw_PNG/CA202306190005.png","originalTitle":"'세대교체 진행중' 김지찬-김현준 테이블세터, 이재현 6안타 4득점 3타점 합작 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"03:00","videoMasterId":1080845,"title":"'세대교체 진행중' 김지찬-김현준 테이블세터, 이재현 ...","category":"baseballlesson","masterVideoId":"E37E24A4C50AF138DF1D72C0FAABA9FCD700"},{"hit":41,"thumbnail":"https://sports-phinf.pstatic.net//20230619_142/1687133551115vs4kc_PNG/CA202306190004.png","originalTitle":"'리그 유일 3포수 체제' DH강민호-C김태군- 1B김재성 7안타 3타점 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:47","videoMasterId":1080844,"title":"'리그 유일 3포수 체제' DH강민호-C김태군- 1B김...","category":"baseballlesson","masterVideoId":"BAF9D65B19C59833C089B46ED2D16C5D6585"},{"hit":370,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_11/w5MAi_1687096768352P70SB_JPEG/1687096627789.jpg","originalTitle":"한화 마침내 외국인 타자 영입 ㅣ닉 윌리엄스 선택 비하인드ㅣ BA 선정 톱 MLB 유망주 출신?","videoType":"7","upperCategory":"kbaseball","playTime":"08:02","videoMasterId":1080843,"title":"한화 마침내 외국인 타자 영입 ㅣ닉 윌리엄스 선택 비하...","category":"baseballlesson","masterVideoId":"C20C2E0D030275BBA1D7189A7EECD9C14039"},{"hit":410,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_265/On71M_1687129143973cwVlU_JPEG/1687129041866.jpg","originalTitle":"한화 닉 윌리엄스 영입까지│후보 리스트 및 접촉 선수들 공개│정근우의 야구이슈다","videoType":"7","upperCategory":"kbaseball","playTime":"10:39","videoMasterId":1080842,"title":"한화 닉 윌리엄스 영입까지│후보 리스트 및 접촉 선수들...","category":"baseballlesson","masterVideoId":"9FA4EF2945CD7BB70E13AB69615B6AC143AE"},{"hit":588,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_9/vZiHB_1687114437604GcUTS_JPEG/1687114404029.jpeg","originalTitle":"한화 이글스 거포 영입? 닉 윌리엄스는 어떤 선수인가? | DKTV","videoType":"7","upperCategory":"kbaseball","playTime":"05:37","videoMasterId":1080836,"title":"한화 이글스 거포 영입? 닉 윌리엄스는 어떤 선수인가?...","category":"baseballlesson","masterVideoId":"76241A7101720EA56597880AE4DB2F78ED65"},{"hit":314,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_68/egLF2_1687089415941bEbpV_JPEG/1687089414026.jpg","originalTitle":"이진영 코치,'역시 코치는 코치 조형우 반려견도 단숨에 훈련 성공' [O! SPORTS]","videoType":"7","upperCategory":"kbaseball","playTime":"01:34","videoMasterId":1080837,"title":"이진영 코치'역시 코치는 코치 조형우 반려견도 단숨에 ...","category":"baseballlesson","masterVideoId":"3B5F0F4945C82EFCD9C519B4306C5D34BCF2"},{"hit":1,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_86/Rsx86_1687089205572GYgar_JPEG/1687089203378.jpg","originalTitle":"이진영 코치,'역시 코치는 코치 조형우 반려견도 단숨에 훈련 성공' [O! SPORTS]","videoType":"7","upperCategory":"kbaseball","playTime":"01:34","videoMasterId":1080788,"title":"이진영 코치'역시 코치는 코치 조형우 반려견도 단숨에 ...","category":"baseballlesson","masterVideoId":"B388302BA0B90C25D2824BBEE4B0DA1C3A7D"},{"hit":784,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_140/jFmxc_1686974956273LP8V4_JPEG/1686974241100.jpg","originalTitle":"장현석이 어느 정도인지 물어봤습니다 | 배지헌의 크보썰전 EP. 03","videoType":"7","upperCategory":"kbaseball","playTime":"08:47","videoMasterId":1080617,"title":"장현석이 어느 정도인지 물어봤습니다 | 배지헌의 크보썰...","category":"baseballlesson","masterVideoId":"42E75D6DE90A01406B8822D5B2DCD28D74D1"},{"hit":4535,"thumbnail":"https://phinf.pstatic.net/tvcast/20230614_191/H9mlI_16867268169902GV3M_JPEG/1686726807426.jpg","originalTitle":"성인구장을 쉽게 넘겨버리는 19살 소녀의 배팅","videoType":"7","upperCategory":"kbaseball","playTime":"09:07","videoMasterId":1080612,"title":"성인구장을 쉽게 넘겨버리는 19살 소녀의 배팅","category":"baseballlesson","masterVideoId":"68D4060A4C7C126178192F2A034F4C1F6D20"}]},"dataSetForm":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},{"menuId":null,"itemId":"1591321079166","isEnable":"Y","title":"KBO TV","displayOrder":null,"score":0.0,"templateId":"pc_center_video_meta","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1591321079166","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_meta","templateName":"종목홈 영상리스트 (메타)","dataSetId":"pc/center_video_meta","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_meta"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1591321083174,"isEnable":"Y","title":"KBO TV","type":"season|kbotv|KBO TV","videoList":[{"hit":224,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_56/8WBMN_1687143651873X5GWg_JPEG/27a74bf5-0e4d-11ee-8de4-a0369ffdb264_10.jpg","originalTitle":"[크보캐치] 김영웅이 왜 빠른지 알아요?","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:43","videoMasterId":1080893,"title":" 김영웅이 왜 빠른지 알아요?","category":"kbo","masterVideoId":"56CC3D2122D82FDC72BE141B435665847E88"},{"hit":252,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_211/cD1AO_1686899511111U0SHX_JPEG/d9eab22f-0c14-11ee-a103-505dac8c37f3_03.jpg","originalTitle":"[2023 KBO DREAM CUP 독립야구대회] 현장 스케치 이모저모","videoType":"7","upperCategory":"kbaseball","playTime":"06:10","videoMasterId":1080402,"title":" 현장 스케치 이모저모","category":"kbo","masterVideoId":"9BC2B65D715C8BA04FEA231E17F531B10E29"},{"hit":2989,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_163/WnAku_1686892418697fgm9p_JPEG/6f4ddbe2-0c04-11ee-9d52-48df379ccacc_08.jpg","originalTitle":"[크보캐치] 오스틴은 결과로 보여줌","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:38","videoMasterId":1080081,"title":" 오스틴은 결과로 보여줌","category":"kbo","masterVideoId":"3441F005BFF9306C5EFE08BA95D58F5A04AF"},{"hit":3314,"thumbnail":"https://phinf.pstatic.net/tvcast/20230615_268/Oyfx7_1686802843162j0hoq_JPEG/9661f8f4-0b31-11ee-befd-48df379cca40_07.jpg","originalTitle":"[크보캐치] ??? : \"나 영웅이야...!!\"","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:37","videoMasterId":1079755,"title":" ??? : \"나 영웅이야…!! \"","category":"kbo","masterVideoId":"EF4BB7DC97DB9E5DCDC567F2E0731E45F005"},{"hit":3892,"thumbnail":"https://phinf.pstatic.net/tvcast/20230614_47/Azhso_1686722453669pNyKF_JPEG/ab6c78f2-0a78-11ee-81ca-a0369ffdb430_08.jpg","originalTitle":"[크보캐치] 그림같은 캐치","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:38","videoMasterId":1079447,"title":" 그림같은 캐치","category":"kbo","masterVideoId":"A99633BB2B96D14BC4F566FB526A2C868B1E"},{"hit":3441,"thumbnail":"https://phinf.pstatic.net/tvcast/20230614_125/Qszzn_168672236119696I0X_JPEG/80fef67b-0a78-11ee-bda5-d4f5ef590144_04.jpg","originalTitle":"[크보탑10] 우익수야? 중견수야?","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:23","videoMasterId":1079446,"title":" 우익수야? 중견수야?","category":"kbo","masterVideoId":"218DFD1CD71332D115931AB575D276BEF723"},{"hit":1064,"thumbnail":"https://phinf.pstatic.net/tvcast/20230613_278/Fz54M_1686643561677bMM2v_PNG/1686643271821.png","originalTitle":"[크보탑10] 눈을 뗄 수 없는 명장면들만 모아왔습니다!｜6.6~6.11｜10회｜KBO 핫클립｜","videoType":"1","upperCategory":"kbaseball","playTime":"05:20","videoMasterId":1079172,"title":" 눈을 뗄 수 없는 명장면들만 모아왔습니다! ｜6. 6...","category":"kbo","masterVideoId":"52ABDFA702A14A9F19CA01F6DFE7362ECB8A"},{"hit":3304,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_157/9u8Fy_1686549250496tgxlg_JPEG/43591a79-08e5-11ee-8c05-505dac8c38f5_03.jpg","originalTitle":"[크보캐치] 찬란하게 빛날 이유찬✨","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:47","videoMasterId":1078990,"title":" 찬란하게 빛날 이유찬✨","category":"kbo","masterVideoId":"9DE98F999228779437B262EE1B296CDDB4EC"},{"hit":4090,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_76/1gG2Y_1686538938316JEsqt_JPEG/7464443e-08cd-11ee-9971-48df37ae3dc4_03.jpg","originalTitle":"[크보캐치] 끝내주는 남자, 강민호","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:55","videoMasterId":1078972,"title":" 끝내주는 남자, 강민호","category":"kbo","masterVideoId":"C74093E490EB5E36BC64BF6EE485F038C56E"},{"hit":6265,"thumbnail":"https://phinf.pstatic.net/tvcast/20230609_78/P7sMp_1686283517614fEO1i_JPEG/c34a09e0-067a-11ee-bb6e-505dac8c35ff_10.jpg","originalTitle":"[크보캐치] 아~ 야구 참 쉽다","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:40","videoMasterId":1078163,"title":" 아~ 야구 참 쉽다","category":"kbo","masterVideoId":"3D8572BB666A64B8BE119C7C5F97885BFB1D"},{"hit":3469,"thumbnail":"https://phinf.pstatic.net/tvcast/20230608_225/siO2U_1686213522815WPxtX_JPEG/bb97f674-05d7-11ee-bf19-a0369ffac7dc_02.jpg","originalTitle":"[신한은행 SOL KBO 리그 5월 MVP - LG 박동원]","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:54","videoMasterId":1077918,"title":"","category":"kbo","masterVideoId":"2C8B6F00FCC857C60FDCE63C567A7C1AC031"},{"hit":4745,"thumbnail":"https://phinf.pstatic.net/tvcast/20230608_33/Zf1W5_1686188670046hXT0N_JPEG/c485ef0b-059d-11ee-bf19-a0369ffac7dc_07.jpg","originalTitle":"[크보캐치] 야구장에 가야하는 이유","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:34","videoMasterId":1077880,"title":" 야구장에 가야하는 이유","category":"kbo","masterVideoId":"5BA614EE4037842377F97E788E22A210D8B9"},{"hit":10761,"thumbnail":"https://phinf.pstatic.net/tvcast/20230607_2/hTVe2_1686117660970hOQzG_JPEG/64e31bf7-04f8-11ee-9ab8-48df3772577a_10.jpg","originalTitle":"[크보탑10] 나는 누구...?","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:39","videoMasterId":1077614,"title":" 나는 누구…?","category":"kbo","masterVideoId":"61C2B40AF8EF2EDC1B8F231E17F531B10E29"},{"hit":4790,"thumbnail":"https://phinf.pstatic.net/tvcast/20230607_241/js27I_1686110561262h4tcN_JPEG/12be7774-04e8-11ee-bfa2-a0369ffab468_06.jpg","originalTitle":"[크보픽] ???: 무조건 뽑습니다.","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:34","videoMasterId":1077605,"title":" ??? : 무조건 뽑습니다.","category":"kbo","masterVideoId":"E65322CD8EC90559B8D97B0AEF9B2203B802"},{"hit":4014,"thumbnail":"https://phinf.pstatic.net/tvcast/20230607_247/ZOD1o_1686109402155UEBba_JPEG/578c7aa8-04e5-11ee-bf11-b4055da5489b_10.jpg","originalTitle":"[크보캐치] 끝판대장. 돌부처. 오승환.","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:58","videoMasterId":1077593,"title":" 끝판대장. 돌부처. 오승환.","category":"kbo","masterVideoId":"6D47A46B69034E6214F0021DC9E8493B2099"},{"hit":1090,"thumbnail":"https://phinf.pstatic.net/tvcast/20230606_26/ESuOv_1686034674460BXWg2_JPEG/1686034629216.jpg","originalTitle":"[크보탑10] 이게 바로 KBO다! KBO 리그의 명장면 속으로!｜5.30~6.4｜9회｜KBO 핫클립｜","videoType":"7","upperCategory":"kbaseball","playTime":"06:13","videoMasterId":1077406,"title":" 이게 바로 KBO다! KBO 리그의 명장면 속으로! ...","category":"kbo","masterVideoId":"02763BD901EF1F8DD70C7FA87397FB661FA8"},{"hit":8535,"thumbnail":"https://phinf.pstatic.net/tvcast/20230605_106/W6SCX_1685955786876F0vnk_PNG/1685955757541.png","originalTitle":"[크보픽] 썸네일에 빛밖에 안보여요｜5월 4주~6월 1주차｜5회｜KBO 핫클립!","videoType":"7","upperCategory":"kbaseball","playTime":"04:13","videoMasterId":1077221,"title":" 썸네일에 빛밖에 안보여요｜5월 4주~6월 1주차｜5회...","category":"kbo","masterVideoId":"053CC96C32E8088124326AC265F0176E6ECC"},{"hit":19917,"thumbnail":"https://phinf.pstatic.net/tvcast/20230605_129/PprgL_1685948166032va6d2_JPEG/ecde8aa6-036d-11ee-92e7-a0369ffdebe4_10.jpg","originalTitle":"[크보캐치] 오오 롯데 이학주~","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:47","videoMasterId":1077202,"title":" 오오 롯데 이학주~","category":"kbo","masterVideoId":"8C2008CE14D84C3ECEE8528E2FCBA8005B17"},{"hit":21467,"thumbnail":"https://phinf.pstatic.net/tvcast/20230605_170/D4Rry_1685945378722BQ0u8_JPEG/667284ec-0367-11ee-9d52-48df379ccacc_07.jpg","originalTitle":"[크보캐치] 빠던이란 이런 것","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:54","videoMasterId":1077196,"title":" 빠던이란 이런 것","category":"kbo","masterVideoId":"0A48AEC271817D2B966E3845757FB0C186E7"},{"hit":7468,"thumbnail":"https://phinf.pstatic.net/tvcast/20230602_3/3Ru7w_1685675190030rDUQV_JPEG/4a1aa685-00f2-11ee-bb6e-505dac8c35ff_05.jpg","originalTitle":"[크보캐치] 정은원, 노시환, 채은성, 김인환, let's go~","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:35","videoMasterId":1076249,"title":" 정은원, 노시환, 채은성, 김인환, let's go~","category":"kbo","masterVideoId":"91BB811D7798651D4EFA1EE30248B4CBA505"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_meta","firstData":{"dataId":1591321083174,"isEnable":"Y","title":"KBO TV","type":"season|kbotv|KBO TV","videoList":[{"hit":224,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_56/8WBMN_1687143651873X5GWg_JPEG/27a74bf5-0e4d-11ee-8de4-a0369ffdb264_10.jpg","originalTitle":"[크보캐치] 김영웅이 왜 빠른지 알아요?","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:43","videoMasterId":1080893,"title":" 김영웅이 왜 빠른지 알아요?","category":"kbo","masterVideoId":"56CC3D2122D82FDC72BE141B435665847E88"},{"hit":252,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_211/cD1AO_1686899511111U0SHX_JPEG/d9eab22f-0c14-11ee-a103-505dac8c37f3_03.jpg","originalTitle":"[2023 KBO DREAM CUP 독립야구대회] 현장 스케치 이모저모","videoType":"7","upperCategory":"kbaseball","playTime":"06:10","videoMasterId":1080402,"title":" 현장 스케치 이모저모","category":"kbo","masterVideoId":"9BC2B65D715C8BA04FEA231E17F531B10E29"},{"hit":2989,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_163/WnAku_1686892418697fgm9p_JPEG/6f4ddbe2-0c04-11ee-9d52-48df379ccacc_08.jpg","originalTitle":"[크보캐치] 오스틴은 결과로 보여줌","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:38","videoMasterId":1080081,"title":" 오스틴은 결과로 보여줌","category":"kbo","masterVideoId":"3441F005BFF9306C5EFE08BA95D58F5A04AF"},{"hit":3314,"thumbnail":"https://phinf.pstatic.net/tvcast/20230615_268/Oyfx7_1686802843162j0hoq_JPEG/9661f8f4-0b31-11ee-befd-48df379cca40_07.jpg","originalTitle":"[크보캐치] ??? : \"나 영웅이야...!!\"","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:37","videoMasterId":1079755,"title":" ??? : \"나 영웅이야…!! \"","category":"kbo","masterVideoId":"EF4BB7DC97DB9E5DCDC567F2E0731E45F005"},{"hit":3892,"thumbnail":"https://phinf.pstatic.net/tvcast/20230614_47/Azhso_1686722453669pNyKF_JPEG/ab6c78f2-0a78-11ee-81ca-a0369ffdb430_08.jpg","originalTitle":"[크보캐치] 그림같은 캐치","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:38","videoMasterId":1079447,"title":" 그림같은 캐치","category":"kbo","masterVideoId":"A99633BB2B96D14BC4F566FB526A2C868B1E"},{"hit":3441,"thumbnail":"https://phinf.pstatic.net/tvcast/20230614_125/Qszzn_168672236119696I0X_JPEG/80fef67b-0a78-11ee-bda5-d4f5ef590144_04.jpg","originalTitle":"[크보탑10] 우익수야? 중견수야?","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:23","videoMasterId":1079446,"title":" 우익수야? 중견수야?","category":"kbo","masterVideoId":"218DFD1CD71332D115931AB575D276BEF723"},{"hit":1064,"thumbnail":"https://phinf.pstatic.net/tvcast/20230613_278/Fz54M_1686643561677bMM2v_PNG/1686643271821.png","originalTitle":"[크보탑10] 눈을 뗄 수 없는 명장면들만 모아왔습니다!｜6.6~6.11｜10회｜KBO 핫클립｜","videoType":"1","upperCategory":"kbaseball","playTime":"05:20","videoMasterId":1079172,"title":" 눈을 뗄 수 없는 명장면들만 모아왔습니다! ｜6. 6...","category":"kbo","masterVideoId":"52ABDFA702A14A9F19CA01F6DFE7362ECB8A"},{"hit":3304,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_157/9u8Fy_1686549250496tgxlg_JPEG/43591a79-08e5-11ee-8c05-505dac8c38f5_03.jpg","originalTitle":"[크보캐치] 찬란하게 빛날 이유찬✨","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:47","videoMasterId":1078990,"title":" 찬란하게 빛날 이유찬✨","category":"kbo","masterVideoId":"9DE98F999228779437B262EE1B296CDDB4EC"},{"hit":4090,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_76/1gG2Y_1686538938316JEsqt_JPEG/7464443e-08cd-11ee-9971-48df37ae3dc4_03.jpg","originalTitle":"[크보캐치] 끝내주는 남자, 강민호","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:55","videoMasterId":1078972,"title":" 끝내주는 남자, 강민호","category":"kbo","masterVideoId":"C74093E490EB5E36BC64BF6EE485F038C56E"},{"hit":6265,"thumbnail":"https://phinf.pstatic.net/tvcast/20230609_78/P7sMp_1686283517614fEO1i_JPEG/c34a09e0-067a-11ee-bb6e-505dac8c35ff_10.jpg","originalTitle":"[크보캐치] 아~ 야구 참 쉽다","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:40","videoMasterId":1078163,"title":" 아~ 야구 참 쉽다","category":"kbo","masterVideoId":"3D8572BB666A64B8BE119C7C5F97885BFB1D"},{"hit":3469,"thumbnail":"https://phinf.pstatic.net/tvcast/20230608_225/siO2U_1686213522815WPxtX_JPEG/bb97f674-05d7-11ee-bf19-a0369ffac7dc_02.jpg","originalTitle":"[신한은행 SOL KBO 리그 5월 MVP - LG 박동원]","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:54","videoMasterId":1077918,"title":"","category":"kbo","masterVideoId":"2C8B6F00FCC857C60FDCE63C567A7C1AC031"},{"hit":4745,"thumbnail":"https://phinf.pstatic.net/tvcast/20230608_33/Zf1W5_1686188670046hXT0N_JPEG/c485ef0b-059d-11ee-bf19-a0369ffac7dc_07.jpg","originalTitle":"[크보캐치] 야구장에 가야하는 이유","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:34","videoMasterId":1077880,"title":" 야구장에 가야하는 이유","category":"kbo","masterVideoId":"5BA614EE4037842377F97E788E22A210D8B9"},{"hit":10761,"thumbnail":"https://phinf.pstatic.net/tvcast/20230607_2/hTVe2_1686117660970hOQzG_JPEG/64e31bf7-04f8-11ee-9ab8-48df3772577a_10.jpg","originalTitle":"[크보탑10] 나는 누구...?","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:39","videoMasterId":1077614,"title":" 나는 누구…?","category":"kbo","masterVideoId":"61C2B40AF8EF2EDC1B8F231E17F531B10E29"},{"hit":4790,"thumbnail":"https://phinf.pstatic.net/tvcast/20230607_241/js27I_1686110561262h4tcN_JPEG/12be7774-04e8-11ee-bfa2-a0369ffab468_06.jpg","originalTitle":"[크보픽] ???: 무조건 뽑습니다.","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:34","videoMasterId":1077605,"title":" ??? : 무조건 뽑습니다.","category":"kbo","masterVideoId":"E65322CD8EC90559B8D97B0AEF9B2203B802"},{"hit":4014,"thumbnail":"https://phinf.pstatic.net/tvcast/20230607_247/ZOD1o_1686109402155UEBba_JPEG/578c7aa8-04e5-11ee-bf11-b4055da5489b_10.jpg","originalTitle":"[크보캐치] 끝판대장. 돌부처. 오승환.","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:58","videoMasterId":1077593,"title":" 끝판대장. 돌부처. 오승환.","category":"kbo","masterVideoId":"6D47A46B69034E6214F0021DC9E8493B2099"},{"hit":1090,"thumbnail":"https://phinf.pstatic.net/tvcast/20230606_26/ESuOv_1686034674460BXWg2_JPEG/1686034629216.jpg","originalTitle":"[크보탑10] 이게 바로 KBO다! KBO 리그의 명장면 속으로!｜5.30~6.4｜9회｜KBO 핫클립｜","videoType":"7","upperCategory":"kbaseball","playTime":"06:13","videoMasterId":1077406,"title":" 이게 바로 KBO다! KBO 리그의 명장면 속으로! ...","category":"kbo","masterVideoId":"02763BD901EF1F8DD70C7FA87397FB661FA8"},{"hit":8535,"thumbnail":"https://phinf.pstatic.net/tvcast/20230605_106/W6SCX_1685955786876F0vnk_PNG/1685955757541.png","originalTitle":"[크보픽] 썸네일에 빛밖에 안보여요｜5월 4주~6월 1주차｜5회｜KBO 핫클립!","videoType":"7","upperCategory":"kbaseball","playTime":"04:13","videoMasterId":1077221,"title":" 썸네일에 빛밖에 안보여요｜5월 4주~6월 1주차｜5회...","category":"kbo","masterVideoId":"053CC96C32E8088124326AC265F0176E6ECC"},{"hit":19917,"thumbnail":"https://phinf.pstatic.net/tvcast/20230605_129/PprgL_1685948166032va6d2_JPEG/ecde8aa6-036d-11ee-92e7-a0369ffdebe4_10.jpg","originalTitle":"[크보캐치] 오오 롯데 이학주~","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:47","videoMasterId":1077202,"title":" 오오 롯데 이학주~","category":"kbo","masterVideoId":"8C2008CE14D84C3ECEE8528E2FCBA8005B17"},{"hit":21467,"thumbnail":"https://phinf.pstatic.net/tvcast/20230605_170/D4Rry_1685945378722BQ0u8_JPEG/667284ec-0367-11ee-9d52-48df379ccacc_07.jpg","originalTitle":"[크보캐치] 빠던이란 이런 것","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:54","videoMasterId":1077196,"title":" 빠던이란 이런 것","category":"kbo","masterVideoId":"0A48AEC271817D2B966E3845757FB0C186E7"},{"hit":7468,"thumbnail":"https://phinf.pstatic.net/tvcast/20230602_3/3Ru7w_1685675190030rDUQV_JPEG/4a1aa685-00f2-11ee-bb6e-505dac8c35ff_05.jpg","originalTitle":"[크보캐치] 정은원, 노시환, 채은성, 김인환, let's go~","videoType":"shortform","upperCategory":"kbaseball","playTime":"00:35","videoMasterId":1076249,"title":" 정은원, 노시환, 채은성, 김인환, let's go~","category":"kbo","masterVideoId":"91BB811D7798651D4EFA1EE30248B4CBA505"}]},"dataSetForm":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},{"menuId":null,"itemId":"1580203684420","isEnable":"Y","title":"인터뷰","displayOrder":null,"score":0.0,"templateId":"pc_center_video_meta","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1580203684420","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_meta","templateName":"종목홈 영상리스트 (메타)","dataSetId":"pc/center_video_meta","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_meta"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1580203687600,"isEnable":"Y","title":"인터뷰","type":"type|6|인터뷰","videoList":[{"hit":91,"thumbnail":"https://sports-phinf.pstatic.net//20230619_297/1687136790786EDrDr_JPEG/CA202306190015.jpg","originalTitle":"[#인터뷰] '5타수 3안타 1타점 1득점' 삼성 강민호 ＂더 열심히 하겠습니다＂ I #베이스볼투나잇 2023.06.18","videoType":"6","upperCategory":"kbaseball","playTime":"03:22","videoMasterId":1080870,"title":" '5타수 3안타 1타점 1득점' 삼성 강민호 ＂더 열...","category":"baseballlesson","masterVideoId":"BD5E9309D49D6986A3966ADFD10800810E81"},{"hit":58,"thumbnail":"https://sports-phinf.pstatic.net//20230619_117/1687136249959DgLOG_JPEG/CA202306190014.jpg","originalTitle":"[#인터뷰] '삼성의 현재이자 미래' 삼성 김지찬 ＂연패를 끊을 수 있어서 좋습니다＂ I #베이스볼투나잇 2023.06.18","videoType":"6","upperCategory":"kbaseball","playTime":"03:43","videoMasterId":1080869,"title":" '삼성의 현재이자 미래' 삼성 김지찬 ＂연패를 끊을 ...","category":"baseballlesson","masterVideoId":"654E138CFB9E5D52E0B3285572F2E8ADBC70"},{"hit":631,"thumbnail":"https://sports-phinf.pstatic.net/20230618_160/1687075351089iVXXm_JPEG/1_%C5%B0%BF%F2_vs_%C7%D1%C8%AD1%C8%B8%C3%CA_%B1%E8%C8%D6%C1%FD_%27%C6%D2%B5%E9%C0%C7_%B1%E2%B4%EB%BF%A1_%B0%C9%B8%C2%C0%BA_%BC%B1%BC%F6%B0%A1_%B5%C7%B0%DA%BD%C0%B4%CF%B4%D9%27.jpg","originalTitle":"김휘집 '팬들의 기대에 걸맞은 선수가 되겠습니다'","videoType":"6","upperCategory":"kbaseball","playTime":"01:48","videoMasterId":1080674,"title":"김휘집 '팬들의 기대에 걸맞은 선수가 되겠습니다'","category":"kbo","masterVideoId":"94F533BA7C257D0A908B8880C6DFA2B1982A"},{"hit":914,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_284/UGkmQ_1687018339331iXKOE_JPEG/8027dc0e-0d29-11ee-a0e8-a0369ffabe18_02.jpg","originalTitle":"\"저에겐 매 타석이 소중해요\" 오늘의 숨은 MVP는 단연 #안상현 [쓱페셜_PLAYER]","videoType":"6","upperCategory":"kbaseball","playTime":"01:45","videoMasterId":1080601,"title":"\"저에겐 매 타석이 소중해요\" 오늘의 숨은 MVP는 단...","category":"kbo","masterVideoId":"2E031CEA255A305922A403CB055F979BE563"},{"hit":779,"thumbnail":"https://sports-phinf.pstatic.net/20230616_68/1686908042742Sx07I_JPEG/1_%C5%B0%BF%F2_vs_%C7%D1%C8%AD1%C8%B8%C3%CA_%C0%CC%C1%F8%BF%B5%2C_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"이진영, 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:53","videoMasterId":1080175,"title":"이진영, 경기 전 인터뷰","category":"kbo","masterVideoId":"A0F5B82122A25319578B8880C6DFA2B1982A"},{"hit":203,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_297/G4IHV_1686901858756pb2VL_JPEG/1686901788171.jpg","originalTitle":"'공수주 압도적인 활약을 펼친' 홍창기&'만루 위기를 홈 병살로 막아낸' 유영찬의 [트윈스WI","videoType":"6","upperCategory":"kbaseball","playTime":"03:49","videoMasterId":1080139,"title":"'공수주 압도적인 활약을 펼친' 홍창기&'만루 위기를 ...","category":"kbo","masterVideoId":"41F2E3A82F2789CE7DC8909DE1F3D56A1DE7"},{"hit":77,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_213/tTDhB_1686896585750TlrJe_JPEG/1686896491008.jpg","originalTitle":"'승리의 일등공신' 오스틴&'무실점으로 리드를 지킨' 함덕주의 [트윈스WIN터뷰]","videoType":"6","upperCategory":"kbaseball","playTime":"03:10","videoMasterId":1080093,"title":"'승리의 일등공신' 오스틴&'무실점으로 리드를 지킨' ...","category":"kbo","masterVideoId":"6EA94F18DC921BD3A56CBA6B3D1A47100729"},{"hit":223,"thumbnail":"https://sports-phinf.pstatic.net//20230616_135/1686876152523vNoy8_JPEG/CA202306160008.jpg","originalTitle":"[#인터뷰] '랜더스 킬러' kt 장성우 ＂저희가 여름에 강한 편이라 더 높은 곳을 향해 가도록 하겠습니다＂ I #베이스볼투나잇 2023.06.15","videoType":"6","upperCategory":"kbaseball","playTime":"05:23","videoMasterId":1080010,"title":" '랜더스 킬러' kt 장성우 ＂저희가 여름에 강한 편...","category":"baseballlesson","masterVideoId":"73C029117EC56AC81ED7994D9E29BBA102C3"},{"hit":1565,"thumbnail":"https://sports-phinf.pstatic.net/20230615_127/1686821495552htLSc_JPEG/1_%BB%EF%BC%BA_vs_LG1%C8%B8%C3%CA_%27%C6%F7%C5%A9%BA%BC%C0%CC_%C0%DA%BD%C5_%C0%D6%BD%C0%B4%CF%B4%D9%27_%C0%AF%BF%B5%C2%F9%2C_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"'포크볼이 자신 있습니다' 유영찬, 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:27","videoMasterId":1079828,"title":"'포크볼이 자신 있습니다' 유영찬, 경기 전 인터뷰","category":"kbo","masterVideoId":"DC1E12F76B5D7D3786DFBB9EAD3D6B3A7A4A"},{"hit":224,"thumbnail":"https://sports-phinf.pstatic.net//20230615_154/1686791490368FjxxL_JPEG/CA202306150009.jpg","originalTitle":"[#인터뷰] '시즌 첫 만루 홈런' kt 박병호 ＂남은 경기에서 장타력을 회복해서 팀 승리에 도움이 되고 싶습니다＂ I #베이스볼투나잇 2023.06.14","videoType":"6","upperCategory":"kbaseball","playTime":"02:21","videoMasterId":1079679,"title":" '시즌 첫 만루 홈런' kt 박병호 ＂남은 경기에서 ...","category":"baseballlesson","masterVideoId":"C9E163E659622E8D29CC01157B65DBACBED9"},{"hit":2144,"thumbnail":"https://sports-phinf.pstatic.net/20230614_164/1686735360981MbIHg_JPEG/1_%BB%EF%BC%BA_vs_LG1%C8%B8%C3%CA_%C3%D6%C3%A4%C8%EF_%BC%B1%BC%F6%C0%C7_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"최채흥 선수의 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:12","videoMasterId":1079494,"title":"최채흥 선수의 경기 전 인터뷰","category":"kbo","masterVideoId":"96C826006DC2A60C68F60AF7884589909A7F"},{"hit":481,"thumbnail":"https://sports-phinf.pstatic.net/20230614_270/1686735051531TYm1t_JPEG/1_%B5%CE%BB%EA_vs_NC1%C8%B8%C3%CA_%B0%AD%BD%C2%C8%A3%2C_%C5%EB%BB%EA_%C3%B9_%BF%AC%C5%B8%BC%AE_%C8%A8%B7%B1_%BC%D2%B0%A8.jpg","originalTitle":"강승호, 통산 첫 연타석 홈런 소감","videoType":"6","upperCategory":"kbaseball","playTime":"01:41","videoMasterId":1079487,"title":"강승호, 통산 첫 연타석 홈런 소감","category":"kbo","masterVideoId":"1CCB7B10468501B4F5E62BB8E62B7C86043E"},{"hit":809,"thumbnail":"https://sports-phinf.pstatic.net//20230614_131/1686704251278tDu4H_JPEG/CA202306140023.jpg","originalTitle":"[#인터뷰] '데뷔 첫 5안타 경기' SSG 에레디아 ＂열심히 해서 최대한 많은 경기를 이기도록 하겠습니다＂ I #베이스볼투나잇 2023.06.13","videoType":"6","upperCategory":"kbaseball","playTime":"04:44","videoMasterId":1079361,"title":" '데뷔 첫 5안타 경기' SSG 에레디아 ＂열심히 해...","category":"baseballlesson","masterVideoId":"C54983A6B1F4D78B8FB3185158158FA1F14E"},{"hit":2494,"thumbnail":"https://sports-phinf.pstatic.net/20230613_12/1686648941055O5RE0_JPEG/1_%BB%EF%BC%BA_vs_LG1%C8%B8%C3%CA_%C0%CC%BB%F3%BF%B5_%BC%B1%BC%F6%C0%C7_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"이상영 선수의 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:02","videoMasterId":1079189,"title":"이상영 선수의 경기 전 인터뷰","category":"kbo","masterVideoId":"9C614FBF0B1D2F78FABFB21FA7062EFA1C02"},{"hit":2968,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_35/RRO7J_1686541775581DrGha_JPEG/1686541700936.jpg","originalTitle":"인터뷰의 미학 | 키움 히어로즈 임창민 | 더그아웃매거진","videoType":"6","upperCategory":"kbaseball","playTime":"05:24","videoMasterId":1079014,"title":"인터뷰의 미학 | 키움 히어로즈 임창민 | 더그아웃매거...","category":"baseballlesson","masterVideoId":"38754B443FD07D070F1B5AFD87889B7342A7"},{"hit":187,"thumbnail":"https://sports-phinf.pstatic.net//20230612_286/1686531991923K0hWW_JPEG/CA202306120012.jpg","originalTitle":"[#인터뷰] '6이닝 2실점, 승리 투수' 두산 곽빈 ＂건강한 선수가 되도록 하겠습니다＂ I #베이스볼투나잇 2023.06.11","videoType":"6","upperCategory":"kbaseball","playTime":"02:41","videoMasterId":1078917,"title":" '6이닝 2실점, 승리 투수' 두산 곽빈 ＂건강한 선...","category":"baseballlesson","masterVideoId":"E9912086B31625DF59D620D7D30B15428276"},{"hit":796,"thumbnail":"https://sports-phinf.pstatic.net/20230611_216/1686470650943RQghB_JPEG/1_SSG_vs_NC1%C8%B8%C3%CA_%B5%B5%C5%C2%C8%C6%2C_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"도태훈, 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:08","videoMasterId":1078716,"title":"도태훈, 경기 전 인터뷰","category":"kbo","masterVideoId":"640DE1BCEF9AF3D8513F0F5925671FC1A9F7"},{"hit":1620,"thumbnail":"https://sports-phinf.pstatic.net/20230611_44/1686470576963DjPNW_JPEG/1_LG_vs_%C7%D1%C8%AD1%C8%B8%C3%CA_%27%BE%EE%C1%A6_%B0%E6%B1%E2_8%C0%CC%B4%D7%27_%BB%EA%C3%BC%BD%BA%2C_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"'어제 경기 8이닝' 산체스, 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:11","videoMasterId":1078715,"title":"'어제 경기 8이닝' 산체스, 경기 전 인터뷰","category":"kbo","masterVideoId":"53FD2760DB675729B603A138C997517B84EE"},{"hit":593,"thumbnail":"https://sports-phinf.pstatic.net/20230610_108/1686384128253I3qxB_JPEG/1_SSG_vs_NC1%C8%B8%C3%CA_NC_%C0%B1%C7%FC%C1%D8%2C_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"NC 윤형준, 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:17","videoMasterId":1078507,"title":"NC 윤형준, 경기 전 인터뷰","category":"kbo","masterVideoId":"514EC5B59C413F88AC09285572F2E8ADBC70"},{"hit":18390,"thumbnail":"https://phinf.pstatic.net/tvcast/20230610_124/0oBvD_1686361259420TvQfV_JPEG/1686361230967.jpg","originalTitle":"‘아름다운 방출’ 꿈꾸는 <최강야구> 정현수","videoType":"6","upperCategory":"kbaseball","playTime":"20:09","videoMasterId":1078440,"title":"'아름다운 방출' 꿈꾸는  정현수","category":"baseballlesson","masterVideoId":"FAF9EFA3F6DB4C7AF9E979B6F7ACEABE2C76"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_meta","firstData":{"dataId":1580203687600,"isEnable":"Y","title":"인터뷰","type":"type|6|인터뷰","videoList":[{"hit":91,"thumbnail":"https://sports-phinf.pstatic.net//20230619_297/1687136790786EDrDr_JPEG/CA202306190015.jpg","originalTitle":"[#인터뷰] '5타수 3안타 1타점 1득점' 삼성 강민호 ＂더 열심히 하겠습니다＂ I #베이스볼투나잇 2023.06.18","videoType":"6","upperCategory":"kbaseball","playTime":"03:22","videoMasterId":1080870,"title":" '5타수 3안타 1타점 1득점' 삼성 강민호 ＂더 열...","category":"baseballlesson","masterVideoId":"BD5E9309D49D6986A3966ADFD10800810E81"},{"hit":58,"thumbnail":"https://sports-phinf.pstatic.net//20230619_117/1687136249959DgLOG_JPEG/CA202306190014.jpg","originalTitle":"[#인터뷰] '삼성의 현재이자 미래' 삼성 김지찬 ＂연패를 끊을 수 있어서 좋습니다＂ I #베이스볼투나잇 2023.06.18","videoType":"6","upperCategory":"kbaseball","playTime":"03:43","videoMasterId":1080869,"title":" '삼성의 현재이자 미래' 삼성 김지찬 ＂연패를 끊을 ...","category":"baseballlesson","masterVideoId":"654E138CFB9E5D52E0B3285572F2E8ADBC70"},{"hit":631,"thumbnail":"https://sports-phinf.pstatic.net/20230618_160/1687075351089iVXXm_JPEG/1_%C5%B0%BF%F2_vs_%C7%D1%C8%AD1%C8%B8%C3%CA_%B1%E8%C8%D6%C1%FD_%27%C6%D2%B5%E9%C0%C7_%B1%E2%B4%EB%BF%A1_%B0%C9%B8%C2%C0%BA_%BC%B1%BC%F6%B0%A1_%B5%C7%B0%DA%BD%C0%B4%CF%B4%D9%27.jpg","originalTitle":"김휘집 '팬들의 기대에 걸맞은 선수가 되겠습니다'","videoType":"6","upperCategory":"kbaseball","playTime":"01:48","videoMasterId":1080674,"title":"김휘집 '팬들의 기대에 걸맞은 선수가 되겠습니다'","category":"kbo","masterVideoId":"94F533BA7C257D0A908B8880C6DFA2B1982A"},{"hit":914,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_284/UGkmQ_1687018339331iXKOE_JPEG/8027dc0e-0d29-11ee-a0e8-a0369ffabe18_02.jpg","originalTitle":"\"저에겐 매 타석이 소중해요\" 오늘의 숨은 MVP는 단연 #안상현 [쓱페셜_PLAYER]","videoType":"6","upperCategory":"kbaseball","playTime":"01:45","videoMasterId":1080601,"title":"\"저에겐 매 타석이 소중해요\" 오늘의 숨은 MVP는 단...","category":"kbo","masterVideoId":"2E031CEA255A305922A403CB055F979BE563"},{"hit":779,"thumbnail":"https://sports-phinf.pstatic.net/20230616_68/1686908042742Sx07I_JPEG/1_%C5%B0%BF%F2_vs_%C7%D1%C8%AD1%C8%B8%C3%CA_%C0%CC%C1%F8%BF%B5%2C_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"이진영, 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:53","videoMasterId":1080175,"title":"이진영, 경기 전 인터뷰","category":"kbo","masterVideoId":"A0F5B82122A25319578B8880C6DFA2B1982A"},{"hit":203,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_297/G4IHV_1686901858756pb2VL_JPEG/1686901788171.jpg","originalTitle":"'공수주 압도적인 활약을 펼친' 홍창기&'만루 위기를 홈 병살로 막아낸' 유영찬의 [트윈스WI","videoType":"6","upperCategory":"kbaseball","playTime":"03:49","videoMasterId":1080139,"title":"'공수주 압도적인 활약을 펼친' 홍창기&'만루 위기를 ...","category":"kbo","masterVideoId":"41F2E3A82F2789CE7DC8909DE1F3D56A1DE7"},{"hit":77,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_213/tTDhB_1686896585750TlrJe_JPEG/1686896491008.jpg","originalTitle":"'승리의 일등공신' 오스틴&'무실점으로 리드를 지킨' 함덕주의 [트윈스WIN터뷰]","videoType":"6","upperCategory":"kbaseball","playTime":"03:10","videoMasterId":1080093,"title":"'승리의 일등공신' 오스틴&'무실점으로 리드를 지킨' ...","category":"kbo","masterVideoId":"6EA94F18DC921BD3A56CBA6B3D1A47100729"},{"hit":223,"thumbnail":"https://sports-phinf.pstatic.net//20230616_135/1686876152523vNoy8_JPEG/CA202306160008.jpg","originalTitle":"[#인터뷰] '랜더스 킬러' kt 장성우 ＂저희가 여름에 강한 편이라 더 높은 곳을 향해 가도록 하겠습니다＂ I #베이스볼투나잇 2023.06.15","videoType":"6","upperCategory":"kbaseball","playTime":"05:23","videoMasterId":1080010,"title":" '랜더스 킬러' kt 장성우 ＂저희가 여름에 강한 편...","category":"baseballlesson","masterVideoId":"73C029117EC56AC81ED7994D9E29BBA102C3"},{"hit":1565,"thumbnail":"https://sports-phinf.pstatic.net/20230615_127/1686821495552htLSc_JPEG/1_%BB%EF%BC%BA_vs_LG1%C8%B8%C3%CA_%27%C6%F7%C5%A9%BA%BC%C0%CC_%C0%DA%BD%C5_%C0%D6%BD%C0%B4%CF%B4%D9%27_%C0%AF%BF%B5%C2%F9%2C_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"'포크볼이 자신 있습니다' 유영찬, 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:27","videoMasterId":1079828,"title":"'포크볼이 자신 있습니다' 유영찬, 경기 전 인터뷰","category":"kbo","masterVideoId":"DC1E12F76B5D7D3786DFBB9EAD3D6B3A7A4A"},{"hit":224,"thumbnail":"https://sports-phinf.pstatic.net//20230615_154/1686791490368FjxxL_JPEG/CA202306150009.jpg","originalTitle":"[#인터뷰] '시즌 첫 만루 홈런' kt 박병호 ＂남은 경기에서 장타력을 회복해서 팀 승리에 도움이 되고 싶습니다＂ I #베이스볼투나잇 2023.06.14","videoType":"6","upperCategory":"kbaseball","playTime":"02:21","videoMasterId":1079679,"title":" '시즌 첫 만루 홈런' kt 박병호 ＂남은 경기에서 ...","category":"baseballlesson","masterVideoId":"C9E163E659622E8D29CC01157B65DBACBED9"},{"hit":2144,"thumbnail":"https://sports-phinf.pstatic.net/20230614_164/1686735360981MbIHg_JPEG/1_%BB%EF%BC%BA_vs_LG1%C8%B8%C3%CA_%C3%D6%C3%A4%C8%EF_%BC%B1%BC%F6%C0%C7_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"최채흥 선수의 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:12","videoMasterId":1079494,"title":"최채흥 선수의 경기 전 인터뷰","category":"kbo","masterVideoId":"96C826006DC2A60C68F60AF7884589909A7F"},{"hit":481,"thumbnail":"https://sports-phinf.pstatic.net/20230614_270/1686735051531TYm1t_JPEG/1_%B5%CE%BB%EA_vs_NC1%C8%B8%C3%CA_%B0%AD%BD%C2%C8%A3%2C_%C5%EB%BB%EA_%C3%B9_%BF%AC%C5%B8%BC%AE_%C8%A8%B7%B1_%BC%D2%B0%A8.jpg","originalTitle":"강승호, 통산 첫 연타석 홈런 소감","videoType":"6","upperCategory":"kbaseball","playTime":"01:41","videoMasterId":1079487,"title":"강승호, 통산 첫 연타석 홈런 소감","category":"kbo","masterVideoId":"1CCB7B10468501B4F5E62BB8E62B7C86043E"},{"hit":809,"thumbnail":"https://sports-phinf.pstatic.net//20230614_131/1686704251278tDu4H_JPEG/CA202306140023.jpg","originalTitle":"[#인터뷰] '데뷔 첫 5안타 경기' SSG 에레디아 ＂열심히 해서 최대한 많은 경기를 이기도록 하겠습니다＂ I #베이스볼투나잇 2023.06.13","videoType":"6","upperCategory":"kbaseball","playTime":"04:44","videoMasterId":1079361,"title":" '데뷔 첫 5안타 경기' SSG 에레디아 ＂열심히 해...","category":"baseballlesson","masterVideoId":"C54983A6B1F4D78B8FB3185158158FA1F14E"},{"hit":2494,"thumbnail":"https://sports-phinf.pstatic.net/20230613_12/1686648941055O5RE0_JPEG/1_%BB%EF%BC%BA_vs_LG1%C8%B8%C3%CA_%C0%CC%BB%F3%BF%B5_%BC%B1%BC%F6%C0%C7_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"이상영 선수의 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:02","videoMasterId":1079189,"title":"이상영 선수의 경기 전 인터뷰","category":"kbo","masterVideoId":"9C614FBF0B1D2F78FABFB21FA7062EFA1C02"},{"hit":2968,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_35/RRO7J_1686541775581DrGha_JPEG/1686541700936.jpg","originalTitle":"인터뷰의 미학 | 키움 히어로즈 임창민 | 더그아웃매거진","videoType":"6","upperCategory":"kbaseball","playTime":"05:24","videoMasterId":1079014,"title":"인터뷰의 미학 | 키움 히어로즈 임창민 | 더그아웃매거...","category":"baseballlesson","masterVideoId":"38754B443FD07D070F1B5AFD87889B7342A7"},{"hit":187,"thumbnail":"https://sports-phinf.pstatic.net//20230612_286/1686531991923K0hWW_JPEG/CA202306120012.jpg","originalTitle":"[#인터뷰] '6이닝 2실점, 승리 투수' 두산 곽빈 ＂건강한 선수가 되도록 하겠습니다＂ I #베이스볼투나잇 2023.06.11","videoType":"6","upperCategory":"kbaseball","playTime":"02:41","videoMasterId":1078917,"title":" '6이닝 2실점, 승리 투수' 두산 곽빈 ＂건강한 선...","category":"baseballlesson","masterVideoId":"E9912086B31625DF59D620D7D30B15428276"},{"hit":796,"thumbnail":"https://sports-phinf.pstatic.net/20230611_216/1686470650943RQghB_JPEG/1_SSG_vs_NC1%C8%B8%C3%CA_%B5%B5%C5%C2%C8%C6%2C_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"도태훈, 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:08","videoMasterId":1078716,"title":"도태훈, 경기 전 인터뷰","category":"kbo","masterVideoId":"640DE1BCEF9AF3D8513F0F5925671FC1A9F7"},{"hit":1620,"thumbnail":"https://sports-phinf.pstatic.net/20230611_44/1686470576963DjPNW_JPEG/1_LG_vs_%C7%D1%C8%AD1%C8%B8%C3%CA_%27%BE%EE%C1%A6_%B0%E6%B1%E2_8%C0%CC%B4%D7%27_%BB%EA%C3%BC%BD%BA%2C_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"'어제 경기 8이닝' 산체스, 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:11","videoMasterId":1078715,"title":"'어제 경기 8이닝' 산체스, 경기 전 인터뷰","category":"kbo","masterVideoId":"53FD2760DB675729B603A138C997517B84EE"},{"hit":593,"thumbnail":"https://sports-phinf.pstatic.net/20230610_108/1686384128253I3qxB_JPEG/1_SSG_vs_NC1%C8%B8%C3%CA_NC_%C0%B1%C7%FC%C1%D8%2C_%B0%E6%B1%E2_%C0%FC_%C0%CE%C5%CD%BA%E4.jpg","originalTitle":"NC 윤형준, 경기 전 인터뷰","videoType":"6","upperCategory":"kbaseball","playTime":"01:17","videoMasterId":1078507,"title":"NC 윤형준, 경기 전 인터뷰","category":"kbo","masterVideoId":"514EC5B59C413F88AC09285572F2E8ADBC70"},{"hit":18390,"thumbnail":"https://phinf.pstatic.net/tvcast/20230610_124/0oBvD_1686361259420TvQfV_JPEG/1686361230967.jpg","originalTitle":"‘아름다운 방출’ 꿈꾸는 <최강야구> 정현수","videoType":"6","upperCategory":"kbaseball","playTime":"20:09","videoMasterId":1078440,"title":"'아름다운 방출' 꿈꾸는  정현수","category":"baseballlesson","masterVideoId":"FAF9EFA3F6DB4C7AF9E979B6F7ACEABE2C76"}]},"dataSetForm":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},{"menuId":null,"itemId":"1675144202419","isEnable":"Y","title":"예능","displayOrder":null,"score":0.0,"templateId":"pc_center_video_meta","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1675144202419","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_meta","templateName":"종목홈 영상리스트 (메타)","dataSetId":"pc/center_video_meta","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_meta"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1675144652707,"isEnable":"Y","title":"예능","category":"baseballentertainment","videoList":[{"hit":1067,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_157/8T1Le_1687134394350rLtIz_JPEG/20230619_090219_675_1.jpg","originalTitle":"[미공개] 정용검-김선우를 위한 코너 ＜선. 용. 만. 사＞의 2회 게스트 '원성준' | ＜최강야구＞ 비하인드 cam 46","videoType":"7","upperCategory":"kbaseball","playTime":"12:16","videoMasterId":1080862,"title":" 정용검-김선우를 위한 코너 ＜선. 용. 만. 사＞의 ...","category":"baseballentertainment","masterVideoId":"7A4CFF40FF5C0B74002074C8F764FF75ADA9"},{"hit":16336,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_263/kNt2u_1687065687781tXErC_JPEG/20230618_140617_110_1.jpg","originalTitle":"[선공개] ＂50년 만에 처음이네＂ 스승의 날 기념 몬스터즈의 서프라이즈 재롱잔치(?) | 《최강야구》 6/19(월) 밤 10시 30분 방송!","videoType":"7","upperCategory":"kbaseball","playTime":"03:06","videoMasterId":1080641,"title":" ＂50년 만에 처음이네＂ 스승의 날 기념 몬스터즈의 ...","category":"baseballentertainment","masterVideoId":"12F47E6531484EEC168999203AABB8C05DE9"},{"hit":9078,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_115/22vX6_1686978691097ujtXw_JPEG/20230617_132938_901_1.jpg","originalTitle":"[스페셜] 중요한 순간에 박용택의 등장이라...✨ 공격, 희생, 위기 극복까지 다 해주는 최강 캡틴! | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"19:12","videoMasterId":1080410,"title":" 중요한 순간에 박용택의 등장이라…✨ 공격, 희생, 위...","category":"baseballentertainment","masterVideoId":"918256C30378BE2DD1504643B06EAC634328"},{"hit":1504,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_118/bmGiX_1686915395805J2LjE_JPEG/20230616_200201_637_1.jpg","originalTitle":"[스페셜] 야신의 소름 돋는 대타 성공률b 대신하는 타자 ㄴㄴ 몬스터즈 '大타자'들 출동합니다! | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"12:38","videoMasterId":1080244,"title":" 야신의 소름 돋는 대타 성공률b 대신하는 타자 ㄴㄴ ...","category":"baseballentertainment","masterVideoId":"2DCAB5907F7FDADD369695D0D8B2F6B8A943"},{"hit":4165,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_291/9eux6_1686902842489AMnbg_JPEG/20230616_165800_981_1.jpg","originalTitle":"최강야구 45회 예고편 - 최강 몬스터즈 VS 성균관대","videoType":"7","upperCategory":"kbaseball","playTime":"00:46","videoMasterId":1080150,"title":"최강야구 45회 예고편 - 최강 몬스터즈 VS 성균관대","category":"baseballentertainment","masterVideoId":"048AE4378CD6DFEFA2BFACFA16BB5B57E622"},{"hit":2128,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_53/1UIA8_1686856588224oOqNi_JPEG/20230616_033319_370_1.jpg","originalTitle":"[스페셜] 이게 바로 짬에서 나온 바이브?! 최강야구 이대호&정근우 선배美 모먼트.zip | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"33:04","videoMasterId":1079992,"title":" 이게 바로 짬에서 나온 바이브?! 최강야구 이대호&정...","category":"baseballentertainment","masterVideoId":"109B9D69751A786A997FACB9DC3074B7360C"},{"hit":3057,"thumbnail":"https://phinf.pstatic.net/tvcast/20230615_75/2XLhI_16868059512751HEdF_JPEG/20230615_134945_485_1.jpg","originalTitle":"[미공개] 정현수x이용헌, 트라이아웃 경쟁자에서 직관 선발투수로 재경합(?) (ft. 여지 주는 장단장) | ＜최강야구＞ 비하인드 cam 45","videoType":"7","upperCategory":"kbaseball","playTime":"08:24","videoMasterId":1079764,"title":" 정현수x이용헌, 트라이아웃 경쟁자에서 직관 선발투수로...","category":"baseballentertainment","masterVideoId":"31ED623E6711E38F1A77E8488BA7B97F078D"},{"hit":1077,"thumbnail":"https://phinf.pstatic.net/tvcast/20230615_124/atCS3_1686755559131alMXD_JPEG/20230614_232015_766_1.jpg","originalTitle":"[스페셜] 훗, 시나리오대로다 마운드 위의 작가 겸 주인공 오주원의 큰 그림 | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"26:16","videoMasterId":1079642,"title":" 훗, 시나리오대로다 마운드 위의 작가 겸 주인공 오주...","category":"baseballentertainment","masterVideoId":"ECD40C45FAB8076BEFD0AD160AD59DD046E6"},{"hit":2166,"thumbnail":"https://phinf.pstatic.net/tvcast/20230614_229/lPKKe_1686702691827hvlCa_JPEG/20230614_091633_643_1.jpg","originalTitle":"[미공개] 방송에 공개되지 않았던 8회 말, 맛도리(?) 신재영의 ⭐성장 스토리⭐ 지금부터 시작합니다 | ＜최강야구＞ 비하인드 cam 44","videoType":"7","upperCategory":"kbaseball","playTime":"04:47","videoMasterId":1079355,"title":" 방송에 공개되지 않았던 8회 말, 맛도리(? ) 신재...","category":"baseballentertainment","masterVideoId":"93FBECF513B6F05E56B40DFA6DEBDBCA80B1"},{"hit":20396,"thumbnail":"https://phinf.pstatic.net/tvcast/20230613_45/Zr0F2_1686586357946eAUNI_JPEG/20230613_002606_793_1.jpg","originalTitle":"[하이라이트] 서 교수 보고 싶었다구~(ˊᗨˋ) 대타로 등장한 '서동욱' 미친 타격감 돌아왔다","videoType":"7","upperCategory":"kbaseball","playTime":"23:51","videoMasterId":1079090,"title":" 서 교수 보고 싶었다구~(ˊᗨˋ) 대타로 등장한 '서...","category":"baseballentertainment","masterVideoId":"473B0E46C025C65F9A0CC6C53FA942EA505C"},{"hit":8673,"thumbnail":"https://phinf.pstatic.net/tvcast/20230613_86/Gv7DW_1686586348705SggCt_JPEG/20230613_002323_311_1.jpg","originalTitle":"[하이라이트] ＂내가 선취점 내주면 타선이 폭발한다＂ ((작가 겸 주인공)) 오주원의 시나리오 bb (vs 마산용마고 2차전) | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"23:50","videoMasterId":1079091,"title":" ＂내가 선취점 내주면 타선이 폭발한다＂ ((작가 겸 ...","category":"baseballentertainment","masterVideoId":"0A0742BE817B23AE9F18DCB7143785A1F46B"},{"hit":18088,"thumbnail":"https://phinf.pstatic.net/tvcast/20230613_165/B8IQx_16865859940683syTL_JPEG/20230613_002036_543_1.jpg","originalTitle":"[하이라이트] 무서운 속도로 성장하는 '원성준' 시즌 첫 3루타 뽑아내고  4할 경쟁 중  (vs 마산용마고 2차전) | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"23:43","videoMasterId":1079089,"title":" 무서운 속도로 성장하는 '원성준' 시즌 첫 3루타 뽑...","category":"baseballentertainment","masterVideoId":"14CC6EEA96C413043AAE141B435665847E88"},{"hit":11032,"thumbnail":"https://phinf.pstatic.net/tvcast/20230613_174/kt4X7_16865841898664MA4x_JPEG/20230613_001954_955_1.jpg","originalTitle":"최강야구 다음이야기 - 진짜 야구를 느껴라","videoType":"7","upperCategory":"kbaseball","playTime":"02:00","videoMasterId":1079087,"title":"최강야구 다음이야기 - 진짜 야구를 느껴라","category":"baseballentertainment","masterVideoId":"141F052C66193AB8D05E1AEC7FC67DCED3E8"},{"hit":13924,"thumbnail":"https://phinf.pstatic.net/tvcast/20230613_209/oRSmL_1686584188453QjH6G_JPEG/20230613_001111_472_1.jpg","originalTitle":"[클로징] 시즌 첫 3연승 영광의 MVP 주인공은? | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"10:30","videoMasterId":1079088,"title":" 시즌 첫 3연승 영광의 MVP 주인공은? | JTBC...","category":"baseballentertainment","masterVideoId":"4D20A015D5096ADA1758528E2FCBA8005B17"},{"hit":4674,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_183/hNcnn_1686579706322CvIDm_JPEG/20230612_231400_570_1.jpg","originalTitle":"(분위기 반전) 9회 말, 기세 좋은 용마고에 멘붕 온 송승준 | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"03:21","videoMasterId":1079086,"title":"(분위기 반전) 9회 말, 기세 좋은 용마고에 멘붕 온...","category":"baseballentertainment","masterVideoId":"DFC40B984C1F9FFD993D92B3E8799DCE9E7A"},{"hit":3131,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_287/wP6wf_16865797048682Reau_JPEG/20230612_231344_831_1.jpg","originalTitle":"1루 주자의 오버런 덕분에 아웃 카운트를 잡아낸 몬스터즈 | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"01:38","videoMasterId":1079082,"title":"1루 주자의 오버런 덕분에 아웃 카운트를 잡아낸 몬스터...","category":"baseballentertainment","masterVideoId":"54DBCD995D38E3D0FB97675B389FA5C322ED"},{"hit":4185,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_290/1c8jf_1686580593137gqN9u_JPEG/20230612_232559_076_1.jpg","originalTitle":"＂아빠 최고!!＂ 서동욱 안타에 세상 기쁜 아내와 딸(❁´◡`❁) | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"01:22","videoMasterId":1079083,"title":"＂아빠 최고!! ＂ 서동욱 안타에 세상 기쁜 아내와 딸...","category":"baseballentertainment","masterVideoId":"7F8DD6E649E7C46B83461AB575D276BEF723"},{"hit":2337,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_90/2A0rL_1686579991668biRxl_JPEG/20230612_231609_505_1.jpg","originalTitle":"용택아 달려! 공격적인 주루 끝까지 최선을 다하는 박용택 | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"01:11","videoMasterId":1079084,"title":"용택아 달려! 공격적인 주루 끝까지 최선을 다하는 박용...","category":"baseballentertainment","masterVideoId":"10D3D7A4B5CECA710365A1F9C4B3F1CB3996"},{"hit":2431,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_62/k2Vtp_1686579699387khWqm_JPEG/20230612_231250_968_1.jpg","originalTitle":"신나는 타격전 원성준x박용택의 안타 파티! | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"02:58","videoMasterId":1079085,"title":"신나는 타격전 원성준x박용택의 안타 파티! | JTBC...","category":"baseballentertainment","masterVideoId":"71EC66FCB3CB2CACC3DA32DE8401DD720D7C"},{"hit":2470,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_55/WLcew_1686576091755BGFX2_JPEG/20230612_220843_285_1.jpg","originalTitle":"겨우 살았다(헤헤) 정근우, 9회 초 첫 안타로 구사일생ㅋㅋㅋ | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"02:04","videoMasterId":1079079,"title":"겨우 살았다(헤헤) 정근우, 9회 초 첫 안타로 구사일...","category":"baseballentertainment","masterVideoId":"FA2C6062CEA2FF5EACBE01D2991DD77D6E08"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_meta","firstData":{"dataId":1675144652707,"isEnable":"Y","title":"예능","category":"baseballentertainment","videoList":[{"hit":1067,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_157/8T1Le_1687134394350rLtIz_JPEG/20230619_090219_675_1.jpg","originalTitle":"[미공개] 정용검-김선우를 위한 코너 ＜선. 용. 만. 사＞의 2회 게스트 '원성준' | ＜최강야구＞ 비하인드 cam 46","videoType":"7","upperCategory":"kbaseball","playTime":"12:16","videoMasterId":1080862,"title":" 정용검-김선우를 위한 코너 ＜선. 용. 만. 사＞의 ...","category":"baseballentertainment","masterVideoId":"7A4CFF40FF5C0B74002074C8F764FF75ADA9"},{"hit":16336,"thumbnail":"https://phinf.pstatic.net/tvcast/20230618_263/kNt2u_1687065687781tXErC_JPEG/20230618_140617_110_1.jpg","originalTitle":"[선공개] ＂50년 만에 처음이네＂ 스승의 날 기념 몬스터즈의 서프라이즈 재롱잔치(?) | 《최강야구》 6/19(월) 밤 10시 30분 방송!","videoType":"7","upperCategory":"kbaseball","playTime":"03:06","videoMasterId":1080641,"title":" ＂50년 만에 처음이네＂ 스승의 날 기념 몬스터즈의 ...","category":"baseballentertainment","masterVideoId":"12F47E6531484EEC168999203AABB8C05DE9"},{"hit":9078,"thumbnail":"https://phinf.pstatic.net/tvcast/20230617_115/22vX6_1686978691097ujtXw_JPEG/20230617_132938_901_1.jpg","originalTitle":"[스페셜] 중요한 순간에 박용택의 등장이라...✨ 공격, 희생, 위기 극복까지 다 해주는 최강 캡틴! | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"19:12","videoMasterId":1080410,"title":" 중요한 순간에 박용택의 등장이라…✨ 공격, 희생, 위...","category":"baseballentertainment","masterVideoId":"918256C30378BE2DD1504643B06EAC634328"},{"hit":1504,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_118/bmGiX_1686915395805J2LjE_JPEG/20230616_200201_637_1.jpg","originalTitle":"[스페셜] 야신의 소름 돋는 대타 성공률b 대신하는 타자 ㄴㄴ 몬스터즈 '大타자'들 출동합니다! | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"12:38","videoMasterId":1080244,"title":" 야신의 소름 돋는 대타 성공률b 대신하는 타자 ㄴㄴ ...","category":"baseballentertainment","masterVideoId":"2DCAB5907F7FDADD369695D0D8B2F6B8A943"},{"hit":4165,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_291/9eux6_1686902842489AMnbg_JPEG/20230616_165800_981_1.jpg","originalTitle":"최강야구 45회 예고편 - 최강 몬스터즈 VS 성균관대","videoType":"7","upperCategory":"kbaseball","playTime":"00:46","videoMasterId":1080150,"title":"최강야구 45회 예고편 - 최강 몬스터즈 VS 성균관대","category":"baseballentertainment","masterVideoId":"048AE4378CD6DFEFA2BFACFA16BB5B57E622"},{"hit":2128,"thumbnail":"https://phinf.pstatic.net/tvcast/20230616_53/1UIA8_1686856588224oOqNi_JPEG/20230616_033319_370_1.jpg","originalTitle":"[스페셜] 이게 바로 짬에서 나온 바이브?! 최강야구 이대호&정근우 선배美 모먼트.zip | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"33:04","videoMasterId":1079992,"title":" 이게 바로 짬에서 나온 바이브?! 최강야구 이대호&정...","category":"baseballentertainment","masterVideoId":"109B9D69751A786A997FACB9DC3074B7360C"},{"hit":3057,"thumbnail":"https://phinf.pstatic.net/tvcast/20230615_75/2XLhI_16868059512751HEdF_JPEG/20230615_134945_485_1.jpg","originalTitle":"[미공개] 정현수x이용헌, 트라이아웃 경쟁자에서 직관 선발투수로 재경합(?) (ft. 여지 주는 장단장) | ＜최강야구＞ 비하인드 cam 45","videoType":"7","upperCategory":"kbaseball","playTime":"08:24","videoMasterId":1079764,"title":" 정현수x이용헌, 트라이아웃 경쟁자에서 직관 선발투수로...","category":"baseballentertainment","masterVideoId":"31ED623E6711E38F1A77E8488BA7B97F078D"},{"hit":1077,"thumbnail":"https://phinf.pstatic.net/tvcast/20230615_124/atCS3_1686755559131alMXD_JPEG/20230614_232015_766_1.jpg","originalTitle":"[스페셜] 훗, 시나리오대로다 마운드 위의 작가 겸 주인공 오주원의 큰 그림 | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"26:16","videoMasterId":1079642,"title":" 훗, 시나리오대로다 마운드 위의 작가 겸 주인공 오주...","category":"baseballentertainment","masterVideoId":"ECD40C45FAB8076BEFD0AD160AD59DD046E6"},{"hit":2166,"thumbnail":"https://phinf.pstatic.net/tvcast/20230614_229/lPKKe_1686702691827hvlCa_JPEG/20230614_091633_643_1.jpg","originalTitle":"[미공개] 방송에 공개되지 않았던 8회 말, 맛도리(?) 신재영의 ⭐성장 스토리⭐ 지금부터 시작합니다 | ＜최강야구＞ 비하인드 cam 44","videoType":"7","upperCategory":"kbaseball","playTime":"04:47","videoMasterId":1079355,"title":" 방송에 공개되지 않았던 8회 말, 맛도리(? ) 신재...","category":"baseballentertainment","masterVideoId":"93FBECF513B6F05E56B40DFA6DEBDBCA80B1"},{"hit":20396,"thumbnail":"https://phinf.pstatic.net/tvcast/20230613_45/Zr0F2_1686586357946eAUNI_JPEG/20230613_002606_793_1.jpg","originalTitle":"[하이라이트] 서 교수 보고 싶었다구~(ˊᗨˋ) 대타로 등장한 '서동욱' 미친 타격감 돌아왔다","videoType":"7","upperCategory":"kbaseball","playTime":"23:51","videoMasterId":1079090,"title":" 서 교수 보고 싶었다구~(ˊᗨˋ) 대타로 등장한 '서...","category":"baseballentertainment","masterVideoId":"473B0E46C025C65F9A0CC6C53FA942EA505C"},{"hit":8673,"thumbnail":"https://phinf.pstatic.net/tvcast/20230613_86/Gv7DW_1686586348705SggCt_JPEG/20230613_002323_311_1.jpg","originalTitle":"[하이라이트] ＂내가 선취점 내주면 타선이 폭발한다＂ ((작가 겸 주인공)) 오주원의 시나리오 bb (vs 마산용마고 2차전) | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"23:50","videoMasterId":1079091,"title":" ＂내가 선취점 내주면 타선이 폭발한다＂ ((작가 겸 ...","category":"baseballentertainment","masterVideoId":"0A0742BE817B23AE9F18DCB7143785A1F46B"},{"hit":18088,"thumbnail":"https://phinf.pstatic.net/tvcast/20230613_165/B8IQx_16865859940683syTL_JPEG/20230613_002036_543_1.jpg","originalTitle":"[하이라이트] 무서운 속도로 성장하는 '원성준' 시즌 첫 3루타 뽑아내고  4할 경쟁 중  (vs 마산용마고 2차전) | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"23:43","videoMasterId":1079089,"title":" 무서운 속도로 성장하는 '원성준' 시즌 첫 3루타 뽑...","category":"baseballentertainment","masterVideoId":"14CC6EEA96C413043AAE141B435665847E88"},{"hit":11032,"thumbnail":"https://phinf.pstatic.net/tvcast/20230613_174/kt4X7_16865841898664MA4x_JPEG/20230613_001954_955_1.jpg","originalTitle":"최강야구 다음이야기 - 진짜 야구를 느껴라","videoType":"7","upperCategory":"kbaseball","playTime":"02:00","videoMasterId":1079087,"title":"최강야구 다음이야기 - 진짜 야구를 느껴라","category":"baseballentertainment","masterVideoId":"141F052C66193AB8D05E1AEC7FC67DCED3E8"},{"hit":13924,"thumbnail":"https://phinf.pstatic.net/tvcast/20230613_209/oRSmL_1686584188453QjH6G_JPEG/20230613_001111_472_1.jpg","originalTitle":"[클로징] 시즌 첫 3연승 영광의 MVP 주인공은? | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"10:30","videoMasterId":1079088,"title":" 시즌 첫 3연승 영광의 MVP 주인공은? | JTBC...","category":"baseballentertainment","masterVideoId":"4D20A015D5096ADA1758528E2FCBA8005B17"},{"hit":4674,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_183/hNcnn_1686579706322CvIDm_JPEG/20230612_231400_570_1.jpg","originalTitle":"(분위기 반전) 9회 말, 기세 좋은 용마고에 멘붕 온 송승준 | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"03:21","videoMasterId":1079086,"title":"(분위기 반전) 9회 말, 기세 좋은 용마고에 멘붕 온...","category":"baseballentertainment","masterVideoId":"DFC40B984C1F9FFD993D92B3E8799DCE9E7A"},{"hit":3131,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_287/wP6wf_16865797048682Reau_JPEG/20230612_231344_831_1.jpg","originalTitle":"1루 주자의 오버런 덕분에 아웃 카운트를 잡아낸 몬스터즈 | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"01:38","videoMasterId":1079082,"title":"1루 주자의 오버런 덕분에 아웃 카운트를 잡아낸 몬스터...","category":"baseballentertainment","masterVideoId":"54DBCD995D38E3D0FB97675B389FA5C322ED"},{"hit":4185,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_290/1c8jf_1686580593137gqN9u_JPEG/20230612_232559_076_1.jpg","originalTitle":"＂아빠 최고!!＂ 서동욱 안타에 세상 기쁜 아내와 딸(❁´◡`❁) | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"01:22","videoMasterId":1079083,"title":"＂아빠 최고!! ＂ 서동욱 안타에 세상 기쁜 아내와 딸...","category":"baseballentertainment","masterVideoId":"7F8DD6E649E7C46B83461AB575D276BEF723"},{"hit":2337,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_90/2A0rL_1686579991668biRxl_JPEG/20230612_231609_505_1.jpg","originalTitle":"용택아 달려! 공격적인 주루 끝까지 최선을 다하는 박용택 | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"01:11","videoMasterId":1079084,"title":"용택아 달려! 공격적인 주루 끝까지 최선을 다하는 박용...","category":"baseballentertainment","masterVideoId":"10D3D7A4B5CECA710365A1F9C4B3F1CB3996"},{"hit":2431,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_62/k2Vtp_1686579699387khWqm_JPEG/20230612_231250_968_1.jpg","originalTitle":"신나는 타격전 원성준x박용택의 안타 파티! | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"02:58","videoMasterId":1079085,"title":"신나는 타격전 원성준x박용택의 안타 파티! | JTBC...","category":"baseballentertainment","masterVideoId":"71EC66FCB3CB2CACC3DA32DE8401DD720D7C"},{"hit":2470,"thumbnail":"https://phinf.pstatic.net/tvcast/20230612_55/WLcew_1686576091755BGFX2_JPEG/20230612_220843_285_1.jpg","originalTitle":"겨우 살았다(헤헤) 정근우, 9회 초 첫 안타로 구사일생ㅋㅋㅋ | JTBC 230612 방송","videoType":"7","upperCategory":"kbaseball","playTime":"02:04","videoMasterId":1079079,"title":"겨우 살았다(헤헤) 정근우, 9회 초 첫 안타로 구사일...","category":"baseballentertainment","masterVideoId":"FA2C6062CEA2FF5EACBE01D2991DD77D6E08"}]},"dataSetForm":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},{"menuId":null,"itemId":"1661311290481","isEnable":"Y","title":"리뷰","displayOrder":null,"score":0.0,"templateId":"pc_center_video_meta","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1661311290481","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_meta","templateName":"종목홈 영상리스트 (메타)","dataSetId":"pc/center_video_meta","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_meta"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1661311297155,"isEnable":"Y","title":"리뷰","type":"type|10001|리뷰","videoList":[{"hit":170,"thumbnail":"https://sports-phinf.pstatic.net//20230619_171/16871466895458QWkB_JPEG/CA202306190018.jpg","originalTitle":"2군행 오승환, 관중석 공 투척은 너무했다! / 포수 김재성 1루 출전이 최선? #베이스볼런치 2023.06.19","videoType":"10001","upperCategory":"kbaseball","playTime":"15:06","videoMasterId":1080892,"title":"2군행 오승환, 관중석 공 투척은 너무했다! / 포수 ...","category":"baseballlesson","masterVideoId":"EE31321C83794D6E25987B57D78652ABE624"},{"hit":1662,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_177/kb6FU_1687138832163zbPWh_JPEG/08c6f13c-0e42-11ee-8c05-505dac8c38f5_07.jpg","originalTitle":"롯데 연패 끊어낸 쌍동희, 부진 씻고 폭발한 장타 [베이스볼S]","videoType":"10001","upperCategory":"kbaseball","playTime":"01:56","videoMasterId":1080873,"title":"롯데 연패 끊어낸 쌍동희, 부진 씻고 폭발한 장타 ","category":"kbo","masterVideoId":"344A0BC67D908ED6AF42338657EE98C82B52"},{"hit":115,"thumbnail":"https://sports-phinf.pstatic.net//20230619_191/1687135350754kar4C_JPEG/CA202306190012.jpg","originalTitle":"'2회 7득점 빅이닝' LG 초반 카운터 펀치, 홈런 포함 8안타 7득점 맹공 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:34","videoMasterId":1080867,"title":"'2회 7득점 빅이닝' LG 초반 카운터 펀치, 홈런 ...","category":"baseballlesson","masterVideoId":"0FFE05DC09588983C7A871356ECCCE0CA94E"},{"hit":65,"thumbnail":"https://sports-phinf.pstatic.net//20230619_215/1687134995211Tq0KL_PNG/CA202306190011.png","originalTitle":"'개인 12연승' 플럿코, 7이닝 무사사구 시즌 최다 9K! 시즌 9승 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:07","videoMasterId":1080865,"title":"'개인 12연승' 플럿코, 7이닝 무사사구 시즌 최다 ...","category":"baseballlesson","masterVideoId":"E532639F3FA3996BB4678456F226F0183712"},{"hit":47,"thumbnail":"https://sports-phinf.pstatic.net//20230619_13/1687134695060gHSOf_JPEG/CA202306190010.jpg","originalTitle":"'부진탈출' 한동희 4월 .169 → 5월 이후 .278 올라오고 있는 타격감 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"01:51","videoMasterId":1080863,"title":"'부진탈출' 한동희 4월 . 169 → 5월 이후 . ...","category":"baseballlesson","masterVideoId":"16059DDB96406E580704FE8862D60967725A"},{"hit":39,"thumbnail":"https://sports-phinf.pstatic.net//20230619_76/1687134453516YGzbq_PNG/CA202306190009.png","originalTitle":"'속구 평균 145.4km/h' 반즈, 7이닝 4K 무실점 승리I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:33","videoMasterId":1080861,"title":"'속구 평균 145. 4km/h' 반즈, 7이닝 4K ...","category":"baseballlesson","masterVideoId":"02E37853FC889832820064038139B1DA06D8"},{"hit":34,"thumbnail":"https://sports-phinf.pstatic.net//20230619_74/1687134089666RhpUo_JPEG/CA202306190008.jpg","originalTitle":"최채흥, 6/13 복귀전 후 나흘 휴식 등판 4.2이닝 5실점 교체 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:07","videoMasterId":1080860,"title":"최채흥, 6/13 복귀전 후 나흘 휴식 등판 4. 2이...","category":"baseballlesson","masterVideoId":"BEDDA68DED100A8F303A1C835DE2F0FDBDF1"},{"hit":29,"thumbnail":"https://sports-phinf.pstatic.net//20230619_62/16871337920402AQaW_PNG/CA202306190007.png","originalTitle":"'뒷문을 잠그다' 삼성 불펜진, 3이닝 무실점 합작 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:28","videoMasterId":1080847,"title":"'뒷문을 잠그다' 삼성 불펜진, 3이닝 무실점 합작 I...","category":"baseballlesson","masterVideoId":"758CBC0604D7398F236104CC676647DAE467"},{"hit":35,"thumbnail":"https://sports-phinf.pstatic.net//20230619_123/1687133551981DuQrr_JPEG/CA202306190006.jpg","originalTitle":"'5연패 사슬을 끊다' 김지찬 초구 타격, 김성윤 완벽한 콘택트 플레이로 추가점 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:04","videoMasterId":1080846,"title":"'5연패 사슬을 끊다' 김지찬 초구 타격, 김성윤 완벽...","category":"baseballlesson","masterVideoId":"A9BC14DE768A52562554D32D06A6320D750B"},{"hit":37,"thumbnail":"https://sports-phinf.pstatic.net//20230619_63/16871335502791COjw_PNG/CA202306190005.png","originalTitle":"'세대교체 진행중' 김지찬-김현준 테이블세터, 이재현 6안타 4득점 3타점 합작 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"03:00","videoMasterId":1080845,"title":"'세대교체 진행중' 김지찬-김현준 테이블세터, 이재현 ...","category":"baseballlesson","masterVideoId":"E37E24A4C50AF138DF1D72C0FAABA9FCD700"},{"hit":41,"thumbnail":"https://sports-phinf.pstatic.net//20230619_142/1687133551115vs4kc_PNG/CA202306190004.png","originalTitle":"'리그 유일 3포수 체제' DH강민호-C김태군- 1B김재성 7안타 3타점 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:47","videoMasterId":1080844,"title":"'리그 유일 3포수 체제' DH강민호-C김태군- 1B김...","category":"baseballlesson","masterVideoId":"BAF9D65B19C59833C089B46ED2D16C5D6585"},{"hit":980,"thumbnail":"https://sports-phinf.pstatic.net/20230616_161/1686915460643jSlC0_JPEG/12_%BB%EF%BC%BA_vs_KT6%C8%B8%C3%CA_%BC%D2%C0%CC%BF%F8_%BE%C6%B3%AA%BF%EE%BC%AD%2C_%B0%E6%B1%E2_%C1%DF_%B8%AE%C6%F7%C6%C3.jpg","originalTitle":"소이원 아나운서, 경기 중 리포팅","videoType":"10001","upperCategory":"kbaseball","playTime":"01:22","videoMasterId":1080237,"title":"소이원 아나운서, 경기 중 리포팅","category":"kbo","masterVideoId":"825A4BE4FAFB75462AEB3764DAD0F99BE62C"},{"hit":809,"thumbnail":"https://sports-phinf.pstatic.net//20230616_79/16868919922784pU3q_PNG/CA202306160012.png","originalTitle":"삼성, 불펜 최악인데 '67구' 던진 황동재는 왜 내렸나? #베이스볼런치 2023.06.16","videoType":"10001","upperCategory":"kbaseball","playTime":"10:22","videoMasterId":1080074,"title":"삼성, 불펜 최악인데 '67구' 던진 황동재는 왜 내렸...","category":"baseballlesson","masterVideoId":"132CF1958970118C08F701D2991DD77D6E08"},{"hit":697,"thumbnail":"https://sports-phinf.pstatic.net//20230616_211/1686885690267oMqK8_PNG/CA202306160011.png","originalTitle":"'어깨가 찍혔다??' 한화 김민우, 어깨삼각근 파열... 투구동작 탓?   #베이스볼런치 2023.06.16","videoType":"10001","upperCategory":"kbaseball","playTime":"09:33","videoMasterId":1080049,"title":"'어깨가 찍혔다?? ' 한화 김민우, 어깨삼각근 파열…...","category":"baseballlesson","masterVideoId":"31D87F48E816CB3899ADD96732A009E527A9"},{"hit":990,"thumbnail":"https://sports-phinf.pstatic.net//20230616_261/1686879093859V3lKN_JPEG/CA202306160010.jpg","originalTitle":"LG트윈스가 유독 삼성라이온즈에 강한 이유는? I #베이스볼투나잇 2023.06.15","videoType":"10001","upperCategory":"kbaseball","playTime":"02:47","videoMasterId":1080020,"title":"LG트윈스가 유독 삼성라이온즈에 강한 이유는? I #베...","category":"baseballlesson","masterVideoId":"6382B64D17BBD56801B395197A7500D2417E"},{"hit":837,"thumbnail":"https://sports-phinf.pstatic.net//20230616_28/168687669136940m1W_JPEG/CA202306160009.jpg","originalTitle":"정민철·송재우가 말하는 LG트윈스의 약점은? I #베이스볼투나잇 2023.06.15","videoType":"10001","upperCategory":"kbaseball","playTime":"02:15","videoMasterId":1080017,"title":"정민철·송재우가 말하는 LG트윈스의 약점은? I #베이...","category":"baseballlesson","masterVideoId":"B859798B82DE92555487B9F35E9BB7398AFC"},{"hit":324,"thumbnail":"https://sports-phinf.pstatic.net//20230616_133/1686875192243caYEx_JPEG/CA202306160007.jpg","originalTitle":"'2경기 연속 홈런' 문현빈, 시즌 롯데전 .353 2홈런! I #베이스볼투나잇 2023.06.15","videoType":"10001","upperCategory":"kbaseball","playTime":"03:11","videoMasterId":1080006,"title":"'2경기 연속 홈런' 문현빈, 시즌 롯데전 . 353 ...","category":"baseballlesson","masterVideoId":"8E24B93683BA18A7544D880AE4DB2F78ED65"},{"hit":190,"thumbnail":"https://sports-phinf.pstatic.net//20230616_19/1686874892087nKkUM_JPEG/CA202306160006.jpg","originalTitle":"'정민철 업적' 이진영, 최근 6G 연속 득점 I #베이스볼투나잇 2023.06.15","videoType":"10001","upperCategory":"kbaseball","playTime":"03:08","videoMasterId":1080005,"title":"'정민철 업적' 이진영, 최근 6G 연속 득점 I #베...","category":"baseballlesson","masterVideoId":"7F1A2BA90626FF85A9CE5508428F425CE66C"},{"hit":159,"thumbnail":"https://sports-phinf.pstatic.net//20230616_118/1686874350454z73UD_JPEG/CA202306160005.jpg","originalTitle":"'오늘의 해결사' 이창진·신범수, 2회 결승타-4회 2점홈런! I #베이스볼투나잇 2023.06.15","videoType":"10001","upperCategory":"kbaseball","playTime":"02:23","videoMasterId":1080004,"title":"'오늘의 해결사' 이창진·신범수, 2회 결승타-4회 2...","category":"baseballlesson","masterVideoId":"D52F9A0AF3607DDFC1287E48F7778B839E76"},{"hit":147,"thumbnail":"https://sports-phinf.pstatic.net//20230616_278/1686874291254uaISr_JPEG/CA202306160004.jpg","originalTitle":"'타격 기계 부활' 김현수, 3안타 1홈런 2타점! I #베이스볼투나잇 2023.06.15","videoType":"10001","upperCategory":"kbaseball","playTime":"02:21","videoMasterId":1080003,"title":"'타격 기계 부활' 김현수, 3안타 1홈런 2타점! I...","category":"baseballlesson","masterVideoId":"8BB6F872DB977406C6A2F062C1A162B303ED"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_meta","firstData":{"dataId":1661311297155,"isEnable":"Y","title":"리뷰","type":"type|10001|리뷰","videoList":[{"hit":170,"thumbnail":"https://sports-phinf.pstatic.net//20230619_171/16871466895458QWkB_JPEG/CA202306190018.jpg","originalTitle":"2군행 오승환, 관중석 공 투척은 너무했다! / 포수 김재성 1루 출전이 최선? #베이스볼런치 2023.06.19","videoType":"10001","upperCategory":"kbaseball","playTime":"15:06","videoMasterId":1080892,"title":"2군행 오승환, 관중석 공 투척은 너무했다! / 포수 ...","category":"baseballlesson","masterVideoId":"EE31321C83794D6E25987B57D78652ABE624"},{"hit":1662,"thumbnail":"https://phinf.pstatic.net/tvcast/20230619_177/kb6FU_1687138832163zbPWh_JPEG/08c6f13c-0e42-11ee-8c05-505dac8c38f5_07.jpg","originalTitle":"롯데 연패 끊어낸 쌍동희, 부진 씻고 폭발한 장타 [베이스볼S]","videoType":"10001","upperCategory":"kbaseball","playTime":"01:56","videoMasterId":1080873,"title":"롯데 연패 끊어낸 쌍동희, 부진 씻고 폭발한 장타 ","category":"kbo","masterVideoId":"344A0BC67D908ED6AF42338657EE98C82B52"},{"hit":115,"thumbnail":"https://sports-phinf.pstatic.net//20230619_191/1687135350754kar4C_JPEG/CA202306190012.jpg","originalTitle":"'2회 7득점 빅이닝' LG 초반 카운터 펀치, 홈런 포함 8안타 7득점 맹공 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:34","videoMasterId":1080867,"title":"'2회 7득점 빅이닝' LG 초반 카운터 펀치, 홈런 ...","category":"baseballlesson","masterVideoId":"0FFE05DC09588983C7A871356ECCCE0CA94E"},{"hit":65,"thumbnail":"https://sports-phinf.pstatic.net//20230619_215/1687134995211Tq0KL_PNG/CA202306190011.png","originalTitle":"'개인 12연승' 플럿코, 7이닝 무사사구 시즌 최다 9K! 시즌 9승 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:07","videoMasterId":1080865,"title":"'개인 12연승' 플럿코, 7이닝 무사사구 시즌 최다 ...","category":"baseballlesson","masterVideoId":"E532639F3FA3996BB4678456F226F0183712"},{"hit":47,"thumbnail":"https://sports-phinf.pstatic.net//20230619_13/1687134695060gHSOf_JPEG/CA202306190010.jpg","originalTitle":"'부진탈출' 한동희 4월 .169 → 5월 이후 .278 올라오고 있는 타격감 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"01:51","videoMasterId":1080863,"title":"'부진탈출' 한동희 4월 . 169 → 5월 이후 . ...","category":"baseballlesson","masterVideoId":"16059DDB96406E580704FE8862D60967725A"},{"hit":39,"thumbnail":"https://sports-phinf.pstatic.net//20230619_76/1687134453516YGzbq_PNG/CA202306190009.png","originalTitle":"'속구 평균 145.4km/h' 반즈, 7이닝 4K 무실점 승리I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:33","videoMasterId":1080861,"title":"'속구 평균 145. 4km/h' 반즈, 7이닝 4K ...","category":"baseballlesson","masterVideoId":"02E37853FC889832820064038139B1DA06D8"},{"hit":34,"thumbnail":"https://sports-phinf.pstatic.net//20230619_74/1687134089666RhpUo_JPEG/CA202306190008.jpg","originalTitle":"최채흥, 6/13 복귀전 후 나흘 휴식 등판 4.2이닝 5실점 교체 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:07","videoMasterId":1080860,"title":"최채흥, 6/13 복귀전 후 나흘 휴식 등판 4. 2이...","category":"baseballlesson","masterVideoId":"BEDDA68DED100A8F303A1C835DE2F0FDBDF1"},{"hit":29,"thumbnail":"https://sports-phinf.pstatic.net//20230619_62/16871337920402AQaW_PNG/CA202306190007.png","originalTitle":"'뒷문을 잠그다' 삼성 불펜진, 3이닝 무실점 합작 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:28","videoMasterId":1080847,"title":"'뒷문을 잠그다' 삼성 불펜진, 3이닝 무실점 합작 I...","category":"baseballlesson","masterVideoId":"758CBC0604D7398F236104CC676647DAE467"},{"hit":35,"thumbnail":"https://sports-phinf.pstatic.net//20230619_123/1687133551981DuQrr_JPEG/CA202306190006.jpg","originalTitle":"'5연패 사슬을 끊다' 김지찬 초구 타격, 김성윤 완벽한 콘택트 플레이로 추가점 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:04","videoMasterId":1080846,"title":"'5연패 사슬을 끊다' 김지찬 초구 타격, 김성윤 완벽...","category":"baseballlesson","masterVideoId":"A9BC14DE768A52562554D32D06A6320D750B"},{"hit":37,"thumbnail":"https://sports-phinf.pstatic.net//20230619_63/16871335502791COjw_PNG/CA202306190005.png","originalTitle":"'세대교체 진행중' 김지찬-김현준 테이블세터, 이재현 6안타 4득점 3타점 합작 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"03:00","videoMasterId":1080845,"title":"'세대교체 진행중' 김지찬-김현준 테이블세터, 이재현 ...","category":"baseballlesson","masterVideoId":"E37E24A4C50AF138DF1D72C0FAABA9FCD700"},{"hit":41,"thumbnail":"https://sports-phinf.pstatic.net//20230619_142/1687133551115vs4kc_PNG/CA202306190004.png","originalTitle":"'리그 유일 3포수 체제' DH강민호-C김태군- 1B김재성 7안타 3타점 I #베이스볼투나잇 2023.06.18","videoType":"10001","upperCategory":"kbaseball","playTime":"02:47","videoMasterId":1080844,"title":"'리그 유일 3포수 체제' DH강민호-C김태군- 1B김...","category":"baseballlesson","masterVideoId":"BAF9D65B19C59833C089B46ED2D16C5D6585"},{"hit":980,"thumbnail":"https://sports-phinf.pstatic.net/20230616_161/1686915460643jSlC0_JPEG/12_%BB%EF%BC%BA_vs_KT6%C8%B8%C3%CA_%BC%D2%C0%CC%BF%F8_%BE%C6%B3%AA%BF%EE%BC%AD%2C_%B0%E6%B1%E2_%C1%DF_%B8%AE%C6%F7%C6%C3.jpg","originalTitle":"소이원 아나운서, 경기 중 리포팅","videoType":"10001","upperCategory":"kbaseball","playTime":"01:22","videoMasterId":1080237,"title":"소이원 아나운서, 경기 중 리포팅","category":"kbo","masterVideoId":"825A4BE4FAFB75462AEB3764DAD0F99BE62C"},{"hit":809,"thumbnail":"https://sports-phinf.pstatic.net//20230616_79/16868919922784pU3q_PNG/CA202306160012.png","originalTitle":"삼성, 불펜 최악인데 '67구' 던진 황동재는 왜 내렸나? #베이스볼런치 2023.06.16","videoType":"10001","upperCategory":"kbaseball","playTime":"10:22","videoMasterId":1080074,"title":"삼성, 불펜 최악인데 '67구' 던진 황동재는 왜 내렸...","category":"baseballlesson","masterVideoId":"132CF1958970118C08F701D2991DD77D6E08"},{"hit":697,"thumbnail":"https://sports-phinf.pstatic.net//20230616_211/1686885690267oMqK8_PNG/CA202306160011.png","originalTitle":"'어깨가 찍혔다??' 한화 김민우, 어깨삼각근 파열... 투구동작 탓?   #베이스볼런치 2023.06.16","videoType":"10001","upperCategory":"kbaseball","playTime":"09:33","videoMasterId":1080049,"title":"'어깨가 찍혔다?? ' 한화 김민우, 어깨삼각근 파열…...","category":"baseballlesson","masterVideoId":"31D87F48E816CB3899ADD96732A009E527A9"},{"hit":990,"thumbnail":"https://sports-phinf.pstatic.net//20230616_261/1686879093859V3lKN_JPEG/CA202306160010.jpg","originalTitle":"LG트윈스가 유독 삼성라이온즈에 강한 이유는? I #베이스볼투나잇 2023.06.15","videoType":"10001","upperCategory":"kbaseball","playTime":"02:47","videoMasterId":1080020,"title":"LG트윈스가 유독 삼성라이온즈에 강한 이유는? I #베...","category":"baseballlesson","masterVideoId":"6382B64D17BBD56801B395197A7500D2417E"},{"hit":837,"thumbnail":"https://sports-phinf.pstatic.net//20230616_28/168687669136940m1W_JPEG/CA202306160009.jpg","originalTitle":"정민철·송재우가 말하는 LG트윈스의 약점은? I #베이스볼투나잇 2023.06.15","videoType":"10001","upperCategory":"kbaseball","playTime":"02:15","videoMasterId":1080017,"title":"정민철·송재우가 말하는 LG트윈스의 약점은? I #베이...","category":"baseballlesson","masterVideoId":"B859798B82DE92555487B9F35E9BB7398AFC"},{"hit":324,"thumbnail":"https://sports-phinf.pstatic.net//20230616_133/1686875192243caYEx_JPEG/CA202306160007.jpg","originalTitle":"'2경기 연속 홈런' 문현빈, 시즌 롯데전 .353 2홈런! I #베이스볼투나잇 2023.06.15","videoType":"10001","upperCategory":"kbaseball","playTime":"03:11","videoMasterId":1080006,"title":"'2경기 연속 홈런' 문현빈, 시즌 롯데전 . 353 ...","category":"baseballlesson","masterVideoId":"8E24B93683BA18A7544D880AE4DB2F78ED65"},{"hit":190,"thumbnail":"https://sports-phinf.pstatic.net//20230616_19/1686874892087nKkUM_JPEG/CA202306160006.jpg","originalTitle":"'정민철 업적' 이진영, 최근 6G 연속 득점 I #베이스볼투나잇 2023.06.15","videoType":"10001","upperCategory":"kbaseball","playTime":"03:08","videoMasterId":1080005,"title":"'정민철 업적' 이진영, 최근 6G 연속 득점 I #베...","category":"baseballlesson","masterVideoId":"7F1A2BA90626FF85A9CE5508428F425CE66C"},{"hit":159,"thumbnail":"https://sports-phinf.pstatic.net//20230616_118/1686874350454z73UD_JPEG/CA202306160005.jpg","originalTitle":"'오늘의 해결사' 이창진·신범수, 2회 결승타-4회 2점홈런! I #베이스볼투나잇 2023.06.15","videoType":"10001","upperCategory":"kbaseball","playTime":"02:23","videoMasterId":1080004,"title":"'오늘의 해결사' 이창진·신범수, 2회 결승타-4회 2...","category":"baseballlesson","masterVideoId":"D52F9A0AF3607DDFC1287E48F7778B839E76"},{"hit":147,"thumbnail":"https://sports-phinf.pstatic.net//20230616_278/1686874291254uaISr_JPEG/CA202306160004.jpg","originalTitle":"'타격 기계 부활' 김현수, 3안타 1홈런 2타점! I #베이스볼투나잇 2023.06.15","videoType":"10001","upperCategory":"kbaseball","playTime":"02:21","videoMasterId":1080003,"title":"'타격 기계 부활' 김현수, 3안타 1홈런 2타점! I...","category":"baseballlesson","masterVideoId":"8BB6F872DB977406C6A2F062C1A162B303ED"}]},"dataSetForm":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},{"menuId":null,"itemId":"1576564985741","isEnable":"Y","title":"KBO UGC","displayOrder":null,"score":0.0,"templateId":"pc_center_video_meta","isFixed":"N","fixedPos":null,"dataTitleStyle":null,"seq":null,"contentId":"item.1576564985741","sectionId":"","newsType":"","itemType":null,"baseDateTime":null,"extraInfoJson":"{\"itemCount\":5}","extraInfo":{"itemCount":5},"mixPos":null,"align":null,"template":{"templateId":"pc_center_video_meta","templateName":"종목홈 영상리스트 (메타)","dataSetId":"pc/center_video_meta","interfaceId":null,"pushPos":null,"isAuto":"Y","isGroup":"N","isSafeImg":"N","isMultiSizeImg":"N","autoCreateMinPeriod":"5","viewPc":{"view":"pc/center_video_new","textView":null,"width":0,"jsonDto":null,"id":"pc/center_video_new"},"viewMobile":{"view":null,"textView":null,"width":0,"jsonDto":null,"id":null},"viewJson":null,"description":null,"descriptionImage":null,"id":"pc_center_video_meta"},"updateDatetime":null,"createDatetime":null,"dataList":[{"dataId":1576564986733,"isEnable":"Y","title":"KBO UGC","type":"type|kbougc|KBO UGC","videoList":[{"hit":164,"thumbnail":"https://phinf.pstatic.net/tvcast/20230604_114/5vnwu_1685890030643jr6dC_PNG/1685889954308.png","originalTitle":"[답답트윈스] 충격적인 스윕패, 그 원인 3가지","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:31","videoMasterId":1077097,"title":" 충격적인 스윕패, 그 원인 3가지","category":"kbo","masterVideoId":"A34EA0F8918BCA41BB77285572F2E8ADBC70"},{"hit":140,"thumbnail":"https://phinf.pstatic.net/tvcast/20230307_4/yBZBt_1678196151516Qz1LF_JPEG/1678196120375.jpg","originalTitle":"[WBC 특집] WBC 4번 타자 김현수 22시즌 주요 홈런 모음","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:04","videoMasterId":1036902,"title":" WBC 4번 타자 김현수 22시즌 주요 홈런 모음","category":"kbo","masterVideoId":"61D8AD88FFFC04B06C48D96732A009E527A9"},{"hit":217,"thumbnail":"https://phinf.pstatic.net/tvcast/20230307_145/Iyq8D_1678196186832KGRCd_JPEG/1678196165491.jpg","originalTitle":"이번 시즌 이 선수를 주목하자! KIA의 김규성!","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:00","videoMasterId":1036903,"title":"이번 시즌 이 선수를 주목하자! KIA의 김규성!","category":"kbo","masterVideoId":"A693F44F8DDA13A6133BF50A90352DF3E3D1"},{"hit":2130,"thumbnail":"https://phinf.pstatic.net/tvcast/20230119_184/PAMWI_1674109405993OXbdx_JPEG/1674109363179.jpg","originalTitle":"LG 트윈스 최초 다년 계약! 오지환 호수비 모음!","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:05","videoMasterId":1025286,"title":"LG 트윈스 최초 다년 계약! 오지환 호수비 모음!","category":"kbo","masterVideoId":"4057B332C6813E05EB4CB915120ECAA4C9CF"},{"hit":1219,"thumbnail":"https://phinf.pstatic.net/tvcast/20221123_53/ZHChN_1669206227206vBPi4_JPEG/1669206027653.jpg","originalTitle":"[크보타임 호수비] '롯데가 선택한 이유!' 2022시즌 노진혁 호수비 모음","videoType":"kbougc","upperCategory":"kbaseball","playTime":"05:00","videoMasterId":1008489,"title":" '롯데가 선택한 이유! ' 2022시즌 노진혁 호수비...","category":"kbo","masterVideoId":"A3AB41CB67D35CDEC4E2746DF2FDF4D742C5"},{"hit":999,"thumbnail":"https://phinf.pstatic.net/tvcast/20221019_49/ZTsRo_1666145532041FKAuX_JPEG/1666145397010.jpg","originalTitle":"2022시즌 LG트윈스 오지환 홈런모음","videoType":"kbougc","upperCategory":"kbaseball","playTime":"04:47","videoMasterId":997331,"title":"2022시즌 LG트윈스 오지환 홈런모음","category":"kbo","masterVideoId":"7B41B47AD14E343B254208BA95D58F5A04AF"},{"hit":368,"thumbnail":"https://phinf.pstatic.net/tvcast/20221014_82/zc2e7_16656790206160gRmV_PNG/1665678973917.png","originalTitle":"'챔피언은 너무나 강했다' 와일드카드 하이라이트","videoType":"kbougc","upperCategory":"kbaseball","playTime":"04:35","videoMasterId":996264,"title":"'챔피언은 너무나 강했다' 와일드카드 하이라이트","category":"kbo","masterVideoId":"CF99202700773408C87D3E0ACF7C13161DDA"},{"hit":1003,"thumbnail":"https://phinf.pstatic.net/tvcast/20221013_151/nk0Fi_16655932128116ig29_PNG/1665593164892.png","originalTitle":"[이전삼기]기아 타이거즈 역대 와일드카드 하이라이트","videoType":"kbougc","upperCategory":"kbaseball","playTime":"03:28","videoMasterId":996075,"title":"기아 타이거즈 역대 와일드카드 하이라이트","category":"kbo","masterVideoId":"D251C3946E5135BE1455E21CBE490D34346B"},{"hit":1322,"thumbnail":"https://phinf.pstatic.net/tvcast/20221012_216/SSJM8_1665540649794PzvYK_PNG/1665540604339.png","originalTitle":"키움을 웃게 만드는 오지환의 끝내기 !","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:30","videoMasterId":995894,"title":"키움을 웃게 만드는 오지환의 끝내기 !","category":"kbo","masterVideoId":"AD36522C828CF5277B52977D5A4B782B3374"},{"hit":223,"thumbnail":"https://phinf.pstatic.net/tvcast/20221003_235/Rzfaq_1664784705023rJp5s_JPEG/1664784657096.jpg","originalTitle":"KT의 끝내주는 남자 배정대의 끝내기","videoType":"kbougc","upperCategory":"kbaseball","playTime":"03:51","videoMasterId":993504,"title":"KT의 끝내주는 남자 배정대의 끝내기","category":"kbo","masterVideoId":"3F72DAB00FABB050F74DFC561476C5CAC51D"},{"hit":946,"thumbnail":"https://phinf.pstatic.net/tvcast/20220929_299/WAZUn_1664459666597YVytf_JPEG/1664459576030.jpg","originalTitle":"원작자도 응원가 듣고 놀랬다! 소크라테스 활약상!","videoType":"kbougc","upperCategory":"kbaseball","playTime":"03:19","videoMasterId":991958,"title":"원작자도 응원가 듣고 놀랬다! 소크라테스 활약상!","category":"kbo","masterVideoId":"868A36CB0EC958AC0C5A48D2131850599ECB"},{"hit":1393,"thumbnail":"https://phinf.pstatic.net/tvcast/20220929_137/9A0Dm_16644149367571U0vS_PNG/1664414802068.png","originalTitle":"[왕조의 캡틴] 리그를 뒤흔든 오재원의 플레이 TOP3","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:59","videoMasterId":991580,"title":" 리그를 뒤흔든 오재원의 플레이 TOP3","category":"kbo","masterVideoId":"F4929095C7BF7EC77B4F12D3A6F7C853AC56"},{"hit":561,"thumbnail":"https://phinf.pstatic.net/tvcast/20220928_86/rZlpD_1664367241264owX24_JPEG/1664367163718.jpg","originalTitle":"'영원한 캡틴' 오재원의 영리한 플레이 모음","videoType":"kbougc","upperCategory":"kbaseball","playTime":"04:11","videoMasterId":991567,"title":"'영원한 캡틴' 오재원의 영리한 플레이 모음","category":"kbo","masterVideoId":"895B3803C359536FC68F57707F7CE007402B"},{"hit":1775,"thumbnail":"https://phinf.pstatic.net/tvcast/20220928_93/AIgZG_1664326037830p8aCI_PNG/1664325944104.png","originalTitle":"'양심선언?!' 오지환의 도루아웃","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:31","videoMasterId":991304,"title":"'양심선언?! ' 오지환의 도루아웃","category":"kbo","masterVideoId":"7A127448683CBE595C5B3B85C4727302AC06"},{"hit":570,"thumbnail":"https://phinf.pstatic.net/tvcast/20220927_275/ftLuZ_1664287031015KhPFA_JPEG/1664286937331.jpg","originalTitle":"끝내기 찬스 날린 손아섭 병살타... 순간포착 크보에 이런일이","videoType":"kbougc","upperCategory":"kbaseball","playTime":"03:08","videoMasterId":991292,"title":"끝내기 찬스 날린 손아섭 병살타… 순간포착 크보에 이런...","category":"kbo","masterVideoId":"DB355B5A5098C9898EF32110A47682ED43D4"},{"hit":802,"thumbnail":"https://phinf.pstatic.net/tvcast/20220926_67/5Zl4X_1664198822603ARRgA_JPEG/1664198423514.jpg","originalTitle":"[크보타임 TOP5] '국가대표 유격수' 2022시즌 오지환 호수비 명장면 TOP 5","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:47","videoMasterId":990976,"title":" '국가대표 유격수' 2022시즌 오지환 호수비 명장면...","category":"kbo","masterVideoId":"334EEEFAD39B95A7F7F1285572F2E8ADBC70"},{"hit":468,"thumbnail":"https://phinf.pstatic.net/tvcast/20220926_219/jzUZW_1664192334676Ax5hu_JPEG/1664192303872.jpg","originalTitle":"크보 주간 호수비 (19일~26일)","videoType":"kbougc","upperCategory":"kbaseball","playTime":"03:17","videoMasterId":990972,"title":"크보 주간 호수비 (19일~26일)","category":"kbo","masterVideoId":"A8B41CDBF7880F1665F6A6A97AF924C8B263"},{"hit":586,"thumbnail":"https://phinf.pstatic.net/tvcast/20220925_52/RTw3K_1664102902748aDydX_JPEG/1664102796792.jpg","originalTitle":"스스로 자멸한 NC?! 9월 25일 크보에 이런일이!","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:40","videoMasterId":990722,"title":"스스로 자멸한 NC?! 9월 25일 크보에 이런일이!","category":"kbo","masterVideoId":"FBE6B9F7A596CEBD563D343B1734C0A7D68A"},{"hit":442,"thumbnail":"https://phinf.pstatic.net/tvcast/20220922_287/qSNNb_1663850320285p3wSr_JPEG/1663850309779.jpg","originalTitle":"의욕은 넘쳤지만... 9월 22일 크보에 무슨 일이?!","videoType":"kbougc","upperCategory":"kbaseball","playTime":"03:11","videoMasterId":989859,"title":"의욕은 넘쳤지만… 9월 22일 크보에 무슨 일이?!","category":"kbo","masterVideoId":"F293C48B55E910FFE66DF50A90352DF3E3D1"},{"hit":17042,"thumbnail":"https://phinf.pstatic.net/tvcast/20220920_175/peNwx_16636770817273PWxB_JPEG/1663677056174.jpg","originalTitle":"'예능은 역시 크보' 롯데 대환장 수비+한화 행복 주루플레이","videoType":"kbougc","upperCategory":"kbaseball","playTime":"01:05","videoMasterId":989108,"title":"'예능은 역시 크보' 롯데 대환장 수비+한화 행복 주루...","category":"kbo","masterVideoId":"D9BAB72089485012A9EF64BAEDD96BED6A22"}]}],"dataSet":{"bo":"multiItemVideoDS","params":{"requiredItemCount":"100","enable":"Y"},"forms":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]},"dataSetBoName":"multiItemVideoDS","dataSetId":"pc/center_video_meta","firstData":{"dataId":1576564986733,"isEnable":"Y","title":"KBO UGC","type":"type|kbougc|KBO UGC","videoList":[{"hit":164,"thumbnail":"https://phinf.pstatic.net/tvcast/20230604_114/5vnwu_1685890030643jr6dC_PNG/1685889954308.png","originalTitle":"[답답트윈스] 충격적인 스윕패, 그 원인 3가지","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:31","videoMasterId":1077097,"title":" 충격적인 스윕패, 그 원인 3가지","category":"kbo","masterVideoId":"A34EA0F8918BCA41BB77285572F2E8ADBC70"},{"hit":140,"thumbnail":"https://phinf.pstatic.net/tvcast/20230307_4/yBZBt_1678196151516Qz1LF_JPEG/1678196120375.jpg","originalTitle":"[WBC 특집] WBC 4번 타자 김현수 22시즌 주요 홈런 모음","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:04","videoMasterId":1036902,"title":" WBC 4번 타자 김현수 22시즌 주요 홈런 모음","category":"kbo","masterVideoId":"61D8AD88FFFC04B06C48D96732A009E527A9"},{"hit":217,"thumbnail":"https://phinf.pstatic.net/tvcast/20230307_145/Iyq8D_1678196186832KGRCd_JPEG/1678196165491.jpg","originalTitle":"이번 시즌 이 선수를 주목하자! KIA의 김규성!","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:00","videoMasterId":1036903,"title":"이번 시즌 이 선수를 주목하자! KIA의 김규성!","category":"kbo","masterVideoId":"A693F44F8DDA13A6133BF50A90352DF3E3D1"},{"hit":2130,"thumbnail":"https://phinf.pstatic.net/tvcast/20230119_184/PAMWI_1674109405993OXbdx_JPEG/1674109363179.jpg","originalTitle":"LG 트윈스 최초 다년 계약! 오지환 호수비 모음!","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:05","videoMasterId":1025286,"title":"LG 트윈스 최초 다년 계약! 오지환 호수비 모음!","category":"kbo","masterVideoId":"4057B332C6813E05EB4CB915120ECAA4C9CF"},{"hit":1219,"thumbnail":"https://phinf.pstatic.net/tvcast/20221123_53/ZHChN_1669206227206vBPi4_JPEG/1669206027653.jpg","originalTitle":"[크보타임 호수비] '롯데가 선택한 이유!' 2022시즌 노진혁 호수비 모음","videoType":"kbougc","upperCategory":"kbaseball","playTime":"05:00","videoMasterId":1008489,"title":" '롯데가 선택한 이유! ' 2022시즌 노진혁 호수비...","category":"kbo","masterVideoId":"A3AB41CB67D35CDEC4E2746DF2FDF4D742C5"},{"hit":999,"thumbnail":"https://phinf.pstatic.net/tvcast/20221019_49/ZTsRo_1666145532041FKAuX_JPEG/1666145397010.jpg","originalTitle":"2022시즌 LG트윈스 오지환 홈런모음","videoType":"kbougc","upperCategory":"kbaseball","playTime":"04:47","videoMasterId":997331,"title":"2022시즌 LG트윈스 오지환 홈런모음","category":"kbo","masterVideoId":"7B41B47AD14E343B254208BA95D58F5A04AF"},{"hit":368,"thumbnail":"https://phinf.pstatic.net/tvcast/20221014_82/zc2e7_16656790206160gRmV_PNG/1665678973917.png","originalTitle":"'챔피언은 너무나 강했다' 와일드카드 하이라이트","videoType":"kbougc","upperCategory":"kbaseball","playTime":"04:35","videoMasterId":996264,"title":"'챔피언은 너무나 강했다' 와일드카드 하이라이트","category":"kbo","masterVideoId":"CF99202700773408C87D3E0ACF7C13161DDA"},{"hit":1003,"thumbnail":"https://phinf.pstatic.net/tvcast/20221013_151/nk0Fi_16655932128116ig29_PNG/1665593164892.png","originalTitle":"[이전삼기]기아 타이거즈 역대 와일드카드 하이라이트","videoType":"kbougc","upperCategory":"kbaseball","playTime":"03:28","videoMasterId":996075,"title":"기아 타이거즈 역대 와일드카드 하이라이트","category":"kbo","masterVideoId":"D251C3946E5135BE1455E21CBE490D34346B"},{"hit":1322,"thumbnail":"https://phinf.pstatic.net/tvcast/20221012_216/SSJM8_1665540649794PzvYK_PNG/1665540604339.png","originalTitle":"키움을 웃게 만드는 오지환의 끝내기 !","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:30","videoMasterId":995894,"title":"키움을 웃게 만드는 오지환의 끝내기 !","category":"kbo","masterVideoId":"AD36522C828CF5277B52977D5A4B782B3374"},{"hit":223,"thumbnail":"https://phinf.pstatic.net/tvcast/20221003_235/Rzfaq_1664784705023rJp5s_JPEG/1664784657096.jpg","originalTitle":"KT의 끝내주는 남자 배정대의 끝내기","videoType":"kbougc","upperCategory":"kbaseball","playTime":"03:51","videoMasterId":993504,"title":"KT의 끝내주는 남자 배정대의 끝내기","category":"kbo","masterVideoId":"3F72DAB00FABB050F74DFC561476C5CAC51D"},{"hit":946,"thumbnail":"https://phinf.pstatic.net/tvcast/20220929_299/WAZUn_1664459666597YVytf_JPEG/1664459576030.jpg","originalTitle":"원작자도 응원가 듣고 놀랬다! 소크라테스 활약상!","videoType":"kbougc","upperCategory":"kbaseball","playTime":"03:19","videoMasterId":991958,"title":"원작자도 응원가 듣고 놀랬다! 소크라테스 활약상!","category":"kbo","masterVideoId":"868A36CB0EC958AC0C5A48D2131850599ECB"},{"hit":1393,"thumbnail":"https://phinf.pstatic.net/tvcast/20220929_137/9A0Dm_16644149367571U0vS_PNG/1664414802068.png","originalTitle":"[왕조의 캡틴] 리그를 뒤흔든 오재원의 플레이 TOP3","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:59","videoMasterId":991580,"title":" 리그를 뒤흔든 오재원의 플레이 TOP3","category":"kbo","masterVideoId":"F4929095C7BF7EC77B4F12D3A6F7C853AC56"},{"hit":561,"thumbnail":"https://phinf.pstatic.net/tvcast/20220928_86/rZlpD_1664367241264owX24_JPEG/1664367163718.jpg","originalTitle":"'영원한 캡틴' 오재원의 영리한 플레이 모음","videoType":"kbougc","upperCategory":"kbaseball","playTime":"04:11","videoMasterId":991567,"title":"'영원한 캡틴' 오재원의 영리한 플레이 모음","category":"kbo","masterVideoId":"895B3803C359536FC68F57707F7CE007402B"},{"hit":1775,"thumbnail":"https://phinf.pstatic.net/tvcast/20220928_93/AIgZG_1664326037830p8aCI_PNG/1664325944104.png","originalTitle":"'양심선언?!' 오지환의 도루아웃","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:31","videoMasterId":991304,"title":"'양심선언?! ' 오지환의 도루아웃","category":"kbo","masterVideoId":"7A127448683CBE595C5B3B85C4727302AC06"},{"hit":570,"thumbnail":"https://phinf.pstatic.net/tvcast/20220927_275/ftLuZ_1664287031015KhPFA_JPEG/1664286937331.jpg","originalTitle":"끝내기 찬스 날린 손아섭 병살타... 순간포착 크보에 이런일이","videoType":"kbougc","upperCategory":"kbaseball","playTime":"03:08","videoMasterId":991292,"title":"끝내기 찬스 날린 손아섭 병살타… 순간포착 크보에 이런...","category":"kbo","masterVideoId":"DB355B5A5098C9898EF32110A47682ED43D4"},{"hit":802,"thumbnail":"https://phinf.pstatic.net/tvcast/20220926_67/5Zl4X_1664198822603ARRgA_JPEG/1664198423514.jpg","originalTitle":"[크보타임 TOP5] '국가대표 유격수' 2022시즌 오지환 호수비 명장면 TOP 5","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:47","videoMasterId":990976,"title":" '국가대표 유격수' 2022시즌 오지환 호수비 명장면...","category":"kbo","masterVideoId":"334EEEFAD39B95A7F7F1285572F2E8ADBC70"},{"hit":468,"thumbnail":"https://phinf.pstatic.net/tvcast/20220926_219/jzUZW_1664192334676Ax5hu_JPEG/1664192303872.jpg","originalTitle":"크보 주간 호수비 (19일~26일)","videoType":"kbougc","upperCategory":"kbaseball","playTime":"03:17","videoMasterId":990972,"title":"크보 주간 호수비 (19일~26일)","category":"kbo","masterVideoId":"A8B41CDBF7880F1665F6A6A97AF924C8B263"},{"hit":586,"thumbnail":"https://phinf.pstatic.net/tvcast/20220925_52/RTw3K_1664102902748aDydX_JPEG/1664102796792.jpg","originalTitle":"스스로 자멸한 NC?! 9월 25일 크보에 이런일이!","videoType":"kbougc","upperCategory":"kbaseball","playTime":"02:40","videoMasterId":990722,"title":"스스로 자멸한 NC?! 9월 25일 크보에 이런일이!","category":"kbo","masterVideoId":"FBE6B9F7A596CEBD563D343B1734C0A7D68A"},{"hit":442,"thumbnail":"https://phinf.pstatic.net/tvcast/20220922_287/qSNNb_1663850320285p3wSr_JPEG/1663850309779.jpg","originalTitle":"의욕은 넘쳤지만... 9월 22일 크보에 무슨 일이?!","videoType":"kbougc","upperCategory":"kbaseball","playTime":"03:11","videoMasterId":989859,"title":"의욕은 넘쳤지만… 9월 22일 크보에 무슨 일이?!","category":"kbo","masterVideoId":"F293C48B55E910FFE66DF50A90352DF3E3D1"},{"hit":17042,"thumbnail":"https://phinf.pstatic.net/tvcast/20220920_175/peNwx_16636770817273PWxB_JPEG/1663677056174.jpg","originalTitle":"'예능은 역시 크보' 롯데 대환장 수비+한화 행복 주루플레이","videoType":"kbougc","upperCategory":"kbaseball","playTime":"01:05","videoMasterId":989108,"title":"'예능은 역시 크보' 롯데 대환장 수비+한화 행복 주루...","category":"kbo","masterVideoId":"D9BAB72089485012A9EF64BAEDD96BED6A22"}]},"dataSetForm":[{"name":"메타 영상","count":1,"form":[{"label":"탭제목","type":"text","var":"title"},{"label":"테마영상","type":"select","var":"type","bo":"videoTypeListFO","params":{"asd":"asda"}},{"label":"선수ID","type":"text","var":"playerId"},{"label":"게임ID","type":"text","var":"gameId"},{"label":"종목","type":"select","var":"category","bo":"categoryFO","params":{"templateType":"video"}},{"label":"채널ID","type":"select","var":"channelId","bo":"tvcastChannelFO"}]}]}]);
    var videoListTemplate = Handlebars.compile($("#_video_list_template").html());
    var tabListTemplate = Handlebars.compile($("#_tab_list_template").html());

    setEventHandler();
    drawTabList(0);
    drawVideoList(0);

    function makeTemplateData(jsonItems) {
      var tplDataList = [];
      for (var i = 0; i < jsonItems.length; i++) {
        var jsonItem = jsonItems[i];
        var dataSetId = jsonItem.dataSetId;
        var videoList = [];
        if (dataSetId.indexOf("center_video_ranking") >= 0 || dataSetId.indexOf("center_video_meta") >= 0) {
          videoList = jsonItem.dataList[0].videoList;
        } else if (dataSetId.indexOf("center_video_manual") >= 0) {
          videoList = jsonItem.dataList.slice(1);
        }

        for (var j = 0; j < videoList.length; j++) {
          var video = videoList[j];
          video.videoMasterId = video.videoMasterId || video.videoId || video.id;
        }

        if (videoList.length % 5 !== 0) {
          var remainCount = 5 - (videoList.length % 5);
          for (var k = 0; k < remainCount; k++) {
            videoList.push({
              "isEmptyBox": true
            });
          }
        }

        var videoWrapList = _.chunk(videoList, showCountPerPage);
        videoWrapList.length = Math.min(videoWrapList.length, 2);

        tplDataList.push({
          "tabName": jsonItem.title,
          "tabIndex": i,
          "totalVideoList": videoList,
          "videoWrapList": videoWrapList,
          "isFold": true
        });
      }

      return tplDataList;
    }

    function setEventHandler() {
      $("#_home_vod_tab").on("click", "a", function (e) {
        e.preventDefault();
        var clickedObj = $(e.currentTarget);
        var clickedTabIndex = clickedObj.data("tab-idx");

        if (clickedTabIndex === this._tabIndex) {
          return;
        }

        $("#_home_vod_tab a").attr("aria-selected", "");
        $(e.currentTarget).attr("aria-selected", "true");

        drawVideoList($(e.currentTarget).data("tab-idx"));
      });

      $("#_home_video_control").on("click", function (e) {
        e.preventDefault();
        $("#_home_vod_list_wrap").find(".video_list").show();
        $("#_home_video_control").hide();

        for (var i = 0; i < tplDataList.length; i++) {
          tplDataList[i].isFold = false;
        }
      });
    }

    function drawTabList() {
      var tabTplData = {
        "tabList": tplDataList
      }
      $("#_home_vod_tab").html(tabListTemplate(tabTplData));
    }

    function drawVideoList(tabIndex) {
      $("#_home_vod_list_wrap").html(videoListTemplate(tplDataList[tabIndex]));

      drawMoreBtn(tabIndex);
    }

    function drawMoreBtn(tabIndex) {
      if (tplDataList[tabIndex].isFold) {
        $("#_home_video_control").show();
      } else {
        $("#_home_video_control").hide();
      }
    }
  })();
</script>




        <!-- 시즈널 레이아웃 home_grid2 클래스 추가 -->
        <div class="home_grid">
            <div class="section_home_ad" id="sports_placard"></div>
            
            
            





<div class="home_special" id="_home_special" data-idx="0">
  
  <div class="special_ct" >
    <a onclick="clickcr(this, 'pro.banner4', '', '', event);"  href="https://allstar.koreabaseball.com/Default.aspx"><img src=https://sports-phinf.pstatic.net/20230605_98/1685952814723vr5RV_PNG/%C7%C7%BE%BE.png" alt="event" width="670" height="250" border="0"></a>
    <div class="border border_t"></div>
    <div class="border border_r"></div>
    <div class="border border_b"></div>
    <div class="border border_l"></div>
  </div>
  
  
</div>
<script>
  (function(){
    var itemCnt = 1;
    function changeNavBtn(curIdx){
      var navBtns = $("#_home_special").find(".nav");
      if(itemCnt === 1){
        navBtns.eq(0).css("display", "inline-block");
        navBtns.eq(1).hide();
        navBtns.eq(2).css("display", "inline-block");
        navBtns.eq(3).hide();
      }else{
        if(curIdx === 0){
          navBtns.eq(0).css("display", "inline-block");
          navBtns.eq(1).hide();
          navBtns.eq(2).hide();
          navBtns.eq(3).css("display", "inline-block");
        }else if(curIdx === itemCnt - 1){
          navBtns.eq(0).hide();
          navBtns.eq(1).css("display", "inline-block");
          navBtns.eq(2).css("display", "inline-block");
          navBtns.eq(3).hide();
        }else{
          navBtns.eq(0).hide();
          navBtns.eq(1).css("display", "inline-block");
          navBtns.eq(2).hide();
          navBtns.eq(3).css("display", "inline-block");
        }
      }
      $("#_home_special").attr("data-idx", curIdx);
    }

    function changeBox(fromIdx, toIdx){
      var boxes = $("#_home_special").find(".special_ct");
      boxes.eq(fromIdx).hide();
      boxes.eq(toIdx).show();
    }

    $("#_home_special").on("click", "a.nav", function(e){
      e.preventDefault();
      $clicked = $(e.currentTarget);
      var curIdx = $("#_home_special").attr("data-idx") * 1;
      if($clicked.hasClass("next")){
        var nextIdx = Math.min(curIdx + 1, itemCnt - 1);
        changeNavBtn(nextIdx);
        changeBox(curIdx, nextIdx);
      }else if($clicked.hasClass("prev")){
        var prevIdx = Math.max(0, curIdx - 1);
        changeNavBtn(prevIdx);
        changeBox(curIdx, prevIdx);
      }
    });
    changeNavBtn(0);

    // 스페셜 영역에 대한 처리
    $(".home_grid").addClass('home_grid2');
  })();
</script>
            

            <div class="home_da2">
                <div class="inner" id="da_300250" data-veta-preview="p_sports_dpl"></div>
        <div class="border border_t"></div>
                <div class="border border_r"></div>
                <div class="border border_b"></div>
                <div class="border border_l"></div>
            </div>
            <div class="content">
                <div class="home_article">
                    <!-- news -->
                    
            
            




<div class="home_news">
  <div class="head">
    <h2>추천뉴스</h2>
    <a href="/kbaseball/news/index" onclick="clickcr(this, 'mnl.more', '', '', event);" class="more"><span>전체뉴스보기</span></a>
  </div>

  
    
      
    
    
    
  

  <ul class="home_news_list">
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=382&aid=0001058163" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="88127053_000000000000000001058163" title="LG 외국인타자 고민 씻어낸 ‘열정맨’ 오스틴 딘 “베테랑들의 보살핌 고맙다” [베이스볼 피플]">
            <span>
              
              LG 외국인타자 고민 씻어낸 ‘열정맨’ 오스틴 딘 “베테랑들의 보살핌 고맙다” [베이스볼 피플]
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=311&aid=0001606296" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="880005B6_000000000000000001606296" title="10km 이상 향상된 구속, 몰라보게 달라진 정성곤…'어린왕자'도 미소">
            <span>
              
              10km 이상 향상된 구속, 몰라보게 달라진 정성곤…'어린왕자'도 미소
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=108&aid=0003160822" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="880000C3_000000000000000003160822" title="롯데 '올스타 독주' 무너졌다, 이정후 2주 연속 팬투표 1위 수성 [올스타 팬 투표 2차 집계]">
            <span>
              
              롯데 '올스타 독주' 무너졌다, 이정후 2주 연속 팬투표 1위 수성 [올스타 팬 투표 2차 집계]
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=468&aid=0000953477" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="88156f78_000000000000000000953477" title="키움 특급 유망주의 3연속경기 안정세…반등의 신호탄인가? [SS시선집중]">
            <span>
              
              키움 특급 유망주의 3연속경기 안정세…반등의 신호탄인가? [SS시선집중]
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=076&aid=0004021319" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="880000D3_000000000000000004021319" title="파울타구 맞아도 끄떡없다. 짧은 안타에 재빠른 홈 쇄도로 득점까지, 투혼 불사른 양보르기니의 슬라이딩[잠실 현장]">
            <span>
              
              파울타구 맞아도 끄떡없다. 짧은 안타에 재빠른 홈 쇄도로 득점까지, 투혼 불사른 양보르기니의 슬라이딩[잠실 현장]
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="division">
          <a href="/news?oid=477&aid=0000435570" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="88156f89_000000000000000000435570" title="163승 투수와 트레이드→김현수 동료→한국행…한화 새 식구의 우여곡절 야구인생">
            <span>
              
              163승 투수와 트레이드→김현수 동료→한국행…한화 새 식구의 우여곡절 야구인생
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=241&aid=0003282466" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="880002FC_000000000000000003282466" title="홈런·타점·장타율까지 역전 앞둔 '중년 장사'">
            <span>
              
              홈런·타점·장타율까지 역전 앞둔 '중년 장사'
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=425&aid=0000141217" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="88156f81_000000000000000000141217" title="SSG 조성훈, 1군 무대 첫 선발 등판..상대는 두산">
            <span>
              
              SSG 조성훈, 1군 무대 첫 선발 등판..상대는 두산
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=057&aid=0001750112" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="880000BF_000000000000000001750112" title="한화 윌리엄스, 빅리그 우투 상대 OPS 0.750…멕시칸리그 OPS 6위→35위는 불안요소">
            <span>
              
              한화 윌리엄스, 빅리그 우투 상대 OPS 0.750…멕시칸리그 OPS 6위→35위는 불안요소
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=117&aid=0003741558" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="880000BB_000000000000000003741558" title="이제 4회인데...'야구장을 떠난 관중들', 이런 야구 보려고 온 거 아닌데 '더위 먹은 두산 수비' [유진형의 현장 1mm]">
            <span>
              
              이제 4회인데...'야구장을 떠난 관중들', 이런 야구 보려고 온 거 아닌데 '더위 먹은 두산 수비' [유진형의 현장 1mm]
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="division">
          <a href="/news?oid=477&aid=0000435561" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="88156f89_000000000000000000435561" title="&quot;넌 내 마음 속 야구왕&quot; 감독이 별명을 불러주자, 멀티히트 펄펄 날았다">
            <span>
              
              "넌 내 마음 속 야구왕" 감독이 별명을 불러주자, 멀티히트 펄펄 날았다
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=117&aid=0003741555" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="880000BB_000000000000000003741555" title="“김하성도 처음엔 거칠었다” KBO에 제2의 김하성이 떴다…21세 스위치히터 유격수 ‘위대한 도전’">
            <span>
              
              “김하성도 처음엔 거칠었다” KBO에 제2의 김하성이 떴다…21세 스위치히터 유격수 ‘위대한 도전’
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=477&aid=0000435558" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="88156f89_000000000000000000435558" title="염경엽 고대하던 '백업 주전' 온다…그런데 누굴 내리지? 좌타 유망주 or 우타 멀티맨">
            <span>
              
              염경엽 고대하던 '백업 주전' 온다…그런데 누굴 내리지? 좌타 유망주 or 우타 멀티맨
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=076&aid=0004021301" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="880000D3_000000000000000004021301" title="'우리 당분간 보지 말자' 포연 가득했던 광주 3연전, 9홈런 70안타 54득점...챔필은 투수의 무덤이었다">
            <span>
              
              '우리 당분간 보지 말자' 포연 가득했던 광주 3연전, 9홈런 70안타 54득점...챔필은 투수의 무덤이었다
            </span>
          </a>
        </li>
      
    
      
        <li data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" class="">
          <a href="/news?oid=144&aid=0000894342" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="8800006D_000000000000000000894342" title="버건디 배트는 그의 운명이었다…키움의 4번 타자 이형종">
            <span>
              
              버건디 배트는 그의 운명이었다…키움의 4번 타자 이형종
            </span>
          </a>
        </li>
      
    
  </ul>

  
    <ul class="home_news_list division">
      
        
          <li class="">
            <a href="/news?oid=477&aid=0000435557" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="88156f89_000000000000000000435557" title="&quot;걔는 그냥 내버려두세요&quot; 김원형의 이색 당부, 결국은 그 유망주를 다시 만난다">
              <span>
                
                "걔는 그냥 내버려두세요" 김원형의 이색 당부, 결국은 그 유망주를 다시 만난다
              </span>
            </a>
          </li>
        
      
        
          <li class="">
            <a href="/news?oid=117&aid=0003741549" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="880000BB_000000000000000003741549" title="'2주 연속 1위' 이정후, 50만표  추가→역대 최다…'사직 아이돌' 김민석 올스타 '유력'">
              <span>
                
                '2주 연속 1위' 이정후, 50만표  추가→역대 최다…'사직 아이돌' 김민석 올스타 '유력'
              </span>
            </a>
          </li>
        
      
        
          <li class="">
            <a href="/news?oid=396&aid=0000647375" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="88127056_000000000000000000647375" title="오승환도 야수들도, 반성해야 할 일주일 [최원영의 장(長)딴지]">
              <span>
                
                오승환도 야수들도, 반성해야 할 일주일 [최원영의 장(長)딴지]
              </span>
            </a>
          </li>
        
      
        
          <li class="">
            <a href="/news?oid=144&aid=0000894336" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="8800006D_000000000000000000894336" title="추신수와 오승환, 1982년생 황금세대의 희비">
              <span>
                
                추신수와 오승환, 1982년생 황금세대의 희비
              </span>
            </a>
          </li>
        
      
        
          <li class="">
            <a href="/news?oid=477&aid=0000435552" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="88156f89_000000000000000000435552" title="삼성에서 가장 바쁘다...38세 베테랑 포수의 여전한 존재감">
              <span>
                
                삼성에서 가장 바쁘다...38세 베테랑 포수의 여전한 존재감
              </span>
            </a>
          </li>
        
      
        
          <li class="division">
            <a href="/news?oid=109&aid=0004873059" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="8800011B_000000000000000004873059" title="1군 통산 1G 무명 투수-20승 출신 외인 특급, 잠실벌 한판 승부">
              <span>
                
                1군 통산 1G 무명 투수-20승 출신 외인 특급, 잠실벌 한판 승부
              </span>
            </a>
          </li>
        
      
        
          <li class="">
            <a href="/news?oid=109&aid=0004873057" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="8800011B_000000000000000004873057" title="야구와 외모만큼 말도 예쁘게 하는 김민석, &quot;올스타 팬 투표 화력 지원 롯데 팬, 든든하고 늘 감사드린다&quot;  ">
              <span>
                
                야구와 외모만큼 말도 예쁘게 하는 김민석, "올스타 팬 투표 화력 지원 롯데 팬, 든든하고 늘 감사드린다"  
              </span>
            </a>
          </li>
        
      
        
          <li class="">
            <a href="/news?oid=666&aid=0000014037" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="8822bt6d_000000000000000000014037" title="투·타 안정 속 반등 시작한 KT, 중위권 ‘호시탐탐’">
              <span>
                
                투·타 안정 속 반등 시작한 KT, 중위권 ‘호시탐탐’
              </span>
            </a>
          </li>
        
      
        
          <li class="">
            <a href="/news?oid=396&aid=0000647373" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="88127056_000000000000000000647373" title="“고우석, 내 롤모델”…“백승현 형, 같이 잘하자” [SW인터뷰]">
              <span>
                
                “고우석, 내 롤모델”…“백승현 형, 같이 잘하자” [SW인터뷰]
              </span>
            </a>
          </li>
        
      
        
          <li class="">
            <a href="/news?oid=001&aid=0014010550" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="880000D8_000000000000000014010550" title="'호랑이 새 해결사' 이우성 &quot;내 타율도 몰라…이기면 좋을 뿐&quot;">
              <span>
                
                '호랑이 새 해결사' 이우성 "내 타율도 몰라…이기면 좋을 뿐"
              </span>
            </a>
          </li>
        
      
        
          <li class="division">
            <a href="/news?oid=001&aid=0014010531" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="880000D8_000000000000000014010531" title="kt 김상수 &quot;여전히 잘 막고 잘 뛴다는 것 보여드리고 싶어&quot;">
              <span>
                
                kt 김상수 "여전히 잘 막고 잘 뛴다는 것 보여드리고 싶어"
              </span>
            </a>
          </li>
        
      
        
          <li class="">
            <a href="/news?oid=144&aid=0000894324" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="8800006D_000000000000000000894324" title="전광판에 뜬 ‘타구장 소식’···LG-SSG, ‘매일 밤, 네가 궁금해’">
              <span>
                
                전광판에 뜬 ‘타구장 소식’···LG-SSG, ‘매일 밤, 네가 궁금해’
              </span>
            </a>
          </li>
        
      
        
          <li class="">
            <a href="/news?oid=076&aid=0004021263" target="" data-model-version="sports_v1.2:category_global:control" data-session-id="wahqd5DolCoe6ULf" data-clickcode="mnl.txt" data-gdid="880000D3_000000000000000004021263" title="'몸살→월간 타율 0.407'  6월 꼴찌 롯데의 추락…37세 최고참 베테랑이 막았다 [인천핫피플]">
              <span>
                
                '몸살→월간 타율 0.407'  6월 꼴찌 롯데의 추락…37세 최고참 베테랑이 막았다 [인천핫피플]
              </span>
            </a>
          </li>
        
      
    </ul>
  
</div>
<script type="application/javascript">
  $(document).ready(function () {
    // 클릭코드에 airs 정보 추가해줌.
    $(".home_news .home_news_list").on('click', 'a', function (evt) {
      var curTarget = $(evt.currentTarget);
      var modelVersion = curTarget.data("model-version") || "";
      var sessionId = curTarget.data("session-id") || "";
      var clickCode = curTarget.data("clickcode") || "";
      var gdid = curTarget.data("gdid") || "";

      var ext = "";
      if (modelVersion && sessionId) {
        var temp = {
          "md": {
            "v": modelVersion,
            "s": sessionId
          }
        };
        ext = encodeURIComponent(JSON.stringify(temp));
      };

      if (clickCode) {
        clickcr(evt, clickCode, gdid, '', '', '', ext);
      }
    });
  });
</script>
            

                    <!-- //news -->
                    <!-- issue -->
                    <div class="home_issue" id="_center_right_issue">
                        
                        
                        
                        
                        
            
            





<div class="home_opentalk">
  <div class="head">
    <h2 class="title">스포츠 오픈톡</h2>
    <a href="https://m.sports.naver.com/community/opentalk/index"
       class="link_home"
       onclick="clickcr(this, 'sot.tophome', '', '', event);"
    >
      오픈톡 홈
    </a>
  </div>
  <div id="_section_home_center_right_opentalk"></div>
</div>

<script>
  Handlebars.registerHelper("calculateTimeAgo", function (targetTimeStamp) {
    var currentTime = new Date();
    var targetTime = new Date(new Date(targetTimeStamp).getTime());

    if (currentTime.toDateString() !== targetTime.toDateString()) {
      var year = targetTime.getFullYear();
      var month = targetTime.getMonth() + 1;
      var date = targetTime.getDate();
      return year + "." + month.toString().padStart(2, '0') + "." + date.toString().padStart(2, '0');
    }

    if (currentTime.getTime() > targetTime.getTime() + 3540000) {
      var hour = targetTime.getHours();
      var min = targetTime.getMinutes();
      return hour === 12 ? "오후 " + hour.toString().padStart(2, '0') + ":" + min.toString().padStart(2, '0')
        : hour < 12 ? "오전 " + hour.toString().padStart(2, '0') + ":" + min.toString().padStart(2, '0')
          : "오후 " + (hour - 12).toString().padStart(2, '0') + ":" + min.toString().padStart(2, '0');
    }

    if (currentTime.getTime() > targetTime.getTime() + 300000) {
      var timeDiff = (currentTime.getMinutes() + 60 - targetTime.getMinutes()) % 60;
      return timeDiff + "분 전";
    }

    return '방금 전';
  });

  Handlebars.registerHelper("enableYear", function (minBirthYear, maxBirthYear) {
    if (!minBirthYear && !maxBirthYear) {
      return null;
    }
    const minYear = minBirthYear ? new Date(minBirthYear).getFullYear() + "년생" : "";
    const maxYear = maxBirthYear ? new Date(maxBirthYear).getFullYear() + "년생" : "";

    return minYear + "~" + maxYear;
  });

  Handlebars.registerHelper("checkParticipationCondition", function (minBirthYear, maxBirthYear, sex, options) {
    return (minBirthYear || maxBirthYear || sex !== 'A') ? options.fn(this) : options.inverse(this);
  });

  Handlebars.registerHelper("convertPlusGreaterNumber", function (originalNumber, targetNumber) {
    if (originalNumber > targetNumber) {
      return targetNumber + "+";
    }
    return originalNumber;
  });

  function popup(url, width, height) {
    var left = Math.ceil((window.screen.width - width) / 2);
    var top = Math.ceil((window.screen.height - height) / 2);
    var pop = window.open(
      url,
      "_blank",
      "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top
    );
    pop.focus();
  }
</script>

<script type="text/x-handlebars-template" id="_section_center_right_opentalk_no_data">
  <div class="no_data" id="_section_home_center_right_opentalk">
    <p class="text">
      참여 / 추천 오픈톡이 없습니다.
      <br/>
      오픈톡을 만들어 함께 응원해 보세요.
    </p>
    <a href="https://m.sports.naver.com/community/opentalk/index"
       class="link_more"
       onclick="clickcr(this, 'sot.othome', '', '', event);"
    >
      <span class="highlight">오픈톡 홈</span> 바로가기
    </a>
  </div>
</script>

<script type="text/x-handlebars-template" id="_section_center_right_opentalk_join">
  <div class="opentalk" id="_section_home_center_right_opentalk">
    <ul class="opentalk_list">
      {{#each myTalkList}}
        <li class="opentalk_item{{#if contextBoxId}} is_live{{/if}}">
          <a href="javascript:popup('https://ntalk.naver.com/ch/{{channelId}}', 485, 840)"
             class="link"
             {{#if contextBoxId}}aria-label="라이브"{{/if}}
             onclick="clickcr(this, 'sot.myot', '', '', event);"
          >
            <div class="image_area">
              <span class="image">{{#if channelProfileImage}}
                <img src="https://openchat-phinf.pstatic.net{{channelProfileImage}}" width="116"
                   height="116" alt=""/>{{/if}}</span>
            </div>
            <div class="info_area">
              <div class="info">
                <div class="title">
                  <span class="text">{{channelName}}</span>
                  <span class="blind">참여 인원</span>
                  <span class="count">{{memberCount}}</span>
                </div>
                <div class="update">
                  <span class="blind">업데이트</span>
                  {{calculateTimeAgo lastMessage.createTime}}
                </div>
              </div>
              {{#ifCond messageUnreadCount '>' 0}}
                <span class="new">
                  <span class="blind">NEW</span>
                  {{convertPlusGreaterNumber messageUnreadCount 999}}
                </span>
              {{/ifCond}}
              <p class="description">
                <span class="start">{{#if lastMessage.content}}{{lastMessage.content}}{{else}}오픈톡에서 대화해보세요.{{/if}}</span>
              </p>
            </div>
          </a>
        </li>
      {{/each}}
    </ul>
    <div class="more_area">
      <a href="https://m.sports.naver.com/community/opentalk/index"
         class="link_more"
         onclick="clickcr(this, 'sot.othome', '', '', event);"
      >
        <span class="highlight">오픈톡 홈</span> 바로가기
      </a>
    </div>
  </div>
</script>

<script type="text/x-handlebars-template" id="_section_center_right_opentalk_recommend">
  <div class="opentalk" id="_section_home_center_right_opentalk">
    <ul class="opentalk_list">
      {{#each extractOpenTalks}}
      <!-- [D] 라이브인 경우 .is_live 추가, a.link 에 ara-label="라이브" 추가 -->
      <li class="opentalk_box{{#if talk.live}} is_live{{/if}}">
        <div class="label">
          <span class="text">{{label}}</span>
        </div>
        <a href="javascript:popup('https://ntalk.naver.com/ch/{{talk.channelId}}', 485, 840)"
           class="link"
           {{#if talk.live}}aria-label="라이브"{{/if}}
           onclick="clickcr(this, 'sot.recot', '', '', event);"
        >
          <div class="image_area">
          <span class="image">{{#if talk.channelProfileImage}}<img src="https://openchat-phinf.pstatic.net{{talk.channelProfileImage}}" width="116" height="116" alt=""/>{{/if}}</span>
          </div>
          <div class="info_area">
            <div class="info">
              <div class="title">{{talk.channelName}}</div>
              <!-- [D] 내가 참여중인 경우 .type_my 추가, 텍스트 '참여중' 으로 변경-->
              <div class="count">
                <span class="number">{{talk.memberCount}}</span>명 참여
              </div>
            </div>
            <div class="category">
              {{#each talk.categories}}
                {{#if @last}}
                  <span class="text">{{this}}</span>
                {{/if}}
              {{/each}}
            </div>
          </div>
          <div class="sub_area">
            <dl class="condition">
              <dt>참여조건</dt>
              {{#checkParticipationCondition talk.minBirthYear talk.maxBirthYear talk.sex}}
                {{#ifCond talk.minBirthYear '||' talk.maxBirthYear}}
                  <dd>{{enableYear talk.minBirthYear talk.maxBirthYear}}</dd>
                {{/ifCond}}
                {{#ifCond talk.sex '===' 'M'}}
                  <dd>남자</dd>
                {{/ifCond}}
                {{#ifCond talk.sex '===' 'F'}}
                  <dd>여자</dd>
                {{/ifCond}}
              {{else}}
                <dd>조건없음</dd>
              {{/checkParticipationCondition}}
            </dl>
            <div class="update">
              {{calculateTimeAgo talk.lastMessageTime}}
            </div>
          </div>
        </a>
      </li>
      {{/each}}
    </ul>
    <div class="more_area">
      <button type="button" class="button_refresh" onclick="clickcr(this, 'sot.more', '', '', event); draw('recommend');">
        <span class="highlight">다른 오픈톡</span> 더보기
      </button>
    </div>
  </div>


</script>

<script>
  var prevMyTalkIds = {};
  var prevRecommendTalkList = [];

  function draw(type) {
    var {myTalkList, recommendTalkList, extractOpenTalks} = fetchApi(type);
    drawTemplate(myTalkList, recommendTalkList, extractOpenTalks);
  }

  function drawTemplate(myTalkList, recommendTalkList, extractOpenTalks) {
    if (myTalkList.length === 0 && recommendTalkList.length < 4) {
      var noDataTemplate = Handlebars.compile($("#_section_center_right_opentalk_no_data").html());
      $("#_section_home_center_right_opentalk").replaceWith(noDataTemplate());
    } else if (myTalkList.length > 0) {
      var joinTalkTemplate = Handlebars.compile($("#_section_center_right_opentalk_join").html());
      $("#_section_home_center_right_opentalk").replaceWith(joinTalkTemplate({"myTalkList": myTalkList.slice(0, 3)}));
    } else {
      var recommendTalkTemplate = Handlebars.compile($("#_section_center_right_opentalk_recommend").html());
      $("#_section_home_center_right_opentalk").replaceWith(recommendTalkTemplate({"extractOpenTalks": extractOpenTalks}));
    }
  }

  function fetchApi(type) {
    //TODO: api url 수정
    var myTalkApiUrl = "https://api-gw.sports.naver.com/chat/open-talk/my/channel";
    // var myTalkApiUrl = "https://proxy-gateway.sports.naver.com/chat/channels/my";

    var myTalkList = [];
    $.ajax(myTalkApiUrl, {
      xhrFields: {withCredentials: true},
      async: false,
      success: function (resJson) {
        myTalkList = resJson.result || [];
      },
      error: function () {
        myTalkList = [];
      }
    });
    var recommendTalkApiUrl = "https://api-gw.sports.naver.com/chat/open-talk/section/kbaseball/recommend";
    var recommendTalkResult = {};
    $.ajax(recommendTalkApiUrl, {
      async: false,
      success: function (resJson) {
        recommendTalkResult = resJson.result;
      },
      error: function () {
        recommendTalkResult = {};
      }
    });

    var myTalkIds = _.map(myTalkList, function (talk) {
      return talk.channelId;
    });
    var {recommendTalkList, extractOpenTalks} = extractRandomOpenTalkChannel(
      recommendTalkResult,
      prevRecommendTalkList,
      myTalkIds,
      2
    );

    if (prevRecommendTalkList.length !== 0 && type !== 'recommend') {
      extractOpenTalks = prevRecommendTalkList;
    }
    prevRecommendTalkList = extractOpenTalks;

    return {
      "myTalkList": myTalkList,
      "recommendTalkList": recommendTalkList,
      "extractOpenTalks": extractOpenTalks
    };
  }

  function extractRandomOpenTalkChannel(recommendTalks, prevRecommendTalks, myTalkIds, size) {
    var growingChats = recommendTalks.growingChats || [];
    var activatingChats = recommendTalks.activatingChats || [];
    var cheeringChats = recommendTalks.cheeringChats || [];

    var recommendTalkList = [];
    growingChats.forEach(function (chat) {
      recommendTalkList.push({"talk": chat, "label": "성장하고 있어요"});
    });

    activatingChats.forEach(function (chat) {
      recommendTalkList.push({"talk": chat, "label": "활동이 많아요"});
    });

    cheeringChats.forEach(function (chat) {
      recommendTalkList.push({"talk": chat, "label": "같이 응원 중이에요"});
    });

    recommendTalkList = _.filter(recommendTalkList, function (item) {
      return !_.includes(myTalkIds, item.talk.channelId);
    });
    recommendTalkList = _.shuffle(recommendTalkList);
    var recommendTalkIds = _.map(recommendTalkList, function (item) {
      return item.talk.channelId;
    });
    recommendTalkIds = _.filter(recommendTalkIds, function (id, index) {
      return recommendTalkIds.indexOf(id) === index;
    });

    var extractRecommendTalkList = [];
    _.forEach(recommendTalkList, function (item) {
      var itemId = item.talk.channelId;
      var prevRecommendOpenTalkIds = _.map(prevRecommendTalks, function (pItem) {
        return pItem.talk.channelId;
      });
      var extractRecommendTalkIds = _.map(extractRecommendTalkList, function (eItem) {
        return eItem.talk.channelId;
      });
      if (!_.includes(prevRecommendOpenTalkIds, itemId) && !_.includes(extractRecommendTalkIds, itemId)) {
        extractRecommendTalkList.push(item);
      }
    })

    return {"recommendTalkList": recommendTalkList, "extractOpenTalks": extractRecommendTalkList.slice(0, size)};
  }

  draw();

  window.addEventListener('focus', draw);

</script>

            

                        
            
            





<div class="home_issue_box">
    
        
            
                <h2 class="home_issue_title">구단별 대표 오픈톡에서 함께 응원해요!</h2>
            
            
        
    
        
            
            
                <div class="issue_box">
                    <a href="https://ntalk.naver.com/ch/N1uQo" target="_blank">
                        
                        <div class="thmb">
                            
                            <img width="84" height="56" onclick="clickcr(this, 'stb.img', '', '', event);" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/20230329_223/16800735407842G1kk_JPEG/1.SSG_127x80.jpg&type=sports_nf84_56" alt="" onerror="$(this).parent().hide();">
                            <span class="mask"></span>
                        </div>
                        
                        <div class="text">
                            <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                                SSG 랜더스
                            </span>
                            <span class="press">네이버스포츠 오픈톡</span>
                        </div>
                    </a>
                </div>
            
        
    
        
            
            
                <div class="issue_box">
                    <a href="https://ntalk.naver.com/ch/N1uQs" target="_blank">
                        
                        <div class="thmb">
                            
                            <img width="84" height="56" onclick="clickcr(this, 'stb.img', '', '', event);" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/20230329_161/1680073547526aHikO_JPEG/2.%C5%B0%BF%F2_127x80.jpg&type=sports_nf84_56" alt="" onerror="$(this).parent().hide();">
                            <span class="mask"></span>
                        </div>
                        
                        <div class="text">
                            <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                                키움 히어로즈
                            </span>
                            <span class="press">네이버스포츠 오픈톡</span>
                        </div>
                    </a>
                </div>
            
        
    
        
            
            
                <div class="issue_box">
                    <a href="https://ntalk.naver.com/ch/N1uQl" target="_blank">
                        
                        <div class="thmb">
                            
                            <img width="84" height="56" onclick="clickcr(this, 'stb.img', '', '', event);" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/20230329_70/1680073553605NrDXB_JPEG/3.LG_127x80.jpg&type=sports_nf84_56" alt="" onerror="$(this).parent().hide();">
                            <span class="mask"></span>
                        </div>
                        
                        <div class="text">
                            <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                                LG 트윈스
                            </span>
                            <span class="press">네이버스포츠 오픈톡</span>
                        </div>
                    </a>
                </div>
            
        
    
        
            
            
                <div class="issue_box">
                    <a href="https://ntalk.naver.com/ch/N1uQi" target="_blank">
                        
                        <div class="thmb">
                            
                            <img width="84" height="56" onclick="clickcr(this, 'stb.img', '', '', event);" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/20230329_269/1680073559971oUCSx_JPEG/4.KT_127x80.jpg&type=sports_nf84_56" alt="" onerror="$(this).parent().hide();">
                            <span class="mask"></span>
                        </div>
                        
                        <div class="text">
                            <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                                KT 위즈
                            </span>
                            <span class="press">네이버스포츠 오픈톡</span>
                        </div>
                    </a>
                </div>
            
        
    
        
            
            
                <div class="issue_box">
                    <a href="https://ntalk.naver.com/ch/N1uQh" target="_blank">
                        
                        <div class="thmb">
                            
                            <img width="84" height="56" onclick="clickcr(this, 'stb.img', '', '', event);" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/20230329_283/1680073566688Hp2hH_JPEG/5.%B1%E2%BE%C6_127x80.jpg&type=sports_nf84_56" alt="" onerror="$(this).parent().hide();">
                            <span class="mask"></span>
                        </div>
                        
                        <div class="text">
                            <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                                KIA 타이거즈
                            </span>
                            <span class="press">네이버스포츠 오픈톡</span>
                        </div>
                    </a>
                </div>
            
        
    
        
            
            
                <div class="issue_box">
                    <a href="https://ntalk.naver.com/ch/N1uQm" target="_blank">
                        
                        <div class="thmb">
                            
                            <img width="84" height="56" onclick="clickcr(this, 'stb.img', '', '', event);" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/20230329_122/1680073573313qxW5V_JPEG/6.NC_127x80.jpg&type=sports_nf84_56" alt="" onerror="$(this).parent().hide();">
                            <span class="mask"></span>
                        </div>
                        
                        <div class="text">
                            <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                                NC 다이노스
                            </span>
                            <span class="press">네이버스포츠 오픈톡</span>
                        </div>
                    </a>
                </div>
            
        
    
        
            
            
                <div class="issue_box">
                    <a href="https://ntalk.naver.com/ch/N1uQr" target="_blank">
                        
                        <div class="thmb">
                            
                            <img width="84" height="56" onclick="clickcr(this, 'stb.img', '', '', event);" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/20230329_278/1680073580089WlON1_JPEG/7.%BB%EF%BC%BA_127x80.jpg&type=sports_nf84_56" alt="" onerror="$(this).parent().hide();">
                            <span class="mask"></span>
                        </div>
                        
                        <div class="text">
                            <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                                삼성 라이온즈
                            </span>
                            <span class="press">네이버스포츠 오픈톡</span>
                        </div>
                    </a>
                </div>
            
        
    
        
            
            
                <div class="issue_box">
                    <a href="https://ntalk.naver.com/ch/N1uQq" target="_blank">
                        
                        <div class="thmb">
                            
                            <img width="84" height="56" onclick="clickcr(this, 'stb.img', '', '', event);" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/20230329_253/1680073586847kRTrt_JPEG/8.%B7%D4%B5%A5_127x80.jpg&type=sports_nf84_56" alt="" onerror="$(this).parent().hide();">
                            <span class="mask"></span>
                        </div>
                        
                        <div class="text">
                            <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                                롯데 자이언츠
                            </span>
                            <span class="press">네이버스포츠 오픈톡</span>
                        </div>
                    </a>
                </div>
            
        
    
        
            
            
                <div class="issue_box">
                    <a href="https://ntalk.naver.com/ch/N1uQp" target="_blank">
                        
                        <div class="thmb">
                            
                            <img width="84" height="56" onclick="clickcr(this, 'stb.img', '', '', event);" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/20230329_36/1680073594010yOe8r_JPEG/9.%B5%CE%BB%EA_127x80.jpg&type=sports_nf84_56" alt="" onerror="$(this).parent().hide();">
                            <span class="mask"></span>
                        </div>
                        
                        <div class="text">
                            <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                                두산 베어스
                            </span>
                            <span class="press">네이버스포츠 오픈톡</span>
                        </div>
                    </a>
                </div>
            
        
    
        
            
            
                <div class="issue_box">
                    <a href="https://ntalk.naver.com/ch/N1uQt" target="_blank">
                        
                        <div class="thmb">
                            
                            <img width="84" height="56" onclick="clickcr(this, 'stb.img', '', '', event);" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/20230329_177/1680073600603auz1z_JPEG/10.%C7%D1%C8%AD_127x80.jpg&type=sports_nf84_56" alt="" onerror="$(this).parent().hide();">
                            <span class="mask"></span>
                        </div>
                        
                        <div class="text">
                            <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                                한화 이글스
                            </span>
                            <span class="press">네이버스포츠 오픈톡</span>
                        </div>
                    </a>
                </div>
            
        
    
</div>
            





<div class="component_box">
    <h2 class="title">구단에서 직접 전하는 프로야구 소식</h2>
    <div class="aside_column">
        <ul class="list">
            
            <li>
        <a href="https://m.post.naver.com/viewer/postView.nhn?volumeNo=36114947&memberNo=29153969" target="">
          
                    <div class="thmb">
                        
            
            <img width="84" height="56"
               src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
               class="imageLazyLoad"
               lazy-src="https://dthumb-phinf.pstatic.net/?src=https://post-phinf.pstatic.net/MjAyMzA2MTlfOTQg/MDAxNjg3MTQwMzM0MjAy.hUDB-eFuMt3nNb8g8MUVMRzbW974_tURFz5VI5oGEL4g.3iE-0dub1iTc-VYijU4Y0BRa3PeT9WltD0hHeHyGk-wg.PNG/mug_obj_168714034063153700.jpg&type=sports_nf84_56" alt=""
               onerror="$(this).parent().hide();">
                        <span class="mask"></span>
                    </div>
                    
                    <div class="text">
                        <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                            
                            
                            키움 이정후 2023 KBO 올스타 팬 투표 중간집계 2주..
                        </span>
                        <span class="press"><span class="logo"><img src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/20220317_82/1647493010940PSmRY_PNG/kbo.png&twidth=20&theight=15&opts=18&qlt=70" width="20" height="15" onerror="$(this).parent().hide();" alt=""></span>KBO</span>
                    </div>
                </a>
            </li>
            
        </ul>
    </div>
  <a href="/kbaseball/club/clubList" class="more"><span>더보기</span></a>
</div>
            
            





<div class="home_issue_box">
    
        
            
                <h2 class="home_issue_title">[네이버 Only] 스토리텔러</h2>
            
            
        
    
        
            
            
                <div class="issue_box">
                    <a href="https://blog.naver.com/skwyverns62/223127540328?&isInf=true" target="">
                        
                        <div class="thmb">
                            
                            <img width="84" height="56" onclick="clickcr(this, 'stb.img', '', '', event);" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/20230605_146/1685957136617yzUur_PNG/7.png&type=sports_nf84_56" alt="" onerror="$(this).parent().hide();">
                            <span class="mask"></span>
                        </div>
                        
                        <div class="text">
                            <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                                곤경은 나를 더 단단하게
                            </span>
                            <span class="press">한유섬 스토리</span>
                        </div>
                    </a>
                </div>
            
        
    
        
            
            
                <div class="issue_box">
                    <a href="https://blog.naver.com/youngpyostr/223054557765?isInf=true" target="">
                        
                        <div class="thmb">
                            
                            <img width="84" height="56" onclick="clickcr(this, 'stb.img', '', '', event);" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/admin/crop/1679793795286.jpg&type=sports_nf84_56" alt="" onerror="$(this).parent().hide();">
                            <span class="mask"></span>
                        </div>
                        
                        <div class="text">
                            <span class="title" onclick="clickcr(this, 'stb.txt', '', '', event);">
                                꺾여버린 마음 일으켜 세우기
                            </span>
                            <span class="press">고영표 스토리</span>
                        </div>
                    </a>
                </div>
            
        
    
</div>
            

                    </div>
                    <!-- //issue -->
                </div>
                










<div class="home_photo">
  <div class="head">
    <h2 class="blind">생생화보</h2>
    <a href="/photocenter/albumList?category=kbo" class="more"
       onclick="clickcr(this, 'pht.more', '', '', event);">생생화보<span>더보기</span></a>
  </div>
  <div class="home_photo_ct">
    <a href="/photocenter/photoList?albumId=129106&category=kbo"
       onclick="clickcr(this, 'pht.photo', '', '', event);" class="photo_big">
      <div class="text">
        <b class="title">양홍석, '멋진 피지컬 뽐내며 시구'</b>
      </div>
      <div class="mask"></div>
      <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad"
         lazy-src="https://dthumb-phinf.pstatic.net/?src=http://imgnews.naver.net/image/109/2023/06/18/0004872843_001_20230618200509634.jpg&type=nf348_221&qlt=95" alt=""
         onerror="imageOnError(this);">
    </a>
    <div class="home_photo_list">
      <ul class="list">
        
          <li>
            <a href="/photocenter/photoList?albumId=129100&category=kbo"
               onclick="clickcr(this, 'pht.photo', '', '', event);" class="photo_small">
              <div class="text">
                <b class="title">홍원기 감독 '선수들과 ..</b>
              </div>
              <div class="mask"></div>
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 class="imageLazyLoad"
                 lazy-src="https://dthumb-phinf.pstatic.net/?src=http://imgnews.naver.net/image/311/2023/06/18/0001606101_001_20230618213201382.jpg&type=nf150_110&qlt=95"
                 alt="" onerror="imageOnError(this);">
            </a>
          </li>
        
          <li>
            <a href="/photocenter/photoList?albumId=129099&category=kbo"
               onclick="clickcr(this, 'pht.photo', '', '', event);" class="photo_small">
              <div class="text">
                <b class="title">KIA, 연장 12회 N..</b>
              </div>
              <div class="mask"></div>
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 class="imageLazyLoad"
                 lazy-src="https://dthumb-phinf.pstatic.net/?src=http://imgnews.naver.net/image/382/2023/06/18/0001058045_001_20230618215701333.jpg&type=nf150_110&qlt=95"
                 alt="" onerror="imageOnError(this);">
            </a>
          </li>
        
          <li>
            <a href="/photocenter/photoList?albumId=129089&category=kbo"
               onclick="clickcr(this, 'pht.photo', '', '', event);" class="photo_small">
              <div class="text">
                <b class="title">부상 당하는 박계범 </b>
              </div>
              <div class="mask"></div>
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 class="imageLazyLoad"
                 lazy-src="https://dthumb-phinf.pstatic.net/?src=http://imgnews.naver.net/image/382/2023/06/18/0001058027_001_20230618203503564.jpg&type=nf150_110&qlt=95"
                 alt="" onerror="imageOnError(this);">
            </a>
          </li>
        
          <li>
            <a href="/photocenter/photoList?albumId=129086&category=kbo"
               onclick="clickcr(this, 'pht.photo', '', '', event);" class="photo_small">
              <div class="text">
                <b class="title">롯데 자이언츠,'깔끔하게..</b>
              </div>
              <div class="mask"></div>
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 class="imageLazyLoad"
                 lazy-src="https://dthumb-phinf.pstatic.net/?src=http://imgnews.naver.net/image/109/2023/06/18/0004872895_001_20230618210305432.jpg&type=nf150_110&qlt=95"
                 alt="" onerror="imageOnError(this);">
            </a>
          </li>
        
      </ul>
    </div>
  </div>
</div>






  
  
  <div class="home_shopping">
    <div class="head_shooping">
      <span class="tit_box">
        <strong class="title">플레이윈도<br>야구 쇼핑</strong>
      </span>
      <div class="nav_box" id="_shoppingPageArea">
        <div class="nav_num_box"><span class="nav_num on" id="_shoppingPageNum">1</span><span class="mid_slash">/</span><span
            class="nav_num">2</span></div>
        <button id="_shoppingDisablePrevBtn" disabled="true" class="btn_nav btn_l_nav end"><span><span
            class="blind">이전 없음</span></span></button>
        <button id="_shoppingEnablePrevBtn" class="btn_nav btn_l_nav"
            onclick="clickcr(this, 'plw.prev', '', '', event);"><span><span class="blind">이전</span></span>
        </button>
        <button id="_shoppingEnableNextBtn" class="btn_nav btn_r_nav"
            onclick="clickcr(this, 'plw.next', '', '', event);"><span><span class="blind">다음</span></span>
        </button>
        <button id="_shoppingDisableNextBtn" disabled="true" class="btn_nav btn_r_nav end"><span><span
            class="blind">다음 없음</span></span></button>
      </div>
    </div>
    <div class="list_shopping">
      
        
        
          <ul class="list" id="_shoppingArea_0" style="display:none;">
        
        <li>
          <a href="https://shopping.naver.com/outlink/itemdetail/5838604568" onclick="clickcr(this, 'plw.goods', '', '', event);">
            <div class="thmb">
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 class="imageLazyLoad" lazy-src="https://shop-phinf.pstatic.net/20230613_251/1686638628465fqbQh_JPEG/1.jpg" alt="실리콘 처리<br>BBK Newest 장갑"
                 width="110" height="142" onerror="imageOnError(this);">
              <span class="mask"></span>
            </div>
            <div class="price_wrap">
              <span class="blind">가격 : </span><strong class="price"><span>17,000</span>원</strong>
            </div>
            <span class="text">실리콘 처리<br>BBK Newest 장갑</span>
          </a>
        </li>
        
      
        
        
        <li>
          <a href="https://shopping.naver.com/outlink/itemdetail/4205445847" onclick="clickcr(this, 'plw.goods', '', '', event);">
            <div class="thmb">
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 class="imageLazyLoad" lazy-src="https://shop-phinf.pstatic.net/20230613_202/1686638651739EX8tM_JPEG/2.jpg" alt="큐브 장식<br>야구공 케이스"
                 width="110" height="142" onerror="imageOnError(this);">
              <span class="mask"></span>
            </div>
            <div class="price_wrap">
              <span class="blind">가격 : </span><strong class="price"><span>3,000</span>원</strong>
            </div>
            <span class="text">큐브 장식<br>야구공 케이스</span>
          </a>
        </li>
        
      
        
        
        <li>
          <a href="https://shopping.naver.com/outlink/itemdetail/5957212680" onclick="clickcr(this, 'plw.goods', '', '', event);">
            <div class="thmb">
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 class="imageLazyLoad" lazy-src="https://shop-phinf.pstatic.net/20230613_129/16866386751577m8xJ_JPEG/3.jpg" alt="대용량 수납력<br>월슨 야구 백팩"
                 width="110" height="142" onerror="imageOnError(this);">
              <span class="mask"></span>
            </div>
            <div class="price_wrap">
              <span class="blind">가격 : </span><strong class="price"><span>69,000</span>원</strong>
            </div>
            <span class="text">대용량 수납력<br>월슨 야구 백팩</span>
          </a>
        </li>
        
      
        
        
        <li>
          <a href="https://shopping.naver.com/outlink/itemdetail/6419562430" onclick="clickcr(this, 'plw.goods', '', '', event);">
            <div class="thmb">
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 class="imageLazyLoad" lazy-src="https://shop-phinf.pstatic.net/20230613_265/1686638687981F8cGe_JPEG/4.jpg" alt="편안한 착용감<br>아디다스 야구화"
                 width="110" height="142" onerror="imageOnError(this);">
              <span class="mask"></span>
            </div>
            <div class="price_wrap">
              <span class="blind">가격 : </span><strong class="price"><span>23,400</span>원</strong>
            </div>
            <span class="text">편안한 착용감<br>아디다스 야구화</span>
          </a>
        </li>
        
          </ul>
        
      
        
        
          <ul class="list" id="_shoppingArea_1" style="display:none;">
        
        <li>
          <a href="https://shopping.naver.com/outlink/itemdetail/8550671449" onclick="clickcr(this, 'plw.goods', '', '', event);">
            <div class="thmb">
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 class="imageLazyLoad" lazy-src="https://shop-phinf.pstatic.net/20230613_82/1686638700981ndGje_JPEG/5.jpg" alt="손목 근력 강화<br>스핀 볼 운동 기구"
                 width="110" height="142" onerror="imageOnError(this);">
              <span class="mask"></span>
            </div>
            <div class="price_wrap">
              <span class="blind">가격 : </span><strong class="price"><span>12,900</span>원</strong>
            </div>
            <span class="text">손목 근력 강화<br>스핀 볼 운동 기구</span>
          </a>
        </li>
        
      
        
        
        <li>
          <a href="https://shopping.naver.com/outlink/itemdetail/7704130067" onclick="clickcr(this, 'plw.goods', '', '', event);">
            <div class="thmb">
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 class="imageLazyLoad" lazy-src="https://shop-phinf.pstatic.net/20230613_292/1686638717526EQAX6_JPEG/6.jpg" alt="단단한 고정력<br>하이퍼 손목보호대"
                 width="110" height="142" onerror="imageOnError(this);">
              <span class="mask"></span>
            </div>
            <div class="price_wrap">
              <span class="blind">가격 : </span><strong class="price"><span>22,900</span>원</strong>
            </div>
            <span class="text">단단한 고정력<br>하이퍼 손목보호대</span>
          </a>
        </li>
        
      
        
        
        <li>
          <a href="https://shopping.naver.com/outlink/itemdetail/4581399088" onclick="clickcr(this, 'plw.goods', '', '', event);">
            <div class="thmb">
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 class="imageLazyLoad" lazy-src="https://shop-phinf.pstatic.net/20230613_39/1686638737169aSbQJ_JPEG/7.jpg" alt="리모컨 조정<br>자전거 후미등"
                 width="110" height="142" onerror="imageOnError(this);">
              <span class="mask"></span>
            </div>
            <div class="price_wrap">
              <span class="blind">가격 : </span><strong class="price"><span>36,100</span>원</strong>
            </div>
            <span class="text">리모컨 조정<br>자전거 후미등</span>
          </a>
        </li>
        
      
        
        
        <li>
          <a href="https://shopping.naver.com/outlink/itemdetail/5747542236" onclick="clickcr(this, 'plw.goods', '', '', event);">
            <div class="thmb">
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 class="imageLazyLoad" lazy-src="https://shop-phinf.pstatic.net/20230613_201/1686638750581TzgW4_JPEG/8.jpg" alt="한치 낚싯대<br>해동 썸씽 CC"
                 width="110" height="142" onerror="imageOnError(this);">
              <span class="mask"></span>
            </div>
            <div class="price_wrap">
              <span class="blind">가격 : </span><strong class="price"><span>51,300</span>원</strong>
            </div>
            <span class="text">한치 낚싯대<br>해동 썸씽 CC</span>
          </a>
        </li>
        
          </ul>
        
      
    </div>
  </div>

  <script>
    naver = window.naver || {};
    naver.sports = naver.sports || {};
    naver.sports.section = naver.sports.section || {};
    naver.sports.section.home = naver.sports.section.home || {};

    naver.sports.section.home.ShoppingArea = eg.Class({
      construct: function (option) {
        this._initVars(option);
        this._initComponents(option);
        this._setEventHandler();
      },
      _initVars: function (htOption) {
        this._$shoppingPageArea = $("#_shoppingPageArea");
        this._lastPage = 1;
        this._currentPage = Math.floor(Math.random() * (this._lastPage + 1));
      },
      _initComponents: function (options) {
        this._refreshShoppingArea();
      },
      _setEventHandler: function () {
        this._$shoppingPageArea.on("click", "#_shoppingEnablePrevBtn", $.proxy(this._onClickPrevPage, this));
        this._$shoppingPageArea.on("click", "#_shoppingEnableNextBtn", $.proxy(this._onClickNextPage, this));
      },
      _refreshShoppingArea: function () {
        for (var i = 0; i <= this._lastPage; i++) {
          $("#_shoppingArea_" + i).hide();
        }

        $("#_shoppingArea_" + this._currentPage).show();
        $("#_shoppingPageNum")[0].innerHTML = this._currentPage + 1;

        if (this._currentPage > 0) {
          $("#_shoppingEnablePrevBtn").show();
          $("#_shoppingDisablePrevBtn").hide();
        }
        if (this._currentPage == 0) {
          $("#_shoppingEnablePrevBtn").hide();
          $("#_shoppingDisablePrevBtn").show();
        }
        if (this._currentPage == this._lastPage) {
          $("#_shoppingEnableNextBtn").hide();
          $("#_shoppingDisableNextBtn").show();
        }
        if (this._currentPage < this._lastPage) {
          $("#_shoppingEnableNextBtn").show();
          $("#_shoppingDisableNextBtn").hide();
        }
      },
      _onClickNextPage: function (e) {
        this._currentPage = Math.min(this._currentPage + 1, this._lastPage);
        this._refreshShoppingArea();
        e.preventDefault();
      },
      _onClickPrevPage: function (e) {
        this._currentPage = Math.max(0, this._currentPage - 1);
        this._refreshShoppingArea();
        e.preventDefault();
      }
    });

    new naver.sports.section.home.ShoppingArea({});
  </script>


            </div>
            <div class="aside">
                





    <div id="_schedule_box" class="home_box">
            







<div class="home_mn" style="">
    <div id="_spt_section" style="display:none">kbaseball</div>
    <div class="home_box_head">
        <h2>야구 경기 일정/결과</h2>
        <a href="/kbaseball/schedule/index" onclick="clickcr(this, 'gsc.more', '', '', event);" class="more"><span>더보기</span></a>
    </div>
    <div class="hmb_sch">
      <span class="inner">
        <span class="day">06.20<span class="week">(화)</span></span>
                
                
                <a href="#" onclick="clickcr(this, 'gsc.date', '', '', event);" data-date="20230618" class="nav nav_prev _date_btn"><span>이전</span></a>
                <a href="#" onclick="clickcr(this, 'gsc.date', '', '', event);" data-date="20230621" class="nav nav_next _date_btn"><span>다음</span></a>
      </span>
    </div>
    
    <div class="hmb_tab " >
        
            
            
            <div class="inner" id="_tab_group_0">
            
            
                
                
                    <a href="#" onclick="clickcr(this, 'gsc.league', '', '', event);" data-key="kbo" id="_tab_btn_kbo" class="selected _tab_btn"><span class="menu">KBO리그</span></a>
                
            
            
        
            
            
            
            
            
                
                
                    <a href="#" onclick="clickcr(this, 'gsc.league', '', '', event);" data-key="kbaseballetc" id="_tab_btn_kbaseballetc" class=" _tab_btn"><span class="menu">기타</span></a>
                
            
            </div>
        
        
    </div>
    
        
        
        
        
        
            
                
                <div id="_tab_box_kbo"  class="_tab_box ">
                    <div class="hmb_list">
                        <ul>
                        
                            
                                
                                
                                    





<li class="hmb_list_items  ">
  <div class="vs_list vs_list1">
    <div class="inner">
      
      <span class="image emblem"><img src="https://dthumb-phinf.pstatic.net?src=https://sports-phinf.pstatic.net/team/kbo/default/WO.png&type=f28_28&refresh=1" width="28" alt="" onerror="imageOnError(this);"></span>
      <span class="name">키움</span>
      
        
          
          
            
          
        
        
          
          
          
          
          
          <span>최원태</span>
        
      
    </div>
  </div>
  <div class="vs_list vs_list2">
    <div class="inner">
      
      <span class="image emblem"><img src="https://dthumb-phinf.pstatic.net?src=https://sports-phinf.pstatic.net/team/kbo/default/SS.png&type=f28_28&refresh=1" width="28" alt="" onerror="imageOnError(this);"></span>
      <span class="name">삼성</span>
      
        
          
          
            
          
        
        
          
          
          
          
          
          <span>뷰캐넌</span>
        
      
    </div>
  </div>
  <div class="state">
    <div class="inner">
      
        
        
        <em class="time">18:30</em>
        
      
      
    </div>
  </div>
  
  <div class="btn_wrap">
    
    

    
      
      
        
        
        
        
        
        

        
        
          
        
        

        
        
          
            
              
              
                <a href="/game/20230620WOSS02023/relay" target="_blank" onclick="clickcr(this, 'gsc.txtcast', '', '', event);" class="btn">전력</a>
              
            
            
            
              <span class="btn">TV</span>
              
            
            
            
          
          
          
          
          
        
      
    
  </div>
  
</li>
                                
                            
                        
                            
                                
                                
                                    





<li class="hmb_list_items  ">
  <div class="vs_list vs_list1">
    <div class="inner">
      
      <span class="image emblem"><img src="https://dthumb-phinf.pstatic.net?src=https://sports-phinf.pstatic.net/team/kbo/default/SK.png&type=f28_28&refresh=1" width="28" alt="" onerror="imageOnError(this);"></span>
      <span class="name">SSG</span>
      
        
          
          
            
          
        
        
          
          
          
          
          
          <span>조성훈</span>
        
      
    </div>
  </div>
  <div class="vs_list vs_list2">
    <div class="inner">
      
      <span class="image emblem"><img src="https://dthumb-phinf.pstatic.net?src=https://sports-phinf.pstatic.net/team/kbo/default/OB.png&type=f28_28&refresh=1" width="28" alt="" onerror="imageOnError(this);"></span>
      <span class="name">두산</span>
      
        
          
          
            
          
        
        
          
          
          
          
          
          <span>알칸타라</span>
        
      
    </div>
  </div>
  <div class="state">
    <div class="inner">
      
        
        
        <em class="time">18:30</em>
        
      
      
    </div>
  </div>
  
  <div class="btn_wrap">
    
    

    
      
      
        
        
        
        
        
        

        
        
          
        
        

        
        
          
            
              
              
                <a href="/game/20230620SKOB02023/relay" target="_blank" onclick="clickcr(this, 'gsc.txtcast', '', '', event);" class="btn">전력</a>
              
            
            
            
              <span class="btn">TV</span>
              
            
            
            
          
          
          
          
          
        
      
    
  </div>
  
</li>
                                
                            
                        
                            
                                
                                
                                    





<li class="hmb_list_items  ">
  <div class="vs_list vs_list1">
    <div class="inner">
      
      <span class="image emblem"><img src="https://dthumb-phinf.pstatic.net?src=https://sports-phinf.pstatic.net/team/kbo/default/LT.png&type=f28_28&refresh=1" width="28" alt="" onerror="imageOnError(this);"></span>
      <span class="name">롯데</span>
      
        
          
          
            
          
        
        
          
          
          
          
          
          <span>스트레일리</span>
        
      
    </div>
  </div>
  <div class="vs_list vs_list2">
    <div class="inner">
      
      <span class="image emblem"><img src="https://dthumb-phinf.pstatic.net?src=https://sports-phinf.pstatic.net/team/kbo/default/KT.png&type=f28_28&refresh=1" width="28" alt="" onerror="imageOnError(this);"></span>
      <span class="name">KT</span>
      
        
          
          
            
          
        
        
          
          
          
          
          
          <span>배제성</span>
        
      
    </div>
  </div>
  <div class="state">
    <div class="inner">
      
        
        
        <em class="time">18:30</em>
        
      
      
    </div>
  </div>
  
  <div class="btn_wrap">
    
    

    
      
      
        
        
        
        
        
        

        
        
          
        
        

        
        
          
            
              
              
                <a href="/game/20230620LTKT02023/relay" target="_blank" onclick="clickcr(this, 'gsc.txtcast', '', '', event);" class="btn">전력</a>
              
            
            
            
              <span class="btn">TV</span>
              
            
            
            
          
          
          
          
          
        
      
    
  </div>
  
</li>
                                
                            
                        
                            
                                
                                
                                    





<li class="hmb_list_items  ">
  <div class="vs_list vs_list1">
    <div class="inner">
      
      <span class="image emblem"><img src="https://dthumb-phinf.pstatic.net?src=https://sports-phinf.pstatic.net/team/kbo/default/LG.png&type=f28_28&refresh=1" width="28" alt="" onerror="imageOnError(this);"></span>
      <span class="name">LG</span>
      
        
          
          
            
          
        
        
          
          
          
          
          
          <span>이상영</span>
        
      
    </div>
  </div>
  <div class="vs_list vs_list2">
    <div class="inner">
      
      <span class="image emblem"><img src="https://dthumb-phinf.pstatic.net?src=https://sports-phinf.pstatic.net/team/kbo/default/NC.png&type=f28_28&refresh=1" width="28" alt="" onerror="imageOnError(this);"></span>
      <span class="name">NC</span>
      
        
          
          
            
          
        
        
          
          
          
          
          
          <span>최성영</span>
        
      
    </div>
  </div>
  <div class="state">
    <div class="inner">
      
        
        
        <em class="time">18:30</em>
        
      
      
    </div>
  </div>
  
  <div class="btn_wrap">
    
    

    
      
      
        
        
        
        
        
        

        
        
          
        
        

        
        
          
            
              
              
                <a href="/game/20230620LGNC02023/relay" target="_blank" onclick="clickcr(this, 'gsc.txtcast', '', '', event);" class="btn">전력</a>
              
            
            
            
              <span class="btn">TV</span>
              
            
            
            
          
          
          
          
          
        
      
    
  </div>
  
</li>
                                
                            
                        
                            
                                
                                
                                    





<li class="hmb_list_items  ">
  <div class="vs_list vs_list1">
    <div class="inner">
      
      <span class="image emblem"><img src="https://dthumb-phinf.pstatic.net?src=https://sports-phinf.pstatic.net/team/kbo/default/HT.png&type=f28_28&refresh=1" width="28" alt="" onerror="imageOnError(this);"></span>
      <span class="name">KIA</span>
      
        
          
          
            
          
        
        
          
          
          
          
          
          <span>앤더슨</span>
        
      
    </div>
  </div>
  <div class="vs_list vs_list2">
    <div class="inner">
      
      <span class="image emblem"><img src="https://dthumb-phinf.pstatic.net?src=https://sports-phinf.pstatic.net/team/kbo/default/HH.png&type=f28_28&refresh=1" width="28" alt="" onerror="imageOnError(this);"></span>
      <span class="name">한화</span>
      
        
          
          
            
          
        
        
          
          
          
          
          
          <span>한승주</span>
        
      
    </div>
  </div>
  <div class="state">
    <div class="inner">
      
        
        
        <em class="time">18:30</em>
        
      
      
    </div>
  </div>
  
  <div class="btn_wrap">
    
    

    
      
      
        
        
        
        
        
        

        
        
          
        
        

        
        
          
            
              
              
                <a href="/game/20230620HTHH02023/relay" target="_blank" onclick="clickcr(this, 'gsc.txtcast', '', '', event);" class="btn">전력</a>
              
            
            
            
              <span class="btn">TV</span>
              
            
            
            
          
          
          
          
          
        
      
    
  </div>
  
</li>
                                
                            
                        
                        </ul>
                    </div>
                </div>
            
                
                <div id="_tab_box_kbaseballetc" style="display:none" class="_tab_box ">
                    <div class="hmb_list">
                        <ul>
                        
                            
                                
                                    
                                    




  
  
  

<li class="hmb_list_items2" data-game-id="20230620FU1">
  <div class="list1">
    <strong class="match_title">롯데 vs KIA - KBO 퓨처스리그</strong>
    <span class="match_desc">
      
        
        
        
          
          
            
            
              <span class="ready">13:00</span>
            
          
        
      
      <span class="arena">함평</span>
    </span>
  </div>
  <div class="btn_wrap">
    <!-- [D] TV중계 버튼 클래스 .type_live 추가 -->
    
      
      
        
        <span class="btn">TV중계</span>
      
    
  </div>
</li>
                                
                                
                            
                        
                        </ul>
                    </div>
                </div>
            
        
    
</div>

    </div>
<script>
new naver.sports.home.ScheduleTemplate({"defaultCategoryId" : ""});
</script>

            
            







    
    
        






<div id="rank_template2" class="home_box">
  <div class="home_mn">
    <div class="home_box_head">
      <h2 class="home_head_title">[역대타점 순위] 최형우, 이승엽과 나란히</h2>
      
    </div>
    <div class="hmb_tbl">
      <table class="align_left">
        <caption>[역대타점 순위] 최형우, 이승엽과 나란히</caption>
        <thead>
        <tr>
          
            <th scope="col" class="th_num"><span class="blind">순위</span></th>
          
          
            <th scope="col" >
              <span>소속팀</span></th>
          
          
            <th scope="col" class=""><span>이름</span></th>
          
          
            <th scope="col" class=""><span>타점</span></th>
          
          
        </tr>
        </thead>
        <tbody>
        
          
            
            
              
              
              
              
              
            
          
          <tr>
            
              <th scope="row" ><span><em class="rank num1"><span class="blind">1위</span></em></span></th>
            
            
              <td><div class="info">
                  
                    
                    
                      <span class="name">최형우</span>
                    
                  
                  
                </div></td>
            
            
              <td>
                
                <span>KIA</span></td>
            
            
              <td>
                
                <span>1498타점</span></td>
            
            
          </tr>
        
          
            
            
              
              
              
              
              
            
          
          <tr>
            
              <th scope="row" class="rank_vertical_top"><span><em class="rank num1"><span class="blind">1위</span></em></span></th>
            
            
              <td><div class="info">
                  
                    
                    
                      <span class="name">이승엽</span>
                    
                  
                  
                    <div class="stat">
                      <span>은퇴</span>
                    </div>
                  
                </div></td>
            
            
              <td>
                
                <span>삼성</span></td>
            
            
              <td>
                
                <span>1498타점</span></td>
            
            
          </tr>
        
          
            
            
              
              
              
              
              
            
          
          <tr>
            
              <th scope="row" class="rank_vertical_top"><span><em class="rank num3"><span class="blind">3위</span></em></span></th>
            
            
              <td><div class="info">
                  
                    
                    
                      <span class="name">이대호</span>
                    
                  
                  
                    <div class="stat">
                      <span>은퇴</span>
                    </div>
                  
                </div></td>
            
            
              <td>
                
                <span>롯데</span></td>
            
            
              <td>
                
                <span>1425타점</span></td>
            
            
          </tr>
        
          
            
            
              
              
              
              
              
            
          
          <tr>
            
              <th scope="row" ><span><em class="rank num4"><span class="blind">4위</span></em></span></th>
            
            
              <td><div class="info">
                  
                    
                    
                      <span class="name">최정</span>
                    
                  
                  
                </div></td>
            
            
              <td>
                
                <span>SSG</span></td>
            
            
              <td>
                
                <span>1411타점</span></td>
            
            
          </tr>
        
          
            
            
              
              
              
              
              
            
          
          <tr>
            
              <th scope="row" class="rank_vertical_top"><span><em class="rank num5"><span class="blind">5위</span></em></span></th>
            
            
              <td><div class="info">
                  
                    
                    
                      <span class="name">양준혁</span>
                    
                  
                  
                    <div class="stat">
                      <span>은퇴</span>
                    </div>
                  
                </div></td>
            
            
              <td>
                
                <span>삼성</span></td>
            
            
              <td>
                
                <span>1389타점</span></td>
            
            
          </tr>
        
          
            
            
              
              
              
              
              
            
          
          <tr>
            
              <th scope="row" class="rank_vertical_top"><span><em class="rank num6"><span class="blind">6위</span></em></span></th>
            
            
              <td><div class="info">
                  
                    
                    
                      <span class="name">김태균</span>
                    
                  
                  
                    <div class="stat">
                      <span>은퇴</span>
                    </div>
                  
                </div></td>
            
            
              <td>
                
                <span>한화</span></td>
            
            
              <td>
                
                <span>1356타점</span></td>
            
            
          </tr>
        
          
            
            
              
              
              
              
              
            
          
          <tr>
            
              <th scope="row" ><span><em class="rank num7"><span class="blind">7위</span></em></span></th>
            
            
              <td><div class="info">
                  
                    
                    
                      <span class="name">김현수</span>
                    
                  
                  
                </div></td>
            
            
              <td>
                
                <span>LG</span></td>
            
            
              <td>
                
                <span>1308타점</span></td>
            
            
          </tr>
        
          
            
            
              
              
              
              
              
            
          
          <tr>
            
              <th scope="row" class="rank_vertical_top"><span><em class="rank num8"><span class="blind">8위</span></em></span></th>
            
            
              <td><div class="info">
                  
                    
                    
                      <span class="name">이호준</span>
                    
                  
                  
                    <div class="stat">
                      <span>은퇴</span>
                    </div>
                  
                </div></td>
            
            
              <td>
                
                <span>NC</span></td>
            
            
              <td>
                
                <span>1265타점</span></td>
            
            
          </tr>
        
          
            
            
              
              
              
              
              
            
          
          <tr>
            
              <th scope="row" class="rank_vertical_top"><span><em class="rank num9"><span class="blind">9위</span></em></span></th>
            
            
              <td><div class="info">
                  
                    
                    
                      <span class="name">박용택</span>
                    
                  
                  
                    <div class="stat">
                      <span>은퇴</span>
                    </div>
                  
                </div></td>
            
            
              <td>
                
                <span>LG</span></td>
            
            
              <td>
                
                <span>1192타점</span></td>
            
            
          </tr>
        
          
            
            
              
              
              
              
              
            
          
          <tr>
            
              <th scope="row" class="rank_vertical_top"><span><em class="rank num10"><span class="blind">10위</span></em></span></th>
            
            
              <td><div class="info">
                  
                    
                    
                      <span class="name">장종훈</span>
                    
                  
                  
                    <div class="stat">
                      <span>은퇴</span>
                    </div>
                  
                </div></td>
            
            
              <td>
                
                <span>한화</span></td>
            
            
              <td>
                
                <span>1145타점</span></td>
            
            
          </tr>
        
        </tbody>
      </table>
    </div>
  </div>
</div>

    




            








  
  
    <div id="rank_template1" class="home_box">
      <div class="home_mn">
        <div class="home_box_head">
          <h2>2023 KBO리그 팀순위</h2>
          <a href="/record/index?uCategory=kbaseball&category=kbo" onclick="clickcr(this, 'rrk.team', '', '', event);" class="more"><span>더보기</span></a>
        </div>
        <div class="hmb_tbl">
          <table class="kbo">
            <caption>2023 KBO리그 팀순위</caption>
            <thead>
            <tr>
              <th scope="col" class="th_num"><span class="blind">순번</span></th>
              <th scope="col" class="th_team"><span>팀명</span></th>
              <th scope="col"><span>경기</span></th>
              <th scope="col"><span>승</span></th>
              <th scope="col"><span>무</span></th>
              <th scope="col"><span>패</span></th>
              <th scope="col"><span>승률</span></th>
              <th scope="col"><span>게임차</span></th>
            </tr>
            </thead>
            <tbody>
            
              <tr class="best">
                <th scope="row"><span><em class="rank num1"><span class="blind">1위</span></em></span></th>
                <td>
                  <div class="wrap">
                    <div class="image emblem"><img width="20" height="20" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/team/kbo/default/LG.png&type=f20_20" alt="" onerror="imageOnError(this);"></div>
                    <div class="info">
                      <span class="name">LG</span>
                    </div>
                  </div>
                </td>
                
                
                  
                
                <td><span class="point_blue">65</span></td>
                <td><span class="point_blue">39</span></td>
                <td><span class="point_blue">2</span></td>
                <td><span class="point_blue">24</span></td>
                <td><span class="point_blue">0.619</span></td>
                <td><span class="point_blue">0.0</span></td>
              </tr>
            
              <tr >
                <th scope="row"><span><em class="rank num2"><span class="blind">2위</span></em></span></th>
                <td>
                  <div class="wrap">
                    <div class="image emblem"><img width="20" height="20" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/team/kbo/default/SK.png&type=f20_20" alt="" onerror="imageOnError(this);"></div>
                    <div class="info">
                      <span class="name">SSG</span>
                    </div>
                  </div>
                </td>
                
                
                <td><span class="">63</span></td>
                <td><span class="">38</span></td>
                <td><span class="">1</span></td>
                <td><span class="">24</span></td>
                <td><span class="">0.613</span></td>
                <td><span class="">0.5</span></td>
              </tr>
            
              <tr >
                <th scope="row"><span><em class="rank num3"><span class="blind">3위</span></em></span></th>
                <td>
                  <div class="wrap">
                    <div class="image emblem"><img width="20" height="20" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/team/kbo/default/NC.png&type=f20_20" alt="" onerror="imageOnError(this);"></div>
                    <div class="info">
                      <span class="name">NC</span>
                    </div>
                  </div>
                </td>
                
                
                <td><span class="">61</span></td>
                <td><span class="">34</span></td>
                <td><span class="">1</span></td>
                <td><span class="">26</span></td>
                <td><span class="">0.567</span></td>
                <td><span class="">3.5</span></td>
              </tr>
            
              <tr >
                <th scope="row"><span><em class="rank num4"><span class="blind">4위</span></em></span></th>
                <td>
                  <div class="wrap">
                    <div class="image emblem"><img width="20" height="20" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/team/kbo/default/LT.png&type=f20_20" alt="" onerror="imageOnError(this);"></div>
                    <div class="info">
                      <span class="name">롯데</span>
                    </div>
                  </div>
                </td>
                
                
                <td><span class="">60</span></td>
                <td><span class="">32</span></td>
                <td><span class="">0</span></td>
                <td><span class="">28</span></td>
                <td><span class="">0.533</span></td>
                <td><span class="">5.5</span></td>
              </tr>
            
              <tr >
                <th scope="row"><span><em class="rank num5"><span class="blind">5위</span></em></span></th>
                <td>
                  <div class="wrap">
                    <div class="image emblem"><img width="20" height="20" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/team/kbo/default/OB.png&type=f20_20" alt="" onerror="imageOnError(this);"></div>
                    <div class="info">
                      <span class="name">두산</span>
                    </div>
                  </div>
                </td>
                
                
                <td><span class="">61</span></td>
                <td><span class="">30</span></td>
                <td><span class="">1</span></td>
                <td><span class="">30</span></td>
                <td><span class="">0.500</span></td>
                <td><span class="">7.5</span></td>
              </tr>
            
              <tr >
                <th scope="row"><span><em class="rank num6"><span class="blind">6위</span></em></span></th>
                <td>
                  <div class="wrap">
                    <div class="image emblem"><img width="20" height="20" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/team/kbo/default/HT.png&type=f20_20" alt="" onerror="imageOnError(this);"></div>
                    <div class="info">
                      <span class="name">KIA</span>
                    </div>
                  </div>
                </td>
                
                
                <td><span class="">59</span></td>
                <td><span class="">27</span></td>
                <td><span class="">1</span></td>
                <td><span class="">31</span></td>
                <td><span class="">0.466</span></td>
                <td><span class="">9.5</span></td>
              </tr>
            
              <tr >
                <th scope="row"><span><em class="rank num7"><span class="blind">7위</span></em></span></th>
                <td>
                  <div class="wrap">
                    <div class="image emblem"><img width="20" height="20" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/team/kbo/default/WO.png&type=f20_20" alt="" onerror="imageOnError(this);"></div>
                    <div class="info">
                      <span class="name">키움</span>
                    </div>
                  </div>
                </td>
                
                
                <td><span class="">66</span></td>
                <td><span class="">29</span></td>
                <td><span class="">2</span></td>
                <td><span class="">35</span></td>
                <td><span class="">0.453</span></td>
                <td><span class="">10.5</span></td>
              </tr>
            
              <tr >
                <th scope="row"><span><em class="rank num8"><span class="blind">8위</span></em></span></th>
                <td>
                  <div class="wrap">
                    <div class="image emblem"><img width="20" height="20" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/team/kbo/default/KT.png&type=f20_20" alt="" onerror="imageOnError(this);"></div>
                    <div class="info">
                      <span class="name">KT</span>
                    </div>
                  </div>
                </td>
                
                
                <td><span class="">62</span></td>
                <td><span class="">26</span></td>
                <td><span class="">2</span></td>
                <td><span class="">34</span></td>
                <td><span class="">0.433</span></td>
                <td><span class="">11.5</span></td>
              </tr>
            
              <tr >
                <th scope="row"><span><em class="rank num9"><span class="blind">9위</span></em></span></th>
                <td>
                  <div class="wrap">
                    <div class="image emblem"><img width="20" height="20" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/team/kbo/default/SS.png&type=f20_20" alt="" onerror="imageOnError(this);"></div>
                    <div class="info">
                      <span class="name">삼성</span>
                    </div>
                  </div>
                </td>
                
                
                <td><span class="">62</span></td>
                <td><span class="">26</span></td>
                <td><span class="">0</span></td>
                <td><span class="">36</span></td>
                <td><span class="">0.419</span></td>
                <td><span class="">12.5</span></td>
              </tr>
            
              <tr >
                <th scope="row"><span><em class="rank num10"><span class="blind">10위</span></em></span></th>
                <td>
                  <div class="wrap">
                    <div class="image emblem"><img width="20" height="20" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="imageLazyLoad" lazy-src="https://dthumb-phinf.pstatic.net/?src=https://sports-phinf.pstatic.net/team/kbo/default/HH.png&type=f20_20" alt="" onerror="imageOnError(this);"></div>
                    <div class="info">
                      <span class="name">한화</span>
                    </div>
                  </div>
                </td>
                
                
                <td><span class="">63</span></td>
                <td><span class="">23</span></td>
                <td><span class="">4</span></td>
                <td><span class="">36</span></td>
                <td><span class="">0.390</span></td>
                <td><span class="">14.0</span></td>
              </tr>
            
            </tbody>
          </table>
        </div>
      </div>
    </div>
  




            </div>
        </div>
        








  
  
    <div class="home_clist" id="_home_clist_wrap" data-idx="0">
      
      <div class="rolling">
        
        <ul class="list" id="_club_expert_list">
          
            <li ><a
                href="/kbaseball/club/postList?expertId=515"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20220317_82/1647493010940PSmRY_PNG/kbo.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">KBO</span></a></li>
          
            <li ><a
                href="/kbaseball/club/postList?expertId=462"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20160418_21/1460985235611sRGg5_PNG/100x75_kt.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">kt wiz</span></a></li>
          
            <li ><a
                href="/kbaseball/club/postList?expertId=little8829"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20230125_38/1674639177097EOTcu_PNG/KLBF_210x180.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">한국리틀야구연맹</span></a></li>
          
            <li ><a
                href="/kbaseball/club/postList?expertId=480"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20170313_72/1489389110932XSLg0_PNG/100x75_LG%C6%AE%C0%A9%BD%BA.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">LG 트윈스</span></a></li>
          
            <li ><a
                href="/kbaseball/club/postList?expertId=skleeskl"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20220622_83/1655865728944uc139_PNG/%C1%A6%B8%F1-%BE%F8%C0%BD-1.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">대한유소년야구연맹</span></a></li>
          
            <li ><a
                href="/kbaseball/club/postList?expertId=546"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20210402_298/1617346991941mCOVV_PNG/KIA.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">KIA 타이거즈</span></a></li>
          
            <li ><a
                href="/kbaseball/club/postList?expertId=500"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20160418_171/1460985303519JMmn4_PNG/100x75_%BB%EF%BC%BA.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">삼성 라이온즈</span></a></li>
          
            <li ><a
                href="/kbaseball/club/postList?expertId=wbak21"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20230405_107/1680685803769hfW73_PNG/33.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">한국여자야구연맹</span></a></li>
          
            <li style="display: none;"><a
                href="/kbaseball/club/postList?expertId=wbsc_official"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20220622_25/1655864751999MVcQX_PNG/wbsc.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">WBSC</span></a></li>
          
            <li style="display: none;"><a
                href="/kbaseball/club/postList?expertId=kpbpa_official"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20220420_102/1650444170338yUBTi_PNG/2.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">한국프로야구선수협회</span></a></li>
          
            <li style="display: none;"><a
                href="/kbaseball/club/postList?expertId=318"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20210402_166/161734677708425JFY_PNG/SSG.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">SSG 랜더스</span></a></li>
          
            <li style="display: none;"><a
                href="/kbaseball/club/postList?expertId=527"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20160426_151/1461634196241L0GOJ_PNG/100x75_%B5%CE%BB%EA%BA%A3%BE%EE%BD%BA.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">두산 베어스</span></a></li>
          
            <li style="display: none;"><a
                href="/kbaseball/club/postList?expertId=443"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20230315_281/16788465622349eDLq_PNG/%B7%D4%B5%A5%C0%DA%C0%CC%BE%F0%C3%F7_100x75.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">롯데 자이언츠</span></a></li>
          
            <li style="display: none;"><a
                href="/kbaseball/club/postList?expertId=461"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20190116_46/1547624217342jxpUp_PNG/%C5%B0%BF%F2_%C8%F7%BE%EE%B7%CE%C1%EE_01_100x75.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">키움 히어로즈</span></a></li>
          
            <li style="display: none;"><a
                href="/kbaseball/club/postList?expertId=400"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20191121_152/1574313332441wUOaE_PNG/nc_dinos.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">NC 다이노스</span></a></li>
          
            <li style="display: none;"><a
                href="/kbaseball/club/postList?expertId=475"
                onclick="clickcr(this, 'clb.club', '', '', event);">
              <span class="emblem"><img height="36"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   class="imageLazyLoad"
                   lazy-src="https://dthumb-phinf.pstatic.net/?twidth=48&theight=36&opts=12&src=https://sports-phinf.pstatic.net/20160418_62/1460985313736LIb5g_PNG/100x75_%C7%D1%C8%AD.png"
                   alt=""
                   onerror="imageOnError(this);"></span>
              <span class="name">한화 이글스</span></a></li>
          
        </ul>
        
      </div>
      <span class="nav prev"><span>이전</span></span>
      <a href="#" onclick="clickcr(this, 'clb.prev', '', '', event);" class="nav prev"
         style="display: none;"><span>이전</span></a>
      <span class="nav next"><span>다음</span></span>
      <a href="#" onclick="clickcr(this, 'clb.next', '', '', event);" class="nav next"
         style="display: none;"><span>다음</span></a>
      
    </div>
  



  <script>
    (function () {
      var expertCnt = 16;

      function changeNavBtn(fromIdx) {
        var navBtns = $("#_home_clist_wrap").find(".nav");
        if (fromIdx === 0) {
          navBtns.eq(0).css("display", "inline-block");
          navBtns.eq(1).hide();
          navBtns.eq(2).hide();
          navBtns.eq(3).css("display", "inline-block");
        } else if (fromIdx === expertCnt - 8) {
          navBtns.eq(0).hide();
          navBtns.eq(1).css("display", "inline-block");
          navBtns.eq(2).css("display", "inline-block");
          navBtns.eq(3).hide();
        } else {
          navBtns.eq(0).hide();
          navBtns.eq(1).css("display", "inline-block");
          navBtns.eq(2).hide();
          navBtns.eq(3).css("display", "inline-block");
        }
        $("#_home_clist_wrap").attr("data-idx", fromIdx);
      }

      function changeBox(fromIdx, toIdx) {
        $("#_club_expert_list").children().filter(function (index) {
          if (index >= fromIdx && index <= toIdx) {
            $(this).show();
          } else {
            $(this).hide();
          }
        });
      }

      $("#_home_clist_wrap").on("click", "a.nav", function (e) {
        e.preventDefault();
        $clicked = $(e.currentTarget);
        var fromIdx = $("#_home_clist_wrap").attr("data-idx") * 1;

        if ($clicked.hasClass("next")) {
          fromIdx = Math.min(fromIdx + 1, expertCnt - 1);
        } else if ($clicked.hasClass("prev")) {
          fromIdx = Math.min(fromIdx - 1, expertCnt - 1);
        }

        changeNavBtn(fromIdx);
        changeBox(fromIdx, fromIdx + 8 - 1);
      });

      changeNavBtn(0);
    })();
  </script>


        <div class="main_myteam">
        </div>

    </div>
</div>





  
    
  
  

<script id="_sports_da_template" type="text/x-handlebars-template">
  <iframe {{#if iframeId}}
        id="{{iframeId}}"
        name="{{iframeId}}"
      {{else}}
        id="{{previewId}}{{#if calpId}}_{{calpId}}{{/if}}"
        name="{{previewId}}{{#if calpId}}_{{calpId}}{{/if}}"
      {{/if}}
      data-veta-preview="{{previewId}}"
      src="https://veta.naver.com/fxshow?su={{unitId}}{{#if calpId}}&calp={{calpId}}{{/if}}"
      width="{{width}}"
      height="{{height}}"
      title="광고"
      alt="광고 영역 입니다."
      allowTransparency="true"
      marginheight="0"
      marginwidth="0"
      frameborder="0"
      scrolling="no"
      align="center"
      {{#if ext}}{{ext}}{{/if}}>
  </iframe>
</script>


<script id="_sports_2020_da_template" type="text/x-handlebars-template">
  {{#with adUnit}}
  <iframe {{#if iframeId}}
      id="{{iframeId}}"
      name="{{iframeId}}"
      {{else}}
      id="{{previewId}}{{#if calpId}}_{{calpId}}{{/if}}"
      name="{{previewId}}{{#if calpId}}_{{calpId}}{{/if}}"
      {{/if}}
      data-veta-preview="{{previewId}}"
      src="{{../daUrl}}su={{unitId}}{{#if calpId}}&calp={{calpId}}{{/if}}"
      width="{{width}}"
      height="{{height}}"
      title="광고"
      alt="광고 영역 입니다."
      allowTransparency="true"
      marginheight="0"
      marginwidth="0"
      frameborder="0"
      scrolling="no"
      align="center"
      {{#if ext}}{{ext}}{{/if}}>
  </iframe>
  {{/with}}
</script>
<script>
  //TODO section pc2018 인건 평창끝나면 지워주세요
  //NOTE : 뉴스 엔드 하단 광고 경우엔 NewsEndAdUnit.java 에서 데이터 내려주고 있음.

    var adList = [
    {"sid":"sports_home_right_banner", "name":"스포츠_우측배너(스포츠홈)", "section":"", "type":"pc", "oldUnitId":"1002B", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"home", "useCase":"iframe"},
    {"sid":"section_home_double_play", "name":"P_스포츠_더블플레이(스포츠홈, 종목홈)", "section":"kbaseball", "type":"pc", "oldUnitId":"986B", "unitId":"SU10514", "previewId":"p_sports_dpl", "width":"600", "height":"70", "menu":"", "calpId":"kbaseball", "useCase":"js"},
    {"sid":"section_home_double_play", "name":"P_스포츠_더블플레이(스포츠홈, 종목홈)", "section":"wbaseball", "type":"pc", "oldUnitId":"988C", "unitId":"SU10514", "previewId":"p_sports_dpl", "width":"600", "height":"70", "menu":"", "calpId":"wbaseball", "useCase":"js"},
    {"sid":"section_home_double_play", "name":"P_스포츠_더블플레이(스포츠홈, 종목홈)", "section":"kfootball", "type":"pc", "oldUnitId":"989B", "unitId":"SU10514", "previewId":"p_sports_dpl", "width":"600", "height":"70", "menu":"", "calpId":"kfootball", "useCase":"js"},
    {"sid":"section_home_double_play", "name":"P_스포츠_더블플레이(스포츠홈, 종목홈)", "section":"wfootball", "type":"pc", "oldUnitId":"928C", "unitId":"SU10514", "previewId":"p_sports_dpl", "width":"600", "height":"70", "menu":"", "calpId":"wfootball", "useCase":"js"},
    {"sid":"section_home_double_play", "name":"P_스포츠_더블플레이(스포츠홈, 종목홈)", "section":"basketball", "type":"pc", "oldUnitId":"990B", "unitId":"SU10514", "previewId":"p_sports_dpl", "width":"600", "height":"70", "menu":"", "calpId":"basketball", "useCase":"js"},
    {"sid":"section_home_double_play", "name":"P_스포츠_더블플레이(스포츠홈, 종목홈)", "section":"volleyball", "type":"pc", "oldUnitId":"1279A", "unitId":"SU10514", "previewId":"p_sports_dpl", "width":"600", "height":"70", "menu":"", "calpId":"volleyball", "useCase":"js"},
    {"sid":"section_home_double_play", "name":"P_스포츠_더블플레이(스포츠홈, 종목홈)", "section":"golf", "type":"pc", "oldUnitId":"992G", "unitId":"SU10514", "previewId":"p_sports_dpl", "width":"600", "height":"70", "menu":"", "calpId":"golf", "useCase":"js"},
    {"sid":"section_home_double_play", "name":"P_스포츠_더블플레이(스포츠홈, 종목홈)", "section":"general", "type":"pc", "oldUnitId":"994C", "unitId":"SU10514", "previewId":"p_sports_dpl", "width":"600", "height":"70", "menu":"", "calpId":"general", "useCase":"js"},
    {"sid":"section_home_double_play", "name":"P_스포츠_더블플레이(스포츠홈, 종목홈)", "section":"esports", "type":"pc", "oldUnitId":"1046C", "unitId":"SU10514", "previewId":"p_sports_dpl", "width":"600", "height":"70", "menu":"", "calpId":"esports", "useCase":"js"},
    {"sid":"section_home_double_play", "name":"P_스포츠_더블플레이(스포츠홈, 종목홈)", "section":"pc2018", "type":"pc", "oldUnitId":"", "unitId":"SU10282", "previewId":"p_sports_dpl", "width":"600", "height":"70", "menu":"", "calpId":"", "useCase":"js"},


    {"sid":"section_end_right_banner", "name":"P_스포츠_우측배너(영상외 주요지면)", "section":"", "type":"pc", "oldUnitId":"159M", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"", "useCase":"iframe"},
    {"sid":"section_end_right_banner", "name":"P_스포츠_우측배너(영상외 주요지면)", "section":"all", "type":"pc", "oldUnitId":"159M", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"", "useCase":"iframe"},
    {"sid":"section_end_right_banner", "name":"P_스포츠_우측배너(영상외 주요지면)", "section":"kbaseball", "type":"pc", "oldUnitId":"159M", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"kbaseball", "useCase":"iframe"},
    {"sid":"section_end_right_banner", "name":"P_스포츠_우측배너(영상외 주요지면)", "section":"wbaseball", "type":"pc", "oldUnitId":"159M", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"wbaseball", "useCase":"iframe"},
    {"sid":"section_end_right_banner", "name":"P_스포츠_우측배너(영상외 주요지면)", "section":"kfootball", "type":"pc", "oldUnitId":"159M", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"kfootball", "useCase":"iframe"},
    {"sid":"section_end_right_banner", "name":"P_스포츠_우측배너(영상외 주요지면)", "section":"wfootball", "type":"pc", "oldUnitId":"159M", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"wfootball", "useCase":"iframe"},
    {"sid":"section_end_right_banner", "name":"P_스포츠_우측배너(영상외 주요지면)", "section":"basketball", "type":"pc", "oldUnitId":"159M", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"basketball", "useCase":"iframe"},
    {"sid":"section_end_right_banner", "name":"P_스포츠_우측배너(영상외 주요지면)", "section":"volleyball", "type":"pc", "oldUnitId":"159M", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"volleyball", "useCase":"iframe"},
    {"sid":"section_end_right_banner", "name":"P_스포츠_우측배너(영상외 주요지면)", "section":"golf", "type":"pc", "oldUnitId":"1001C", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"golf", "useCase":"iframe"},
    {"sid":"section_end_right_banner", "name":"P_스포츠_우측배너(영상외 주요지면)", "section":"general", "type":"pc", "oldUnitId":"159M", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"general", "useCase":"iframe"},
    {"sid":"section_end_right_banner", "name":"P_스포츠_우측배너(영상외 주요지면)", "section":"esports", "type":"pc", "oldUnitId":"1047E", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"esports", "useCase":"iframe"},
    {"sid":"section_end_right_banner", "name":"P_스포츠_우측배너(영상외 주요지면)", "section":"tokyo2020", "type":"pc", "oldUnitId":"", "unitId":"SU10351", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"", "useCase":"iframe"},

    // 영상 통합 광고
    {"sid":"vod_right_banner", "name":"P_스포츠_영상_통합스킨", "section":"kbaseball", "type":"pc", "oldUnitId":"1253B", "unitId":"SU10453", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"kbaseball", "useCase":"js"},
    {"sid":"vod_right_banner", "name":"P_스포츠_영상_통합스킨", "section":"wbaseball", "type":"pc", "oldUnitId":"1051D", "unitId":"SU10453", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"wbaseball", "useCase":"js"},
    {"sid":"vod_right_banner", "name":"P_스포츠_영상_통합스킨", "section":"kfootball", "type":"pc", "oldUnitId":"1255C", "unitId":"SU10453", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"kfootball", "useCase":"js"},
    {"sid":"vod_right_banner", "name":"P_스포츠_영상_통합스킨", "section":"wfootball", "type":"pc", "oldUnitId":"1057D", "unitId":"SU10453", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"wfootball", "useCase":"js"},
    {"sid":"vod_right_banner", "name":"P_스포츠_영상_통합스킨", "section":"basketball", "type":"pc", "oldUnitId":"1251B", "unitId":"SU10453", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"basketball", "useCase":"js"},
    {"sid":"vod_right_banner", "name":"P_스포츠_영상_통합스킨", "section":"basketball", "category":"nba", "type":"pc", "unitId":"SU10453", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"nba", "useCase":"js"},
    {"sid":"vod_right_banner", "name":"P_스포츠_영상_통합스킨", "section":"volleyball", "type":"pc", "oldUnitId":"1251B", "unitId":"SU10453", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"volleyball", "useCase":"js"},
    {"sid":"vod_right_banner", "name":"P_스포츠_영상_통합스킨", "section":"golf", "type":"pc", "oldUnitId":"1021D", "unitId":"SU10453", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"golf", "useCase":"js"},
    {"sid":"vod_right_banner", "name":"P_스포츠_영상_통합스킨", "section":"general", "type":"pc", "oldUnitId":"1251B", "unitId":"SU10453", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"general", "useCase":"js"},
    {"sid":"vod_right_banner", "name":"P_스포츠_영상_통합스킨", "section":"esports", "type":"pc", "oldUnitId":"1102C", "unitId":"SU10453", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"esports", "useCase":"js"},
    {"sid":"vod_right_banner", "name":"P_스포츠_영상_통합스킨", "section":"tokyo2020", "type":"pc", "oldUnitId":"", "unitId":"SU10453", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"", "useCase":"js"},

    // TODO ioctv 관련 sports/sus#1867 채널 삭제시 광고 상수 역시 삭제 필요
    {"sid":"vod_right_banner", "name":"P_스포츠_영상_통합스킨", "section":"general", "category":"ioctv", "type":"pc", "oldUnitId":"1102C", "unitId":"SU10453", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"ioctv", "useCase":"js"},

    // 평창 영상 광고코드
    {"sid":"veta_300250", "name":"P_스포츠_영상_통합스킨", "section":"pc2018", "type":"pc", "oldUnitId":"", "unitId":"SU10284", "previewId":"p_sports_right", "width":"300", "height":"250", "menu":"", "calpId":"", "useCase":"js"},
    {"sid":"vod_topskin", "name":"P_스포츠_영상_상단스킨", "section":"pc2018", "type":"pc", "oldUnitId":"", "unitId":"SU10284", "previewId":"p_sports_topskin", "width":"300", "height":"75", "menu":"", "calpId":"", "useCase":"iframe"},

    {"sid":"gamecenter_right_banner", "name":"P_스포츠_게임센터_경기결과_우측배너 ", "section":"kbaseball", "type":"pc", "oldUnitId":"735A", "unitId":"SU10124", "previewId":"p_sports_game", "width":"200", "height":"573", "menu":"", "calpId":"kbaseball", "useCase":"iframe"},
    {"sid":"gamecenter_right_banner", "name":"P_스포츠_게임센터_경기결과_우측배너 ", "section":"wbaseball", "type":"pc", "oldUnitId":"1053A", "unitId":"SU10124", "previewId":"p_sports_game", "width":"200", "height":"573", "menu":"", "calpId":"wbaseball", "useCase":"iframe"},
    {"sid":"gamecenter_topskin", "name":"P_스포츠_게임센터_상단스킨", "section":"", "type":"pc", "oldUnitId":"1059A", "unitId":"SU10125", "previewId":"p_sports_gskin", "width":"560", "height":"53", "menu":"", "calpId":"", "useCase":"iframe"},
    {"sid":"gamecenter_fence", "name":"P_스포츠_게임센터_펜스광고", "section":"", "type":"pc", "oldUnitId":"1059B", "unitId":"SU10126", "previewId":"p_sports_gfence", "width":"434", "height":"32", "menu":"", "calpId":"", "useCase":"iframe"},

        {"sid":"tv_bottom_banner", "name":"P_스포츠_생중계_하단배너", "section":"kbaseball", "type":"pc", "oldUnitId":"", "unitId":"SU10670", "previewId":"p_sports_live", "width":"700", "height":"70", "menu":"", "calpId":"kbaseball", "useCase":"iframe"},
        {"sid":"tv_bottom_banner", "name":"P_스포츠_생중계_하단배너", "section":"wbaseball", "type":"pc", "oldUnitId":"", "unitId":"SU10670", "previewId":"p_sports_live", "width":"700", "height":"70", "menu":"", "calpId":"wbaseball", "useCase":"iframe"},
        {"sid":"tv_bottom_banner", "name":"P_스포츠_생중계_하단배너", "section":"kfootball", "type":"pc", "oldUnitId":"", "unitId":"SU10670", "previewId":"p_sports_live", "width":"700", "height":"70", "menu":"", "calpId":"kfootball", "useCase":"iframe"},
        {"sid":"tv_bottom_banner", "name":"P_스포츠_생중계_하단배너", "section":"wfootball", "type":"pc", "oldUnitId":"", "unitId":"SU10670", "previewId":"p_sports_live", "width":"700", "height":"70", "menu":"", "calpId":"wfootball", "useCase":"iframe"},
        {"sid":"tv_bottom_banner", "name":"P_스포츠_생중계_하단배너", "section":"basketball", "type":"pc", "oldUnitId":"", "unitId":"SU10670", "previewId":"p_sports_live", "width":"700", "height":"70", "menu":"", "calpId":"basketball", "useCase":"iframe"},
        {"sid":"tv_bottom_banner", "name":"P_스포츠_생중계_하단배너", "section":"volleyball", "type":"pc", "oldUnitId":"", "unitId":"SU10670", "previewId":"p_sports_live", "width":"700", "height":"70", "menu":"", "calpId":"volleyball", "useCase":"iframe"},
        {"sid":"tv_bottom_banner", "name":"P_스포츠_생중계_하단배너", "section":"golf", "type":"pc", "oldUnitId":"", "unitId":"SU10670", "previewId":"p_sports_live", "width":"700", "height":"70", "menu":"", "calpId":"golf", "useCase":"iframe"},
        {"sid":"tv_bottom_banner", "name":"P_스포츠_생중계_하단배너", "section":"general", "type":"pc", "oldUnitId":"", "unitId":"SU10670", "previewId":"p_sports_live", "width":"700", "height":"70", "menu":"", "calpId":"general", "useCase":"iframe"},
        {"sid":"tv_bottom_banner", "name":"P_스포츠_생중계_하단배너", "section":"esports", "type":"pc", "oldUnitId":"", "unitId":"SU10670", "previewId":"p_sports_live", "width":"700", "height":"70", "menu":"", "calpId":"esports", "useCase":"iframe"}
  ];
</script>


<script id="_homeSideBannerTemplate" type="text/x-handlebars-template">
  <div class="banner" style="background-image: url('{{leftSideImage}}');">
    <a href="{{leftUrl}}" onClick="(function(){var renderLog = new Image(); renderLog.src = '{{clickLogUrl}}&_time=' + new Date().getTime(); })()" class="link">
      <span class="blind">{{leftSideImageAlt}}</span>
    </a>
  </div>
  <div class="banner" style="background-image: url('{{rightSideImage}}');">
    <a href="{{rightUrl}}" onClick="(function(){var renderLog = new Image(); renderLog.src = '{{clickLogUrl}}&_time=' + new Date().getTime(); })()" class="link">
      <span class="blind">{{rightSideImageAlt}}</span>
    </a>
  </div>
</script>
<script>
    window.displaySspAd = window.displaySspAd || new naver.sports.common.DisplayGladAd({
        sportsAdConfig: [{
            serviceUnitId : 'p_sports_shome',
            calpParameter : 'kbaseball'
        }],
        enablePersist : true
    });

    
    displaySspAd.renderAd("sports_placard");
    

    exeJs.push(function() {
        new naver.sports.common.SportsAd({
            collectorBaseUrl: `https://collector.sports.naver.com`,
            sportsGatewayUrl: `https://api-gw.sports.naver.com`,
            packageName: 'KBASEBALL',
            targetElementId: '_cms_side_banner',
            templateId: '_homeSideBannerTemplate'
        }).drawSideAd('ad_contents_section_side_banner');
    });
</script>


  </div>
  
<div id="footer">
  <div class="inner">
    <div class="page_area">
      
      
        





<div class="notice_text">공지사항</div>
<div class="sports_notice">
  
  <a href="https://blog.naver.com/naver_sports/223124840482" class="link_notice" target=_blank onclick="clickcr(this, 'not.noti', '1466402863231', '', event);">스포츠 TV중계 편성 - 6/12(월)~6/19(월)</a>
</div>


      
      <div class="sports_league">
        <ul class="league_list">
          <li class="league_item"><a href="/index" class="link_league">홈</a></li>
          <li class="league_item"><a href="/kbaseball/index" class="link_league">야구</a></li>
          <li class="league_item"><a href="/wbaseball/index" class="link_league">해외야구</a></li>
          <li class="league_item"><a href="/kfootball/index" class="link_league">축구</a></li>
          <li class="league_item"><a href="/wfootball/index" class="link_league">해외축구</a></li>
          <li class="league_item"><a href="/basketball/index" class="link_league">농구</a></li>
          <li class="league_item"><a href="/volleyball/index" class="link_league">배구</a></li>
          <li class="league_item"><a href="/golf/index" class="link_league">N골프</a></li>
          <li class="league_item"><a href="/general/index" class="link_league">일반</a></li>
          <li class="league_item"><a href="https://game.naver.com/esports" class="link_league">e스포츠</a></li>
        </ul>
      </div>
    </div>
    <div class="sports_info">
      <div class="link_area">
        <div class="main_area">
          <a href="javascript:moveToLoginForm();" class="link" id="login_status"><strong>로그인</strong></a>
          <a href="https://www.naver.com/more.html" class="link sitemap">전체서비스</a>
          <a target="_blank" onclick="OPS.viewOPS('ops', {url : 'https://help.naver.com/alias/contents2/sports/sports_2.naver'}); clickcr(this, 'fot.shelp', '', '', event); return false;" href="#" class="link">고객센터</a>
          <a target="_blank" href="https://help.naver.com/alias/contents2/sports/sports_6.naver" class="link">문제신고</a>
          <a target="_blank" href="https://www.naver.com/rules/privacy.html" onClick="clickcr(this, 'fot.privacy', '', '', event);" class="link"><strong>개인정보처리방침</strong></a>
        </div>
        <div class="sub_area">
          <a href="https://news.naver.com/main/ombudsman/edit.naver?mid=omb" class="link">기사배열 원칙 책임자 : 유봉석</a>
          <span class="link">청소년 보호 책임자 : 이희만</span>
        </div>
      </div>
      <p class="footer_copyright">본 콘텐츠의 저작권은 제공처 또는 네이버에 있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다.</p>
      <span class="naver">© <a ref="http://www.navercorp.com/" target="_blank" onClick="clickcr(this, 'fot.nhn', '', '', event);">NAVER Corp.</a></span>
    </div>
  </div>
  
</div>
<script type='text/javascript' src='https://ssl.pstatic.net/static.sports/resources/pc/171717/66/178/664600/js/src/changeUrl.js' charset='UTF-8'></script>

<script type="text/javascript">
  var container_link = "container";
  if(document.getElementById("container_link")) {
    document.getElementById("container_link").innerHTML = "<a href='#container' onclick=\"document.getElementById('container').tabIndex=-1;document.getElementById('container').focus();\"><span>본문으로 바로가기</span></a>";
  }

  function goToMobileUrl(mobileRedirectUrl) {
    if(mobileRedirectUrl) {
      location.href = "/mobileview.nhn?url=" + encodeURIComponent(mobileRedirectUrl);
    }else{
      location.href = "/index.nhn";
    }
  }

  function checkLogin() {
    if($.cookie('NID_SES')) {
      var $loginElement = $("#login_status");
      $loginElement.html("로그아웃");
      $loginElement.attr("href", "javascript:naverLogout();");
    }
  }
  exeJs.push(checkLogin);

  lazyloadjs("https://ssl.pstatic.net/static/common/js/cs_ops_webncc.js");
</script>
</div>
  <script type="text/javascript">
    
  </script>
  

<script>lazyloadjs('https://ssl.pstatic.net/static.sports/resources/pc/171717/66/178/664600/js/generated/baseJsBottomLazy.js');</script>


</body>
</html>
