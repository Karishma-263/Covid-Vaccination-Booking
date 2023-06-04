<cfif structKeyExists(form, "submit")>
	<cfif StructKeyExists(form,"camefrom") AND form.camefrom eq "registration">
		<cfif form.password neq form.confirmpassword>
			<cflocation url="index.cfm?validation=password">
		</cfif>
		<cfquery name="addRegister" datasource="vaccine">
			Insert into registration (userID,FirstName,LastName,age,email,password,role,gender,phonenumber,fulladdress,createddate) 
			VALUES ('#createUUID()#',
					'#form.firstname#',
					'#form.lastname#',
					'#form.age#',
					'#form.email#',
					'#form.password#',
					'#form.role#',
					'#form.gender#',
					'#form.mobile#',
					'#trim(form.address)#',
					curdate())
		</cfquery>
		<cflocation url="index.cfm?success=register">
	<cfelseif StructKeyExists(form,"camefrom") AND form.camefrom eq "login">

		<cfquery name="checkLogin" datasource="vaccine">
			select * from registration where email = '#form.email#' AND password = '#form.password#'
		</cfquery>
		<cfif checkLogin.Recordcount>
			<cfset session.userid = checkLogin.userid>
			<cfset session.role = checkLogin.role>
			<cflocation url="list.cfm">
		<cfelse>
			<cflocation url="index.cfm?validation=invalid">
		</cfif>
	<cfelseif StructKeyExists(form,"camefrom") AND form.camefrom eq "vaccineform">
		<cfquery name="addVaccineCenter" datasource="vaccine">
			insert into vaccinecenter (centerID,vaccineName,vaccineCenter,Dosage,city,state,pincode,address,totalslots,createddate)
			VALUES ( '#createUUID()#',
					'#form.vaccinationName#',
						'#form.vaccinationCenter#',
						'#form.Dosage#',
						'#form.city#',
						'#form.state#',
						'#form.pincode#',
						'#form.address#',
						10,
						curdate()
				)
		</cfquery>
		<cflocation url="Vaccinelist.cfm?success=vaccine">
	</cfif>
<cfelse>
	<cfquery name="fillDosage" datasource="vaccine">
		insert into dailydosage (dosageID,centerID,userID,DosageDate)
			VALUES ( '#createUUID()#',
					 '#url.centerID#',
					 '#url.userID#',
					 curdate()
			 	)
	</cfquery>
	<cfquery name="getDosageDetails" datasource="vaccine">
		select totalslots from vaccinecenter where centerID = '#url.centerID#'
	</cfquery>
	<cfset availableSlot = getDosageDetails.totalslots - 1>
	<cfquery name="updateSlotscount" datasource="vaccine">
		update vaccinecenter set totalslots = '#availableSlot#' where centerID = '#url.centerID#'
	</cfquery>
	<cflocation url="list.cfm?success=dosage">
</cfif>
