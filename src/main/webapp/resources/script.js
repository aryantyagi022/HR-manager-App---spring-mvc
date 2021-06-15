function fill(code,name,location,email,dateOfBirth){
        document.getElementById("employeeCode").value=code;
        document.getElementById("employeeName").value=name;
        document.getElementById("employeeLocation").value=location;
        document.getElementById("employeeEmail").value=email;
        document.getElementById("employeeBirthDate").value=dateOfBirth;
    }

//<a href="" class="btn addBtn  btn-secondary btn-sm lead mb-3">Upload Employee Details</a>

//<button onclick="window.location.href='${pageContext.request.contextPath}/edit-form.jsp'" 
//						 class="btn btn-secondary btn-sm">EDIT</button>

//<a class="edit" onclick="fill(${employee.employeeCode},
//							'${employee.employeeName}','${employee.location}','${employee.email}','${employee.dateOfBirth}');"
//							 href="${editLink}">EDIT</a>

//	<c:url var="editLink" value="/edit-form.jsp">
//						<c:param name="employeeCode" value="${users.employeeCode}" />
//					</c:url>  
						
// Defining variables to access value of inputs

//const userName=document.getElementById('username');
//const userPass=document.getElementById('password');
/*const depLoc=document.getElementById('departureloc');
const arrLoc=document.getElementById('arrivalloc');
const date=document.getElementById('date');
const flightClass=document.getElementById('flightclass');
const preferance=document.getElementById('preferance');*/

//const userInfoForm=document.getElementById('user-info-form');
//const flightInfoForm=document.getElementById('flight-info-form');



// Function to validate input fields
//function validateForUser(nameValue,passValue) {
//    if (!nameValue ||!passValue) {
//      alert('Please submit values for all the fields.');
//      return false;
//    }
//    // Valid
//    return true;
//  }

//function validateForFlight(dep,arr,dat,fC,pF) {
//    if (!dep ||!arr ||!dat ||!fC ||!pF) {
//      alert('Please submit values for all the fields.');
//      return false;
//    }
//    // Valid
//    return true;
//  }


//function checkForUser(e){
//	
//	const nameValue=userName.value;
//	const passValue=userPass.value;
//	if(!validateForUser(nameValue,passValue)){
//		e.preventDefault();
//		return false;
//	}
//}

//function checkForFlight(e){
//	
//	const dep=depLoc.value;
//	const arr=arrLoc.value;
//	const dat=date.value;
//	const fC=flightClass.value;
//	const pF=preferance.value;
//	if(!validateForFlight(dep,arr,dat,fC,pF)){
//		e.preventDefault();
//		return false;
//	}
//}


//event-listener

//userInfoForm.addEventListener('submit',checkForUser);
//flightInfoForm.addEventListener('submit',checkForFlight);