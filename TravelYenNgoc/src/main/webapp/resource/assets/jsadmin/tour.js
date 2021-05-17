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
                alert("Đang xảy ra lỗi!!!");
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
                alert("Đang xảy ra lỗi!!!");
        })
    }
}
function nhantour(bookingid) {
    if (confirm("Bạn nhận tour nhé?") == true) { 
        fetch(`/TravelYenNgoc/api/admin/nhantour/${bookingid}`, {
            method: "get",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                 location.reload();
            } else 
                alert("Đang xảy ra lỗi!!!");
        })
    }
}




