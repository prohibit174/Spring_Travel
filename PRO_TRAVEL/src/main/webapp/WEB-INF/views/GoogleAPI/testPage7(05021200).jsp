<!DOCTYPE html>
<html>
  <head>
<link rel='stylesheet' href='fullcalendar.css' />
<script src='lib/jquery.min.js'></script>
<script src='lib/moment.min.js'></script>
<!-- <script src='jquery-ui.js'></script>
<script src='jquery-ui.min.js'></script> -->
<script src='fullcalendar.js'></script>

    <style>
       #map {
        height: 400px;
        width: 45%;
       }
       #calendar {
        height:600px;
        width: 45%;
       }
    </style>
  </head>
  
  <body>
    <div id="map"></div>
    <div id='calendar'></div>
    
    <script>
       var markerPosition;   
       var marker_zoom4=[];
       var marker_zoom5=[];
       latLngList = [];
       susDay = null;
       susEnd = null;
       var allEvent=[];
       var jsonEncode;
       var obj;
       var map;
       var cal =[];
       var movingPath = [];
     	 var c = 0;
       
     	function collectEventForLine(map){
            if(cal != null){
              cal = $('#calendar').fullCalendar( 'clientEvents');
             cal.sort(function(a,b){
               return a.start < b.start ? -1 : a.start > b.start ? 1 : 0;  
                         });
            }else{
               cal = $('#calendar').fullCalendar( 'clientEvents');
            }
               if(cal.length > 0){
              latLngList.splice(0, latLngList.length);
               for(var i=0; i < cal.length; i++){
                  for(var a=0; a < marker_zoom4.length; a++){
                     if(marker_zoom4[a].title == cal[i].title){
                        latLngList.push(marker_zoom4[a].getPosition());
                     }
                   }
                  for(var a=0; a < marker_zoom5.length; a++){
                     if(marker_zoom5[a].title == cal[i].title){
                        latLngList.push(marker_zoom5[a].getPosition());
                     }
                   }
               }
                createLine(latLngList, map);
                
               /*  collectEvent();
                jsonEncode = JSON.stringify(allEvent);
                obj.value = jsonEncode;  */
               }
              
           };  //collectEventForLine End 
     	 
           function collectEvent(){
               var cal=[];
               cal=$('#calendar').fullCalendar( 'clientEvents');
               
               for(var i=0;i<cal.length;i++){
                
                   var valDate = cal[i].start.format("YYYY-MM-DD");
                        var sdate = new moment(cal[i].start).format("YYYY-MM-DD");

                        var newDate = moment(sdate);
                        var edate = new moment(cal[i].end).format("YYYY-MM-DD");
                        var newEndDate = moment(edate);
                        
                        var duration = moment.duration(newDate.diff(newEndDate));   //차� �� 
                       var durationdays = (-duration.asDays());      //차� ��  � ��  �  � � � ��  
                       
                        for(var a=0; a < durationdays;a++){
                          allEvent.push(new storeEvent(0 ,cal[i].title, moment(valDate).format("YYYY-MM-DD")));
                          valDate = new moment(valDate).add(1, 'days');
                        }  //event store in arry
                  }//event store in var End
             /*   for(var b=0; b < allEvent.length; b++){
                  alert(allEvent[b].title + allEvent[b].eventdate);
               } */
               jsonEncode = JSON.stringify(allEvent);
               obj.value = jsonEncode;
                  
           } //collectEvent method End
       
       function storeEvent (id ,title, eventdate) {
          this.id = id;
          this.title = title;
          this.eventdate = eventdate;
       }
       
        function LongDateToShortDate(longDate){
           //alert('LongDateToShortDate - longDate : '+longDate);
            var todayYear= longDate.getFullYear();
            longDate.setDate(longDate.getDate()+1);
            var todayMonth= longDate.getMonth()+1;

               var todayday= longDate.getDate();
               if(todayMonth<10)
               {
                  todayMonth='0'+todayMonth;   
               }
               if(todayday<10)
               {
               todayday='0'+todayday;   
               }
         
               longDate=String(todayYear+'-'+todayMonth+'-'+todayday);
               shortDate=longDate;
               //alert('LongDateToShortDate - shortDate : '+shortDate);
               return shortDate;
         }
         
          function ShortDateToLongDate(shortDate){
           //   alert('ShortDateToLongDate - shortDate : '+shortDate);
            tempDate=new Date();
            var temp=String(shortDate);
            var strArr=temp.split('-');
            tempDate.setFullYear(strArr[0]);
            tempDate.setMonth(strArr[1]-1);
            tempDate.setDate(strArr[2]);

            var LongDate=tempDate;
           // alert('ShortDateToLongDate - LongDate : '+LongDate);
            return LongDate;
         } 
          
       
     /* Calendar ê´ë ¨ ë³ì */  
      var todayDate = new Date(); //íì¬ ë ì§
      var currentDate=new Date();      
      
      var calEventColor=[];
      calEventColor=["#CEFFC7","#FFFF5A","#D7FF6C","#FFD6FD","#B5B2FF", "#B6FFFF", "FFEDA2", "notReachable"];
      var indexOfCalEventColor=0;
      function nextEventColor(){
         if(indexOfCalEventColor==calEventColor.length-1)
            indexOfCalEventColor=0;
         return calEventColor[indexOfCalEventColor++]; 
      }
      
      
      function initMap() {
       // when zoom is 4, present location of france, belgium, germany, swiss.
        var franceLocation = {lat: 48.856667, lng: 2.350833};
        var belgiumLocation = {lat: 50.85, lng: 4.35};
        var germanyLocation = {lat: 52.500556, lng: 13.398889};
        var swissLocation = {lat: 46.95, lng: 7.45};
        
        // when zoom is 5, present marker of location of below cities.
        var parisLocation = {lat: 48.856667, lng: 2.350833};
        var niceLocation = {lat: 43.703333, lng: 7.266389};
        var brusselsLocation = {lat: 50.85, lng: 4.35};
        var berlinLocation = {lat: 52.518611, lng: 13.408056};
        var munichLocation = {lat: 48.133333, lng: 11.566667};
        var bernLocation = {lat: 46.95, lng: 7.45};
        var zurichLocation = {lat: 47.366667, lng: 8.55};
        
         marker_zoom4[0] = new google.maps.Marker({//ÃÂ«ÃÂ§Ã ÃÂ¬ÃÂ»ÃÂ¤ÃÂ«ÃÂ¥ÃÂ¼ uluruÃÂ¬Ã Ã  ÃÂ¬ÃÂ°Ã ÃÂ¬Ã Ã 
            position: franceLocation,
            map: map,
            title:'France'
          });
       marker_zoom4[1] = new google.maps.Marker({//ÃÂ«ÃÂ§Ã ÃÂ¬ÃÂ»ÃÂ¤ÃÂ«ÃÂ¥ÃÂ¼ uluruÃÂ¬Ã Ã  ÃÂ¬ÃÂ°Ã ÃÂ¬Ã Ã 
            position: belgiumLocation,
            map: map,
            title:'Belguim'
          });
       marker_zoom4[2] = new google.maps.Marker({//ÃÂ«ÃÂ§Ã ÃÂ¬ÃÂ»ÃÂ¤ÃÂ«ÃÂ¥ÃÂ¼ uluruÃÂ¬Ã Ã  ÃÂ¬ÃÂ°Ã ÃÂ¬Ã Ã 
            position: germanyLocation,
            map: map,
            title:'Germany'
          });
       marker_zoom4[3] = new google.maps.Marker({//ÃÂ«ÃÂ§Ã ÃÂ¬ÃÂ»ÃÂ¤ÃÂ«ÃÂ¥ÃÂ¼ uluruÃÂ¬Ã Ã  ÃÂ¬ÃÂ°Ã ÃÂ¬Ã Ã 
            position: swissLocation,
            map: map,
            title:'Swiss'
         });
       
        marker_zoom5[0] = new google.maps.Marker({//ÃÂ«ÃÂ§Ã ÃÂ¬ÃÂ»ÃÂ¤ÃÂ«ÃÂ¥ÃÂ¼ uluruÃÂ¬Ã Ã  ÃÂ¬ÃÂ°Ã ÃÂ¬Ã Ã 
            position: parisLocation,
            map: map,
            title:'Paris'
          });
       marker_zoom5[1] = new google.maps.Marker({//ÃÂ«ÃÂ§Ã ÃÂ¬ÃÂ»ÃÂ¤ÃÂ«ÃÂ¥ÃÂ¼ uluruÃÂ¬Ã Ã  ÃÂ¬ÃÂ°Ã ÃÂ¬Ã Ã 
            position: niceLocation,
            map: map,
            title:'Nice'
          });
       marker_zoom5[2] = new google.maps.Marker({//ÃÂ«ÃÂ§Ã ÃÂ¬ÃÂ»ÃÂ¤ÃÂ«ÃÂ¥ÃÂ¼ uluruÃÂ¬Ã Ã  ÃÂ¬ÃÂ°Ã ÃÂ¬Ã Ã 
            position: brusselsLocation,
            map: map,
            title:'Brussels'
          });
       marker_zoom5[3] = new google.maps.Marker({//ÃÂ«ÃÂ§Ã ÃÂ¬ÃÂ»ÃÂ¤ÃÂ«ÃÂ¥ÃÂ¼ uluruÃÂ¬Ã Ã  ÃÂ¬ÃÂ°Ã ÃÂ¬Ã Ã 
            position: berlinLocation,
            map: map,
            title:'Berlin'
          });
       marker_zoom5[4] = new google.maps.Marker({//ÃÂ«ÃÂ§Ã ÃÂ¬ÃÂ»ÃÂ¤ÃÂ«ÃÂ¥ÃÂ¼ uluruÃÂ¬Ã Ã  ÃÂ¬ÃÂ°Ã ÃÂ¬Ã Ã 
            position: munichLocation,
            map: map,
            title:'Munich'
          });
       marker_zoom5[5] = new google.maps.Marker({//ÃÂ«ÃÂ§Ã ÃÂ¬ÃÂ»ÃÂ¤ÃÂ«ÃÂ¥ÃÂ¼ uluruÃÂ¬Ã Ã  ÃÂ¬ÃÂ°Ã ÃÂ¬Ã Ã 
            position: bernLocation,
            map: map,
            title:'Bern'
          });
       marker_zoom5[6] = new google.maps.Marker({//ÃÂ«ÃÂ§Ã ÃÂ¬ÃÂ»ÃÂ¤ÃÂ«ÃÂ¥ÃÂ¼ uluruÃÂ¬Ã Ã  ÃÂ¬ÃÂ°Ã ÃÂ¬Ã Ã 
            position: zurichLocation,
            map: map,
            title:'Zurich'
          });
      
 
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: parisLocation
        });
        
                     //marker_zoom4[i].setAnimation(google.maps.Animation.BOUNCE);

             window.setTimeout(function(){
                marker_zoom4[0].setAnimation(google.maps.Animation.DROP);
                //marker_zoom4[0].setAnimation(google.maps.Animation.BOUNCE);
                 marker_zoom4[0].setMap(map);
            },200);
             window.setTimeout(function(){
                 marker_zoom4[1].setAnimation(google.maps.Animation.DROP);
                // marker_zoom4[1].setAnimation(google.maps.Animation.BOUNCE);
                  marker_zoom4[1].setMap(map);
             },400);
             window.setTimeout(function(){
                 marker_zoom4[2].setAnimation(google.maps.Animation.DROP);
                // marker_zoom4[2].setAnimation(google.maps.Animation.BOUNCE);
                  marker_zoom4[2].setMap(map);
             },600);
             window.setTimeout(function(){
                 marker_zoom4[3].setAnimation(google.maps.Animation.DROP);
                // marker_zoom4[3].setAnimation(google.maps.Animation.BOUNCE);
                  marker_zoom4[3].setMap(map);
             },800);
             
             
            

        map.addListener('zoom_changed', function() {
            if(map.getZoom()<5){

               if(marker_zoom5[0]!=null){
                  for(i=0; i<7; i++){
                      marker_zoom5[i].setMap(null);
                   } 
               }
               for(i=0; i<4; i++){
               marker_zoom4[i].setMap(map);
               }
             }
            else if(map.getZoom()>=5){
               
            for(i=0; i<4; i++){
                  marker_zoom4[i].setMap(null);
               }   
              for(i=0; i<7; i++){
                  marker_zoom5[i].setMap(map);
               }
            }
          });
        
        /* marker_zoom4 í´ë¦­ ì´ë²¤í¸*/
        for(i=0;i<marker_zoom4.length;i++)
       {
          marker_zoom4[i].addListener('click', function() {
             if(susDay == null || susEnd == null){
                  if(susDay == null ){
                alert("select start date")
                }
                  else{
                alert("select end date")
                }
             }else{
           
                var temp = susEnd;
           susEnd=LongDateToShortDate(ShortDateToLongDate(susEnd));
           
           latLngList.push(this.getPosition());
            createLine(latLngList, map);
             
             var title=this.getTitle();
             var date=currentDate;
             
           //start, end day style default
             $('.fc-day[data-date="'+susDay+'"]').css('background-color', 'white').text("");
             $('.fc-day[data-date="'+temp+'"]').css('background-color', 'white').text("");
             
             
            // susDay=susDay+'T00:00:00';
           //  susEnd=susEnd+'T10:00:00';
               var eventColor=nextEventColor();
             
              $('#calendar').fullCalendar( 'addEventSource', {
                 events: [
                       {
                           title: title,
                           start: susDay,
                           end : susEnd
                       }
                   ],
                   allDay:true,
                   color: eventColor,   
                   textColor: 'black'
               } );
                 susDay = null;
               susEnd = null;
               }      //else end
               
            
               collectEvent();
               jsonEncode = JSON.stringify(allEvent);
               obj.value = jsonEncode; 
               });   //click event end

       }
        /* marker_zoom5 í´ë¦­ ì´ë²¤í¸*/
        for(i=0;i<marker_zoom5.length;i++)
        {
            marker_zoom5[i].addListener('click', function() {
               if(susDay == null || susEnd == null){
                    if(susDay == null ){
                  alert("select start date")
                  }
                    else{
                  alert("select end date")
                  }
               }else{
                  var temp = susEnd;   
             susEnd=LongDateToShortDate(ShortDateToLongDate(susEnd));
             
             latLngList.push(this.getPosition());
              createLine(latLngList, map);
               
               var title=this.getTitle();
               var date=currentDate;
               
             //start, end day style default
               $('.fc-day[data-date="'+susDay+'"]').css('background-color', 'white').text("");
               $('.fc-day[data-date="'+temp+'"]').css('background-color', 'white').text("");
               
               
               //susDay=susDay+'T00:00:00';
               //susEnd=susEnd+'T10:00:00';
               var eventColor=nextEventColor();
                $('#calendar').fullCalendar( 'addEventSource', {
                     events: [
                         {
                             title: title,
                             start: susDay,
                             end : susEnd
                         }
                     ],
                     color: eventColor,   // an option!
                     textColor: 'black' // an option!
                     
                 } )
                   susDay = null;
                 susEnd = null;
                 }      //else end
                 });   //click event end
         }
      }  // initmap end
      
      
      //ì ê¸ê¸° 
      function createLine(latLngList, map){ 
         var movingPath = new google.maps.Polyline({
          path: latLngList,
          geodesic: true,
          strokeColor: '#000000',
          strokeOpacity: 10.0,
          strokeWeight: 1
        });
         if(latLngList.length>1){
         movingPath.setMap(map);
         }
      }
    //ì ê¸ê¸°
    
    
    
    
    
       /* ------------------------initMap() start --------------------------------------------------------*/
      /* ------------------------Calendar ê´ë ¨ ì¤í¸ë¦½í¸ ìì ------------------------------------------------*/
      
      
        $(document).ready(function(){
       // page is now ready, initialize the calendar...
       $('#calendar').fullCalendar({
           // put your options and callbacks here
               defaultDate : todayDate
               , editable : true
                , resizable: true
                , eventLimit : true
                , dayClick: function(date, jsEvent, view) {
                   if(susDay == null){
                    susDay = String(date.format())
                    $(this).css('background-color', 'green').text('start');
                    
                   }
                    else if(susEnd == null){
                   susEnd = String(date.format())
                   $(this).css('background-color', 'red').text('end');
                    
                    };
                /*    alert('Clicked on: ' + date.format());
                    alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
                    alert('Current view: ' + view.name); */

                    // change the day's background color just for fun
                    /*  $(this).css('background-color', 'green'); */
                },
       });
   });
    
        window.onload = function() {   	
           obj = document.getElementById('json'); 
        } 
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>	
    
   <form action="insertRoute.route" method="post">
      <input type="hidden" name="json" value="" id="json">
            <input type="submit" value="send">
   </form>
  </body>
</html>