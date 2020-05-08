<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/brocoli/resources/ownerResources/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/libs/css/style.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/fixedHeader.bootstrap4.css">
    
    <%@ include file="header.jsp" %>
    
    <title>오너 : 알림설정</title>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
       
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">알림설정</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">설정</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">알림설정</a></li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->

                <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">

                                <div class="card" id="switchcontent">
                                    <h5 class="card-header">알림 설정</h5>
                                    <div class="card-body">
                                        <form action="#" style="border-radius: 0px;">
                                            <div class="form-group row">
                                                <label class="col-12 col-sm-3 col-form-label text-sm-right">메일 알림</label>
                                                <div class="col-12 col-sm-8 col-lg-6 pt-1">
                                                    <div class="switch-button">
                                                        <input type="checkbox" checked="" name="switch14" id="switch14"><span>
                                                    <label for="switch14"></label></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-12 col-sm-3 col-form-label text-sm-right">입고알림</label>
                                                <div class="col-12 col-sm-8 col-lg-6 pt-1">
                                                    <div class="switch-button switch-button-success">
                                                        <input type="checkbox" checked="" name="switch16" id="switch16"><span>
                                                    <label for="switch16"></label></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-12 col-sm-3 col-form-label text-sm-right">재고/품절 알림</label>
                                                <div class="col-12 col-sm-8 col-lg-6 pt-1">
                                                    <div class="switch-button switch-button-warning">
                                                        <input type="checkbox" checked="" name="switch17" id="switch17"><span>
                                                  <label for="switch17"></label></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-12 col-sm-3 col-form-label text-sm-right">새 후기 알림</label>
                                                <div class="col-12 col-sm-8 col-lg-6 pt-1">
                                                    <div class="switch-button switch-button-danger">
                                                        <input type="checkbox" checked="" name="switch18" id="switch18"><span>
                                                               <label for="switch18"></label></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-12 col-sm-3 col-form-label text-sm-right">매니저 컨택 알림</label>
                                                <div class="col-12 col-sm-8 col-lg-6 pt-1">
                                                    <div class="switch-button switch-button-yesno">
                                                        <input type="checkbox" checked="" name="switch19" id="switch19"><span>
                                                              <label for="switch19"></label></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
 
 
            </div>
                       
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->

    <script src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/multi-select/js/jquery.multi-select.js"></script>
    <script src="/brocoli/resources/ownerResources/libs/js/main-js.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/datatables/js/data-table.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
    <script src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
    
</body>
 
</html>