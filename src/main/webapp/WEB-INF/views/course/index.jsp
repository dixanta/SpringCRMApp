<%@include file="../shared/header.jsp" %>

      <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Courses</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-8">
                    <table class="table">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Code</th>
                            <th>Fees</th>
                            <th>Status</th>
                        </tr>
                        <c:forEach var="course" items="${courses}">
                            <tr>
                                <td>${course.id}</td>
                                <td>${course.name}</td>
                                <td>${course.code}</td>
                                <td>${course.fees}</td>
                                <td>${course.status}</td>
                            </tr>
                        </c:forEach>
                    </table>

                  
                </div>
                <!-- /.col -->
                
              </div>
              <!-- /.row -->
            </div>
            
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

<%@include file="../shared/footer.jsp" %>