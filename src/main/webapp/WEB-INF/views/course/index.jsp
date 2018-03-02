<%@include file="../shared/header.jsp" %>

<div class="row">
    <div class="col-xs-12">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">
                    <a href="http://localhost:8000/categories/create" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span></a>
                    <a href="http://localhost:8000/categories" class="btn btn-danger">Clear</a>
                </h3>

                <div class="box-tools">
                    <form method="GET" action="http://localhost:8000/categories" accept-charset="UTF-8">
                        <div class="input-group input-group-sm" style="width: 150px;">

                            <input type="text" name="q" class="form-control pull-right" placeholder="Search">

                            <div class="input-group-btn">
                                <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                            </div>

                            <input name="_token" type="hidden" value="WziHaQzX3J7Cne1W20OghBgcUg2cYJsrtxgE9bRI">

                        </div>
                    </form>
                </div>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
                <table class="table table-hover">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Fees</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach var="course" items="${courses}">
                        <tr>
                            <td>${course.id}</td>
                            <td>${course.name}</td>
                            <td>${course.fees}</td>
                            <td data-id="${course.id}" style="cursor:pointer">
                                <c:choose>
                                    <c:when test="${course.status}">
                                        <span class="label label-success status">Active</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="label label-danger status">Inactive</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            
                            <td>

                                <form method="POST" action="http://localhost:8000/categories/1" accept-charset="UTF-8"><input name="_method" type="hidden" value="DELETE"><input name="_token" type="hidden" value="WziHaQzX3J7Cne1W20OghBgcUg2cYJsrtxgE9bRI">
                                    <a href="http://localhost:8000/categories/1/edit" class="btn btn-success"><span class="glyphicon glyphicon-pencil"></span></a>
                                    <button type="submit" class="btn btn-danger">
                                        <span class="glyphicon glyphicon-trash"/>
                                    </button>
                                    <input name="_token" type="hidden" value="WziHaQzX3J7Cne1W20OghBgcUg2cYJsrtxgE9bRI">

                                </form>
                            </td>
                        </tr>
                    </c:forEach>               
                </table>
            </div>
            <!-- /.box-body -->
        </div>
        <script>
            $(function () {

                $(".status").on('click', function () {
                    var $this = $(this);
                    var $id = $this.parent().attr('data-id');
                    $.post('http://localhost:8000/categories/status', {
                        'id': $id,
                        '_token': 'WziHaQzX3J7Cne1W20OghBgcUg2cYJsrtxgE9bRI'
                    }, function (res) {
                        if (res.success) {
                            changeStatus($this);
                        } else {
                            alert('Error Occured');
                        }
                    }, 'json');

                });
            });
        </script>


        <%@include file="../shared/footer.jsp" %>