<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta http-equiv="X-UA-Compatible" content="requiresActiveX=true" />
        <meta name="viewport" content="width=1080px,maximum-scale=2.0,minimum-scale=0.4,user-scalable=yes" />
        <meta property="og:image" content="https://imgsports.pstatic.net/images/mobile/common/NAVERsports.png" />
        <meta property="og:title" content="뉴스, 야구 : 네이버 스포츠" />
        <meta property="og:description" content="스포츠의 시작과 끝!" />
        <meta name="description" content="스포츠의 모든 것, 네이버 스포츠와 함께 하세요" />
        <meta property="og:url" content="https://sports.news.naver.com/kbaseball/news/index.nhn" />

        <title>뉴스, 야구 : 네이버 스포츠</title>
        <link rel="stylesheet" type="text/css" href="${CP}/resources/css/Baseball_nsports.css" />

        <link rel="shortcut icon" href="https://www.naver.com/favicon.ico?v=20140228" type="image/x-icon" />
        <link rel="apple-touch-icon" href="https://imgsports.pstatic.net/images/mobile/favicon_20180622/ios/iOS6_57X57_iphone3.png" />
        <link rel="apple-touch-icon" sizes="76x76" href="https://imgsports.pstatic.net/images/mobile/favicon_20180622/ios/iOS7_76X76_ipad.png" />
        <link rel="apple-touch-icon" sizes="120x120" href="https://imgsports.pstatic.net/images/mobile/favicon_20180622/ios/iOS7_120X120_iphone.png" />
        <link rel="apple-touch-icon" sizes="152x152" href="https://imgsports.pstatic.net/images/mobile/favicon_20180622/ios/iOS7_152X152_ipad_retina.png" />
        <link rel="apple-touch-icon" sizes="167x167" href="https://imgsports.pstatic.net/images/mobile/favicon_20180622/ios/iOS_167X167_iPadPro.png" />
        <!-- 레티나 패드 -->
        <link rel="apple-touch-icon" sizes="180x180" href="https://imgsports.pstatic.net/images/mobile/favicon_20180622/ios/iOS_180X180_iPhone.png" />
        <!-- 레티나 패드 -->
        <!-- script -->
        <script></script>

        <script></script>

        <script></script>

        <script></script>
        <style id="gnb_style" type="text/css">
            @charset "UTF-8";
            /* NTS UIT Development Office YJH 140717 */
            a.gnb_my,
            .gnb_icon,
            #gnb .gnb_my_interface,
            .gnb_my_li .gnb_my_content .gnb_membership,
            #gnb .gnb_ico_num .gnb_ico_new,
            #gnb .gnb_ico_num .gnb_ico_new .gnb_count,
            .gnb_lst .ico_arrow,
            a.gnb_my .filter_mask,
            .gnb_my_lyr,
            .gnb_my_li .gnb_my_content .gnb_mask,
            .gnb_my_li .gnb_my_content .gnb_edit_lst li,
            .gnb_notice_li .gnb_notice_lyr,
            .gnb_notice_li .svc_list .gnb_ico_mail,
            .gnb_notice_li .svc_list .gnb_btn_remove span,
            .gnb_notice_li .svc_list .gnb_btn_remove i,
            .gnb_notice_li .gnb_error .gnb_ico_error,
            .gnb_ly_alert .gnb_btn_close i,
            .gnb_first_visit,
            .gnb_search_box,
            .gnb_search_box .gnb_del_txt,
            .gnb_svc_more .gnb_svc_lstwrp li.gnb_event em.ic_gnb_new,
            .gnb_svc_more .svc_btnwrp button {
                background: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_v14.png) no-repeat -999px -999px;
                background: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_v15.png?v=2006) no-repeat -999px -999px;
                /* background: url(../img/sp_gnb_v15.png) no-repeat -999px -999px; */
            }

            .gnb_favorite_area,
            .gnb_search_area,
            .gnb_banner,
            .gnb_linkwrp {
                background: url(https://ssl.pstatic.net/static/common/gnb/2014/bg_svclyr2_v2.png) no-repeat -999px -999px;
            }

            #gnb .gnb_my_li .gnb_my_community a,
            .gnb_notice_li .gnb_notice_all,
            a.gnb_service_all,
            .gnb_svc_more .svc_btns {
                display: block;
                height: 38px;
                border-top: 1px solid #ebebeb;
                background-color: #f8f8f8;
                text-align: center;
                font-weight: bold;
                text-decoration: none;
                letter-spacing: -1px;
                line-height: 38px;
            }

            #gnb .gnb_my_li .gnb_my_community a:visited,
            .gnb_notice_li .gnb_notice_all:visited,
            a.gnb_service_all:visited,
            .gnb_svc_more .svc_btns:visited {
                color: #444;
            }

            .gnb_login_li,
            .gnb_my_li,
            .gnb_notice_li,
            .mail_li,
            .gnb_service_li {
                float: left;
                margin-right: 2px;
                overflow: visible;
            }

            .gnb_login_li a,
            .gnb_my_li a,
            .gnb_notice_li a,
            .mail_li a,
            .gnb_service_li a {
                position: relative;
                z-index: 100;
            }

            a.gnb_my,
            .gnb_icon {
                position: relative;
            }

            #gnb {
                position: relative;
                z-index: 2147483646;
                font-family: "나눔고딕", NanumGothic, "돋움", Dotum, "Apple SD Gothic Neo", Helvetica, Sans-serif !important;
                color: #444;
                font-size: 12px;
                letter-spacing: 0 !important;
                line-height: normal !important;
                text-align: left !important;
            }

            #gnb div,
            #gnb p,
            #gnb span,
            #gnb em,
            #gnb strong,
            #gnb h1,
            #gnb h2,
            #gnb h3,
            #gnb h4,
            #gnb h5,
            #gnb h6,
            #gnb ul,
            #gnb ol,
            #gnb li,
            #gnb dl,
            #gnb dt,
            #gnb dd,
            #gnb table,
            #gnb th,
            #gnb td,
            #gnb form,
            #gnb fieldset,
            #gnb legend,
            #gnb input,
            #gnb textarea,
            #gnb button,
            #gnb label {
                font-family: "나눔고딕", NanumGothic, "돋움", Dotum, "Apple SD Gothic Neo", Helvetica, Sans-serif !important;
            }

            #gnb a,
            #gnb label,
            #gnb button {
                cursor: pointer;
            }

            #gnb a,
            #gnb a:visited,
            #gnb a:active,
            #gnb a:focus {
                color: #444;
            }

            #gnb a:hover {
                color: #444;
                text-decoration: underline;
                vertical-align: baseline;
            }

            #gnb input::-ms-clear {
                display: none;
            }

            #gnb em {
                font-style: normal;
            }

            #gnb ul {
                list-style: none;
            }

            #gnb .blind {
                display: block;
                overflow: hidden;
                position: absolute;
                top: -1000em;
                left: 0;
                width: 1px;
                height: 1px;
                margin: 0;
                padding: 0;
                font-size: 0;
                line-height: 0;
            }

            #gnb .gnb_my_membership {
                padding: 0;
                display: block;
                width: 64px;
                height: 16px;
                background: url(https://ssl.pstatic.net/static/common/gnb/one/ico_gnb_membership.png) no-repeat;
                background-size: 64px 16px;
                margin: 0;
            }

            #gnb .gnb_my_interface {
                padding: 5px;
                position: absolute;
                top: 12px;
                right: 8px;
                display: block;
                width: 17px;
                height: 16px;
                background-position: -90px 5px;
            }

            #gnb .gnb_my_interface:hover {
                background-position: -90px -20px;
            }

            #gnb .gnb_my_interface:focus {
                background-position: -90px -20px;
            }

            #gnb .gnb_pad_lyr {
                position: absolute;
            }

            #gnb .gnb_ico_num {
                display: block;
                position: absolute;
                top: 1px;
                width: 40px;
                text-align: center;
            }

            #gnb .gnb_ico_num .gnb_ico_new {
                height: 15px;
                display: inline-block;
                background-position: -331px 0;
                zoom: 1;
            }

            #gnb .gnb_ico_num .gnb_ico_new .gnb_count {
                position: relative;
                top: 0;
                right: -5px;
                height: 15px;
                margin: 0;
                padding: 0 4px 0 1px;
                display: inline-block;
                *display: inline;
                vertical-align: top;
                background-position: 100% 0;
                text-indent: -2px;
                font-family: tahoma !important;
                font-weight: bold;
                color: #fff;
                zoom: 1;
            }

            #gnb .gnb_ico_num .gnb_ico_new .plus {
                margin: 1px -1px 0 2px;
                font-size: 8px;
                display: inline-block;
                color: #fff;
                vertical-align: top;
            }

            :root #gnb .gnb_pad_lyr {
                opacity: 1 !important; /* background:#fff */
            }

            .gnb_lst {
                margin: 0;
                padding: 0;
                zoom: 1;
            }

            .gnb_lst:after {
                display: block;
                clear: both;
                content: "";
            }

            .gnb_lst ul {
                margin: 0;
                padding: 0;
            }

            .gnb_lst .ico_arrow {
                display: none;
                position: absolute;
                left: 50%;
                top: 27px;
                width: 10px;
                height: 8px;
                margin-left: -5px;
                background-position: -175px -10px;
            }

            .gnb_lyr_opened .gnb_my_lyr,
            .gnb_lyr_opened .gnb_service_lyr,
            .gnb_lyr_opened .gnb_notice_lyr,
            .gnb_lyr_opened .ico_arrow {
                display: block !important;
            }

            .gnb_login_li {
                height: 23px;
                padding: 5px 7px 0 0;
            }

            .gnb_btn_login,
            .gnb_bg,
            .gnb_bdr {
                display: inline-block;
                width: 46px;
                height: 20px;
                font-size: 12px;
            }

            .gnb_btn_login {
                position: relative;
            }

            .gnb_bg {
                background-color: #fff;
                opacity: 0.05;
                filter: alpha(opacity = 5);
            }

            .gnb_bdr {
                position: absolute;
                top: -1px;
                left: -1px;
                width: 46px;
                height: 20px;
                border: 1px solid #000;
                opacity: 0.12;
                filter: alpha(opacity = 12);
            }

            .gnb_txt {
                position: absolute;
                top: 0;
                left: 0;
                width: 45px;
                height: 20px;
                padding-left: 1px;
                line-height: 21px;
                color: #666;
                text-align: center;
            }

            .gnb_btn_login:hover {
                text-decoration: none !important;
            }

            .gnb_account .gnb_btn_login {
                width: 54px;
                margin: -1px 0 0 8px;
                vertical-align: top;
            }

            .gnb_account a.gnb_btn_login .gnb_txt {
                padding-left: 0;
            }

            .gnb_account .gnb_bdr {
                width: 52px;
            }

            .gnb_account .gnb_txt {
                width: 53px;
            }

            .gnb_my_li {
                margin-right: 7px;
            }

            .gnb_my_namebox {
                padding: 2px 9px 0 0;
                background-repeat: no-repeat;
                background-position: 100% 50%;
                zoom: 1;
            }

            .gnb_my_namebox:after {
                display: block;
                clear: both;
                content: "";
            }

            a.gnb_my {
                float: left;
                display: block;
                font-size: 12px;
                vertical-align: middle;
            }

            a.gnb_my .filter_mask {
                position: absolute;
                top: -1px;
                left: -1px;
                z-index: 1;
                width: 28px;
                height: 28px;
                background-position: -260px -60px;
            }

            a.gnb_my img {
                vertical-align: top;
                border-radius: 16px;
            }

            a.gnb_my .gnb_name {
                margin-right: -1px;
                padding-left: 5px;
                display: inline-block;
                height: 28px;
                line-height: 28px;
                vertical-align: top;
                font-size: 11px;
                color: #444;
            }

            a.gnb_my:visited {
                color: #444;
            }

            a.gnb_my:hover,
            a.gnb_my:active,
            a.gnb_my:visited,
            a.gnb_my:focus {
                text-decoration: none !important;
            }

            a.gnb_my:hover .gnb_name {
                text-decoration: underline;
            }

            a.gnb_my .ico_arrow {
                top: 25px;
                margin-left: 8px;
            }

            .gnb_my_namebox a.gnb_emp {
                float: left;
                display: inline-block;
                height: 28px;
                margin-left: 3px;
                line-height: 28px;
                font-size: 11px;
                color: #777 !important;
            }

            .gnb_my_lyr {
                display: none;
                position: absolute;
                top: 26px;
                right: -8px;
                padding: 9px 5px 4px 4px;
                width: 316px;
                height: 155px;
                background-position: -2px -1310px;
                z-index: 10;
            }

            .gnb_my_lyr.gnb_groupid {
                height: 144px;
                background-position: -2px -1500px;
            }

            .gnb_my_lyr.gnb_groupid .gnb_my_content {
                height: 80px;
            }

            .gnb_my_lyr.gnb_groupid.gnb_longid1 {
                height: 144px; /*background-position:-2px -1664px*/
            }

            .gnb_my_lyr.gnb_groupid.gnb_longid2 {
                height: 144px;
                background-position: -2px -1828px;
            }

            .gnb_my_lyr.gnb_longid1 {
                /*width:318px;*/
                /*background-position:-2px -1118px;*/
            }

            .gnb_my_lyr.gnb_longid2 {
                width: 348px;
                background-position: -2px -926px;
            }

            .gnb_my_li .gnb_my_content {
                zoom: 1;
                height: 91px;
                padding: 15px 0 10px 15px;
            }

            .gnb_my_li .gnb_my_content:after {
                display: block;
                clear: both;
                content: "";
            }

            .gnb_my_li .gnb_my_content .gnb_img_area {
                float: left;
                position: relative;
                display: block;
                width: 80px;
                margin: 1px 0 0 1px;
            }

            .gnb_my_li .gnb_my_content .gnb_img_area img {
                vertical-align: top;
            }

            .gnb_my_li .gnb_my_content .gnb_mask {
                position: absolute;
                top: 0;
                left: 0;
                display: block;
                width: 80px;
                height: 80px;
                background-position: -70px -60px;
            }

            .gnb_my_li .gnb_my_content .gnb_change {
                position: absolute;
                bottom: -2px;
                left: -2px;
                display: block;
                width: 28px;
                height: 28px;
                background: url(https://ssl.pstatic.net/static/common/gnb/one/ico_gnb_change.png) no-repeat !important;
                background-size: 28px 28px !important;
            }

            .gnb_my_li .gnb_my_content .gnb_change:hover {
                background-image: url(https://ssl.pstatic.net/static/common/gnb/one/ico_gnb_change_hover.png) !important;
            }

            .gnb_my_li .gnb_my_content .gnb_txt_area {
                float: left;
                width: 210px;
                margin: 0 0 0 10px;
            }

            .gnb_longid1 .gnb_my_content .gnb_txt_area {
                /* width:210px; */
            }

            .gnb_longid2 .gnb_my_content .gnb_txt_area {
                width: 235px;
            }

            .gnb_my_li .gnb_my_content .gnb_account {
                margin-bottom: 3px 0 1px;
                font-size: 0;
            }

            .gnb_my_li .gnb_my_content .gnb_name {
                color: #666;
                font-size: 14px;
                vertical-align: top;
            }

            .gnb_my_li .gnb_my_content .gnb_name a {
                display: inline-block;
                vertical-align: top;
                font-weight: bold;
                color: #222 !important;
            }

            .gnb_my_li .gnb_my_content a.gnb_mail_address {
                margin-left: 1px;
                font-family: tahoma;
                color: #666 !important;
                font-size: 12px;
            }

            .gnb_my_li .gnb_my_content .gnb_edit_lst {
                zoom: 1;
                margin-top: 7px !important;
            }

            .gnb_my_li .gnb_my_content .gnb_edit_lst:after {
                display: block;
                clear: both;
                content: "";
            }

            .gnb_my_li .gnb_my_content .gnb_edit_lst li {
                float: left;
                padding-left: 6px;
                margin-left: 5px;
                background-position: -290px -25px;
            }

            .gnb_my_li .gnb_my_content .gnb_edit_lst li.gnb_info {
                padding-left: 0;
                margin-left: 0;
                background: none;
            }

            .gnb_my_li .gnb_my_content .gnb_edit_lst a {
                color: #666 !important;
                letter-spacing: -1px;
            }

            .gnb_my_li .gnb_my_content .gnb_membership {
                display: inline-block;
                margin-right: 5px;
                margin-left: 1px;
                padding-right: 8px;
                background-position: -287px -403px;
            }

            .gnb_my_li .gnb_my_content .gnb_pay_check {
                height: 16px;
                margin: 7px -4px 0 0 !important;
            }

            @media screen and (min-width: 0\0) {
                .gnb_my_li .gnb_my_content .gnb_pay_check {
                    margin-top: 17px;
                }
            }

            .gnb_my_li .gnb_my_content .gnb_pay_check em {
                display: inline-block;
                width: 16px;
                height: 16px;
                background: url(https://ssl.pstatic.net/static/common/gnb/one/ico_gnb_pay_check.png) no-repeat !important;
                background-size: 16px 16px !important;
                margin: 0 4px 0 0;
                overflow: hidden;
                font-size: 0;
                line-height: 0;
                vertical-align: top;
            }

            .gnb_my_li .gnb_my_content .gnb_pay_check a {
                font-size: 14px;
                letter-spacing: -1px;
                line-height: 16px;
                vertical-align: top;
            }

            .gnb_my_li .gnb_my_content .gnb_pay_check span {
                font-weight: bold;
            }

            .gnb_my_li .gnb_my_content .gnb_pay_check strong {
                font-family: tahoma;
                letter-spacing: 0;
                vertical-align: top;
            }

            .gnb_my_li .gnb_my_content .gnb_pay_check a,
            .gnb_my_li .gnb_my_content .gnb_pay_check span,
            .gnb_my_li .gnb_my_content .gnb_pay_check strong {
                font-size: 12px;
                color: #222 !important;
            }

            #gnb .gnb_my_li .gnb_my_community {
                clear: both;
                zoom: 1;
            }

            #gnb .gnb_my_li .gnb_my_community:after {
                display: block;
                clear: both;
                content: "";
            }

            #gnb .gnb_my_li .gnb_my_community a {
                float: left;
                width: 106px;
                margin-right: 0;
                border-right: 1px solid #ebebeb;
            }

            #gnb .gnb_my_li .gnb_my_community a.gnb_pay {
                width: 102px;
                border-right: 0;
                line-height: 0;
            }

            #gnb .gnb_my_li .gnb_my_community a.gnb_pay span {
                display: inline-block;
                width: 41px;
                height: 16px;
                background: url(https://ssl.pstatic.net/static/common/gnb/one/ico_gnb_pay.png) no-repeat !important;
                background-size: 41px 16px !important;
                margin: 11px auto 0;
                font-size: 0;
                line-height: 0;
            }

            #gnb .gnb_my_li .gnb_my_community a.gnb_pay i {
                display: inline-block;
                width: 61px;
                height: 20px;
                margin: 9px auto 0;
                background: url(https://ssl.pstatic.net/static/common/gnb/banner/promo_membership.png) no-repeat !important;
                background-size: 61px 20px !important;
                font-size: 0;
                line-height: 0;
            }

            #gnb .gnb_my_li .gnb_my_community a:active,
            #gnb .gnb_my_li .gnb_my_community a:focus,
            #gnb .gnb_my_li .gnb_my_community a:visited {
                text-decoration: none !important;
            }

            #gnb .gnb_my_li .gnb_my_community a:hover {
                text-decoration: underline !important;
            }

            #gnb .gnb_my_lyr.gnb_longid1 .gnb_my_community a {
                /*width:105px;*/
            }

            #gnb .gnb_my_lyr.gnb_longid1 .gnb_my_community a.gnb_pay {
                /* width:106px;*/
            }

            #gnb .gnb_my_lyr.gnb_longid2 .gnb_my_community a {
                width: 115px;
            }

            #gnb .gnb_my_lyr.gnb_longid2 .gnb_my_community a.gnb_pay {
                width: 116px;
            }

            #gnb.gnb_one .gnb_my_community a,
            #gnb.gnb_one_small .gnb_my_community a {
                margin-right: 0 !important;
            }

            .gnb_notice_li a.gnb_notice {
                display: block;
                width: 15px;
                height: 17px;
                padding: 7px 9px 4px;
                text-decoration: none !important;
            }

            .gnb_notice_li a.gnb_notice .gnb_ico_num {
                left: 1px;
                top: 0;
            }

            .gnb_notice_li a.gnb_notice .gnb_icon {
                display: block;
                width: 15px;
                height: 17px;
                background-position: -3px -60px;
            }

            .gnb_notice_li a.gnb_notice:hover .gnb_icon {
                background-position: -38px -60px;
                text-decoration: none !important;
            }

            .gnb_notice_li .gnb_notice_lyr {
                display: none;
                position: absolute;
                top: 26px;
                right: -7px;
                width: 297px;
                height: 330px;
                padding: 9px 4px 4px;
                background-position: -2px -584px;
                z-index: 10;
                overflow: hidden;
            }

            .gnb_notice_li .svc_scroll {
                height: 291px;
                overflow: scroll;
                overflow-x: hidden;
                position: relative;
                zoom: 1;
            }

            .gnb_notice_li .svc_panel {
                width: 100%;
                height: 330px;
                overflow: hidden;
            }

            .gnb_notice_li .svc_head {
                position: relative;
                height: 36px;
                padding-left: 15px;
                line-height: 20px;
                border-bottom: 1px solid #eaeaea;
                zoom: 1;
            }

            .gnb_notice_li .svc_head .gnb_tit {
                color: #6b6d70;
                margin-right: 1px;
                line-height: 36px;
            }

            .gnb_notice_li .svc_head .task_right {
                position: absolute;
                right: 8px;
                top: 8px;
                font-size: 0;
            }

            .gnb_notice_li .svc_head .task_right button {
                height: 20px;
                padding: 0 6px;
                margin-left: 4px;
                border: 1px solid #ddd;
                color: #888;
                background-color: #fff;
                font-family: "나눔고딕", NanumGothic;
                font-size: 12px;
                letter-spacing: -1px;
                line-height: 18px;
                *line-height: 16px;
                overflow: visible;
            }

            .gnb_notice_li .svc_list .gnb_btn_remove i,
            .gnb_notice_li .svc_list .gnb_btn_remove span,
            .gnb_notice_li .svc_noti .gnb_ico_mail,
            .gnb_notice_li .svc_blank .svc_msg_box,
            .gnb_notice_li .svc_blank .gnb_v_guide {
                display: inline-block;
                *display: inline;
                *zoom: 1;
            }

            .gnb_notice_li .svc_list {
                margin-top: -1px;
            }

            .gnb_notice_li .svc_list li {
                position: relative;
                padding: 7px 34px 7px 15px;
                border-top: 1px solid #eaeaea;
                line-height: 18px;
            }

            .gnb_notice_li .svc_list .gnb_new {
                background: #ffffd8;
            }

            .gnb_notice_li .svc_list .gnb_unread .gnb_subject {
                color: #444;
            }

            .gnb_notice_li .svc_list .gnb_unread .d_cnt {
                color: #ff630e;
            }

            .gnb_notice_li .svc_list .gnb_unread a:hover .gnb_subject,
            .gnb_notice_li .svc_list .gnb_unread .gnb_unread a:hover .d_cnt {
                color: #390;
            }

            .gnb_notice_li .svc_list .gnb_unread .svc_name {
                color: #444;
            }

            .gnb_notice_li .svc_list a.gnb_list_cover {
                text-decoration: none !important;
                display: block;
                position: relative;
                zoom: 1;
            }

            .gnb_notice_li .svc_list a:hover .gnb_subject {
                text-decoration: underline;
            }

            .gnb_notice_li .svc_list .gnb_subject {
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                width: 100%;
                color: #adadad;
            }

            .gnb_notice_li .svc_list .d_cnt {
                font-family: tahoma;
                font-size: 10px;
            }

            .gnb_notice_li .svc_list .gnb_info {
                color: #adadad;
            }

            .gnb_notice_li .svc_list .svc_name {
                margin-right: 3px;
                color: #adadad;
            }

            .gnb_notice_li .svc_list .cchr {
                margin-right: 3px;
            }

            .gnb_notice_li .svc_list .dona {
                position: absolute;
                top: 8px;
                right: 34px;
                text-decoration: underline;
            }

            .gnb_notice_li .svc_list .dona a {
                color: #adadad;
            }

            .gnb_notice_li .svc_list .dona a:hover {
                color: #390;
            }

            .gnb_notice_li .svc_list .gnb_ico_mail {
                width: 14px;
                height: 15px;
                font-size: 0;
                line-height: 0;
                color: #fff;
                vertical-align: top;
            }

            .gnb_notice_li .svc_list .gnb_ico_mail.gnb_yes {
                background-position: -245px -17px;
            }

            .gnb_notice_li .svc_list .gnb_ico_mail.gnb_no {
                background-position: -245px 4px;
            }

            .gnb_notice_li .svc_list .gnb_btn_remove {
                position: absolute;
                right: 4px;
                top: 50%;
                z-index: 100;
                margin-top: -13px;
                padding: 10px;
                line-height: 6px;
                font-size: 0;
                background: none !important;
                border: 0 !important;
            }

            .gnb_notice_li .svc_list .gnb_btn_remove span,
            .gnb_notice_li .svc_list .gnb_btn_remove i {
                display: block !important;
                width: 7px;
                height: 7px;
                font-size: 0;
                line-height: 0;
                color: transparent;
                white-space: nowrap;
                overflow: hidden;
                vertical-align: top;
                background-position: -175px 0;
            }

            .gnb_notice_li .svc_blank {
                position: absolute;
                top: 104px;
                left: 0;
                width: 100%;
                white-space: nowrap;
                height: 100px;
                font-size: 0;
                text-align: center;
            }

            .gnb_notice_li .svc_blank .svc_msg_box {
                white-space: normal;
                font-size: 12px;
                width: 100%;
            }

            .gnb_notice_li .svc_blank .gnb_tit {
                display: block;
                color: #2f3743;
                font-size: 14px;
                margin: 0 0 15px;
            }

            .gnb_notice_li .svc_blank .gnb_tit strong {
                font-weight: normal;
                color: #390;
            }

            .gnb_notice_li .svc_blank .gnb_desc {
                line-height: 19px;
                color: #2f3743;
                margin-bottom: 7px;
            }

            .gnb_notice_li .svc_blank .gnb_desc a,
            .gnb_notice_li .svc_blank .gnb_link {
                color: #390;
                text-decoration: underline;
            }

            .gnb_notice_li .svc_blank .gnb_v_guide {
                vertical-align: middle;
                height: 100%;
                width: 0;
            }

            .gnb_notice_li .svc_blank .gnb_link_wrap {
                text-align: center;
            }

            .gnb_notice_li .svc_blank .gnb_link_wrap .gnb_link {
                display: block;
                width: 40px;
                margin: 0 auto !important;
                text-align: center;
            }

            .gnb_notice_li .svc_loading {
                background: url(https://ssl.pstatic.net/static/www/2014/loading.gif) no-repeat #fff center center;
                position: absolute;
                top: 33px;
                left: 0;
                width: 100%;
                height: 245px;
            }

            .gnb_notice_li .gnb_error {
                position: absolute;
                top: 81px;
                left: 2px;
                width: 100%;
                color: #444;
                text-align: center;
            }

            .gnb_notice_li .gnb_error .gnb_ico_error {
                display: inline-block;
                width: 57px;
                height: 57px;
                background-position: -280px -190px;
            }

            .gnb_notice_li .gnb_error .gnb_tit {
                font-size: 14px;
                margin: 15px 0 11px;
            }

            .gnb_notice_li .gnb_error .gnb_desc {
                margin-bottom: 13px;
                line-height: 18px;
            }

            .gnb_notice_li .gnb_error .gnb_link {
                text-decoration: underline;
            }

            .gnb_ly_alert {
                position: absolute;
                top: 110px;
                left: 13px;
                background-color: #fff;
                border: 1px solid #b7b9bc;
                width: 260px;
                padding: 34px 0 20px;
                zoom: 1;
                z-index: 100;
            }

            .gnb_ly_alert .gnb_msg {
                text-align: center;
                line-height: 17px;
                margin-bottom: 14px;
                color: #2f3743;
            }

            .gnb_.ly_alert .gnb_btn_close {
                position: absolute;
                right: 2px;
                top: 0;
                *overflow: visible;
            }

            .gnb_ly_alert .gnb_btns {
                text-align: center;
            }

            .gnb_ly_alert .gnb_btns button {
                height: 27px;
                line-height: 27px;
                *line-height: 22px;
                font-weight: bold;
                font-size: 12px;
                padding: 0 8px;
                color: #2f3743;
                border: 1px solid #ddd;
                background-color: white;
            }

            .gnb_ly_alert .gnb_btns button:first-child {
                margin-right: 4px;
            }

            .gnb_ly_alert .gnb_btn_close {
                position: absolute;
                right: 2px;
                top: 0;
                width: 35px;
                border: 0;
                background: none;
                cursor: pointer;
                border-radius: 0;
                padding: 10px;
            }

            .gnb_ly_alert .gnb_btn_close i {
                display: block;
                width: 15px;
                height: 15px;
                font: 0/0 a;
                color: transparent;
                white-space: nowrap;
                overflow: hidden;
                vertical-align: top;
                background-position: -240px -60px;
            }

            .mail_li a.gnb_mail {
                display: block;
                width: 20px;
                height: 15px;
                padding: 7px 9px 6px;
                text-decoration: none !important;
            }

            .mail_li a.gnb_mail .gnb_icon {
                display: block;
                width: 20px;
                height: 15px;
                background-position: 0px -95px;
            }

            .mail_li a.gnb_mail:hover .gnb_icon {
                background-position: -35px -95px;
                text-decoration: none !important;
            }

            .mail_li .gnb_ico_num {
                left: 6px;
                top: 0;
            }

            .gnb_service_li {
                margin-right: 0;
            }

            .gnb_service_li a.gnb_service {
                display: block;
                width: 16px;
                height: 16px;
                padding: 7px 9px 5px;
            }

            .gnb_service_li a.gnb_service .gnb_icon {
                display: block;
                width: 16px;
                height: 16px;
                background-position: -2px -130px;
            }

            .gnb_service_li a.gnb_service:hover .gnb_icon {
                background-position: -37px -130px;
                text-decoration: none !important;
            }

            .gnb_service_li .gnb_service_lyr {
                display: none;
                position: absolute;
                top: 27px;
                right: -7px;
                z-index: 10;
            }

            .gnb_favorite_search {
                width: 301px;
                letter-spacing: -1px;
            }

            .gnb_response .gnb_favorite_search {
                display: none;
            }

            .gnb_favorite_area {
                height: 93px;
                padding: 8px 4px 0;
                background-position: 0 0;
            }

            .gnb_favorite_lstwrp {
                position: relative;
                padding: 22px 1px 15px 15px;
                border-bottom: 1px solid #ebebeb;
            }

            .gnb_favorite_lstwrp .gnb_my_interface {
                top: 3px !important;
                right: 3px !important;
            }

            .gnb_first_visit {
                position: absolute;
                top: 0;
                left: 0;
                width: 293px;
                height: 92px;
                background-position: 0 -310px;
                z-index: 200;
            }

            .gnb_first_visit .gnb_close {
                position: absolute;
                top: 0;
                right: 0;
                display: block;
                width: 32px;
                height: 32px;
            }

            .gnb_favorite_lst {
                zoom: 1;
            }

            .gnb_favorite_lst:after {
                display: block;
                clear: both;
                content: "";
            }

            .gnb_favorite_lst li {
                float: left;
                width: 65px;
                text-align: center;
                white-space: nowrap;
            }

            .gnb_favorite_lst a {
                display: inline-block;
                text-align: center;
                font-weight: bold;
            }

            .gnb_favorite_lst .gnb_add a {
                display: block;
                test-align: center;
            }

            .gnb_favorite_lst .gnb_add a span.ic_add {
                display: block;
                width: 36px;
                height: 36px;
                margin: 0 auto 4px;
                background-image: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_4b16e6.png);
                background-position: 0px 0px;
                background-repeat: no-repeat;
                width: 36px;
                height: 36px;
                vertical-align: top;
            }

            .gnb_favorite_lst .gnb_add a:hover span.ic_add {
                background-image: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_4b16e6.png);
                background-position: -42px 0px;
                background-repeat: no-repeat;
                width: 36px;
                height: 36px;
                vertical-align: top;
            }

            .gnb_favorite_lst img {
                display: block;
                margin: 0 auto 4px;
                vertical-align: top;
            }

            .gnb_search_area {
                position: relative;
                z-index: 200;
                padding: 18px 4px 17px;
                background-position: -301px 0;
                background-repeat: repeat-y;
            }

            .gnb_search_box {
                position: relative;
                z-index: 101;
                margin: 0 12px 16px 0;
                padding-left: 10px;
                display: block;
                width: 270px;
                height: 35px;
                background-position: 10px -190px;
            }

            .gnb_search_box.over {
                background-position: 10px -230px;
            }

            .gnb_search_box.fcs {
                background-position: 10px -270px;
            }

            .gnb_search_box.fcs input {
                width: 200px;
                font-size: 16px;
                font-weight: bold;
                color: #444;
                outline: 0;
            }

            .gnb_search_box input {
                float: left;
                display: block;
                width: 210px;
                height: 22px;
                margin-top: 6px;
                padding-left: 10px;
                font-family: "나눔고딕", NamumGothic;
                letter-spacing: -1px;
                color: #adadad;
                font-size: 13px;
                border: 0;
                line-height: 22px;
                background: transparent;
            }

            .gnb_search_box .gnb_del_txt {
                position: absolute;
                top: 8px;
                right: 32px;
                display: block;
                width: 17px;
                height: 17px;
                background-position: -190px 0px;
            }

            .gnb_search_box .gnb_del_txt:hover {
                background-position: -190px -20px;
            }

            .gnb_search_box .gnb_pop_input {
                position: absolute;
                top: 34px;
                left: 10px;
                width: 268px;
                height: 170px;
                *height: 172px;
                border: 1px solid #cbc5c5;
                border-top: 0;
                background: #fff;
                overflow-x: hidden;
                overflow-y: scroll;
                z-index: 110;
            }

            .gnb_search_box .gnb_pop_lst {
                padding: 4px 0 2px;
            }

            .gnb_search_box .gnb_pop_lst a {
                display: block;
                padding: 6px 0 6px 10px;
                font-weight: bold;
            }

            .gnb_search_box .gnb_pop_lst .on {
                background-color: #f5f5f5;
            }

            .gnb_search_lstwrp {
                zoom: 1;
                height: 118px;
                padding-left: 12px;
            }

            .gnb_search_lstwrp:after {
                display: block;
                clear: both;
                content: "";
            }

            .gnb_search_lstwrp .gnb_search_lst {
                float: left;
                width: 69px;
                border-left: 1px solid #eaeaea;
            }

            .gnb_search_lstwrp .gnb_search_lst.gnb_first {
                width: 64px;
                border: 0;
            }

            .gnb_search_lstwrp li {
                padding: 12px 0 0 8px;
            }

            .gnb_search_lstwrp li.gnb_first {
                font-weight: bold;
                padding-top: 0;
            }

            .gnb_search_lstwrp li a {
                display: inline-block;
                vertical-align: top;
            }

            .gnb_banner {
                height: 47px;
                margin: 0;
                padding: 0 18px;
                background-position: -301px 0;
                background-repeat: repeat-y;
            }

            .gnb_banner .gnb_service_event {
                display: inline-block;
                border-top: 1px solid #ebebeb;
            }

            .gnb_linkwrp {
                padding: 0 4px 4px;
                background-position: -602px 0;
            }

            a.gnb_service_all:hover,
            a.gnb_service_all:visited,
            a.gnb_service_all:active,
            a.gnb_service_all:focus {
                text-decoration: none;
            }

            .gnb_svc_more {
                display: none;
                position: absolute;
                top: 4px;
                right: 303px;
                width: 589px;
                overflow: hidden;
                zoom: 1;
                z-index: 1000;
            }

            .gnb_svc_more:after {
                display: block;
                clear: both;
                content: "";
            }

            .gnb_response .gnb_svc_more {
                right: 2px;
            }

            .gnb_bg_top {
                height: 6px;
                background: url(https://ssl.pstatic.net/static/common/gnb/2014/bg_svclyr1_v2.png) no-repeat;
            }

            .gnb_bg_btm {
                position: relative;
                height: 6px;
                background: url(https://ssl.pstatic.net/static/common/gnb/2014/bg_svclyr1_v2.png) no-repeat -1282px 0;
            }

            .gnb_svc_more .gnb_svc_hd {
                position: relative;
                padding: 0 18px 2px 23px;
                letter-spacing: -1px;
                background: url(https://ssl.pstatic.net/static/common/gnb/2014/bg_svclyr1_v2.png) repeat-y -641px 0;
            }

            .gnb_svc_more .gnb_svc_hd .gnb_svc_tit {
                display: block;
                padding: 12px 0 13px;
                border-bottom: 1px solid #ebebeb;
                font-size: 14px;
                color: #222;
            }

            .gnb_svc_more .gnb_svc_hd .link {
                position: absolute;
                top: 14px;
                right: 19px;
                font-size: 12px;
                color: #444;
            }

            .gnb_svc_more .gnb_svc_hd .link a {
                color: #444 !important;
                line-height: 16px !important;
            }

            .gnb_svc_more .gnb_svc_lstwrp {
                position: relative;
                height: 283px;
                overflow: hidden;
                padding: 15px 15px 0 20px;
                letter-spacing: -1px;
                background: url(https://ssl.pstatic.net/static/common/gnb/2014/bg_svclyr1_v2.png) repeat-y -641px 0;
                zoom: 1;
            }

            .gnb_svc_more .gnb_svc_lstwrp:after {
                display: block;
                clear: both;
                content: "";
            }

            .gnb_svc_more .gnb_svc_lstwrp li {
                height: 15px;
                margin-bottom: 5px;
                color: #6b6d70;
                white-space: nowrap;
                line-height: 15px;
            }

            .gnb_svc_more .gnb_svc_lstwrp li.gnb_event label {
                color: #444;
                font-weight: bold;
            }

            .gnb_svc_more .gnb_svc_lstwrp li.gnb_event em.ic_gnb_new {
                display: inline-block;
                width: 11px;
                height: 11px;
                background-position: -215px 0px;
                margin: 2px 0 0 4px;
                font-size: 0;
                line-height: 0;
                vertical-align: top;
            }

            @media screen and (min-width: 0\0) {
                .gnb_svc_more .gnb_svc_lstwrp li.gnb_event em.ic {
                    margin-top: 3px;
                }
            }

            .gnb_svc_more .gnb_svc_lstwrp .gnb_input_check {
                width: 13px;
                height: 13px;
                margin: 2px 3px 0 3px;
                padding: 0;
                vertical-align: top;
                -webkit-appearance: checkbox;
            }

            .gnb_svc_more .gnb_svc_lstwrp label {
                vertical-align: 0px;
            }

            .gnb_svc_more .gnb_svc_lstwrp .gnb_disabled strong {
                color: #a8acb0;
            }

            .gnb_svc_more .gnb_svc_lstwrp .gnb_disabled li {
                color: #cbcbcb;
            }

            .gnb_svc_more .gnb_svc_lst1 {
                float: left;
                width: 328px;
                height: 280px;
            }

            .gnb_svc_more .gnb_svc_lst1 ul {
                float: left;
                width: 102px;
                min-height: 260px;
                padding: 5px 0 0 10px;
                border-left: 1px solid #eee;
            }

            .gnb_svc_more .gnb_svc_lst1 ul.gnb_first {
                padding-left: 0;
                border: 0;
            }

            .gnb_svc_more .svc_lst2 {
                float: left;
                position: relative;
                width: 221px;
                border: 1px solid #eee;
                background: #fbfbfb;
                zoom: 1;
            }

            .gnb_svc_more .svc_lst2:after {
                display: block;
                clear: both;
                content: "";
            }

            .gnb_svc_more .svc_spc {
                float: left;
                position: relative;
                width: 100px;
                min-height: 254px;
                padding: 9px 0 0 10px;
            }

            .gnb_svc_more .svc_spc.gnb_first {
                border-right: 1px solid #eee;
            }

            .gnb_svc_more .svc_spc strong {
                height: 20px;
                color: #2f3743;
                line-height: 16px;
            }

            .gnb_svc_more .svc_spc a:visited {
                color: #2f3743;
            }

            .gnb_svc_more .svc_spc ul {
                padding: 8px 0;
            }

            .gnb_svc_more .svc_spc li {
                margin-bottom: 0;
                padding-bottom: 5px;
                color: #848689;
            }

            .gnb_svc_more .svc_stroy {
                width: 89px;
                margin-top: -5px;
                padding: 12px 0 0;
                border-top: 1px solid #eee;
            }

            .gnb_svc_more .svc_btns {
                position: relative;
                height: 33px;
                overflow: hidden;
                padding-top: 5px;
                line-height: normal;
            }

            .gnb_svc_more .svc_btnwrp {
                position: relative;
                *height: 39px;
                background: url(https://ssl.pstatic.net/static/common/gnb/2014/bg_svclyr1_v2.png) repeat-y -641px 0;
                padding: 0 2px 0 4px;
            }

            .gnb_svc_more .svc_btnwrp button {
                display: inline-block;
                width: 60px;
                height: 25px;
                border: 0;
                vertical-align: top;
            }

            .gnb_svc_more .svc_btnwrp .gnb_save {
                background-position: 0 -160px;
            }

            .gnb_svc_more .svc_btnwrp .gnb_close {
                margin-left: 1px;
                background-position: -65px -160px;
            }

            .gnb_svc_more .svc_btnwrp .gnb_return {
                position: absolute;
                top: 5px;
                left: 15px;
                background-position: -130px -160px;
            }

            .gnb_type2 .gnb_notice_li a.gnb_notice .gnb_icon {
                background-position: -155px -120px;
            }

            .gnb_type2 .gnb_notice_li a.gnb_notice:hover .gnb_icon {
                background-position: -155px -140px;
            }

            .gnb_type2 .gnb_service_li .gnb_service .gnb_icon {
                background-position: -200px -120px;
            }

            .gnb_type2 .gnb_service_li .gnb_service:hover .gnb_icon {
                background-position: -200px -140px;
            }

            .gnb_type2 .mail_li a.gnb_mail .gnb_icon {
                background-position: -175px -120px;
            }

            .gnb_type2 .mail_li a.gnb_mail:hover .gnb_icon {
                background-position: -175px -140px;
            }

            .gnb_dark .gnb_my_li .gnb_my .gnb_name,
            .gnb_dark .gnb_login_li .gnb_btn_login .gnb_txt {
                color: #fff;
            }

            .gnb_dark .gnb_notice_li a.gnb_notice .gnb_icon {
                background-position: -220px -140px;
            }

            .gnb_dark .gnb_notice_li a.gnb_notice:hover .gnb_icon {
                background-position: -220px -120px;
            }

            .gnb_dark .mail_li a.gnb_mail .gnb_icon {
                background-position: -238px -141px;
            }

            .gnb_dark .mail_li a.gnb_mail:hover .gnb_icon {
                background-position: -238px -121px;
            }

            .gnb_dark .gnb_service_li .gnb_service .gnb_icon {
                background-position: -261px -140px;
            }

            .gnb_dark .gnb_service_li .gnb_service:hover .gnb_icon {
                background-position: -261px -120px;
            }

            .gnb_dark_type2 .gnb_my_li .gnb_my .gnb_name,
            .gnb_dark_type2 .gnb_login_li .gnb_btn_login .gnb_txt {
                color: #fff;
            }

            .gnb_dark_type2 .gnb_notice_li a.gnb_notice .gnb_icon {
                background-position: -220px -120px;
            }

            .gnb_dark_type2 .gnb_notice_li a.gnb_notice:hover .gnb_icon {
                background-position: -220px -140px;
            }

            .gnb_dark_type2 .mail_li a.gnb_mail .gnb_icon {
                background-position: -238px -121px;
            }

            .gnb_dark_type2 .mail_li a.gnb_mail:hover .gnb_icon {
                background-position: -238px -141px;
            }

            .gnb_dark_type2 .gnb_service_li .gnb_service .gnb_icon {
                background-position: -261px -120px;
            }

            .gnb_dark_type2 .gnb_service_li .gnb_service:hover .gnb_icon {
                background-position: -261px -140px;
            }

            .gnb_dark .gnb_notice_li a.gnb_notice,
            .gnb_dark_type2 .gnb_notice_li a.gnb_notice {
                width: 17px;
                height: 19px;
                padding: 6px 8px 3px;
            }

            .gnb_dark .gnb_notice_li a.gnb_notice .gnb_icon,
            .gnb_dark_type2 .gnb_notice_li a.gnb_notice .gnb_icon {
                width: 17px;
                height: 19px;
            }

            .gnb_dark .mail_li a.gnb_mail,
            .gnb_dark_type2 .mail_li a.gnb_mail {
                width: 22px;
                height: 16px;
                padding: 7px 8px 4px;
            }

            .gnb_dark .mail_li a.gnb_mail .gnb_icon,
            .gnb_dark_type2 .mail_li a.gnb_mail .gnb_icon {
                width: 22px;
                height: 16px;
            }

            .gnb_dark .gnb_service_li a.gnb_service,
            .gnb_dark_type2 .gnb_service_li a.gnb_service {
                width: 18px;
                height: 18px;
                padding: 6px 8px 4px;
            }

            .gnb_dark .gnb_service_li .gnb_service .gnb_icon,
            .gnb_dark_type2 .gnb_service_li .gnb_service .gnb_icon {
                width: 18px;
                height: 18px;
            }

            #gnb.gnb_one .gnb_my_li .gnb_my .gnb_name,
            #gnb.gnb_one_small .gnb_my_li .gnb_my .gnb_name,
            #gnb.gnb_one .gnb_login_li .gnb_btn_login .gnb_txt,
            #gnb.gnb_one_small .gnb_login_li .gnb_btn_login .gnb_txt {
                color: #fff;
            }

            #gnb.gnb_one .gnb_login_li,
            #gnb.gnb_one_small .gnb_login_li {
                height: 28px;
            }

            #gnb.gnb_one .gnb_login_li .gnb_btn_login,
            #gnb.gnb_one_small .gnb_login_li .gnb_btn_login,
            #gnb.gnb_one .gnb_login_li .gnb_bg,
            #gnb.gnb_one_small .gnb_login_li .gnb_bg,
            #gnb.gnb_one .gnb_login_li .gnb_bdr,
            #gnb.gnb_one_small .gnb_login_li .gnb_bdr,
            #gnb.gnb_one .gnb_login_li .gnb_txt,
            #gnb.gnb_one_small .gnb_login_li .gnb_txt {
                width: 53px;
                height: 23px;
            }

            #gnb.gnb_one .gnb_login_li .gnb_btn_login .gnb_txt,
            #gnb.gnb_one_small .gnb_login_li .gnb_btn_login .gnb_txt {
                top: -1px;
                width: 53px;
                height: 23px;
                line-height: 28px;
                font-size: 11px;
            }

            #gnb.gnb_one .gnb_login_li,
            #gnb.gnb_one_small .gnb_login_li,
            #gnb.gnb_one .gnb_my_li,
            #gnb.gnb_one_small .gnb_my_li,
            #gnb.gnb_one .gnb_notice_li,
            #gnb.gnb_one_small .gnb_notice_li,
            #gnb.gnb_one .mail_li,
            #gnb.gnb_one_small .mail_li,
            #gnb.gnb_one .gnb_service_li,
            #gnb.gnb_one_small .gnb_service_li {
                margin-right: 0;
                margin-left: 0;
                background: url(https://ssl.pstatic.net/static/common/gnb/bg_one_line.png) repeat-y right 0;
            }

            #gnb.gnb_one .gnb_login_li a,
            #gnb.gnb_one_small .gnb_login_li a,
            #gnb.gnb_one .gnb_my_li a,
            #gnb.gnb_one_small .gnb_my_li a,
            #gnb.gnb_one .gnb_notice_li a,
            #gnb.gnb_one_small .gnb_notice_li a,
            #gnb.gnb_one .mail_li a,
            #gnb.gnb_one_small .mail_li a,
            #gnb.gnb_one .gnb_service_li a,
            #gnb.gnb_one_small .gnb_service_li a {
                margin-right: 1px;
            }

            #gnb.gnb_one .gnb_login_li.hover .gnb_service,
            #gnb.gnb_one_small .gnb_login_li.hover .gnb_service,
            #gnb.gnb_one .gnb_login_li.hover .gnb_notice,
            #gnb.gnb_one_small .gnb_login_li.hover .gnb_notice,
            #gnb.gnb_one .gnb_login_li.hover .gnb_mail,
            #gnb.gnb_one_small .gnb_login_li.hover .gnb_mail,
            #gnb.gnb_one .gnb_login_li.hover .gnb_service,
            #gnb.gnb_one_small .gnb_login_li.hover .gnb_service,
            #gnb.gnb_one .gnb_my_li.hover .gnb_service,
            #gnb.gnb_one_small .gnb_my_li.hover .gnb_service,
            #gnb.gnb_one .gnb_my_li.hover .gnb_notice,
            #gnb.gnb_one_small .gnb_my_li.hover .gnb_notice,
            #gnb.gnb_one .gnb_my_li.hover .gnb_mail,
            #gnb.gnb_one_small .gnb_my_li.hover .gnb_mail,
            #gnb.gnb_one .gnb_my_li.hover .gnb_service,
            #gnb.gnb_one_small .gnb_my_li.hover .gnb_service,
            #gnb.gnb_one .gnb_notice_li.hover .gnb_service,
            #gnb.gnb_one_small .gnb_notice_li.hover .gnb_service,
            #gnb.gnb_one .gnb_notice_li.hover .gnb_notice,
            #gnb.gnb_one_small .gnb_notice_li.hover .gnb_notice,
            #gnb.gnb_one .gnb_notice_li.hover .gnb_mail,
            #gnb.gnb_one_small .gnb_notice_li.hover .gnb_mail,
            #gnb.gnb_one .gnb_notice_li.hover .gnb_service,
            #gnb.gnb_one_small .gnb_notice_li.hover .gnb_service,
            #gnb.gnb_one .mail_li.hover .gnb_service,
            #gnb.gnb_one_small .mail_li.hover .gnb_service,
            #gnb.gnb_one .mail_li.hover .gnb_notice,
            #gnb.gnb_one_small .mail_li.hover .gnb_notice,
            #gnb.gnb_one .mail_li.hover .gnb_mail,
            #gnb.gnb_one_small .mail_li.hover .gnb_mail,
            #gnb.gnb_one .mail_li.hover .gnb_service,
            #gnb.gnb_one_small .mail_li.hover .gnb_service,
            #gnb.gnb_one .gnb_service_li.hover .gnb_service,
            #gnb.gnb_one_small .gnb_service_li.hover .gnb_service,
            #gnb.gnb_one .gnb_service_li.hover .gnb_notice,
            #gnb.gnb_one_small .gnb_service_li.hover .gnb_notice,
            #gnb.gnb_one .gnb_service_li.hover .gnb_mail,
            #gnb.gnb_one_small .gnb_service_li.hover .gnb_mail,
            #gnb.gnb_one .gnb_service_li.hover .gnb_service,
            #gnb.gnb_one_small .gnb_service_li.hover .gnb_service {
                background: url(https://ssl.pstatic.net/static/common/gnb/bg_one_hover.png) repeat 0 0;
            }

            #gnb.gnb_one .gnb_my_li .gnb_my .gnb_name,
            #gnb.gnb_one_small .gnb_my_li .gnb_my .gnb_name {
                margin: 0 0 0 1px;
            }

            #gnb.gnb_one .gnb_notice_li a.gnb_notice,
            #gnb.gnb_one_small .gnb_notice_li a.gnb_notice {
                width: 17px;
                height: 19px;
            }

            #gnb.gnb_one .gnb_notice_li a.gnb_notice .gnb_icon,
            #gnb.gnb_one_small .gnb_notice_li a.gnb_notice .gnb_icon {
                width: 17px;
                height: 19px;
                background-position: -284px -119px;
            }

            #gnb.gnb_one .gnb_notice_li a.gnb_notice:hover .gnb_icon,
            #gnb.gnb_one_small .gnb_notice_li a.gnb_notice:hover .gnb_icon {
                background-position: -284px -119px;
            }

            #gnb.gnb_one .mail_li a.gnb_mail,
            #gnb.gnb_one_small .mail_li a.gnb_mail {
                width: 21px;
                height: 17px;
            }

            #gnb.gnb_one .mail_li a.gnb_mail .gnb_icon,
            #gnb.gnb_one_small .mail_li a.gnb_mail .gnb_icon {
                width: 21px;
                height: 17px;
                background-position: -302px -120px;
            }

            #gnb.gnb_one .mail_li a.gnb_mail:hover .gnb_icon,
            #gnb.gnb_one_small .mail_li a.gnb_mail:hover .gnb_icon {
                background-position: -302px -120px;
            }

            #gnb.gnb_one .gnb_service_li .gnb_service,
            #gnb.gnb_one_small .gnb_service_li .gnb_service {
                width: 17px;
                height: 17px;
            }

            #gnb.gnb_one .gnb_service_li .gnb_service .gnb_icon,
            #gnb.gnb_one_small .gnb_service_li .gnb_service .gnb_icon {
                width: 17px;
                height: 17px;
                background-position: -324px -120px;
            }

            #gnb.gnb_one .gnb_service_li .gnb_service:hover .gnb_icon,
            #gnb.gnb_one_small .gnb_service_li .gnb_service:hover .gnb_icon {
                background-position: -324px -120px;
            }

            #gnb.gnb_one .gnb_my_lyr,
            #gnb.gnb_one_small .gnb_my_lyr,
            #gnb.gnb_one .gnb_notice_lyr,
            #gnb.gnb_one_small .gnb_notice_lyr,
            #gnb.gnb_one .gnb_service_lyr,
            #gnb.gnb_one_small .gnb_service_lyr {
                right: 7px;
            }

            #gnb.gnb_one .gnb_ico_num,
            #gnb.gnb_one_small .gnb_ico_num {
                width: 34px;
                top: 10px;
                right: 3px;
                left: auto;
                vertical-align: top;
            }

            #gnb.gnb_one .gnb_ico_num .gnb_ico_new,
            #gnb.gnb_one_small .gnb_ico_num .gnb_ico_new {
                vertical-align: top;
                height: 13px;
                background-position: -332px -60px;
            }

            #gnb.gnb_one .gnb_ico_num .gnb_count,
            #gnb.gnb_one_small .gnb_ico_num .gnb_count {
                height: 13px;
                padding: 0 6px 0 2px;
                background-position: 100% -60px;
                font-size: 10px;
                font-weight: normal;
            }

            #gnb.gnb_one .gnb_ico_num .plus,
            #gnb.gnb_one_small .gnb_ico_num .plus {
                margin: 1px 0 0 2px;
            }

            #gnb.gnb_one .ico_arrow {
                top: 48px;
            }

            #gnb.gnb_one .gnb_my_lyr,
            #gnb.gnb_one .gnb_notice_lyr {
                top: 47px;
            }

            #gnb.gnb_one .gnb_service_lyr {
                top: 48px;
            }

            #gnb.gnb_one .gnb_login_li {
                padding: 16px 21px 10px 1px;
            }

            #gnb.gnb_one .gnb_my_li {
                padding: 12px 20px 12px 2px;
            }

            #gnb.gnb_one .gnb_my_li .ico_arrow {
                top: 34px;
            }

            #gnb.gnb_one .gnb_notice_li a.gnb_notice {
                padding: 18px 19px 17px 19px;
            }

            #gnb.gnb_one .mail_li a.gnb_mail {
                padding: 19px 17px 18px 17px;
            }

            #gnb.gnb_one .gnb_service_li .gnb_service {
                padding: 19px 19px 18px 19px;
            }

            #gnb.gnb_one_small .ico_arrow {
                top: 33px;
            }

            #gnb.gnb_one_small .gnb_my_lyr,
            #gnb.gnb_one_small .gnb_notice_lyr {
                top: 32px;
            }

            #gnb.gnb_one_small .gnb_service_lyr {
                top: 33px;
            }

            #gnb.gnb_one_small .gnb_login_li {
                padding: 7px 12px 4px 2px;
            }

            #gnb.gnb_one_small .gnb_my_li {
                padding: 5px 20px 4px 2px;
            }

            #gnb.gnb_one_small .gnb_my_li .ico_arrow {
                top: 27px;
            }

            #gnb.gnb_one_small .gnb_notice_li a.gnb_notice {
                padding: 10px 11px 10px 12px;
            }

            #gnb.gnb_one_small .mail_li a.gnb_mail {
                padding: 11px 10px 11px 9px;
            }

            #gnb.gnb_one_small .gnb_service_li .gnb_service {
                padding: 11px 12px 11px 11px;
            }

            #gnb.gnb_one_small .gnb_ico_num {
                top: 5px;
                right: 6px;
                width: 24px;
            }

            #gnb.gnb_one_flat .gnb_login_li,
            #gnb.gnb_one_flat .gnb_my_li,
            #gnb.gnb_one_flat .gnb_notice_li,
            #gnb.gnb_one_flat .mail_li,
            #gnb.gnb_one_flat .gnb_service_li {
                border-color: #e0e0e0;
            }

            #gnb.gnb_one_flat .gnb_notice_li.hover,
            #gnb.gnb_one_flat .mail_li.hover,
            #gnb.gnb_one_flat .gnb_service_li.hover {
                background-color: rgba(0, 0, 0, 0.04);
            }

            #gnb.gnb_one_flat .gnb_service_li .gnb_service .gnb_icon,
            #gnb.gnb_one_flat .gnb_service_li .gnb_service:hover .gnb_icon {
                background-image: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_4b16e6.png);
                background-position: -84px -24px;
                background-repeat: no-repeat;
                width: 16px;
                height: 16px;
                vertical-align: top;
                margin: 0 1px;
            }

            #gnb.gnb_one_flat .mail_li a.gnb_mail .gnb_icon,
            #gnb.gnb_one_flat .mail_li a.gnb_mail:hover .gnb_icon {
                background-image: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_4b16e6.png);
                background-position: 0px -42px;
                background-repeat: no-repeat;
                width: 20px;
                height: 16px;
                vertical-align: top;
                margin: 0 1px;
            }

            #gnb.gnb_one_flat .gnb_notice_li a.gnb_notice .gnb_icon,
            #gnb.gnb_one_flat .gnb_notice_li a.gnb_notice:hover .gnb_icon {
                background-image: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_4b16e6.png);
                background-position: -84px 0px;
                background-repeat: no-repeat;
                width: 16px;
                height: 18px;
                vertical-align: top;
                margin: 0 1px;
            }

            #gnb.gnb_one_flat .gnb_my_li .gnb_my .gnb_name,
            #gnb.gnb_one_flat .gnb_login_li .gnb_btn_login .gnb_txt {
                color: #666;
            }

            #gnb.gnb_one_pwe .gnb_my .filter_mask {
                box-sizing: border-box;
                background: none;
                border: 1px solid rgba(0, 0, 0, 0.1);
                border-radius: 100%;
            }

            #gnb.gnb_one_pwe .gnb_my_namebox {
                background-image: url(https://ssl.pstatic.net/static/common/gnb/pwe/ico_arrow_wh.svg) !important;
            }

            #gnb.gnb_one_pwe .gnb_notice_li a.gnb_notice .gnb_icon,
            #gnb.gnb_one_pwe .gnb_notice_li a.gnb_notice:hover .gnb_icon {
                width: 17px;
                height: 19px;
                background: url(https://ssl.pstatic.net/static/common/gnb/pwe/gnb_notice.svg) no-repeat;
            }

            #gnb.gnb_one_pwe .gnb_service_li .gnb_service .gnb_icon,
            #gnb.gnb_one_pwe .gnb_service_li .gnb_service:hover .gnb_icon {
                width: 17px;
                height: 17px;
                background: url(https://ssl.pstatic.net/static/common/gnb/pwe/gnb_service.svg) no-repeat;
            }

            #gnb.gnb_one_pwe .gnb_ico_num .gnb_ico_new,
            #gnb.gnb_one_pwe .gnb_ico_num .gnb_count {
                background: #e1523a;
            }

            #gnb.gnb_one_pwe .gnb_ico_num .gnb_ico_new {
                border-radius: 13px 0 0 13px;
            }

            #gnb.gnb_one_pwe .gnb_ico_num .gnb_count {
                border-radius: 0 13px 13px 0;
            }
        </style>
    </head>

    <body>
        <!-- 사이드 광고 -->
        <div id="veta_skin_left" data-veta-preview="p_sports_dpl" style="display: none;"></div>
        <div id="veta_skin_right" data-veta-preview="p_sports_dpl" style="display: none;"></div>

        <div id="u_skip">
            <a href="#lnb_main_sub" onclick="document.getElementById('lnb_main_sub').tabIndex=-1;document.getElementById('lnb_main_sub').focus();"><span>메인 메뉴로 바로가기</span></a>
            <div id="lnb_menu_link"></div>
            <div id="container_link">
                <a href="#container" onclick="document.getElementById('container').tabIndex=-1;document.getElementById('container').focus();"><span>본문으로 바로가기</span></a>
            </div>
        </div>

        <div id="wrap">
            <header id="header" class="sports_header_pc">
                <div class="sports_gnb" role="banner">
                    <!-------------------------------------- 여기서 우리 주소 넣으면 됨.------------------------------------------------------------>
                    <h1 class="logo_area">
                        <a href="/ehr/resources/templates/home.html" class="logo_naver" onclick="clickcr(this, 'STA.naverlogo', '', '', event);"><span class="blind">네이버</span></a>
                        <a href="/ehr/resources/templates/home.html" class="logo_sports" onclick="clickcr(this, 'STA.sports', '', '', event);"><span class="blind">스포츠</span></a>
                    </h1>
                    <div class="sub_logo_area">
                        <a href="https://m.sports.naver.com/community/index" class="logo_community" onclick="clickcr(this, 'STA.community', '', '', event);"><span class="blind">커뮤니티</span></a>
                    </div>
                    <div class="service_area">
                        <a href="https://news.naver.com/" onclick="clickcr(this, 'STA.news', '', '', event);" class="logo_news"><span class="blind">뉴스</span></a>
                        <a href="https://weather.naver.com/" onclick="clickcr(this, 'STA.whether', '', '', event);" class="logo_weather"><span class="blind">날씨</span></a>
                        <a href="https://entertain.naver.com/" onclick="clickcr(this, 'STA.entertain', '', '', event);" class="logo_entertain"><span class="blind">TV연예</span></a>
                    </div>

                    <script></script>
                    <!-- GNB -->
                    <div class="tool_area">
                        <div class="gnb_one" id="gnb">
                            <strong class="blind">사용자 링크</strong>
                            <ul class="gnb_lst" id="gnb_lst" style="display: block;">
                                <!--            <li class="gnb_login_li" id="gnb_login_layer"
                style="display: inline-block;"><a class="gnb_btn_login"
                href="https://nid.naver.com/nidlogin.login?url=https%3A%2F%2Fsports.news.naver.com%2Fkbaseball%2Fnews%2Findex"
                id="gnb_login_button"><span class="gnb_bg"></span><span
                  class="gnb_bdr"></span><span class="gnb_txt">로그인</span></a></li> -->
                                <li class="gnb_my_li" id="gnb_my_layer" style="display: none;">
                                    <div class="gnb_my_namebox" id="gnb_my_namebox" style="background-image: url('https://ssl.pstatic.net/static/common/gnb/2014/ico_arrow_wh.gif');">
                                        <a href="javascript:;" id="gnb_my" class="gnb_my" onclick="gnbUserLayer.clickToggle(); return false;">
                                            <img
                                                id="gnb_profile_img"
                                                src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs%3D"
                                                onerror="this.src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAMAAAC5zwKfAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAADNQTFRF8PDw5ubm+vr6+/v76enp+Pj47e3t5+fn9/f37Ozs9PT08vLy7+/v6urq9fX15OTk/f39pqwodgAAAQNJREFUeNrs11EOgyAMgOEWUAF19f6n3cMeplJHoSZbsv4H+DIWaCNsNwcGGmiggQZ+D/Q5reuasr8H9ID0CsHfALpA74JTgwPSPnRK0Ac6FrwOXOjcogIdlTkNuDDgogGRAVEBDsQ19IMzC879ILAgGNgAZhbMP3RttonxJs1Lgea/sDYcyreHXjW+oPUHVid2MWC1K+A0sqsDW7CksGmlCNZoFt9pIfjYgY8bwMMexUENQuOtqYCxfHtT7AddYodDcp0gIPEh9IBxous+nBuaTis4Nw/OSLVwloN+JEmjGJR5FyIDRpIWZeAoBkcZGMRgkIEkz0D7GjXQQAMN/GvwKcAAEGGHJh0mmaAAAAAASUVORK5CYII='"
                                                width="26"
                                                height="26"
                                                alt="내 프로필 이미지"
                                            />
                                            <span id="gnb_profile_filter_mask" class="filter_mask"></span> <span class="gnb_name" id="gnb_name1"></span><em class="blind">내정보 보기</em><span class="ico_arrow"></span>
                                        </a>
                                        <a href="#" class="gnb_emp" id="gnb_emp">(임직원혜택)</a>
                                    </div>
                                    <div class="gnb_my_lyr" id="gnb_my_lyr">
                                        <div class="gnb_my_content">
                                            <div class="gnb_img_area">
                                                <span class="gnb_mask"></span>
                                                <img
                                                    src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs%3D"
                                                    onerror="this.src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAMAAAC5zwKfAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAADNQTFRF8PDw5ubm+vr6+/v76enp+Pj47e3t5+fn9/f37Ozs9PT08vLy7+/v6urq9fX15OTk/f39pqwodgAAAQNJREFUeNrs11EOgyAMgOEWUAF19f6n3cMeplJHoSZbsv4H+DIWaCNsNwcGGmiggQZ+D/Q5reuasr8H9ID0CsHfALpA74JTgwPSPnRK0Ac6FrwOXOjcogIdlTkNuDDgogGRAVEBDsQ19IMzC879ILAgGNgAZhbMP3RttonxJs1Lgea/sDYcyreHXjW+oPUHVid2MWC1K+A0sqsDW7CksGmlCNZoFt9pIfjYgY8bwMMexUENQuOtqYCxfHtT7AddYodDcp0gIPEh9IBxous+nBuaTis4Nw/OSLVwloN+JEmjGJR5FyIDRpIWZeAoBkcZGMRgkIEkz0D7GjXQQAMN/GvwKcAAEGGHJh0mmaAAAAAASUVORK5CYII='"
                                                    width="80"
                                                    height="80"
                                                    alt="프로필 이미지"
                                                />
                                                <a href="https://nid.naver.com/user2/api/naverProfile?m=checkIdType" class="gnb_change"><span class="blind">프로필 사진 변경</span></a>
                                            </div>
                                            <div class="gnb_txt_area">
                                                <p class="gnb_account">
                                                    <span class="gnb_name" id="gnb_name2"><a class="gnb_nick" href="https://nid.naver.com/user2/api/naverProfile?m=checkIdType">_</a>님</span>
                                                    <a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.logout?returl=https%3A%2F%2Fsports.news.naver.com%2Fkbaseball%2Fnews%2Findex" id="gnb_logout_button">
                                                        <span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그아웃</span>
                                                    </a>
                                                </p>
                                                <a href="https://mail.naver.com" class="gnb_mail_address">@naver.com</a>
                                                <ul class="gnb_edit_lst">
                                                    <li class="gnb_info"><a href="https://nid.naver.com/user2/help/myInfo?menu=home">네이버ID</a></li>
                                                    <li class="gnb_secure" id="gnb_secure_lnk"><a href="https://nid.naver.com/user2/help/myInfo?m=viewSecurity&amp;menu=security">보안설정</a></li>
                                                    <li class="gnb_cert" id="gnb_cert_lnk"><a href="https://nid.naver.com/user2/eSign/v1/home/land" id="gnb_cert_lnk_a">내인증서</a></li>
                                                </ul>
                                                <div class="gnb_pay_check" id="gnb_pay_check">
                                                    <p class="gnb_membership" style="display: none;" id="gnb_membership">
                                                        <a href="https://nid.naver.com/membership/my" class="gnb_my_membership" id="gnb_my_membership"><i class="blind">네이버 멤버쉽</i></a>
                                                    </p>
                                                    <em>N Pay</em><a href="https://pay.naver.com" id="gnb_pay_point"><span style="display: none;">내 페이포인트</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gnb_my_community">
                                            <a href="https://blog.naver.com/MyBlog.naver" class="gnb_blog">내 블로그</a><a href="https://section.cafe.naver.com" class="gnb_cafe">가입한 카페</a>
                                            <a href="https://pay.naver.com" class="gnb_pay" id="gnb_pay_banner_membership" style="display: block;"><span>N Pay</span></a>
                                            <a href="https://nid.naver.com/membership/join" class="gnb_pay" id="gnb_pay_banner_newbie" style="display: none;"><i>네이버 멤버십 최대 5% 적립</i></a>
                                        </div>
                                        <a href="#" class="gnb_my_interface" style="display: none;"><span class="blind">환경설정</span></a>
                                    </div>
                                    <iframe
                                        id="gnb_my_lyr_iframe"
                                        title="빈 프레임"
                                        class="gnb_pad_lyr"
                                        name="padding"
                                        width="0"
                                        height="0"
                                        scrolling="no"
                                        frameborder="0"
                                        style="top: 55px; right: 10px; width: 320px; height: 158px; display: none; opacity: 0;"
                                    ></iframe>
                                </li>
                                <li class="gnb_notice_li" id="gnb_notice_layer" style="display: none;">
                                    <a href="javascript:;" class="gnb_notice" onclick="gnbNaverMeLayer.clickToggle(); return false;">
                                        <span class="blind">알림</span><span class="gnb_icon"></span>
                                        <em class="gnb_ico_num" id="gnb_me_menu" style="display: none;">
                                            <span class="gnb_ico_new"><span class="gnb_count" id="gnb_me_count"></span></span>
                                        </em>
                                        <span class="ico_arrow"></span>
                                    </a>
                                    <div class="gnb_notice_lyr" id="gnb_notice_lyr">
                                        <div class="svc_noti svc_panel">
                                            <div class="svc_scroll">
                                                <div class="svc_head">
                                                    <strong class="gnb_tit">전체 알림</strong>
                                                    <div class="task_right">
                                                        <button onclick="gnbNaverMeLayer.deleteReadList(this, event);" id="gnb_btn_read_noti_del">읽은 알림 삭제</button>
                                                        <button onclick="gnbNaverMeLayer.showDeleteAlert();" id="gnb_btn_all_noti_del">모두 삭제</button>
                                                    </div>
                                                </div>
                                                <div class="svc_body" id="gnb_naverme_layer"></div>
                                            </div>
                                            <div class="gnb_ly_alert" id="gnb_ly_alert" style="display: none;">
                                                <p class="gnb_msg">
                                                    <strong>알림을 모두 삭제하시겠습니까?</strong>
                                                </p>
                                                <div class="gnb_btns">
                                                    <button id="ly_alert_confirm" onclick="gnbNaverMeLayer.deleteAllList(this, event);">확인</button>
                                                    <button onclick="gnbNaverMeLayer.hideDeleteAlert();">취소</button>
                                                </div>
                                                <button class="gnb_btn_close" onclick="gnbNaverMeLayer.hideDeleteAlert();">
                                                    <i>레이어 닫기</i>
                                                </button>
                                            </div>
                                            <a href="https://m.notify.naver.com" class="gnb_notice_all">내 알림 전체보기</a>
                                        </div>
                                    </div>
                                    <iframe
                                        id="gnb_notice_lyr_iframe"
                                        title="빈 프레임"
                                        class="gnb_pad_lyr"
                                        name="padding"
                                        width="0"
                                        height="0"
                                        scrolling="no"
                                        frameborder="0"
                                        style="top: 55px; right: 10px; width: 299px; height: 332px; display: none; opacity: 0;"
                                    ></iframe>
                                </li>
                                <li class="mail_li" id="gnb_mail_layer" style="display: none;">
                                    <a href="https://mail.naver.com" class="gnb_mail">
                                        <span class="blind">메일</span><span class="gnb_icon"></span>
                                        <em class="gnb_ico_num" id="gnb_mail_menu" style="display: none;">
                                            <span class="gnb_ico_new"><span class="gnb_count" id="gnb_mail_count"></span></span>
                                        </em>
                                    </a>
                                </li>
                                <li class="gnb_service_li" id="gnb_service_layer" style="display: inline-block;">
                                    <!-- <a href="javascript:;"
                class="gnb_service"
                onclick="gnbMoreLayer.clickToggle(); return false;"><span
                  class="blind">서비스 더보기</span><span class="gnb_icon"></span><span
                  class="ico_arrow"></span></a> -->
                                    <div class="gnb_service_lyr" id="gnb_service_lyr">
                                        <div class="gnb_favorite_search" id="gnb_favorite_search">
                                            <div class="gnb_favorite_area">
                                                <div class="gnb_favorite_lstwrp">
                                                    <div class="gnb_first_visit" style="display: none;">
                                                        <span class="blind">나만의 즐겨찾기를 추가해 보세요!</span><a href="#" class="gnb_close"><span class="blind">닫기</span></a>
                                                    </div>
                                                    <strong class="blind">즐겨찾는 서비스</strong>
                                                    <ul class="gnb_favorite_lst" id="gnb_favorite_lst">
                                                        <li class="gnb_add">
                                                            <a href="#"><span class="ic_add"></span>추가</a>
                                                        </li>
                                                        <li class="gnb_add">
                                                            <a href="#"><span class="ic_add"></span>추가</a>
                                                        </li>
                                                        <li class="gnb_add">
                                                            <a href="#"><span class="ic_add"></span>추가</a>
                                                        </li>
                                                        <li class="gnb_add">
                                                            <a href="#"><span class="ic_add"></span>추가</a>
                                                        </li>
                                                    </ul>
                                                    <a href="#" class="gnb_my_interface" onclick="gnbMoreLayer.clickToggleWhole(); return false;"><span class="blind">즐겨찾기 설정</span></a>
                                                </div>
                                            </div>
                                            <div class="gnb_search_area">
                                                <div class="gnb_search_box" onmouseover="gnb_search.mouseOver(this);" onmouseout="gnb_search.mouseOut(this);">
                                                    <input
                                                        id="gnb_svc_search_input"
                                                        type="text"
                                                        title="서비스 검색"
                                                        value="더 많은 서비스를 간편하게 시작하세요!"
                                                        onfocus="gnb_search.clearInput(this);"
                                                        onblur="gnb_search.resetInput(this);"
                                                        onkeydown="gnb_search.keyDown(event);"
                                                        onkeyup="gnb_search.keyUp(event);"
                                                    />
                                                    <a href="#" class="gnb_del_txt" id="gnb_del_txt" style="display: none;"><span class="blind">삭제</span></a>
                                                    <div
                                                        class="gnb_pop_input"
                                                        id="gnb_pop_input"
                                                        tabindex="0"
                                                        onfocus="gnb_search.searchPopOnMouse = true; return false;"
                                                        onfocusout="gnb_search.searchPopOnMouse = false; return false;"
                                                        onmouseover="gnb_search.searchPopOnMouse = true; return false;"
                                                        onmouseout="gnb_search.searchPopOnMouse = false; return false;"
                                                        style="display: none;"
                                                    >
                                                        <ul class="gnb_pop_lst"></ul>
                                                    </div>
                                                </div>
                                                <div id="gnb_search_lstwrp" class="gnb_search_lstwrp">
                                                    <ul class="gnb_search_lst gnb_first">
                                                        <li class="gnb_first"><a id="gnb_search_lst_first_item" href="https://cafe.naver.com/">카페</a></li>
                                                        <li><a href="https://news.naver.com/">뉴스</a></li>
                                                        <li><a href="https://map.naver.com/">지도</a></li>
                                                        <li><a href="https://sports.news.naver.com/">스포츠</a></li>
                                                        <li><a href="https://game.naver.com/">게임</a></li>
                                                    </ul>
                                                    <ul class="gnb_search_lst">
                                                        <li class="gnb_first"><a href="https://section.blog.naver.com/">블로그</a></li>
                                                        <li><a href="https://post.naver.com/main.nhn">포스트</a></li>
                                                        <li><a href="https://dict.naver.com/">사전</a></li>
                                                        <li><a href="https://kin.naver.com/">지식iN</a></li>
                                                        <li><a href="https://weather.naver.com/">날씨</a></li>
                                                    </ul>
                                                    <ul class="gnb_search_lst">
                                                        <li class="gnb_first"><a href="https://mail.naver.com/">메일</a></li>
                                                        <li><a href="https://stock.naver.com/">증권</a></li>
                                                        <li><a href="https://land.naver.com/">부동산</a></li>
                                                        <li><a href="https://vibe.naver.com/today/">VIBE</a></li>
                                                        <li><a href="https://book.naver.com">책</a></li>
                                                    </ul>
                                                    <ul class="gnb_search_lst">
                                                        <li class="gnb_first"><a href="https://shopping.naver.com/">쇼핑</a></li>
                                                        <li><a href="https://comic.naver.com/">웹툰</a></li>
                                                        <li><a href="https://movie.naver.com/">영화</a></li>
                                                        <li><a href="https://mybox.naver.com/">MYBOX</a></li>
                                                        <li><a href="https://novel.naver.com/webnovel/weekday">웹소설</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="gnb_banner">
                                                <a href="https://campaign.naver.com/npay/rediret/index.nhn" class="gnb_service_event">
                                                    <img id="gnb_promo" alt="N페이, 이벤트 참여하면 포인트 적립!" width="265" height="47" src="https://ssl.pstatic.net/static/common/gnb/banner/promo_npay_200108.png" />
                                                </a>
                                            </div>
                                            <div class="gnb_linkwrp">
                                                <a href="https://www.naver.com/more.html" class="gnb_service_all" id="gnb_service_all">전체 서비스 보기</a>
                                            </div>
                                        </div>
                                        <div class="gnb_svc_more" id="gnb_svc_more" style="">
                                            <strong class="blind">네이버 주요 서비스</strong>
                                            <div class="gnb_bg_top"></div>
                                            <div class="gnb_svc_hd" id="gnb_svc_hd" tabindex="0">
                                                <strong class="gnb_svc_tit">바로가기 설정</strong><span class="link"><a href="https://www.naver.com/more.html">전체 서비스 보기</a></span>
                                            </div>
                                            <div class="gnb_svc_lstwrp">
                                                <div class="gnb_svc_lst1">
                                                    <ul class="gnb_first">
                                                        <li><input type="checkbox" id="nsvc_game" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_game">게임</label></li>
                                                        <li><input type="checkbox" id="nsvc_weather" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_weather">날씨</label></li>
                                                        <li><input type="checkbox" id="nsvc_shopping" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_shopping">네이버쇼핑</label></li>
                                                        <li><input type="checkbox" id="nsvc_navercast" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_navercast">네이버캐스트</label></li>
                                                        <li class="gnb_event">
                                                            <input type="checkbox" id="nsvc_naverpay" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_naverpay">네이버페이<em class="ic_gnb_new">New</em></label>
                                                        </li>
                                                        <li><input type="checkbox" id="nsvc_mybox" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_mybox">네이버 MYBOX</label></li>
                                                        <li><input type="checkbox" id="nsvc_news" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_news">뉴스</label></li>
                                                        <li><input type="checkbox" id="nsvc_comic" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_comic">웹툰</label></li>
                                                        <li><input type="checkbox" id="nsvc_memo" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_memo">메모</label></li>
                                                        <li><input type="checkbox" id="nsvc_mail" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_mail">메일</label></li>
                                                        <li><input type="checkbox" id="nsvc_land" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_land">부동산</label></li>
                                                        <li><input type="checkbox" id="nsvc_bookmark" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_bookmark">북마크</label></li>
                                                        <li><input type="checkbox" id="nsvc_blog" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_blog">블로그</label></li>
                                                    </ul>
                                                    <ul class="">
                                                        <li><input type="checkbox" id="nsvc_dic" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_dic">사전</label></li>
                                                        <li><input type="checkbox" id="nsvc_smartboard" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_smartboard">스마트보드</label></li>
                                                        <li><input type="checkbox" id="nsvc_sports" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_sports">스포츠</label></li>
                                                        <li><input type="checkbox" id="nsvc_series" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_series">시리즈</label></li>
                                                        <li><input type="checkbox" id="nsvc_serieson" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_serieson">시리즈on</label></li>
                                                        <li><input type="checkbox" id="nsvc_movie" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_movie">영화</label></li>
                                                        <li><input type="checkbox" id="nsvc_office" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_office">오피스</label></li>
                                                        <li><input type="checkbox" id="nsvc_novel" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_novel">웹소설</label></li>
                                                        <li><input type="checkbox" id="nsvc_contact" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_contact">주소록</label></li>
                                                        <li><input type="checkbox" id="nsvc_finance" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_finance">증권(금융)</label></li>
                                                        <li><input type="checkbox" id="nsvc_map" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_map">지도</label></li>
                                                        <li><input type="checkbox" id="nsvc_kin" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_kin">지식iN</label></li>
                                                        <li><input type="checkbox" id="nsvc_terms" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_terms">지식백과</label></li>
                                                    </ul>
                                                    <ul class="">
                                                        <li><input type="checkbox" id="nsvc_book" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_book">책</label></li>
                                                        <li><input type="checkbox" id="nsvc_cafe" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_cafe">카페</label></li>
                                                        <li><input type="checkbox" id="nsvc_calendar" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_calendar">캘린더</label></li>
                                                        <li><input type="checkbox" id="nsvc_navertv" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_navertv">네이버TV</label></li>
                                                    </ul>
                                                </div>
                                                <div class="svc_lst2">
                                                    <div class="svc_spc gnb_first">
                                                        <strong><a href="https://dict.naver.com/">어학사전</a></strong>
                                                        <ul class="">
                                                            <li><input type="checkbox" id="nsvc_krdic" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_krdic">국어사전</label></li>
                                                            <li><input type="checkbox" id="nsvc_endic" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_endic">영어/영영사전</label></li>
                                                            <li><input type="checkbox" id="nsvc_hanja" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_hanja">한자사전</label></li>
                                                            <li><input type="checkbox" id="nsvc_jpdic" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_jpdic">일어사전</label></li>
                                                            <li><input type="checkbox" id="nsvc_cndic" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_cndic">중국어사전</label></li>
                                                            <li><input type="checkbox" id="nsvc_frdic" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_frdic">프랑스어사전</label></li>
                                                            <li><input type="checkbox" id="nsvc_dedic" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_dedic">독일어사전</label></li>
                                                            <li><input type="checkbox" id="nsvc_rudic" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_rudic">러시아어사전</label></li>
                                                            <li><input type="checkbox" id="nsvc_vndic" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_vndic">베트남어사전</label></li>
                                                            <li><input type="checkbox" id="nsvc_spdic" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_spdic">스페인어사전</label></li>
                                                            <li><input type="checkbox" id="nsvc_papago" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_papago">파파고</label></li>
                                                        </ul>
                                                    </div>
                                                    <div class="svc_spc">
                                                        <strong>인기/신규서비스</strong>
                                                        <ul class="">
                                                            <li><input type="checkbox" id="nsvc_grafolio" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_grafolio">그라폴리오</label></li>
                                                            <li><input type="checkbox" id="nsvc_post" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_post">포스트</label></li>
                                                            <li><input type="checkbox" id="nsvc_band" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_band">밴드</label></li>
                                                            <li><input type="checkbox" id="nsvc_line" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_line">라인</label></li>
                                                            <li class="gnb_event">
                                                                <input type="checkbox" id="nsvc_vibe" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_vibe">VIBE<em class="ic_gnb_new">New</em></label>
                                                            </li>
                                                            <li><input type="checkbox" id="nsvc_pcontents" name="selmenu" class="gnb_input_check" value="" /> <label for="nsvc_pcontents">프리미엄콘텐츠</label></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="svc_btnwrp">
                                                <div class="svc_btns">
                                                    <button class="gnb_save" onclick="if(gnbFavorite.addService()){gnbMoreLayer.clickToggleWhole()} return false;">
                                                        <strong class="blind">확인</strong>
                                                    </button>
                                                    <button class="gnb_close" onclick="gnbFavorite.cancel(); return false;">
                                                        <span class="blind">취소</span>
                                                    </button>
                                                    <button class="gnb_return" onclick="gnbFavorite.resetService(); return false;">
                                                        <span class="blind">초기 설정으로 변경</span>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="gnb_bg_btm"></div>
                                        </div>
                                    </div>
                                    <iframe
                                        id="gnb_service_lyr_iframe"
                                        title="빈 프레임"
                                        class="gnb_pad_lyr"
                                        name="padding"
                                        width="0"
                                        height="0"
                                        scrolling="no"
                                        frameborder="0"
                                        style="display: none; top: 55px; right: 311px; width: 585px; height: 385px; opacity: 0;"
                                    ></iframe>
                                    <iframe
                                        id="gnb_svc_more_iframe"
                                        title="빈 프레임"
                                        class="gnb_pad_lyr"
                                        name="padding"
                                        width="0"
                                        height="0"
                                        scrolling="no"
                                        frameborder="0"
                                        style="display: none; top: 55px; right: 10px; width: 295px; height: 385px; opacity: 0;"
                                    ></iframe>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- GNB -->
                </div>

                <!-- 추후 제거, lnbMenuInfoList 를 받아오기 위하여 사용중 -->

                <script></script>

                <nav class="sports_lnb" role="navigation" id="_sports_lnb_menu">
                    <h2 class="blind">메인 메뉴</h2>
                    <ul id="lnb_list" class="lnb_list" role="menubar">
                        <li class="lnb_item" role="presentation"><a href="/ehr/resources/templates/home.html" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.sportshome', 'sportshome', '', event); ; ">스포츠 홈</a></li>

                        <li class="lnb_item" role="presentation">
                            <a href="/ehr/sportsxpress/baseball_news.do" class="link_lnb" role="menuitem" aria-current="true" onclick="clickcr(this, 'LNB.baseball', 'baseball', '', event); ; ">야구</a>
                        </li>

                        <li class="lnb_item" role="presentation"><a href="/ehr/sportsxpress/football_news.do" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.soccer', 'soccer', '', event); ; ">축구</a></li>

                        <li class="lnb_item" role="presentation"><a href="/ehr/sportsxpress/basketball_news.do" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.basketball', 'basketball', '', event); ; ">농구</a></li>

                        <li class="lnb_item" role="presentation"><a href="/ehr/sportsxpress/volleyball_news.do" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.kvolleyball', 'kvolleyball', '', event); ; ">배구</a></li>

                        <li class="lnb_item" role="presentation"><a href="/ehr/sportsxpress/golf_news.do" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.golf', 'golf', '', event); ; ">골프</a></li>
                    </ul>
                </nav>
                <nav class="sports_lnb_sub">
                    <ul id="lnb_sub_list" class="lnb_sub_list" role="menubar">
                        <li class="lnb_sub_item" role="presentation">
                            <a href="/ehr/sportsxpress/baseball_news.do" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.news', 'news', '', event); " aria-current="page"> <span class="menu">최신뉴스</span> </a>
                        </li>

                        <li class="lnb_sub_item" role="presentation">
                            <a href="/ehr/sportsxpress/baseball_schedule.do" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.schedule', 'schedule', '', event); ">
                                <span class="menu">일정/결과</span>
                            </a>
                        </li>
                        <li class="lnb_sub_item" role="presentation">
                            <a href="/ehr/sportsxpress/baseball_record.do" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.datacenter', 'datacenter', '', event); ">
                                <span class="menu">기록/순위</span>
                            </a>
                        </li>
                    </ul>
                </nav>

                <script></script>

                <script></script>

                <script></script>

                <script></script>
            </header>
            <script></script>
            <script></script>

            <div id="container">
                <div id="content" class="newscenter">
                    <div class="news_wrap">
                        <div class="content">
                            <div class="content_area">
                                <div class="tab_event">
                                    <ul class="list" id="_sectionList">
                                        <li class="selected" data-id="kbaseball">
                                            <a href="#" onclick="clickcr(this, 'nwl.league', '', '', event);"><span class="menu">야구 전체</span></a>
                                        </li>

  
                                    </ul>
                                </div>
                                <div class="news_lnb">
                                    <ul class="sort" id="_sortTypeList">
                                        <li data-id="latest" class="selected">
                                            <a href="#" onclick="clickcr(this, 'nwl.newest', '', '', event);"><span>최신순</span></a>
                                        </li>

                                        <li data-id="popular">
                                            <a href="#" onclick="clickcr(this, 'nwl.popular', '', '', event);"><span>인기순</span></a>
                                        </li>
                                    </ul>
                                </div>

                                <div id="_kboTeamList" class="news_team" style="display: none;">
                                    <ul>
                                        <li class="first selected" data-id="kbo">
                                            <a href="#">
                                                <span class="emblem">
                                                    <img
                                                        width="37"
                                                        height="37"
                                                        src="https://sports-phinf.pstatic.net/team/kbo/default/KBO.png"
                                                        class="imageLazyLoad"
                                                        lazy-src="https://sports-phinf.pstatic.net/team/kbo/default/KBO.png"
                                                        alt=""
                                                        onerror="imageOnError(this);"
                                                    />
                                                </span>

                                                <span class="name">전체</span>
                                            </a>
                                        </li>

                                        <li data-id="SK">
                                            <a href="#">
                                                <span class="emblem">
                                                    <img
                                                        width="37"
                                                        height="37"
                                                        src="https://sports-phinf.pstatic.net/team/kbo/default/SK.png"
                                                        class="imageLazyLoad"
                                                        lazy-src="https://sports-phinf.pstatic.net/team/kbo/default/SK.png"
                                                        alt=""
                                                        onerror="imageOnError(this);"
                                                    />
                                                </span>

                                                <span class="name">SSG</span>
                                            </a>
                                        </li>

                                        <li data-id="WO">
                                            <a href="#">
                                                <span class="emblem">
                                                    <img
                                                        width="37"
                                                        height="37"
                                                        src="https://sports-phinf.pstatic.net/team/kbo/default/WO.png"
                                                        class="imageLazyLoad"
                                                        lazy-src="https://sports-phinf.pstatic.net/team/kbo/default/WO.png"
                                                        alt=""
                                                        onerror="imageOnError(this);"
                                                    />
                                                </span>

                                                <span class="name">키움</span>
                                            </a>
                                        </li>

                                        <li data-id="LG">
                                            <a href="#">
                                                <span class="emblem">
                                                    <img
                                                        width="37"
                                                        height="37"
                                                        src="https://sports-phinf.pstatic.net/team/kbo/default/LG.png"
                                                        class="imageLazyLoad"
                                                        lazy-src="https://sports-phinf.pstatic.net/team/kbo/default/LG.png"
                                                        alt=""
                                                        onerror="imageOnError(this);"
                                                    />
                                                </span>

                                                <span class="name">LG</span>
                                            </a>
                                        </li>

                                        <li data-id="KT">
                                            <a href="#">
                                                <span class="emblem">
                                                    <img
                                                        width="37"
                                                        height="37"
                                                        src="https://sports-phinf.pstatic.net/team/kbo/default/KT.png"
                                                        class="imageLazyLoad"
                                                        lazy-src="https://sports-phinf.pstatic.net/team/kbo/default/KT.png"
                                                        alt=""
                                                        onerror="imageOnError(this);"
                                                    />
                                                </span>

                                                <span class="name">KT</span>
                                            </a>
                                        </li>

                                        <li data-id="HT">
                                            <a href="#">
                                                <span class="emblem">
                                                    <img
                                                        width="37"
                                                        height="37"
                                                        src="https://sports-phinf.pstatic.net/team/kbo/default/HT.png"
                                                        class="imageLazyLoad"
                                                        lazy-src="https://sports-phinf.pstatic.net/team/kbo/default/HT.png"
                                                        alt=""
                                                        onerror="imageOnError(this);"
                                                    />
                                                </span>

                                                <span class="name">KIA</span>
                                            </a>
                                        </li>

                                        <li class="first" data-id="NC">
                                            <a href="#">
                                                <span class="emblem">
                                                    <img
                                                        width="37"
                                                        height="37"
                                                        src="https://sports-phinf.pstatic.net/team/kbo/default/NC.png"
                                                        class="imageLazyLoad"
                                                        lazy-src="https://sports-phinf.pstatic.net/team/kbo/default/NC.png"
                                                        alt=""
                                                        onerror="imageOnError(this);"
                                                    />
                                                </span>

                                                <span class="name">NC</span>
                                            </a>
                                        </li>

                                        <li data-id="SS">
                                            <a href="#">
                                                <span class="emblem">
                                                    <img
                                                        width="37"
                                                        height="37"
                                                        src="https://sports-phinf.pstatic.net/team/kbo/default/SS.png"
                                                        class="imageLazyLoad"
                                                        lazy-src="https://sports-phinf.pstatic.net/team/kbo/default/SS.png"
                                                        alt=""
                                                        onerror="imageOnError(this);"
                                                    />
                                                </span>

                                                <span class="name">삼성</span>
                                            </a>
                                        </li>

                                        <li data-id="LT">
                                            <a href="#">
                                                <span class="emblem">
                                                    <img
                                                        width="37"
                                                        height="37"
                                                        src="https://sports-phinf.pstatic.net/team/kbo/default/LT.png"
                                                        class="imageLazyLoad"
                                                        lazy-src="https://sports-phinf.pstatic.net/team/kbo/default/LT.png"
                                                        alt=""
                                                        onerror="imageOnError(this);"
                                                    />
                                                </span>

                                                <span class="name">롯데</span>
                                            </a>
                                        </li>

                                        <li data-id="OB">
                                            <a href="#">
                                                <span class="emblem">
                                                    <img
                                                        width="37"
                                                        height="37"
                                                        src="https://sports-phinf.pstatic.net/team/kbo/default/OB.png"
                                                        class="imageLazyLoad"
                                                        lazy-src="https://sports-phinf.pstatic.net/team/kbo/default/OB.png"
                                                        alt=""
                                                        onerror="imageOnError(this);"
                                                    />
                                                </span>

                                                <span class="name">두산</span>
                                            </a>
                                        </li>

                                        <li data-id="HH">
                                            <a href="#">
                                                <span class="emblem">
                                                    <img
                                                        width="37"
                                                        height="37"
                                                        src="https://sports-phinf.pstatic.net/team/kbo/default/HH.png"
                                                        class="imageLazyLoad"
                                                        lazy-src="https://sports-phinf.pstatic.net/team/kbo/default/HH.png"
                                                        alt=""
                                                        onerror="imageOnError(this);"
                                                    />
                                                </span>

                                                <span class="name">한화</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="news_date" id="_topDateList" style="display: none;"></div>
                                <div class="news_list" id="_newsList">
                                    <h3 class="blind">뉴스리스트</h3>

                                    <ul>
                                        <!-- 20개씩 기사가 출력되게 -->
                                        <c:forEach var="art" items="${articles}" begin="0" end="19">
                                            <li>
                                                <a href="${art.hyperlink}" class="thmb" onclick="clickcr(this, 'nwl.image', '', '', event);">
                                                    <img width="140" src="${art.thumbnail}" lazy-src="${art.thumbnail}" alt="${art.title}" class="lazyLoadImage" > 
                                                    <span class="mask"></span>
                                                </a>
                                                <div class="text">
                                                    <a href="${art.hyperlink}" class="title" onclick="clickcr(this, 'nwl.title', '', '', event);"><span>${art.title}</span></a>
                                                    <div class="source">
                                                        <span class="press">${art.reg_id}</span> <span class="time"><span class="bar"></span>${art.reg_dt}</span>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>

                                <div class="paginate" id="_pageList" style="">
                                    <strong>1</strong> <a href="#" data-id="2" onclick="clickcr">2</a> <a href="#" data-id="3" onclick="clickcr(this, 'nwl.paging', '', '', event);">3</a>
                                    <a href="#" data-id="4" onclick="clickcr(this, 'nwl.paging', '', '', event);">4</a> <a href="#" data-id="5" onclick="clickcr(this, 'nwl.paging', '', '', event);">5</a>
                                    <a href="#" data-id="6" onclick="clickcr(this, 'nwl.paging', '', '', event);">6</a> <a href="#" data-id="7" onclick="clickcr(this, 'nwl.paging', '', '', event);">7</a>
                                    <a href="#" data-id="8" onclick="clickcr(this, 'nwl.paging', '', '', event);">8</a> <a href="#" data-id="9" onclick="clickcr(this, 'nwl.paging', '', '', event);">9</a>
                                    <a href="#" data-id="10" onclick="clickcr(this, 'nwl.paging', '', '', event);">10</a> <a href="#" class="next" onclick="clickcr(this, 'nwl.paging', '', '', event);"> <span class="blind">다음</span></a>
                                </div>
                                <div class="paginate_day" id="_bottomDateList">
                                    <a href="#" class="prev _arr" onclick="clickcr(this, 'nwl.date', '', '', event);"><span class="blind">이전</span></a>
                                    <div class="inner">
                                        <a href="#" data-id="20230605" onclick="clickcr(this, 'nwl.date', '', '', event);"><span>06.05</span>(월)</a>
                                        <a href="#" data-id="20230606" onclick="clickcr(this, 'nwl.date', '', '', event);"><span>06.06</span>(화)</a>
                                        <a href="#" data-id="20230607" onclick="clickcr(this, 'nwl.date', '', '', event);"><span>06.07</span>(수)</a>
                                        <a href="#" data-id="20230608" onclick="clickcr(this, 'nwl.date', '', '', event);"><span>06.08</span>(목)</a>
                                        <a href="#" data-id="20230609" class="selected" onclick="clickcr(this, 'nwl.date', '', '', event);"><span>06.09</span>(금)</a>
                                    </div>
                                    <span class="next"><span class="blind">다음</span></span>
                                </div>
                            </div>
                        </div>

                        <!-- 여기서 부터 오른쪽 측면 구성 -->
                        <div id="news_aside" class="aside">
                            <div id="section_end_right_banner" class="aside_da2">
                                <div style="width: 100%; height: auto; margin: 0px auto; line-height: 0;">
                                    <iframe
                                        id="section_end_right_banner_tgtLREC"
                                        frameborder="no"
                                        scrolling="no"
                                        tabindex="0"
                                        name=""
                                        title="AD"
                                        style="width: 100%; height: 250px; visibility: inherit; border: 0px; vertical-align: bottom;"
                                    ></iframe>
                                </div>
                            </div>

                            <div id="news_best" class="aside_inner">
                                <div class="aside_head">
                                    <h3 class="title">이 시각 많이 본 뉴스</h3>
                                    <button type="button" class="button_info_layer" aria-describedby="_wa_layer_message">
                                        <span class="blind">도움말</span>
                                    </button>
                                    <div class="news_info_layer">
                                        <p id="_wa_layer_message" role="tooltip">최근 한 달 기사 중 오후 2시 ~ 3시까지 집계한 조회 수입니다. 총 누적과 다를 수 있습니다.</p>

                                        <button class="button_close">
                                            <span class="blind">도움말 닫기</span>
                                        </button>
                                    </div>
                                </div>

                                <div class="aside_rank_news">
                                    <div id="_ranking_news_tab_selector" class="aside_tab2">
                                        <div class="inner">
                                            <a href="#" class="selected" id="_ranking_news_tab_0" data-select-num="0"><span>야구</span></a>
                                            <!--                    <a href="#"
                      id="_ranking_news_tab_1" data-select-num="1"><span>스포츠
                        종합</span></a>  -->
                                        </div>
                                    </div>
                                    <ul class="aside_news_list" id="_ranking_news_list_0">
                                        <c:forEach var="art" items="${articles}" begin="10" end="19">
                                            <li>
                                                <a href="${art.hyperlink}" class="title" onclick="clickcr(this, 'aec*a.category', '', '', event);"><span> ${art.title}</span></a>
                                            </li>
                                        </c:forEach>
                                    </ul>

                                    <script></script>

                                    <div id="news_vod" class="aside_inner">
                                        <div class="aside_head">
                                            <h3 class="title">많이 본 영상</h3>
                                        </div>
                                        <div class="aside_vod_best2">
                                            <ul class="aside_vod_list2">
                                                <li class="best">
                                                    <a href="${videos[0].hyperlink}" onclick="clickcr(this, 'aec*b.video', '', '', event);" title="">
                                                        <div class="thmb">
                                                            <b class="rank_num">1</b> <span class="mask"></span>
                                                            <img
                                                                width="260"
                                                                height="156"
                                                                src="https://phinf.pstatic.net/tvcast/20230505_123/TkYYK_1683247294308iXU5U_JPEG/cover_cover_MYH20230505001000641_20230505093901799.jpg?type=f172_97_blend_webp"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://phinf.pstatic.net/tvcast/20230505_123/TkYYK_1683247294308iXU5U_JPEG/cover_cover_MYH20230505001000641_20230505093901799.jpg?type=f172_97_blend_webp"
                                                                alt=""
                                                                onerror="imageOnError(this);"
                                                            />
                                                        </div>
                                                        <div class="text">
                                                            <span class="title"><span>${videos[0].title}</span></span>
                                                            <div class="info">
                                                                <span class="play"><span class="ico">재생수</span>${videos[0].views}</span>

                                                                <span class="time"><span class="ico">재생시간</span>02:05</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="vod_li">
                                                    <a href="${videos[1].hyperlink}" onclick="clickcr(this, 'aec*b.video', '', '', event);" title="">
                                                        <div class="thmb">
                                                            <b class="rank_num">2</b> <span class="time"><span class="blind">재생시간</span>00:21</span> <span class="mask"></span>

                                                            <img
                                                                width="110"
                                                                height="64"
                                                                src="https://phinf.pstatic.net/tvcast/20230505_235/MJeSF_16832418715578Odpv_JPEG/cover_0011479105_001_20230505081020988.jpg?type=f172_97_blend_webp"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://phinf.pstatic.net/tvcast/20230505_235/MJeSF_16832418715578Odpv_JPEG/cover_0011479105_001_20230505081020988.jpg?type=f172_97_blend_webp"
                                                                alt=""
                                                                onerror="imageOnError(this);"
                                                            />
                                                        </div>
                                                        <div class="text">
                                                            <span class="title"><span>${videos[1].title}</span></span>
                                                            <div class="info">
                                                                <span class="play"><span class="ico">재생수</span>${videos[1].views}</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>

                                                <li class="vod_li">
                                                    <a href="${videos[2].hyperlink}" onclick="clickcr(this, 'aec*b.video', '', '', event);" title="">
                                                        <div class="thmb">
                                                            <b class="rank_num">3</b> <span class="time"><span class="blind">재생시간</span>00:45</span> <span class="mask"></span>

                                                            <img
                                                                width="110"
                                                                height="64"
                                                                src="https://phinf.pstatic.net/tvcast/20230619_204/31YgL_1687185748560y12E8_JPEG/20230619_233500_510_1.jpg?type=f172_97_blend_webp"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://phinf.pstatic.net/tvcast/20230619_204/31YgL_1687185748560y12E8_JPEG/20230619_233500_510_1.jpg?type=f172_97_blend_webp"
                                                                alt=""
                                                                onerror="imageOnError(this);"
                                                            />
                                                        </div>
                                                        <div class="text">
                                                            <span class="title"><span>${videos[2].title}</span></span>
                                                            <div class="info">
                                                                <span class="play"><span class="ico">재생수</span>${videos[2].views}</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>

                                                <li class="vod_li">
                                                    <a href="${videos[3].hyperlink}" onclick="clickcr(this, 'aec*b.video', '', '', event);" title="">
                                                        <div class="thmb">
                                                            <b class="rank_num">4</b> <span class="time"><span class="blind">재생시간</span>02:31</span> <span class="mask"></span>

                                                            <img
                                                                width="110"
                                                                height="64"
                                                                src="https://phinf.pstatic.net/tvcast/20230619_43/ZZfiI_1687185749789kgk70_JPEG/20230619_233516_296_1.jpg?type=f172_97_blend_webp"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://phinf.pstatic.net/tvcast/20230619_43/ZZfiI_1687185749789kgk70_JPEG/20230619_233516_296_1.jpg?type=f172_97_blend_webp"
                                                                alt=""
                                                                onerror="imageOnError(this);"
                                                            />
                                                        </div>
                                                        <div class="text">
                                                            <span class="title"><span>${videos[3].title}</span></span>
                                                            <div class="info">
                                                                <span class="play"><span class="ico">재생수</span>${videos[3].views}</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>

                                                <li class="vod_li">
                                                    <a href="${videos[4].hyperlink}" onclick="clickcr(this, 'aec*b.video', '', '', event);" title="">
                                                        <div class="thmb">
                                                            <b class="rank_num">5</b> <span class="time"><span class="blind">재생시간</span>01:00</span> <span class="mask"></span>

                                                            <img
                                                                width="110"
                                                                height="64"
                                                                src="https://phinf.pstatic.net/tvcast/20230619_30/emcoD_1687180894949xHVq6_JPEG/20230619_221244_549_1.jpg?type=f172_97_blend_webp"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://phinf.pstatic.net/tvcast/20230619_30/emcoD_1687180894949xHVq6_JPEG/20230619_221244_549_1.jpg?type=f172_97_blend_webp"
                                                                alt=""
                                                                onerror="imageOnError(this);"
                                                            />
                                                        </div>
                                                        <div class="text">
                                                            <span class="title"><span>${videos[4].title}</span></span>
                                                            <div class="info">
                                                                <span class="play"><span class="ico">재생수</span>${videos[4].views}</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <script></script>

                                    <div id="ranking1" class="aside_inner">
                                        <div class="aside_head">
                                            <h3 class="title">KBO리그 개인순위</h3>
                                        </div>

                                        <div class="aside_rank_player">
                                            <div class="aside_tab2">
                                                <div class="inner">
                                                    <a onmouseover="javascript:changePlayerRankingTab('kbo', 0, 4);" id="playerRankingTab_kbo_0" class="selected"><span>타율</span></a>
                                                    <a onmouseover="javascript:changePlayerRankingTab('kbo', 1, 4);" id="playerRankingTab_kbo_1" class=""><span>홈런</span></a>
                                                    <a onmouseover="javascript:changePlayerRankingTab('kbo', 2, 4);" id="playerRankingTab_kbo_2" class=""><span>다승</span></a>
                                                    <a onmouseover="javascript:changePlayerRankingTab('kbo', 3, 4);" id="playerRankingTab_kbo_3" style="width: 78px;" class=""><span>평균자책</span></a>
                                                </div>
                                            </div>

                                            <ul class="list" id="playerRankingList_kbo_0" style="">
                                                <li class="best">
                                                    <div class="inner">
                                                        <b class="rank_num">1</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/78603.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/78603.png"
                                                                onerror="imageOnError(this);"
                                                                alt="김선빈"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">김선빈</span> <span class="team">KIA</span></div>
                                                        <div class="stat">
                                                            <span>0.321</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">2</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/53827.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/53827.png"
                                                                onerror="imageOnError(this);"
                                                                alt="에레디아"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">에레디아</span> <span class="team">SSG</span></div>
                                                        <div class="stat">
                                                            <span>0.318</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">3</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/72443.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/72443.png"
                                                                onerror="imageOnError(this);"
                                                                alt="최형우"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">최형우</span> <span class="team">KIA</span></div>
                                                        <div class="stat">
                                                            <span>0.318</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">4</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/77532.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/77532.png"
                                                                onerror="imageOnError(this);"
                                                                alt="손아섭"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">손아섭</span> <span class="team">NC</span></div>
                                                        <div class="stat">
                                                            <span>0.318</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">5</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/76232.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/76232.png"
                                                                onerror="imageOnError(this);"
                                                                alt="양의지"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">양의지</span> <span class="team">두산</span></div>
                                                        <div class="stat">
                                                            <span>0.317</span>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>

                                            <ul class="list" id="playerRankingList_kbo_1" style="display: none;">
                                                <li class="best">
                                                    <div class="inner">
                                                        <b class="rank_num">1</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/79365.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/79365.png"
                                                                onerror="imageOnError(this);"
                                                                alt="박동원"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">박동원</span> <span class="team">LG</span></div>
                                                        <div class="stat">
                                                            <span>14</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">2</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/75847.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/75847.png"
                                                                onerror="imageOnError(this);"
                                                                alt="최정"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">최정</span> <span class="team">SSG</span></div>
                                                        <div class="stat">
                                                            <span>11</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">3</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/76267.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/76267.png"
                                                                onerror="imageOnError(this);"
                                                                alt="최주환"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">최주환</span> <span class="team">SSG</span></div>
                                                        <div class="stat">
                                                            <span>10</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">3</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/53211.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/53211.png"
                                                                onerror="imageOnError(this);"
                                                                alt="로하스"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">로하스</span> <span class="team">두산</span></div>
                                                        <div class="stat">
                                                            <span>10</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">5</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/69737.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/69737.png"
                                                                onerror="imageOnError(this);"
                                                                alt="노시환"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">노시환</span> <span class="team">한화</span></div>
                                                        <div class="stat">
                                                            <span>9</span>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>

                                            <ul class="list" id="playerRankingList_kbo_2" style="display: none;">
                                                <li class="best">
                                                    <div class="inner">
                                                        <b class="rank_num">1</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/53913.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/53913.png"
                                                                onerror="imageOnError(this);"
                                                                alt="페디"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">페디</span> <span class="team">NC</span></div>
                                                        <div class="stat">
                                                            <span>9</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">2</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/52145.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/52145.png"
                                                                onerror="imageOnError(this);"
                                                                alt="플럿코"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">플럿코</span> <span class="team">LG</span></div>
                                                        <div class="stat">
                                                            <span>8</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">3</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/69045.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/69045.png"
                                                                onerror="imageOnError(this);"
                                                                alt="알칸타라"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">알칸타라</span> <span class="team">두산</span></div>
                                                        <div class="stat">
                                                            <span>7</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">4</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/69103.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/69103.png"
                                                                onerror="imageOnError(this);"
                                                                alt="켈리"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">켈리</span> <span class="team">LG</span></div>
                                                        <div class="stat">
                                                            <span>6</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">4</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/52043.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/52043.png"
                                                                onerror="imageOnError(this);"
                                                                alt="벤자민"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">벤자민</span> <span class="team">KT</span></div>
                                                        <div class="stat">
                                                            <span>6</span>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>

                                            <ul class="list" id="playerRankingList_kbo_3" style="display: none;">
                                                <li class="best">
                                                    <div class="inner">
                                                        <b class="rank_num">1</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/53913.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/53913.png"
                                                                onerror="imageOnError(this);"
                                                                alt="페디"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">페디</span> <span class="team">NC</span></div>
                                                        <div class="stat">
                                                            <span>1.63</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">2</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/69045.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/69045.png"
                                                                onerror="imageOnError(this);"
                                                                alt="알칸타라"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">알칸타라</span> <span class="team">두산</span></div>
                                                        <div class="stat">
                                                            <span>1.77</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">3</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/68341.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/68341.png"
                                                                onerror="imageOnError(this);"
                                                                alt="안우진"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">안우진</span> <span class="team">키움</span></div>
                                                        <div class="stat">
                                                            <span>1.87</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">4</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/52145.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/52145.png"
                                                                onerror="imageOnError(this);"
                                                                alt="플럿코"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">플럿코</span> <span class="team">LG</span></div>
                                                        <div class="stat">
                                                            <span>1.97</span>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="inner">
                                                        <b class="rank_num">5</b>
                                                        <div class="image">
                                                            <img
                                                                src="https://sports-phinf.pstatic.net/player/kbo/default/67539.png"
                                                                class="imageLazyLoad"
                                                                lazy-src="https://sports-phinf.pstatic.net/player/kbo/default/67539.png"
                                                                onerror="imageOnError(this);"
                                                                alt="나균안"
                                                            />
                                                        </div>
                                                        <div class="info"><span class="name">나균안</span> <span class="team">롯데</span></div>
                                                        <div class="stat">
                                                            <span>2.55</span>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <a href="/kbaseball/record/index" class="more"><span>더보기</span></a>
                                        <script></script>
                                    </div>

                                    <div class="aside_inner" id="right_big_banner_0" style="">
                                        <div class="aside_magazines">
                                            <h3 class="blind">올림픽채널</h3>
                                            <div class="thmb">
                                                <a href="https://tv.naver.com/olympicchannel" target="_blank" onclick="clickcr(this, 'aec*d.banner', '', '', event);">
                                                    <img
                                                        width="300"
                                                        src="https://sports-phinf.pstatic.net/20180928_260/1538109748561DWCaR_PNG/07_%B1%E2%C5%B8_%C5%D7%B4%CF%BD%BA.png"
                                                        class="imageLazyLoad"
                                                        lazy-src="https://sports-phinf.pstatic.net/20180928_260/1538109748561DWCaR_PNG/07_%B1%E2%C5%B8_%C5%D7%B4%CF%BD%BA.png"
                                                        alt=""
                                                        onerror="imageOnError(this);"
                                                    />
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <script></script>
                                </div>

                                <div class="aside_inner aside_shopping aside_shopping_v2">
                                    <div class="aside_head">
                                        <h3 class="title"><strong>야구</strong> 네이버 쇼핑</h3>
                                        <div class="shopping_paginated" id="_shoppingPageArea">
                                            <span class="pa_num"><em id="_shoppingPageNum">2</em> / 2</span> <span id="_shoppingDisablePrevBtn" class="nav prev" style="display: none;"><span>이전 없음</span></span>
                                            <a id="_shoppingEnablePrevBtn" href="#" class="nav prev" onclick="clickcr(this, 'aec*h.prev', '', '', event);"><span>이전</span></a>
                                            <a id="_shoppingEnableNextBtn" href="#" class="nav next" onclick="clickcr(this, 'aec*h.next', '', '', event);" style="display: none;"><span>다음</span></a>
                                            <span id="_shoppingDisableNextBtn" class="nav next" style=""><span>다음 없음</span></span>
                                        </div>
                                    </div>
                                    <div class="aside_shopping_ct">
                                        <ul class="list" id="_shoppingArea_0" style="display: none;">
                                            <li class="type1">
                                                <a href="https://shopping.naver.com/outlink/itemdetail/3743355488" onclick="clickcr(this, 'aec*h.goods', '', '', event);">
                                                    <div class="thmb">
                                                        <img
                                                            width="126"
                                                            height="160"
                                                            src="https://shop-phinf.pstatic.net/20230601_203/1685584974815DaLSF_JPEG/1.jpg"
                                                            class="imageLazyLoad"
                                                            lazy-src="https://shop-phinf.pstatic.net/20230601_203/1685584974815DaLSF_JPEG/1.jpg"
                                                            alt="정식 규격<br>프로스펙스 야구공"
                                                            onerror="imageOnError(this);"
                                                        />
                                                        <span class="mask"></span>
                                                    </div>
                                                    <div class="price_wrap">
                                                        <span class="blind">가격 : </span><strong class="price"><span>2,400</span>원</strong>
                                                    </div>
                                                    <span class="text">
                                                        정식 규격<br />
                                                        프로스펙스 야구공
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="type1">
                                                <a href="https://shopping.naver.com/outlink/itemdetail/4947739797" onclick="clickcr(this, 'aec*h.goods', '', '', event);">
                                                    <div class="thmb">
                                                        <img
                                                            width="126"
                                                            height="160"
                                                            src="https://shop-phinf.pstatic.net/20230601_164/1685584989550QBF2a_JPEG/2.jpg"
                                                            class="imageLazyLoad"
                                                            lazy-src="https://shop-phinf.pstatic.net/20230601_164/1685584989550QBF2a_JPEG/2.jpg"
                                                            alt="더욱 새로워진<br>트리니티 야구헬멧"
                                                            onerror="imageOnError(this);"
                                                        />
                                                        <span class="mask"></span>
                                                    </div>
                                                    <div class="price_wrap">
                                                        <span class="blind">가격 : </span><strong class="price"><span>39,000</span>원</strong>
                                                    </div>
                                                    <span class="text">
                                                        더욱 새로워진<br />
                                                        트리니티 야구헬멧
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="type1">
                                                <a href="https://shopping.naver.com/outlink/itemdetail/8471894041" onclick="clickcr(this, 'aec*h.goods', '', '', event);">
                                                    <div class="thmb">
                                                        <img
                                                            width="126"
                                                            height="160"
                                                            src="https://shop-phinf.pstatic.net/20230601_68/1685585005999gHE9b_JPEG/3.jpg"
                                                            class="imageLazyLoad"
                                                            lazy-src="https://shop-phinf.pstatic.net/20230601_68/1685585005999gHE9b_JPEG/3.jpg"
                                                            alt="뛰어난 내구성<br>양가죽 배팅 장갑"
                                                            onerror="imageOnError(this);"
                                                        />
                                                        <span class="mask"></span>
                                                    </div>
                                                    <div class="price_wrap">
                                                        <span class="blind">가격 : </span><strong class="price"><span>50,000</span>원</strong>
                                                    </div>
                                                    <span class="text">
                                                        뛰어난 내구성<br />
                                                        양가죽 배팅 장갑
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="type1">
                                                <a href="https://shopping.naver.com/outlink/itemdetail/2931186859" onclick="clickcr(this, 'aec*h.goods', '', '', event);">
                                                    <div class="thmb">
                                                        <img
                                                            width="126"
                                                            height="160"
                                                            src="https://shop-phinf.pstatic.net/20230601_135/1685585020846DBfLT_JPEG/4.jpg"
                                                            class="imageLazyLoad"
                                                            lazy-src="https://shop-phinf.pstatic.net/20230601_135/1685585020846DBfLT_JPEG/4.jpg"
                                                            alt="아크 구조 채용<br>미즈노 인조잔디화"
                                                            onerror="imageOnError(this);"
                                                        />
                                                        <span class="mask"></span>
                                                    </div>
                                                    <div class="price_wrap">
                                                        <span class="blind">가격 : </span><strong class="price"><span>39,900</span>원</strong>
                                                    </div>
                                                    <span class="text">
                                                        아크 구조 채용<br />
                                                        미즈노 인조잔디화
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>

                                        <ul class="list" id="_shoppingArea_1" style="">
                                            <li class="type1">
                                                <a href="https://shopping.naver.com/outlink/itemdetail/7721693558" onclick="clickcr(this, 'aec*h.goods', '', '', event);">
                                                    <div class="thmb">
                                                        <img
                                                            width="126"
                                                            height="160"
                                                            src="https://shop-phinf.pstatic.net/20230601_2/16855850345133Jmah_JPEG/5.jpg"
                                                            class="imageLazyLoad"
                                                            lazy-src="https://shop-phinf.pstatic.net/20230601_2/16855850345133Jmah_JPEG/5.jpg"
                                                            alt="3단계 압박<br>노멀라이프 보호대"
                                                            onerror="imageOnError(this);"
                                                        />
                                                        <span class="mask"></span>
                                                    </div>
                                                    <div class="price_wrap">
                                                        <span class="blind">가격 : </span><strong class="price"><span>17,900</span>원</strong>
                                                    </div>
                                                    <span class="text">
                                                        3단계 압박<br />
                                                        노멀라이프 보호대
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="type1">
                                                <a href="https://shopping.naver.com/outlink/itemdetail/8421471613" onclick="clickcr(this, 'aec*h.goods', '', '', event);">
                                                    <div class="thmb">
                                                        <img
                                                            width="126"
                                                            height="160"
                                                            src="https://shop-phinf.pstatic.net/20230601_256/1685585048960HTSSu_JPEG/6.jpg"
                                                            class="imageLazyLoad"
                                                            lazy-src="https://shop-phinf.pstatic.net/20230601_256/1685585048960HTSSu_JPEG/6.jpg"
                                                            alt="가벼운 착용감<br>팔꿈치 보호대"
                                                            onerror="imageOnError(this);"
                                                        />
                                                        <span class="mask"></span>
                                                    </div>
                                                    <div class="price_wrap">
                                                        <span class="blind">가격 : </span><strong class="price"><span>10,800</span>원</strong>
                                                    </div>
                                                    <span class="text">
                                                        가벼운 착용감<br />
                                                        팔꿈치 보호대
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="type1">
                                                <a href="https://shopping.naver.com/outlink/itemdetail/5326346486" onclick="clickcr(this, 'aec*h.goods', '', '', event);">
                                                    <div class="thmb">
                                                        <img
                                                            width="126"
                                                            height="160"
                                                            src="https://shop-phinf.pstatic.net/20230601_88/1685585097185GHVEb_JPEG/7.jpg"
                                                            class="imageLazyLoad"
                                                            lazy-src="https://shop-phinf.pstatic.net/20230601_88/1685585097185GHVEb_JPEG/7.jpg"
                                                            alt="3가지 모드<br>뱀부 클래식 랜턴"
                                                            onerror="imageOnError(this);"
                                                        />
                                                        <span class="mask"></span>
                                                    </div>
                                                    <div class="price_wrap">
                                                        <span class="blind">가격 : </span><strong class="price"><span>49,000</span>원</strong>
                                                    </div>
                                                    <span class="text">
                                                        3가지 모드<br />
                                                        뱀부 클래식 랜턴
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="type1">
                                                <a href="https://shopping.naver.com/outlink/itemdetail/8347113788" onclick="clickcr(this, 'aec*h.goods', '', '', event);">
                                                    <div class="thmb">
                                                        <img
                                                            width="126"
                                                            height="160"
                                                            src="https://shop-phinf.pstatic.net/20230601_10/1685585111058dzhuJ_JPEG/8.jpg"
                                                            class="imageLazyLoad"
                                                            lazy-src="https://shop-phinf.pstatic.net/20230601_10/1685585111058dzhuJ_JPEG/8.jpg"
                                                            alt="좋은 퀄리티<br>국산 혼무시 100g"
                                                            onerror="imageOnError(this);"
                                                        />
                                                        <span class="mask"></span>
                                                    </div>
                                                    <div class="price_wrap">
                                                        <span class="blind">가격 : </span><strong class="price"><span>13,500</span>원</strong>
                                                    </div>
                                                    <span class="text">
                                                        좋은 퀄리티<br />
                                                        국산 혼무시 100g
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <script></script>
                            </div>
                        </div>
                    </div>

                    <script></script>
                    <script></script>

                    <script></script>

                    <script></script>
                    <script></script>
                    <script></script>
                </div>

                <div id="footer">
                    <div class="inner">
                        <div class="page_area">
                            <div class="notice_text">공지사항</div>
                            <div class="sports_notice">
                                <a href="https://blog.naver.com/naver_sports/223118608681" class="link_notice" target="_blank" onclick="clickcr(this, 'not.noti', '1466402863231', '', event);">스포츠 TV중계 편성 - 6/5(월)~6/12(월)</a>
                            </div>

                            <div class="sports_league">
                                <ul class="league_list">
                                    <li class="league_item"><a href="/ehr/resources/templates/home.html" class="link_league">홈</a></li>
                                    <li class="league_item"><a href="/ehr/sportsxpress/baseball_news.do" class="link_league">야구</a></li>
                                    <li class="league_item"><a href="/ehr/sportsxpress/football_news.do" class="link_league">축구</a></li>
                                    <li class="league_item"><a href="/ehr/sportsxpress/basketball_news.do" class="link_league">농구</a></li>
                                    <li class="league_item"><a href="/ehr/sportsxpress/volleyball_news.do" class="link_league">배구</a></li>
                                    <li class="league_item"><a href="/ehr/sportsxpress/golf_news.do" class="link_league">골프</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="sports_info">
                            <div class="link_area">
                                <div class="main_area">
                                    <a href="javascript:moveToLoginForm();" class="link" id="login_status"><strong>로그인</strong></a> <a href="https://www.naver.com/more.html" class="link sitemap">전체서비스</a>
                                    <a target="_blank" onclick="OPS.viewOPS('ops', {url : 'https://help.naver.com/alias/contents2/sports/sports_2.naver'}); clickcr(this, 'fot.shelp', '', '', event); return false;" href="#" class="link">
                                       고객센터
                                    </a>
                                    <a target="_blank" href="https://help.naver.com/alias/contents2/sports/sports_6.naver" class="link">문제신고</a>
                                    <a target="_blank" href="https://www.naver.com/rules/privacy.html" onclick="clickcr(this, 'fot.privacy', '', '', event);" class="link"><strong>개인정보처리방침</strong></a>
                                </div>
                                <div class="sub_area"><a href="https://news.naver.com/main/ombudsman/edit.naver?mid=omb" class="link">기사배열 원칙 책임자 : 유봉석</a> <span class="link">청소년 보호 책임자 : 이희만</span></div>
                            </div>
                            <p class="footer_copyright">본 콘텐츠의 저작권은 제공처 또는 네이버에 있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다.</p>
                            <span class="naver">© <a ref="http://www.navercorp.com/" target="_blank" onclick="clickcr(this, 'fot.nhn', '', '', event);">NAVER Corp.</a></span>
                        </div>
                    </div>
                </div>

                <script type="text/javascript" src="https://ssl.pstatic.net/static.sports/resources/pc/8088/66/88/664600/js/src/changeUrl.js" charset="UTF-8"></script>

                <script type="text/javascript"></script>
            </div>
        </div>
        <script type="text/javascript"></script>

        <script></script>
    </body>
</html>
