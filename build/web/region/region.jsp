<%-- 
    Document   : Region
    Created on : May 21, 2019, 1:46:07 AM
    Author     : Relion31
--%>

<%@page import="entities.Region"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Region Data</title>
    </head>
    <body>
        <% List<Region> regions = (List<Region>) session.getAttribute("dataRegion"); %>
        <h1>Hello World!</h1>
        <div class="container">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#input-region">
                        Add Data
                    </button>
                    <a type="button" class="btn btn-light" href="addRegion.jsp">Add</a>
                    <a type="button" class="btn btn-light" href="../RegionServlet">Refresh</a>
                </div>
                <div class="card-body">
                    <table border="1" class="table table-striped">
                        <thead class="thead-dark" align="center">
                            <tr>
                                <th>Region ID</th>
                                <th>Region Name</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <%for (Region region : regions) {%>
                            <tr>
                                <td><%= region.getRegionId()%></td>
                                <td><%= region.getRegionName()%></td>
                                <td>
                                    <a type="button" class="btn btn-warning" href="#">Edit</a>
                                    <a type="button" class="btn btn-danger" href="#">Delete</a>
                                </td>
                            </tr>
                            <% }%>

                        </tbody>
                    </table>

                </div>
            </div>
        </div> 
    </body>


    <!--modal-->


    <div id="input-region" class="modal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="../RegionServlet" method="get" >
                        <div class="form-group">
                            <label for="region_name">Region Name</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" id="region_name" name="region_name" aria-describedby="emailHelp" placeholder="Enter email">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-info">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
