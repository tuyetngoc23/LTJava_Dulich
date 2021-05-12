/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//thich ne

function thich1(u, t) {
    var d = document.getElementById("demo").value;
    fetch(`/TravelYenNgoc/api/user/news/${u}/${t}`, {
        method: "get",
        headers: {
            "Content-Type": "application/json"
        }
    }).then(res => {
        if (res.status == 200) {
            var kq = Number(d) + 1;
            document.getElementById("demo2").innerHTML = "Số tim: " + kq;
            document.getElementById("doimau").style.color = "red";
//            document.getElementById("chuatim").style.display = 'none';
//            document.getElementById("thay").insertAdjacentHTML("beforeend", "");
        } else
            alert("Something wrong!!!");
    })

}
function khongthich(u, t) {
    var d = document.getElementById("demo").value;
    fetch(`/TravelYenNgoc/api/user/news/unlike/${u}/${t}`, {
        method: "get",
        headers: {
            "Content-Type": "application/json"
        }
    }).then(res => {
        if (res.status == 200) {
            var kq = Number(d);
            if(kq==0)
                kq = 0;
            else 
                kq =Number(d)-1;
            document.getElementById("demo2").innerHTML = "Số tim: " + kq;
            document.getElementById("doimau").style.color = "black";

        } else
            alert("Something wrong!!!");
    });

}


var clicks = 0;

function onClick(u, i) {

    element = document.getElementById('doimau');
    bgColor = window.getComputedStyle(element, null).getPropertyValue('color');
    brightness = lightOrDark(bgColor);
    if (brightness == 'light') {
         clicks = 1;
    } else {
        clicks = 0;
    }

    clicks += 1;
    document.getElementById("clicks").innerHTML = clicks;
    if (clicks == 1) {
        document.getElementById("clicks").innerHTML = clicks;
        document.getElementById("clicks").onClick = thich1(u, i);

    }
    if (clicks == 2) {
        document.getElementById("clicks").onClick = khongthich(u, i);
        document.getElementById("clicks").innerHTML = clicks;
        clicks = 0;
    }

}
;


function lightOrDark(color) {

  // Check the format of the color, HEX or RGB?
  if (color.match(/^rgb/)) {

    // If HEX --> store the red, green, blue values in separate variables
    color = color.match(/^rgba?\((\d+),\s*(\d+),\s*(\d+)(?:,\s*(\d+(?:\.\d+)?))?\)$/);

    r = color[1];
    g = color[2];
    b = color[3];
  } 
  else {

    // If RGB --> Convert it to HEX: http://gist.github.com/983661
    color = +("0x" + color.slice(1).replace( 
      color.length < 5 && /./g, '$&$&'
    )
             );

    r = color >> 16;
    g = color >> 8 & 255;
    b = color & 255;
  }

  // HSP (Highly Sensitive Poo) equation from http://alienryderflex.com/hsp.html
  hsp = Math.sqrt(
    0.299 * (r * r) +
    0.587 * (g * g) +
    0.114 * (b * b)
  );

  // Using the HSP value, determine whether the color is light or dark
  if (hsp>127.5) {

    return 'light';
  } 
  else {

    return 'dark';
  }
}
