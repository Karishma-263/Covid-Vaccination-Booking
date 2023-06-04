<script
  src="https://code.jquery.com/jquery-3.7.0.js"
  integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" />
  
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>

<!-- <link rel="stylesheet" href="/dtable/datatables.css" />
 
<script src="/DataTables/dtable.js"></script> -->

<script type="text/javascript">
	$(document).ready(function () {
	    $('#listRecord').DataTable();
	});

</script>



<cfquery name="getUserDetails" datasource="vaccine">
	select * from registration where 1 = 1
	<cfif trim(session.role) eq "user">
		AND userid = '#session.userID#'
	</cfif>
</cfquery>

<cfoutput>
<div>
	<cfif trim(session.role) eq "admin">
		<a href="vaccineList.cfm">Vaccine centers</a>
	</cfif>
</div>
<br>
<table id="listRecord" class="hover">
	<thead>
		<tr>
			<th>Name</th>
			<th>age</th>
			<th>Role</th>
			<cfif trim(session.role) neq "admin">
				<th>booking</th>
			</cfif>
		</tr>
	</thead>
	<cfloop query="getUserDetails">
		<tbody>
			<tr>
				<td>#firstname# #lastname#</td>
				<td>#age#</td>
				<td>#role#</td>
				<cfif trim(session.role) neq "admin">
					<cfquery name="getSlotDetails" datasource="vaccine">
						select v.vaccinename,v.vaccinecenter,v.Dosage,v.address From vaccinecenter v INNER JOIN dailydosage d ON v.centerID = d.centerID where userid = '#getUserDetails.userID#' AND dosageDate = '#dateformat(now(),"yyyy-mm-dd")#'
					</cfquery>
					<cfif getSlotDetails.Recordcount>
						<td><span style="color:blue">your slot has booked #getSlotDetails.vaccinename# #getSlotDetails.Dosage# at #getSlotDetails.address#</span></td>
					<cfelse>
						<td><a href="slots.cfm?userID=#userID#">Slots</a></td>
					</cfif>
				</cfif>
			</tr>
		</tbody>
	</cfloop>
</table>
<p><a href="logout.cfm">Logout</a></p>
</cfoutput>