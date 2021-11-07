/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//time display funct
//The variable "time" is the time to do the quiz
function clock(time) {
    var countDownDate = time;
//  convert time to minutes and seconds
    var minutes = Math.floor(time / 60);
    var seconds = time % 60;

    var mmText = "";
    var ssText = "";

    mmText = (minutes < 10) ? "0" + minutes : "" + minutes; // minute format: mm
    ssText = (seconds < 10) ? "0" + seconds : "" + seconds; // second format: ss
    document.getElementById("time").innerHTML = mmText + ":" + ssText;

//  countdown function
    function timeCount() {
        countDownDate = countDownDate - 1;
        minutes = Math.floor(countDownDate / 60);
        seconds = countDownDate % 60;

        var mmText = "";
        var ssText = "";

        mmText = (minutes < 10) ? "0" + minutes : "" + minutes; // minute format: mm
        ssText = (seconds < 10) ? "0" + seconds : "" + seconds; // second format: ss
        document.getElementById("time").innerHTML = mmText + ":" + ssText;

//        Check if the countdown time is 0 => stop the countdown function and auto submit
        if (countDownDate <= 0) {
//            stop
            clearInterval(x);
            document.getElementById("time").innerHTML = "Time out"
//            submit form
            document.getElementById("takeResult").submit();
        }
    }
//    Repeat the countdown function after 1 second
    var x = setInterval(timeCount, 1000);
}



