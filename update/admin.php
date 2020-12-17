<?php
include_once 'header.php';
include_once 'locations_model.php';
?>
<style type="text/css">
        /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
        #map {
            height: 90%;
        }

        /* Optional: Makes the sample page fill the window. */
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        table,
        th,
        td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        th,
        td {
            padding: 15px;
        }

        body {
            background-image: url('1.jpg');
        }
    </style>
<div id="map"></div>

<!------ Include the above in your HEAD tag ---------->
<script>
    var map;
    var marker;
    var infowindow;
    var red_icon =  'http://maps.google.com/mapfiles/ms/icons/red-dot.png' ;
    var purple_icon =  'http://maps.google.com/mapfiles/ms/icons/purple-dot.png' ;
    var locations = <?php get_all_locations() ?>;
    13.746306863507272, 100.56495366025307
    function initMap() {
        var swu = {lat: 13.746306863507272, lng: 100.56494607382095};
        infowindow = new google.maps.InfoWindow();
        map = new google.maps.Map(document.getElementById('map'), {
            center: swu,
            zoom: 18
        });


        var i ; var confirmed = 0;
        for (i = 0; i < locations.length; i++) {

            marker = new google.maps.Marker({
                position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                map: map,
                icon :   locations[i][4] === '1' ?  red_icon  : purple_icon,
                html: document.getElementById('form')
            });

            google.maps.event.addListener(marker, 'click', (function(marker, i) {
                return function() {
                    confirmed =  locations[i][4] === '1' ?  'checked'  :  0;
                    $("#confirmed").prop(confirmed,locations[i][4]);
                    $("#id").val(locations[i][0]);
                    $("#description").val(locations[i][3]);
                    $("#form").show();
                    infowindow.setContent(marker.html);
                    infowindow.open(map, marker);
                }
            })(marker, i));
        }
    }

    function saveData() {
        var confirmed = document.getElementById('confirmed').checked ? 1 : 0;
        var id = document.getElementById('id').value;
        var url = 'locations_model.php?confirm_location&id=' + id + '&confirmed=' + confirmed ;
        downloadUrl(url, function(data, responseCode) {
            if (responseCode === 200  && data.length > 1) {
                infowindow.close();
                window.location.reload(true);
            }else{
                infowindow.setContent("<div style='color: purple; font-size: 25px;'>Inserting Errors</div>");
            }
        });
    }


    function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;

        request.onreadystatechange = function() {
            if (request.readyState == 4) {
                callback(request.responseText, request.status);
            }
        };

        request.open('GET', url, true);
        request.send(null);
    }


</script>

<div style="display: none" id="form">
    <table class="map1">
        <tr>
            <input name="id" type='hidden' id='id'/>
            <td><a>ใส่รายละเอียด: </a></td>
            <td><textarea disabled id='description' placeholder='Description'></textarea></td>
        </tr>
        <tr>
            <td><b>Confirm Location ?:</b></td>
            <td><input id='confirmed' type='checkbox' name='confirmed'></td>
        </tr>

        <tr><td></td><td><input type='button' value='Save' onclick='saveData()'/></td></tr>
    </table>
</div>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDQ1cdnoY2a_tjtKgmvRbvmGWw-mo5NzNc&callback&callback=initMap">
</script>
<?php

include("footeradmin.php")
?>