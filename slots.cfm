<script
  src="https://code.jquery.com/jquery-3.7.0.js"
  integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" />
  
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>

<script type="text/javascript">
	$(document).ready(function () {
	    $('#listRecord').DataTable();
	});

</script>
<cfif IsDefined("url.success") and url.success eq "dosage">
	<p>Booking done!!!</p>
</cfif>

<cfparam name="url.userID" default="0">

<cfquery name="getVaccineDetails" datasource="vaccine">
	select * from vaccinecenter where createddate = curdate()
</cfquery>
<cfoutput>
<div>
	<cfif trim(session.role) eq "admin">
		<a href="vaccineform.cfm">Add Vaccine</a>
	</cfif>
</div>
<br>
<table id="listRecord" class="hover">
	<thead>
		<tr>
			<th>Vaccine Name</th>
			<th>Vaccine Center</th>
			<th>Dosage</th>
			<th>city</th>
			<th>state</th>
			<th>date</th>
			<th>action</th>
		</tr>
	</thead>
	<cfloop query="getVaccineDetails">
		<tbody>
			<tr>
				<td>#vaccinename#</td>
				<td>#vaccinecenter#</td>
				<td>#dosage#</td>
				<td>#city#</td>
				<td>#state#</td>
				<td>#createddate#</td>
				<cfif totalslots lte 10>
					<td><a href="action.cfm?book=true&userID=#url.userID#&centerId=#centerID#">Book your slot </a><span style="color: red;">(#totalslots#)</span></td>
				<cfelse>
					<td>slot is full</td>
				</cfif>
				
			</tr>
		</tbody>
	</cfloop>
</table>
<p><a href="logout.cfm">Logout</a></p>
<p><a href="list.cfm">Back</a></p>
</cfoutput>