<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>재고관리-품목추가</title>

  <!-- Custom fonts for this template -->
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    
  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
 
    <style>
        .dataTables_length {
            display:none;
        }
        .dataTables_filter {
            display:none;
        }
        .dataTables_info {
            display:none;
        }
        #dataTable_paginate {
            display: none;
        }
                
        input {
            border: none;
            background-color: transparent;
            width: 6rem;
            color: #858796;
       }

        select {
            border: none;
            background-color: transparent;
            width: 6rem;
            color: #858796;
        }
        .selected {
            background-color: gainsboro;
        }
        
    </style>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <%@include file="stock_sidebar.jsp"%>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
           <%@include file="../../nav/topbar.jsp"%>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">재고 품목 추가</h6>
            </div>
            <div class="card-body">

              <div class="table-responsive">
                <table class="table table-bordered" id="listTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>품목코드</th>
                      <th>품목명</th>
                      <th>규격</th>
                      <th>원가</th>
                      <th>공급가</th>
                      <th>공급처</th>
                    </tr>
                  </thead>

                </table>
                 
              </div>
              
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>품목명</th>
                      <th>규격</th>
                      <th>원가</th>
                      <th>공급가</th>
                      <th>공급처</th>
                    </tr>
                  </thead>

                </table>
                 
              </div>
              

                                  
                 <button class="btn btn-primary btn-icon-split" id="itemAdd" onclick="myfunc();">
                    <span class="icon text-white-50">
                      <i class="fas fa-plus"></i>
                    </span>
                    <span class="text">항목 추가</span>
                  </button>

                  <button class="btn btn-danger btn-icon-split" id="itemDel">
					<span class="icon text-white-50"> <i class="fas fa-trash"></i>
					</span> <span class="text">선택 삭제</span>
				</button>
				                
                <button class="btn btn-success btn-icon-split" onclick="submit();">
                    <span class="icon text-white-50">
                      <i class="fas fa-check"></i>
                    </span>
                    <span class="text">작성 완료</span>
                </button>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->
          
      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
         <%@include file="../../nav/footer.jsp"%>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="${pageContext.request.contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>
  <!-- Page level custom scripts -->
  <script src="${pageContext.request.contextPath}/resources/js/demo/datatables-demo.js"></script>

    <!-- Add Date Picker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        //테이블 row 선택
        $('#dataTable tbody').on('click', 'tr', function() {
            $(this).toggleClass('selected');
        });
        $('#itemDel').click(function() {
            var t = $('#dataTable').DataTable();
            t.rows('.selected').remove().draw(false);
            
        });
        });
    
    
    
    $('#datePicker1, #datePicker2').datepicker({
        format : "yyyy-mm-dd",
    });
    
    function listtable(){
    	
    	if ( $.fn.DataTable.isDataTable('#listTable') ) {
    		  $('#listTable').DataTable().destroy();
    		}
    	
   	 $('#listTable').dataTable({
         pageLength: 10,
         bPaginate: true,
         bLengthChange: true,
         lengthMenu : [ [ 10, 25, 50, -1 ], [ 10, 25, 50, "All" ] ],
         bAutoWidth: false,
         processing: true,
         ordering: true,
         serverSide: false,
         searching: true,
         ajax : {
             "url":"stocklist",
             "type":"POST",
             "data": function (d) {
                 d.s_no = "0010";
             }
         },
         columns : [
             {data: "s_no"},
             {data: "s_name"},
             {data: "s_size"},
             {data: "s_cost"},
             {data: "s_price"},
             {data: "s_origin"}
         ],
         initComplete: function () {
             this.api().columns([5]).every( function () {
                 var column = this;
                 var select = $('<select><option value=""></option></select>') 
                 .appendTo($(column.header()))
                     .on( 'change', function () {
                         var val = $.fn.dataTable.util.escapeRegex(
                             $(this).val()
                         );
  
                         column
                             .search( val ? '^'+val+'$' : '', true, false )
                             .draw();
                     } );
  
                 column.data().unique().sort().each( function ( d, j ) {
                     select.append( '<option value="'+d+'">'+d+'</option>' )
                 } );
             } );
         }

     });
    	
    }
        $(document).ready(function() {
        	
        	listtable();

    var t = $('#dataTable').DataTable(
    );
   
    $('#itemAdd').on( 'click', function () {
        t.row.add( [
            "<input type='text' id='s_name' name='s_name' style='border:none; background-color:transparent;width:6rem'>",
            "<input type='number' id='s_size' name='s_size' style='border:none; background-color:transparent;width:6rem;'>",
            "<input type='number' id='s_cost' name='s_cost' style='border:none; background-color:transparent;width:6rem;'>",
            "<input type='number' id='s_price' name='s_price' style='border:none; background-color:transparent;width:6rem;'>",
            "<input type='text' id='s_origin' name='s_origin' style='border:none; background-color:transparent;width:6rem;'>"
        ] ).draw( false );
    } );
    $('#itemAdd').click();

} );
        

    function submit() {
     
        var l = $('#dataTable tbody tr').length;
        
        //alert(ids);
        l *= 1;
        /*
        for(var i = 0; i < l; i++) {
            alert($("input[name=s_name]:eq(" + i + ")").val() + ", " + 
            		$("input[name=s_size]:eq(" + i + ")").val() + ", " + 
            		$("input[name=s_cost]:eq(" + i + ")").val() + ", " + 
            		$("input[name=s_price]:eq(" + i + ")").val() + ", " + 
            		$("input[name=s_origin]:eq(" + i + ")").val());
            
        }
        */
        
        var url = "add";    // Controller로 보내고자 하는 URL

        const sendVar = new Array(l);
        
        for(var i = 0; i < sendVar.length; i++){
        	sendVar[i] = new Array(5);
        }
        
        console.log("l 길이 : " + l + "sendVar 길이 : " + sendVar.length);
        for(var i = 0; i < l; i++) {
        	
        	sendVar[i][0] = $("input[name=s_name]:eq(" + i + ")").val();
        	sendVar[i][1] = $("input[name=s_size]:eq(" + i + ")").val();
        	sendVar[i][2] = $("input[name=s_cost]:eq(" + i + ")").val();
        	sendVar[i][3] = $("input[name=s_price]:eq(" + i + ")").val();
        	sendVar[i][4] = $("input[name=s_origin]:eq(" + i + ")").val();
 
        	console.log("ajax 배열 : " + sendVar[i][0]+sendVar[i][1]+sendVar[i][2]+sendVar[i][3]+sendVar[i][4]);
        }

        var list = []; //ArrayList 값을 받을 변수를 선언
        
        $.ajax({
            url : url,                    // 전송 URL
            type : 'POST',                // GET or POST 방식
            traditional : true,
            data : {
                stockadd : sendVar        // 보내고자 하는 data 변수 설정
            },
            
            //Ajax 성공시 호출 
            success : function(msg){
            	var t = $('#dataTable').DataTable();
            	t.rows().remove().draw(false);
                listtable();
            },
         
            //Ajax 실패시 호출
            error : function(jqXHR, textStatus, errorThrown){
                console.log("jqXHR : " +jqXHR +"textStatus : " + textStatus + "errorThrown : " + errorThrown);
            }
        });

    }
    
    
    </script>
</body>

</html>