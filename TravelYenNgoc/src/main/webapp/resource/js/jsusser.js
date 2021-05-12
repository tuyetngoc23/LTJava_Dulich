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
                   document.getElementById("doimau").style.color= "red";
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
            var kq = Number(d) + 1 - 1;
                document.getElementById("demo2").innerHTML = "Số tim: " + kq;
              document.getElementById("doimau").style.color = "black" ;

        } else
            alert("Something wrong!!!");
    });

}


var clicks = 0;

function onClick(u,i) {
    clicks += 1;
    document.getElementById("clicks").innerHTML = clicks;
    if (clicks ==1) {
        document.getElementById("clicks").innerHTML = clicks;
         document.getElementById("clicks").onClick = thich1(u,i);
         
    }
    if (clicks ==2) {  
        document.getElementById("clicks").onClick = khongthich(u,i);
        document.getElementById("clicks").innerHTML = clicks;
        clicks = 0;
    }
  
}
;



