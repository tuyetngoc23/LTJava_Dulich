/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//thich ne
function thich1(u) {
    var d = document.getElementById("demo").value;
  
        fetch(`/TravelYenNgoc/api/user/news/${u}`, {
            method: "get",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                var kq = Number(d)+1;
              document.getElementById("demo2").innerHTML = "Số tim: "+kq;
            } else 
                alert("Something wrong!!!");
        });
    
}



