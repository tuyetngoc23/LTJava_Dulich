
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    </head>

    <body>
        <div class="content">
            <form:form method="post" modelAttribute="tintuc" enctype="multipart/form-data" >
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title">thêm bài viết du lịch</h4>
                                    <p class="card-category">www.yenngoc.com</p>
                                </div>
                                <div class="card-body">
                                    <form>
                                        <div class="row">
                                            <c:if test="${tintuc.id>0}">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating" >Mã tin tức</label>
                                                        <form:input id="id" cssClass="form-control" path="id" readonly="true" style ="  background-color: #202940;
                                                                    opacity: 1;"/>
                                                        <form:errors path="id" cssClass="text-danger" />
                                                    </div>
                                                    <label class="bmd-label-floating" >Người đăng bài: </label>
                                                    <p class="form-control"> ${tintuc.employee.idStaff.hoTen}</p>
                                                </div>
                                            </div>
                                        </c:if>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Tiêu đề</label>
                                        <form:input id="moTaNgan" cssClass="form-control" path="tieuDe" />
                                        <form:errors path="tieuDe" cssClass="text-danger" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Mô tả ngắn</label>
                                        <form:input id="moTaNgan" cssClass="form-control" path="moTaNgan" />
                                        <form:errors path="moTaNgan" cssClass="text-danger" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="custom-file">
                                                <form:input  path="imgUploadFile" type="file" class="custom-file-input" id="multipartFile"/>
                                                <label class="custom-file-label" for="multipartFile">Chọn hình ảnh cho bài viết</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group" style ="padding-left: 15px">
                                            <label>Mô tả bài viết</label>
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Nội dung bài viết du lịch</label>
                                            </div>
                                            <form:textarea class="form-control" path="moTaDai" id="editor" rows="100" /> 
                                            <form:errors path="moTaDai" cssClass="text-danger" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <c:if test="${tintuc.id>0}">
                                <div class="container mt-4 mb-4">
                                <button type="submit" class="btn btn-primary pull-right">Cập nhập tour </button>
                                <div class="clearfix"></div>
                                </c:if>
                               <c:if test="${tintuc.id<=0}">
                                <div class="container mt-4 mb-4">
                                <button type="submit" class="btn btn-primary pull-right">Thêm tour  </button>
                                <div class="clearfix"></div>
                                </c:if>
                            </form:form>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

<script>
    tinymce.init({
        selector: '#editor',
        menubar: false,
        statusbar: false,
        plugins: 'autoresize anchor autolink charmap code codesample directionality fullpage help hr image imagetools insertdatetime link lists media nonbreaking pagebreak preview print searchreplace table template textpattern toc visualblocks visualchars',
        toolbar: 'h1 h2 bold italic strikethrough blockquote bullist numlist backcolor | link image media | removeformat help fullscreen ',
        skin: 'bootstrap',
        toolbar_drawer: 'floating',
        min_height: 200,
        autoresize_bottom_margin: 16,
        setup: (editor) => {
            editor.on('init', () => {
                editor.getContainer().style.transition = "border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out"
            });
            editor.on('focus', () => {
                editor.getContainer().style.boxShadow = "0 0 0 .2rem rgba(0, 123, 255, .25)",
                        editor.getContainer().style.borderColor = "#80bdff"
            });
            editor.on('blur', () => {
                editor.getContainer().style.boxShadow = "",
                        editor.getContainer().style.borderColor = ""
            });
        }
    });
</script>
<script>
    // Add the following code if you want the name of the file appear on select
    $(".custom-file-input").on("change", function () {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>
