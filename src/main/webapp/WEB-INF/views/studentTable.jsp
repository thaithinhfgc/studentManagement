<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="container-fuild">
      <div class="row">
        <div class="col"><jsp:include page="./include/nav.jsp" /></div>
      </div>
      <div class="row">
        <div class="col">
          <!-- <c:forEach var="item" items="${students}">
            <h1>${item.getName()}</h1>
          </c:forEach> -->

          <div class="row">
            <div class="col">
              <p><table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Age</th>
                    <th scope="col">Year</th>
                    <th scope="col">Physical</th>
                    <th scope="col">Math</th>
                    <th scope="col">Chemistry</th>
                    <th scope="col"></th>
                    <th scope="col"></th>

    
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var = "item" items = "${students}">
                  <tr>
                    <th scope="row"></th>
                    <td>${item.getName()}</td>
                    <td>${item.getAge()}</td>
                    <td>${item.getYear()}</td>
                    <td>${item.getPhysical()}</td>
                    <td>${item.getMath()}</td>
                    <td>${item.getChemistry()}</td>
                    <td><input type="checkbox" class="btn-check" id="btn-check1" autocomplete="off">
                        <label class="btn btn-primary" for="btn-check1">Edit</label><input type="checkbox" class="btn-check" id="btn-check2" autocomplete="off">
                        <label class="btn btn-danger" for="btn-check2">Delete</label></td>
                  </tr>
                  
                </c:forEach>
                </tbody>
              </table></p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
