/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function deleteTour(tourId) {
    if (confirm("Bạn chắc chắn xóa không?") == true) { 
        fetch(`/TravelYenNgoc/api/admin/quanlytour/${tourId}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                location.reload();
                let d = document.getElementById(`tourId${tourId}`);
                d.style.display = "none";
            } else 
                alert("Something wrong!!!");
        })
    }
}
function deleteTinTuc(tintucId) {
    if (confirm("Bạn chắc chắn xóa không?") == true) { 
        fetch(`/TravelYenNgoc/api/admin/quanlytintuc/${tintucId}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                location.reload();
                let d = document.getElementById(`tourId${tourId}`);
                d.style.display = "none";
            } else 
                alert("Something wrong!!!");
        })
    }
}

