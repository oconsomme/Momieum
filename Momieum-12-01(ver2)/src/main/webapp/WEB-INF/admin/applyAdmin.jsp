<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />  
    
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${cpath}/resources/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- fullCalendar -->
  <link rel="stylesheet" href="${cpath}/resources/admin/plugins/fullcalendar/main.css">
    
  <!-- Theme style -->
  <link rel="stylesheet" href="${cpath}/resources/admin/dist/css/adminlte.min.css">
  
  
</head>
<body class="hold-transition sidebar-mini">

<!-- 헤더 페이지 -->
<jsp:include page="./headerAdmin.jsp" flush="false"></jsp:include>







  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>상담신청관리</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">상담신청관리</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">
            <div class="sticky-top mb-3">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">예약현황</h4>
                </div>
                <div class="card-body">
                  <!-- the events -->
                  <div id="external-events">
                    <div class="external-event bg-success">예약요청내역</div>
                    <div class="external-event bg-warning">
                    	
                    	
                    	<!-- 상담신청내역 -->
                    	<c:if test="${!empty tbConsultListAll}">
						  <c:forEach var="vo" items="${tbConsultListAll}" varStatus="i">
						    <div class="external-event bg-warning">
						      <input type="checkbox" class="checkbox-item" id="drop-remove-${i.index}">
						      <label for="drop-remove-${i.index}">${vo.consultDate} (${vo.consultName})</label>
						    </div>
						  </c:forEach>
						</c:if>
                    	<!--  -->
                    	
                    </div>
                    <div class="external-event bg-info">예약보류내역</div>
                    <div class="external-event bg-warning">
                    
                    </div>
                    
                    
                    <div class="external-event bg-primary">예약승인내역</div>
                    <div class="external-event bg-warning" id="target-location">
                    
                    </div>
                    
                    
                    
                    <div class="checkbox">
                      <label for="drop-remove">
                        
                      </label>
                    </div>
                  </div>
                <div class="input-group-append">
				    <button id="add-new-event" type="button" class="btn btn-primary ml-auto">저장</button>
				</div>
                
              </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">예약정보 검색</h3>
                </div>
                <div class="card-body">
                  <div class="btn-group" style="width: 100%; margin-bottom: 10px;">
                    <ul class="fc-color-picker" id="color-chooser">
                      <li><a class="text-primary" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-warning" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-success" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-danger" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-muted" href="#"><i class="fas fa-square"></i></a></li>
                    </ul>
                  </div>
                  <!-- /btn-group -->
                  <div class="input-group">
                    <input id="new-event" type="text" class="form-control" placeholder="회원 정보를 검색하세요">

                    <div class="input-group-append">
                      <button id="add-new-event" type="button" class="btn btn-primary">검색</button>
                    </div>
                    <!-- /btn-group -->
                  </div>
                  <!-- /input-group -->
                </div>
              </div>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card card-primary">
              <div class="card-body p-0">
                <!-- THE CALENDAR -->
                <div id="calendar"></div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

    
    
  </div>
  <!-- /.content-wrapper -->



 <!-- 푸터 페이지 -->
<jsp:include page="./footerAdmin.jsp" flush="false"></jsp:include>  





<!-- jQuery -->
<script src="${cpath}/resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${cpath}/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- jQuery UI -->
<script src="${cpath}/resources/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- AdminLTE App -->
<script src="${cpath}/resources/admin/dist/js/adminlte.min.js"></script>
<!-- fullCalendar 2.2.5 -->
<script src="${cpath}/resources/admin/plugins/moment/moment.min.js"></script>
<script src="${cpath}/resources/admin/plugins/fullcalendar/main.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${cpath}/resources/admin/dist/js/demo.js"></script>
<!-- Page specific script -->


<script>
  $(function () {
    /* initialize the external events */
    function ini_events(ele) {
      ele.each(function () {
        var eventObject = {
          title: $.trim($(this).text())
        };

        $(this).data('eventObject', eventObject);

        $(this).draggable({
          zIndex: 1070,
          revert: true,
          revertDuration: 0
        });
      });
    }

    ini_events($('#external-events div.external-event'));

    /* initialize the calendar */
    var date = new Date();
    var d = date.getDate(),
      m = date.getMonth(),
      y = date.getFullYear();

    var Calendar = FullCalendar.Calendar;
    var Draggable = FullCalendar.Draggable;

    var containerEl = document.getElementById('external-events');
    var checkbox = document.getElementById('drop-remove');
    var calendarEl = document.getElementById('calendar');

    new Draggable(containerEl, {
      itemSelector: '.external-event',
      eventData: function (eventEl) {
        return {
          title: eventEl.innerText,
          backgroundColor: window.getComputedStyle(eventEl, null).getPropertyValue('background-color'),
          borderColor: window.getComputedStyle(eventEl, null).getPropertyValue('background-color'),
          textColor: window.getComputedStyle(eventEl, null).getPropertyValue('color'),
        };
      },
    });

    var eventsArray = [];

    /* Populate events from tbConsultListAll */
    <c:forEach var="vo" items="${tbConsultListAll}" varStatus="i">
      eventsArray.push({
        title: '${vo.consultName}',
        start: new Date('${vo.consultDate}'),
        backgroundColor: '#3c8dbc', // You can set your desired color here
        borderColor: '#3c8dbc', // Same color as backgroundColor
        allDay: true
      });
    </c:forEach>

    var calendar = new Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay',
      },
      themeSystem: 'bootstrap',
      events: eventsArray,
      editable: true,
      droppable: true,
      drop: function (info) {
        if (checkbox.checked) {
          info.draggedEl.parentNode.removeChild(info.draggedEl);
        }
      },
    });

    calendar.render();

    var currColor = '#3c8dbc'; // Red by default

    $('#color-chooser > li > a').click(function (e) {
      e.preventDefault();
      currColor = $(this).css('color');
      $('#add-new-event').css({
        'background-color': currColor,
        'border-color': currColor,
      });
    });

    $('#add-new-event').click(function (e) {
      e.preventDefault();
      var val = $('#new-event').val();
      if (val.length == 0) {
        return;
      }

      var event = $('<div />');
      event.css({
        'background-color': currColor,
        'border-color': currColor,
        'color': '#fff',
      }).addClass('external-event');
      event.text(val);
      $('#external-events').prepend(event);

      ini_events(event);

      $('#new-event').val('');
    });
    
    $('#external-events').on('change', 'input[type="checkbox"]', function () {
        // 체크된 체크박스의 부모 컨테이너 가져오기
        var parentContainer = $(this).parent();

        // 부모 컨테이너의 ID에서 고유한 식별자 추출
        var identifier = parentContainer.attr('id');

        // 대상 위치에 이미 해당 식별자를 가진 요소가 있는지 확인
        if ($('#target-location').find('#' + identifier).length === 0) {
          // 체크된 체크박스의 부모 컨테이너를 복제하기
          var clonedContainer = parentContainer.clone();

          // 복제된 컨테이너의 ID를 식별자로 설정
          clonedContainer.attr('id', identifier);

          // 복제된 컨테이너를 대상 위치에 추가하기
          $('#target-location').append(clonedContainer);

          // 선택된 체크박스의 부모 컨테이너 삭제 (선택 사항)
          parentContainer.remove();
        }
      });

    
  });
</script>

</body>
</html>
