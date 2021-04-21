<jsp:include page="/include/header.jsp"></jsp:include>
<%@ page import="com.learners.hibernate.entity.Student"%>
<%@ page import="com.learners.hibernate.entity.Myclass"%>
<%@ page import="java.util.List"%>
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">Class-Wise Student List</h1>
	<!-- <p class="mb-4">
		DataTables is a third party plugin that is used to generate the demo
		table below. For more information about DataTables, please visit the <a
			target="_blank" href="https://datatables.net">official DataTables
			documentation</a>.
	</p> -->

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<form action="<%= request.getContextPath()%>/ClassServlet" method="post">
			<input type="hidden" name="action" value="student">
				<select class="col-md-4" name="class" id="class">
					<option value="">Select Class</option>
					<%
								String options = "";
								List<Myclass> myclass = (List<Myclass>) request.getAttribute("listclass");
								for (Myclass mclass : myclass) {
									//options += "";
									out.print("<option value=\"" + mclass.getName() + "\">" + mclass.getName() + "</option>");
								}
							%>
				</select>
				<button type="submit" class="btn btn-sm btn-success col-md-1">Search</button>
			</form>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Class</th>
							<th>Roll No</th>
							<th>Date Of Birth</th>
							<th>Contact No</th>
							<th>Address</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Class</th>
							<th>Roll No</th>
							<th>Date Of Birth</th>
							<th>Contact No</th>
							<th>Address</th>
						</tr>
					</tfoot>
					<tbody>
						<%
							List<Student> student = (List<Student>) request.getAttribute("liststudent");
							for (Student std : student) {
								out.print("<tr><td>" + std.getId() + "</td><td>" + std.getName() + "</td><td>" + std.getClassName()
										+ "</td><td>" + std.getRollNo() + "</td><td>" + std.getDob() + "</td><td>" + std.getContactNo()
										+ "</td><td>" + std.getAddress() + "</td></tr>");
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</div>
<!-- /.container-fluid -->
<jsp:include page="/include/footer.jsp"></jsp:include>
