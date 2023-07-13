<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta http-equiv="X-UA-Compatible" content="requiresActiveX=true" />
        <meta name="viewport" content="width=1080px,maximum-scale=2.0,minimum-scale=0.4,user-scalable=yes" />
        <meta property="og:image" content="https://imgsports.pstatic.net/images/mobile/common/NAVERsports.png" />
        <meta property="og:title" content="일정/결과, 해외축구 : 네이버 스포츠" />
        <meta property="og:description" content="스포츠의 시작과 끝!" />
        <meta name="description" content="스포츠의 모든 것, 네이버 스포츠와 함께 하세요" />

        <meta property="og:url" content="https://sports.news.naver.com/wfootball/schedule/index.nhn" />

        <title>일정/결과, 해외축구 : 네이버 스포츠</title>

        <script></script>
        <link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.sports/resources/pc/8088/66/88/664600/css/generated/nsportsCss.css" />

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
        <script type="text/javascript" id="undefined" src="https://ssl.pstatic.net/static/common/js/cs_ops_webncc.js"></script>
        <script type="text/javascript" id="undefined" src="https://ssl.pstatic.net/static.sports/resources/pc/8088/66/88/664600/js/generated/baseJsBottomLazy.js"></script>
        <script src="https://ssl.pstatic.net/static.gn/js/clickcrD.js" id="gnb_clickcrD" charset="utf-8"></script>
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
            <header id="header" class="sports_header_pc type_wfootball">
                <div class="sports_gnb" role="banner">
                    <h1 class="logo_area">
                        <a href="https://www.naver.com" class="logo_naver" onclick="clickcr(this, 'STA.naverlogo', '', '', event);"><span class="blind">네이버</span></a>
                        <a href="https://sports.news.naver.com/" class="logo_sports" onclick="clickcr(this, 'STA.sports', '', '', event);"><span class="blind">스포츠</span></a>
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
                                <li class="gnb_login_li" id="gnb_login_layer" style="display: inline-block;">
                                    <a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.login?url=https%3A%2F%2Fsports.news.naver.com%2Fwfootball%2Fschedule%2Findex" id="gnb_login_button">
                                        <span class="gnb_bg">
                                    </a>
                                </li>
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
                                                    <a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.logout?returl=https%3A%2F%2Fsports.news.naver.com%2Fwfootball%2Fschedule%2Findex" id="gnb_logout_button">
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
                                        <span class="blind">알림</span>
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
                                        <span class="blind">메일</span>
                                        <em class="gnb_ico_num" id="gnb_mail_menu" style="display: none;">
                                            <span class="gnb_ico_new"><span class="gnb_count" id="gnb_mail_count"></span></span>
                                        </em>
                                    </a>
                                </li>
                                <li class="gnb_service_li" id="gnb_service_layer" style="display: inline-block;">
                                    <a href="javascript:;" class="gnb_service" onclick="gnbMoreLayer.clickToggle(); return false;"><span class="blind">서비스 더보기</span><span class="ico_arrow"></span></a>
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
                        <li class="lnb_item" role="presentation"><a href="/index" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.sportshome', 'sportshome', '', event); ; ">스포츠 홈</a></li>

                        <li class="lnb_item" role="presentation"><a href="/ehr/sportsxpress/baseball_news.do" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.baseball', 'baseball', '', event); ; ">야구</a></li>

                        <li class="lnb_item" role="presentation"><a href="/ehr/sportsxpress/football_news.do" class="link_lnb" role="menuitem" aria-current="true" onclick="clickcr(this, 'LNB.worldfootball', 'worldfootball', '', event); ; ">축구</a>
                        </li>

                        <li class="lnb_item" role="presentation"><a href="/ehr/sportsxpress/basketball_news.do" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.basketball', 'basketball', '', event); ; ">농구</a></li>

                        <li class="lnb_item" role="presentation"><a href="/ehr/sportsxpress/volleyball_news.do" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.kvolleyball', 'kvolleyball', '', event); ; ">배구</a></li>

                        <li class="lnb_item" role="presentation"><a href="/ehr/sportsxpress/golf_news.do" class="link_lnb" role="menuitem" onclick="clickcr(this, 'LNB.golf', 'golf', '', event); ; ">골프</a></li>
                    </ul>
                </nav>
                <nav class="sports_lnb_sub">
                    <ul id="lnb_sub_list" class="lnb_sub_list" role="menubar">
                        <li class="lnb_sub_item" role="presentation">
                            <a href="/ehr/sportsxpress/football_news.do" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.news', 'news', '', event); "> <span class="menu">최신뉴스</span> </a>
                        </li>
                        <li class="lnb_sub_item" role="presentation">
                            <a href="/ehr/sportsxpress/football_schedule.do" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.schedule', 'schedule', '', event); " aria-current="page"> <span class="menu">일정/결과</span> </a>
                        </li>
                        <li class="lnb_sub_item" role="presentation">
                            <a href="/ehr/sportsxpress/football_record.do" class="link_lnb_sub" role="menuitem" onclick="clickcr(this, 'LNB.record', 'record', '', event); ">
                                <span class="menu">기록/순위</span>
                            </a>
                        </li>
                    </ul>
                </nav>

                <script id="_sports_lnb_menu_li_template" type="text/x-handlebars-template"></script>

                <script id="_sports_lnb_sub_menu_template" type="text/x-handlebars-template"></script>

                <script type="text/javascript"></script>

                <script></script>
            </header>
            <script></script>
            <script></script>

            <div id="container">
                <div class="cms_side_banner" id="_cms_side_banner"></div>

                <div id="content" class="schedule wfootball_schedule">
                    <div class="tab_event">
                        <ul class="list" id="_categoryList">
                            <li class="selected">
                                <a href="#" data-category="epl"><span class="menu">프리미어리그</span></a>
                            </li>
                        </ul>
                    </div>

                    <div class="schedule_week_area">
                        <div class="schedule_week" id="_dateList">
                            <ul class="list" role="tablist" aria-labelledby="daily-list">
                                <li role="tab" class="selected" aria-selected="true" data-id="20230529">
                                    <a href="#" onclick="scoreboardClickCode(this, event)"> <span class="day">05.29</span> <span class="week">(월)</span> </a>
                                </li>
                                <li role="tab" data-id="20230530">
                                    <span class="disabled"> <span class="day">05.30</span> <span class="week">(화)</span> </span>
                                </li>
                                <li role="tab" data-id="20230531">
                                    <span class="disabled"> <span class="day">05.31</span> <span class="week">(수)</span> </span>
                                </li>
                                <li role="tab" data-id="20230601">
                                    <span class="disabled"> <span class="day">06.01</span> <span class="week">(목)</span> </span>
                                </li>
                                <li role="tab" data-id="20230602">
                                    <span class="disabled"> <span class="day">06.02</span> <span class="week">(금)</span> </span>
                                </li>
                                <li role="tab" data-id="20230603">
                                    <span class="disabled"> <span class="day">06.03</span> <span class="week">(토)</span> </span>
                                </li>
                                <li role="tab" data-id="20230604">
                                    <span class="disabled"> <span class="day">06.04</span> <span class="week">(일)</span> </span>
                                </li>
                            </ul>
                            <!-- 활성화시 a, 비활성화시 span -->
                            <a href="#" class="arr prev" data-id="20230526" onclick="clickcr(this, 'sch*a.datemore', '', '', event);"><span>이전</span></a>

                            <span class="arr next"><span>다음</span></span>
                        </div>
                        <div class="schedule_vs paging" id="_scoreboardList">
                            <div class="list">
                                <div class="bx end">
                                    <div class="vs_info">
                                        <em class="state">종료</em>
                                    </div>

                                    <div class="vs_area">
                                        <div class="emblem">
                                            <img
                                                src="${matches[0].hname_logo}"
                                                width="64"
                                                height="64"
                                                alt="사우샘프턴"
                                                onerror="imageOnError(this);"
                                            />
                                        </div>
                                        <span class="team">${matches[0].hname}</span> <strong class="num">${matches[0].hscore}</strong>
                                    </div>
                                    <div class="vs_area">
                                        <div class="emblem">
                                            <img src="${matches[0].ateam_logo}" width="64" height="64" alt="리버풀" onerror="imageOnError(this);" />
                                        </div>
                                        <span class="team">${matches[0].ateam}</span> <strong class="num">${matches[0].ascore}</strong>
                                    </div>

                                    <div class="vs_btn">
                                        <a href="${matches[0].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                    </div>
                                </div>
                                <div class="bx end">
                                    <div class="vs_info">
                                        <em class="state">종료</em>
                                    </div>

                                    <div class="vs_area">
                                        <div class="emblem">
                                            <img src="${matches[1].hname_logo}" width="64" height="64" alt="맨유" onerror="imageOnError(this);" />
                                        </div>
                                        <span class="team">${matches[1].hname}</span> <strong class="num">${matches[1].hscore}</strong>
                                    </div>
                                    <div class="vs_area">
                                        <div class="emblem">
                                            <img src="${matches[1].ateam_logo}" width="64" height="64" alt="풀럼" onerror="imageOnError(this);" />
                                        </div>
                                        <span class="team">${matches[1].ateam}</span> <strong class="num">${matches[1].ascore}</strong>
                                    </div>

                                    <div class="vs_btn">
                                        <a href="${matches[1].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                    </div>
                                </div>
                                <div class="bx end">
                                    <div class="vs_info">
                                        <em class="state">종료</em>
                                    </div>

                                    <div class="vs_area">
                                        <div class="emblem">
                                            <img src="${matches[2].hname_logo}" width="64" height="64" alt="레스터" onerror="imageOnError(this);" />
                                        </div>
                                        <span class="team">${matches[2].hname}</span> <strong class="num">${matches[2].hscore}</strong>
                                    </div>
                                    <div class="vs_area">
                                        <div class="emblem">
                                            <img
                                                src="${matches[2].ateam_logo}"
                                                width="64"
                                                height="64"
                                                alt="웨스트햄"
                                                onerror="imageOnError(this);"
                                            />
                                        </div>
                                        <span class="team">${matches[2].ateam}</span> <strong class="num">${matches[2].ascore}</strong>
                                    </div>

                                    <div class="vs_btn">
                                        <a href="${matches[2].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                    </div>
                                </div>
                            </div>
                            <span class="arr prev"><span>이전</span></span> <a href="#" class="arr next"><span>다음</span></a>
                        </div>
                        <div class="schedule_paginate" role="navigation" aria-labelledby="schedule paging" id="_pageList">
                            <span aria-selected="true" data-page="1" class="selected">1페이지</span>
                            <span aria-selected="false" data-page="2">2페이지</span> <span aria-selected="false" data-page="3">3페이지</span> <span aria-selected="false" data-page="4">4페이지</span>
                        </div>
                    </div>
                    <div class="schedule_month_area">
                        <div class="schedule_subtitle" id="_seasonTitle">
                            <h4><span class="_seasonTitle">2022/23시즌</span> 일정/결과</h4>
                        </div>
                        <!-- 스포츠 공통 콤보 박스 -->

                        <div class="combo_box align_right" id="__subscribe">
                            <a href="#" class="btn_rss" id="_btnRss" data-category="epl" onclick="clickcr(this, 'sch.feed', '', '', event);"><span>+구독</span></a>
                        </div>

                        <div class="date_select_nav type_season">
                            <span class="blind">종목별 경기 날짜 및 시즌 선택</span>
                            <div class="select_box_area type_date" id="_seasonListArea">
                                <div class="select_box">
                                    <button class="btn_toggle" type="button" aria-haspopup="listbox" aria-expanded="false" aria-label="연도 선택">
                                        <em class="now_selected"><span class="blind">선택된 연도</span>2022-23</em>
                                    </button>
                                    <ul class="option_list" role="listbox" id="_seasonOptionList">
                                        <li class="list" role="presentation">
                                            <button class="btn_option" type="button" role="option" aria-selected="true" data-year="2022">2022-23</button>
                                        </li>
                                        <li class="list" role="presentation">
                                            <button class="btn_option" type="button" role="option" aria-selected="false" data-year="2021">2021-22</button>
                                        </li>
                                        <li class="list" role="presentation">
                                            <button class="btn_option" type="button" role="option" aria-selected="false" data-year="2020">2020-21</button>
                                        </li>
                                        <li class="list" role="presentation">
                                            <button class="btn_option" type="button" role="option" aria-selected="false" data-year="2019">2019-20</button>
                                        </li>
                                        <li class="list" role="presentation">
                                            <button class="btn_option" type="button" role="option" aria-selected="false" data-year="2018">2018-19</button>
                                        </li>
                                        <li class="list" role="presentation">
                                            <button class="btn_option" type="button" role="option" aria-selected="false" data-year="2017">2017-18</button>
                                        </li>
                                        <li class="list" role="presentation">
                                            <button class="btn_option" type="button" role="option" aria-selected="false" data-year="2016">2016-17</button>
                                        </li>
                                        <li class="list" role="presentation">
                                            <button class="btn_option" type="button" role="option" aria-selected="false" data-year="2015">2015-16</button>
                                        </li>
                                        <li class="list" role="presentation">
                                            <button class="btn_option" type="button" role="option" aria-selected="false" data-year="2014">2014-15</button>
                                        </li>
                                        <li class="list" role="presentation">
                                            <button class="btn_option" type="button" role="option" aria-selected="false" data-year="2013">2013-14</button>
                                        </li>
                                        <li class="list" role="presentation">
                                            <button class="btn_option" type="button" role="option" aria-selected="false" data-year="2012">2012-13</button>
                                        </li>
                                        <li class="list" role="presentation">
                                            <button class="btn_option" type="button" role="option" aria-selected="false" data-year="2011">2011-12</button>
                                        </li>
                                    </ul>
                                </div>
                                <button class="btn_move_date prev" type="button" data-year="2021">
                                    <span class="blind">이전 달로 이동</span>
                                </button>
                                <button class="btn_move_date next" type="button" disabled="" data-year="">
                                    <span class="blind">다음 달로 이동</span>
                                </button>
                            </div>
                            <div class="now_date_area">
                                <button class="btn_now_date" type="button" id="_currentDate">현재<span class="blind">날짜로 이동</span></button>
                            </div>
                        </div>

                        <div class="schedule_month">
                            <ul class="list" role="tablist" aria-labelledby="month-list" id="_monthList">
                                <li role="tab" data-yearmonth="202208">
                                    <a href="#" class="_month_list_btn"> <span class="year">2022년</span> <span class="month">8월</span> </a>
                                </li>
                                <li role="tab" data-yearmonth="202209">
                                    <a href="#" class="_month_list_btn"> <span class="month">9월</span> </a>
                                </li>
                                <li role="tab" data-yearmonth="202210">
                                    <a href="#" class="_month_list_btn"> <span class="month">10월</span> </a>
                                </li>
                                <li role="tab" data-yearmonth="202211">
                                    <a href="#" class="_month_list_btn"> <span class="month">11월</span> </a>
                                </li>
                                <li role="tab" data-yearmonth="202212">
                                    <a href="#" class="_month_list_btn"> <span class="month">12월</span> </a>
                                </li>
                                <li role="tab" data-yearmonth="202301">
                                    <a href="#" class="_month_list_btn"> <span class="year">2023년</span> <span class="month">1월</span> </a>
                                </li>
                                <li role="tab" data-yearmonth="202302">
                                    <a href="#" class="_month_list_btn"> <span class="month">2월</span> </a>
                                </li>
                                <li role="tab" data-yearmonth="202303">
                                    <a href="#" class="_month_list_btn"> <span class="month">3월</span> </a>
                                </li>
                                <li role="tab" data-yearmonth="202304">
                                    <a href="#" class="_month_list_btn"> <span class="month">4월</span> </a>
                                </li>
                                <li role="tab" data-yearmonth="202305" aria-selected="true" class="selected">
                                    <a href="#" class="_month_list_btn"> <span class="month">5월</span> </a>
                                </li>
                            </ul>
                        </div>

                        <div class="schedule_month_table">
                            <table summary="월간 일정/결과" cellspacing="0">
                                <caption>
                                    월간 일정/결과
                                </caption>
                                <colgroup>
                                    <col class="col01" />
                                    <col class="col02" />
                                    <col class="col03" />
                                    <col class="col04" />
                                    <col class="col05" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="date" scope="col">날짜</th>
                                        <th class="time_place" scope="col">시간 장소</th>
                                        <th scope="col">경기</th>
                                        <th class="broadcast" scope="col">중계</th>
                                        <th class="game_content last" scope="col">경기내용</th>
                                    </tr>
                                </thead>
                                <tbody id="_monthlyScheduleList">
                                    <tr class="division">
                                        <th rowspan="1" scope="row">
                                            <div class="inner"><em>5.1</em> (월)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">04:00</span> <span class="place">${matches[0].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[0].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[0].hname}</span> <span class="score">${matches[0].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[0].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[0].ateam}</span> <span class="score">${matches[0].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[0].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[0].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="1" scope="row">
                                            <div class="inner"><em>5.2</em> (화)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">04:00</span> <span class="place">${matches[1].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[1].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[1].hname}</span> <span class="score">${matches[1].hscore}</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[1].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[1].ateam}</span> <span class="score">${matches[1].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[1].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="1" scope="row">
                                            <div class="inner"><em>5.3</em> (수)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">04:00</span> <span class="place">${matches[2].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[2].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[2].hname}</span> <span class="score">${matches[2].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[2].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[2].ateam}</span> <span class="score">${matches[2].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[2].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[2].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="2" scope="row">
                                            <div class="inner"><em>5.4</em> (목)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">04:00</span> <span class="place">${matches[3].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[3].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[3].hname}</span> <span class="score">${matches[3].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[3].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[3].ateam}</span> <span class="score">${matches[3].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[3].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">04:00</span> <span class="place">${matches[4].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[4].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[4].hname}</span> <span class="score">${matches[4].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[4].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[4].ateam}</span> <span class="score">${matches[4].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[4].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[4].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="1" scope="row">
                                            <div class="inner"><em>5.5</em> (금)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">04:00</span> <span class="place">${matches[5].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[5].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[5].hname}</span> <span class="score">${matches[5].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[5].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[5].ateam}</span> <span class="score">${matches[5].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[5].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[5].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="4" scope="row">
                                            <div class="inner"><em>5.6</em> (토)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[6].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[6].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[6].hname}</span> <span class="score">${matches[6].hscore}</span>
                                                </span>
                                                <span class="team_right winner">
                                                    <span class="emblem">
                                                        <img src="${matches[6].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[6].ateam}</span> <span class="score">${matches[6].ascore}</span> <span class="win">승리팀</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[6].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[7].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[7].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[7].hname}</span> <span class="score">${matches[7].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[7].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[7].ateam}</span> <span class="score">${matches[7].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[7].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[8].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[8].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[8].hname}</span> <span class="score">${matches[8].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[8].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[8].ateam}</span> <span class="score">${matches[8].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[8].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[8].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[9].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[9].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[9].hname}</span> <span class="score">${matches[9].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[9].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[9].ateam}</span> <span class="score">${matches[9].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[9].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="1" scope="row">
                                            <div class="inner"><em>5.7</em> (일)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">01:30</span> <span class="place">${matches[10].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[10].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[10].hname}</span> <span class="score">${matches[10].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[10].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[10].ateam}</span> <span class="score">${matches[10].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[10].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="3" scope="row">
                                            <div class="inner"><em>5.8</em> (월)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:30</span> <span class="place">${matches[11].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[11].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[11].hname}</span> <span class="score">${matches[11].hscore}</span>
                                                </span>
                                                <span class="team_right winner">
                                                    <span class="emblem">
                                                        <img src="${matches[11].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[11].ateam}</span> <span class="score">${matches[11].ascore}</span> <span class="win">승리팀</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[11].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">03:00</span> <span class="place">${matches[12].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[12].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[12].hname}</span> <span class="score">${matches[12].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[12].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[12].ateam}</span> <span class="score">${matches[12].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[12].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[12].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[13].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[13].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[13].hname}</span> <span class="score">${matches[13].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[13].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[13].ateam}</span> <span class="score">${matches[13].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[13].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="2" scope="row">
                                            <div class="inner"><em>5.9</em> (화)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">01:30</span> <span class="place">${matches[14].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[14].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[14].hname}</span> <span class="score">${matches[14].hscore}</span>
                                                </span>
                                                <span class="team_right winner">
                                                    <span class="emblem">
                                                        <img src="${matches[14].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[14].ateam}</span> <span class="score">${matches[14].ascore}</span> <span class="win">승리팀</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[14].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">04:00</span> <span class="place">${matches[15].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[15].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[15].hname}</span> <span class="score">${matches[15].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[15].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[15].ateam}</span> <span class="score">${matches[15].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[15].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th scope="row">
                                            <div class="inner empty"><em>5.10</em> (수)</div>
                                        </th>
                                        <td colspan="4" class="last">
                                            <div class="inner empty">
                                                <span>경기가 없습니다.</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <div class="inner empty"><em>5.11</em> (목)</div>
                                        </th>
                                        <td colspan="4" class="last">
                                            <div class="inner empty">
                                                <span>경기가 없습니다.</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <div class="inner empty"><em>5.12</em> (금)</div>
                                        </th>
                                        <td colspan="4" class="last">
                                            <div class="inner empty">
                                                <span>경기가 없습니다.</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="6" scope="row">
                                            <div class="inner"><em>5.13</em> (토)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">20:30</span> <span class="place">${matches[16].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[16].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[16].hname}</span> <span class="score">${matches[16].hscore}</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[16].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[16].ateam}</span> <span class="score">${matches[16].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[16].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[17].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[17].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[17].hname}</span> <span class="score">${matches[17].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[17].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[17].ateam}</span> <span class="score">${matches[17].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[17].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[17].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[18].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[18].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[18].hname}</span> <span class="score">${matches[18].hscore}</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[18].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[18].ateam}</span> <span class="score">${matches[18].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[18].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[19].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[19].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[19].hname}</span> <span class="score">${matches[19].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[19].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[19].ateam}</span> <span class="score">${matches[19].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[19].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[20].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[20].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[20].hname}</span> <span class="score">${matches[20].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[20].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[20].ateam}</span> <span class="score">${matches[20].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[20].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[20].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[21].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[21].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[21].hname}</span> <span class="score">${matches[21].hscore}</span>
                                                </span>
                                                <span class="team_right winner">
                                                    <span class="emblem">
                                                        <img src="${matches[21].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[21].ateam}</span> <span class="score">${matches[21].ascore}</span> <span class="win">승리팀</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[21].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="2" scope="row">
                                            <div class="inner"><em>5.14</em> (일)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">22:00</span> <span class="place">${matches[22].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[22].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[22].hname}</span> <span class="score">${matches[22].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[22].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[22].ateam}</span> <span class="score">${matches[22].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[22].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">22:00</span> <span class="place">${matches[23].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[23].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[23].hname}</span> <span class="score">${matches[23].hscore}</span>
                                                </span>
                                                <span class="team_right winner">
                                                    <span class="emblem">
                                                        <img src="${matches[23].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[23].ateam}</span> <span class="score">${matches[23].ascore}</span> <span class="win">승리팀</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[23].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[23].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="1" scope="row">
                                            <div class="inner"><em>5.15</em> (월)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:30</span> <span class="place">${matches[24].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[24].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[24].hname}</span> <span class="score">${matches[24].hscore}</span>
                                                </span>
                                                <span class="team_right winner">
                                                    <span class="emblem">
                                                        <img src="${matches[24].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[24].ateam}</span> <span class="score">${matches[24].ascore}</span> <span class="win">승리팀</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[24].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[24].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="1" scope="row">
                                            <div class="inner"><em>5.16</em> (화)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">04:00</span> <span class="place">${matches[25].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[25].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[25].hname}</span> <span class="score">${matches[25].hscore}</span>
                                                </span>
                                                <span class="team_right winner">
                                                    <span class="emblem">
                                                        <img src="${matches[25].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[25].ateam}</span> <span class="score">${matches[25].ascore}</span> <span class="win">승리팀</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[25].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th scope="row">
                                            <div class="inner empty"><em>5.17</em> (수)</div>
                                        </th>
                                        <td colspan="4" class="last">
                                            <div class="inner empty">
                                                <span>경기가 없습니다.</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <div class="inner empty"><em>5.18</em> (목)</div>
                                        </th>
                                        <td colspan="4" class="last">
                                            <div class="inner empty">
                                                <span>경기가 없습니다.</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="1" scope="row">
                                            <div class="inner"><em>5.19</em> (금)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">03:30</span> <span class="place">${matches[26].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[26].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[26].hname}</span> <span class="score">${matches[26].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[26].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[26].ateam}</span> <span class="score">${matches[26].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[26].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="5" scope="row">
                                            <div class="inner"><em>5.20</em> (토)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">20:30</span> <span class="place">${matches[27].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[27].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[27].hname}</span> <span class="score">${matches[27].hscore}</span>
                                                </span>
                                                <span class="team_right winner">
                                                    <span class="emblem">
                                                        <img src="${matches[27].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[27].ateam}</span> <span class="score">${matches[27].ascore}</span> <span class="win">승리팀</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[27].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[27].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[28].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[28].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[28].hname}</span> <span class="score">${matches[28].hscore}</span>
                                                </span>
                                                <span class="team_right winner">
                                                    <span class="emblem">
                                                        <img src="${matches[28].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[28].ateam}</span> <span class="score">${matches[28].ascore}</span> <span class="win">승리팀</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[28].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[29].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[29].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[29].hname}</span> <span class="score">${matches[29].hscore}</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[29].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[29].ateam}</span> <span class="score">${matches[29].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[29].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[30].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[30].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[30].hname}</span> <span class="score">${matches[30].hscore}</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[30].ateam_logo }" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[30].ateam}</span> <span class="score">${matches[30].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[30].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[30].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">23:00</span> <span class="place">${matches[31].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[31].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[31].hname}</span> <span class="score">${matches[31].hscore}</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[31].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[31].ateam}</span> <span class="score">${matches[31].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[31].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[31].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="3" scope="row">
                                            <div class="inner"><em>5.21</em> (일)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">01:30</span> <span class="place">${matches[32].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[32].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[32].hname}</span> <span class="score">${matches[32].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[32].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[32].ateam}</span> <span class="score">${matches[32].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[32].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[32].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">21:30</span> <span class="place">${matches[33].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[33].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[33].hname}</span> <span class="score">${matches[33].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[33].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[33].ateam}</span> <span class="score">${matches[33].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[33].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">22:00</span> <span class="place">${matches[34].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[34].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[34].hname}</span> <span class="score">${matches[34].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[34].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[34].ateam}</span> <span class="score">${matches[34].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[34].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[34].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="1" scope="row">
                                            <div class="inner"><em>5.22</em> (월)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:00</span> <span class="place">${matches[35].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[35].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[35].hname}</span> <span class="score">${matches[35].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[35].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[35].ateam}</span> <span class="score">${matches[35].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[35].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[35].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="1" scope="row">
                                            <div class="inner"><em>5.23</em> (화)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">04:00</span> <span class="place">${matches[36].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[36].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[36].hname}</span> <span class="score">${matches[36].hscore}</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[36].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[36].ateam}</span> <span class="score">${matches[36].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[36].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th scope="row">
                                            <div class="inner empty"><em>5.24</em> (수)</div>
                                        </th>
                                        <td colspan="4" class="last">
                                            <div class="inner empty">
                                                <span>경기가 없습니다.</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="1" scope="row">
                                            <div class="inner"><em>5.25</em> (목)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">04:00</span> <span class="place">${matches[37].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[37].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[37].hname}</span> <span class="score">${matches[37].hscore}</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[37].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[37].ateam}</span> <span class="score">${matches[37].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[37].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="1" scope="row">
                                            <div class="inner"><em>5.26</em> (금)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">04:00</span> <span class="place">${matches[38].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[38].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[38].hname}</span> <span class="score">${matches[38].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[38].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[38].ateam}</span> <span class="score">${matches[38].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[38].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[38].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th scope="row">
                                            <div class="inner empty"><em>5.27</em> (토)</div>
                                        </th>
                                        <td colspan="4" class="last">
                                            <div class="inner empty">
                                                <span>경기가 없습니다.</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <div class="inner empty"><em>5.28</em> (일)</div>
                                        </th>
                                        <td colspan="4" class="last">
                                            <div class="inner empty">
                                                <span>경기가 없습니다.</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th rowspan="10" scope="row">
                                            <div class="inner"><em>5.29</em> (월)</div>
                                        </th>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:30</span> <span class="place">${matches[39].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[39].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[39].hname}</span> <span class="score">${matches[39].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[39].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[39].ateam}</span> <span class="score">${matches[39].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[39].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:30</span> <span class="place">${matches[40].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[40].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[40].hname}</span> <span class="score">${matches[40].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[40].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[40].ateam}</span> <span class="score">${matches[40].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[40].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:30</span> <span class="place">${matches[41].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[41].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[41].hname}</span> <span class="score">${matches[41].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[41].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[41].ateam}</span> <span class="score">${matches[41].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[41].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:30</span> <span class="place">${matches[42].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[42].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[42].hname}</span> <span class="score">${matches[42].hscore}</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[42].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[42].ateam}</span> <span class="score">${matches[42].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[42].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:30</span> <span class="place">${matches[43].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[43].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[43].hname}</span> <span class="score">${matches[43].hscore}</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[43].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[43].ateam}</span> <span class="score">${matches[43].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[43].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:30</span> <span class="place">${matches[44].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[44].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[44].hname}</span> <span class="score">${matches[44].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[44].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[44].ateam}</span> <span class="score">${matches[44].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[44].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:30</span> <span class="place">${matches[45].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[45].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[45].hname}</span> <span class="score">${matches[45].hscore}</span>
                                                </span>
                                                <span class="team_right winner">
                                                    <span class="emblem">
                                                        <img src="${matches[45].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[45].ateam}</span> <span class="score">${matches[45].ascore}</span> <span class="win">승리팀</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[45].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                                <a
                                                    href="${matches[45].vlink}"
                                                    class="btn"
                                                    onclick="clickcr(this, 'sch*b.epllive', '', '', event);"
                                                >
                                                    경기영상
                                                </a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:30</span> <span class="place">${matches[46].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[46].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[46].hname}</span> <span class="score">${matches[46].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[46].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[46].ateam}</span> <span class="score">${matches[46].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[46].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:30</span> <span class="place">${matches[47].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left winner">
                                                    <span class="emblem">
                                                        <img src="${matches[47].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[47].hname}</span> <span class="score">${matches[47].hscore}</span> <span class="win">승리팀</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[47].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[47].ateam}</span> <span class="score">${matches[47].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[47].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="time_place">
                                            <div class="inner"><span class="time">00:30</span> <span class="place">${matches[48].location}</span></div>
                                        </td>
                                        <td>
                                            <div class="inner">
                                                <span class="team_left">
                                                    <span class="emblem">
                                                        <img src="${matches[48].hname_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[48].hname}</span> <span class="score">${matches[48].hscore}</span>
                                                </span>
                                                <span class="team_right">
                                                    <span class="emblem">
                                                        <img src="${matches[48].ateam_logo}" width="25" height="25" onerror="imageOnError(this);" />
                                                    </span>

                                                    <span class="name">${matches[48].ateam}</span> <span class="score">${matches[48].ascore}</span>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="broadcast">
                                            <div class="inner">
                                                <a href="${matches[48].mlink}" class="btn" onclick="clickcr(this, 'sch*b.eplwar', '', '', event);">경기기록</a>
                                            </div>
                                        </td>

                                        <td class="game_content last">
                                            <div class="inner">
                                                <span>FT</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="division">
                                        <th scope="row">
                                            <div class="inner empty"><em>5.30</em> (화)</div>
                                        </th>
                                        <td colspan="4" class="last">
                                            <div class="inner empty">
                                                <span>경기가 없습니다.</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <div class="inner empty"><em>5.31</em> (수)</div>
                                        </th>
                                        <td colspan="4" class="last">
                                            <div class="inner empty">
                                                <span>경기가 없습니다.</span>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                
            
                 
                    </div>
                  
                    <div class="schedule_info">
                        네이버 스포츠에서 제공하는 일정, 결과, 기록 등의 데이터는 '제공처'의 사정에 따라 지연되거나 잘못 표시될 수 있습니다.<br />
                        네이버(주)는 그에 따른 스포츠 데이터의 정확성 및 신뢰성을 담보하지 않습니다. 궁금하신 사항은 <a href="https://help.naver.com/support/alias/contents2/sports/sports_5.naver" target="_blank" class="link">고객센터</a>를
                        통해서 문의해주시기 바랍니다.
                    </div>

                    <div class="quick_top">
                        <a href="#">맨위로<span class="ico"></span></a>
                    </div>
                </div>

                <script id="_seasonTitleTemplate" type="text/x-handlebars-template"></script>

                <script id="_dateListTemplate" type="text/x-handlebars-template"></script>

                <script id="_scoreboardListTemplate" type="text/x-handlebars-template"></script>

                <script id="_pageListTemplate" type="text/x-handlebars-template"></script>

                <script id="_monthListTemplate" type="text/x-handlebars-template"></script>

                <script id="_phaseListTemplate" type="text/x-handlebars-template"></script>

                <script id="_monthlyScheduleListTemplate" type="text/x-handlebars-template"></script>

                <script id="_seasonListTemplate" type="text/x-handlebars-template"></script>

                <script id="_yearMonthListTemplate" type="text/x-handlebars-template"></script>

                <script id="_tournamentNavTabTemplate" type="text/x-handlebars-template"></script>

                <script id="_ruleInfoTemplate" type="text/x-handlebars-template"></script>

                <script id="_groupTabTemplate" type="text/x-handlebars-template"></script>

                <script id="_groupRankingListTemplate" type="text/x-handlebars-template"></script>

                <script id="_tournamentBracketTemplate" type="text/x-handlebars-template"></script>

                <script></script>

                <script id="_wfootballSeasonListTemplate" type="text/x-handlebars-template"></script>
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
                                 <a href="https://www.naver.com/more.html" class="link sitemap">전체서비스</a>
                                <a target="_blank" onclick="OPS.viewOPS('ops', {url : 'https://help.naver.com/alias/contents2/sports/sports_2.naver'}); clickcr(this, 'fot.shelp', '', '', event); return false;" href="#" class="link">
                                    
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
            <script></script>

            <script></script>
        </div>
        <script></script>

        <script></script>
    </body>
</html>
