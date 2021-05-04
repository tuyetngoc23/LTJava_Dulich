/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$(document).ready(function () {
    $('#selectOrigin').change(function () {
        $('.selectedValOrigin').val($("#selectOrigin").val());
        $('.selectedValDestination').val($("#selectDestination").val());
        $('#selectDestination').empty().append('<option value="">Điểm đến</option>');
        var originCode = $('#selectOrigin').val();
        var jsonlist = objectAirport.Pair;
        $.each(jsonlist, function (_i, _value) {
            var arrival = _value.ArrivalAirports.AirportList;
            if (_value.DepartureAirport.Code == originCode) {
                $.each(arrival, function (index) {
                    var optgroup = $('<optgroup>');
                    optgroup.attr('label', arrival[index].CountryName);
                    var count = 0;
                    $.each(arrival[index].List, function (i) {
                        var option = $("<option></option>");
                        option.val(arrival[index].List[i].Code);
                        option.text(arrival[index].List[i].Name + " (" + arrival[index].List[i].Code + ")");
                        optgroup.append(option);
                        count++;
                    });
                    if (count != 0)
                        $("#selectDestination").append(optgroup);
                    $("#selectDestination").select2();
                });
            }

        });
    });
    $("#selectDestination").change(function () {
        $('.selectedValOrigin').val($("#selectOrigin").val());
        $('.selectedValDestination').val($("#selectDestination").val());
    });
});
                    