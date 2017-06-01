<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link media="all" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css" />
<link media="all" rel="stylesheet" type="text/css" href="https://stillres.olympic.org/css/modules.css" />

</head>
<body>
<div class="results-box">
    <div class="holder">
            <h1>Pro Travel</h1>
            <div class="tab-gallery">
                <ul class="tabset">
                    <li class="active"><a href="#">Login</a></li>
                    <li><a href="#">Find Info</a></li>
                </ul>

                <div class="tab-content">
                    <div class="tab-slider">
                        <div class="tab-section">
                            <form id="results-form" action="javascript:redirectFromGames()" class="results-form">
                                <div class="row">
                                    <select id="sel-games" class="ajax-select" title="Games">
                                        <option class="default">아이디를 입력하세요</option>
		
                                    </select>
                                    <input type="text" value="아이디를 입력하세요" id="login-box">
                                    <span class="txt" onclick="">한글</span> <span class="txt">English</span>
                                </div>
                                <div class="row">
                                    <select id="sel-disc" class="ajax-select" title="Sports">
                                        <option selected="selected">비밀번호를 입력하세요</option>
                                    </select>
                                    <span class="txt">* Required</span>
                                </div>
                                <div class="row">
                                    <select id="sel-evt" class="ajax-select" title="Events" disabled="disabled">
                                        <option>Events</option>
                                    </select>
                                    <span class="txt">* Optional</span>
                                </div>
                                <div class="row">
                                    <input type="submit" value="Results" />
                                    <input type="reset" value="Clear" />
                                </div>
                            </form>
                        </div>
                        <div class="tab-section">
                            <form id="results-form" action="javascript:redirectFromDisc()" class="results-form">
                                <div class="row">
                                    <select id="sel-disc-s" class="ajax-select" title="Sports">
                                        <option class="default">Sports</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{97E99010-5C26-46FA-872A-9F1242B653D8}">Alpine Skiing</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{24D2F6E9-A281-4119-82C7-D245F073777B}">Archery</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{4C3F24E3-518F-4C1B-B849-563F0DDBF508}">Athletics</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{2C549E1D-1A0A-4CC0-98E8-1EEF09CD3C61}">Badminton</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{4E92EFA0-DC84-4503-91DB-4EFE4B114C06}">Basketball</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{6D96E322-E654-4D68-B47D-D0E5E7015AA1}">Beach Volleyball</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{C96EBA33-4C36-4D99-BF36-1857B16134D0}">Biathlon</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{5972CDBD-8027-4BDE-887F-B824FEF7B1B8}">Bobsleigh</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{23950438-E824-40CD-8E13-E348B1F38F1D}">Boxing</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{56C4FC73-150C-45C4-B5A8-493C8483AD1C}">Canoe Slalom</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{A3CC30EA-82BE-482F-B269-1909A1147388}">Canoe Sprint</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{959ACFE0-00F2-4454-B879-935B893645B2}">Cross Country Skiing</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{286DBB0D-7AF9-4983-877F-AEC2198B9676}">Curling</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{F7D3367A-5627-4481-86DC-E6EC380727CD}">Cycling BMX</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{485258B9-4D03-4182-A544-C471E55CF60D}">Cycling Mountain Bike</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{A5D0C350-0887-4058-8527-DB765D9D43BE}">Cycling Road</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{86488CDA-E9A4-4061-A483-A67D75794477}">Cycling Track</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{C2C5B082-3A09-4221-B8B5-7B781C96E193}">Diving</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{1AF14650-D9A1-41EB-BC74-89B202FB5F83}">Equestrian / Dressage</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{B8D9DDF2-A6B4-4E2C-9D46-19E246687887}">Equestrian Eventing</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{59666D2F-9B55-430D-B741-F6F72D76101D}">Equestrian Jumping</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{AAEB3F0A-14AE-45EC-9638-F041727CF16B}">Fencing</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{6780872E-EDE3-420F-A60B-0F0043A84400}">Figure skating</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{4DD55373-FAA6-43B0-884C-ED067FD82996}">Football</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{328B8DC9-8DD4-4791-9B1A-47B9FE0CF9FA}">Freestyle Skiing</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{631FC00C-F3F4-4CFA-BFC3-48CB73CD2905}">Golf</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{5C8314EC-7970-4381-B8EB-BF41C2EFF325}">Gymnastics Artistic</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{37E53DD8-6488-48B2-AF09-AAB981E644CD}">Gymnastics Rhythmic</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{0368CB57-255C-4E00-8A95-58503FDEB211}">Handball</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{6E01B17D-465C-417F-A231-D2A2A93EA59D}">Hockey</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{ADAAE5F1-E02D-4ED1-B937-28EC263F8AEA}">Ice Hockey</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{92048482-0C45-4BB1-80B9-6315155260EE}">Judo</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{9D5037CB-EAC3-4C43-ACD6-F0C9BD1B96DC}">Luge</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{0211801D-556A-4A1D-AE48-85A8FBFADDFC}">Marathon Swimming</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{CA2E4BEB-FE2C-4A78-8EEF-B0D1D3789CB3}">Modern Pentathlon</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{590A8818-AF1B-485A-83A6-DA24A7F19212}">Nordic Combined</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{36AB23EA-9963-46A2-92D8-173BC248E4DD}">Rowing</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{08C3740C-37B5-4655-AEFA-2F0792F8B48E}">Rugby</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{E85E0A53-75E8-4163-B0BD-CD7C9C365C32}">Sailing</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{582BA162-7A9C-4314-A430-457F06A166D6}">Shooting</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{A1950476-FDAA-4BA3-9AD5-9E2067A17791}">Short Track Speed Skating</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{8DCA27AD-4058-4B5B-AED3-7F22937026F4}">Skeleton</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{3E3CA944-F822-44FA-89E9-EB2615D34F54}">Ski Jumping</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{DA273F37-D155-4BCA-8894-5A8B89F1E2F0}">Snowboard</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{AE60CF08-5FA3-43B7-AE2F-B764E64C8BD3}">Speed skating</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{A1A35BA1-48BB-4ACD-B753-500D7FF1B1FD}">Swimming</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{F9BDE5B0-567E-4BD5-8DD1-EA5FE2C55B2D}">Synchronized Swimming</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{2C3C9292-601C-47D2-9218-DA189DFF14E8}">Table Tennis</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{B6DBD74E-6EED-45DF-8042-53F1EA0132D9}">Taekwondo</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{16B04B32-286C-47E2-837A-E30772E7FCBB}">Tennis</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{52638C98-4FBD-4743-8CCF-7D98FC8DB36B}">Trampoline</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{7A74C874-EB46-44CF-82B3-3C575BEFE720}">Triathlon</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{340A9BD4-976A-4AE5-AD2C-910DEA7FEB99}">Volleyball</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{4988E32F-8927-4F9A-8E05-F774E44D21E3}">Water Polo</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{52E4B05F-A04B-4147-A588-A1168164D023}">Weightlifting</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{E4265AFC-C454-4341-BF1B-29CE7A25DE8F}">Wrestling Freestyle</option>
                                            <option data-url="/ajaxscript/geteventsbysport/{6DECDD44-6BB0-4184-8C93-7F51BB33056C}">Wrestling Greco-Roman</option>
                                    </select>
                                    <span class="txt">* Required</span>
                                </div>
                                <div class="row">
                                    <select id="sel-evt-s" class="ajax-select" title="Events" disabled="disabled">
                                        <option>Events</option>
                                    </select>
                                    <span class="txt">* Required</span>
                                </div>
                                <div class="row">
                                    <select id="sel-games-s" class="ajax-select" title="Games" disabled="disabled">
                                        <option class="default">Games</option>
                                    </select>
                                    <span class="txt">* Optional</span>
                                </div>
                                <div class="row">
                                    <input type="submit" value="Results" />
                                    <input type="reset" value="Clear" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   </div>>
</body>
</html>