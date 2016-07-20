<%@ page import="java.io.*,java.util.*,java.text.*,icare.appointment.data.*" %>
<%
	if(request.getParameter("name") != "") {
		//	do nothing
	} else {
		String name = (String)session.getAttribute("sessUname");
		if(name == null)  {
			response.sendRedirect("iCare.jsp");
		}
	}
 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8" />
	<title>::: Patient Portal - Home :::</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection" />
	<link rel="stylesheet" href="css/style_ie.css" type="text/css" media="screen, projection" />
	<link rel="stylesheet" href="css/calendar.css" type="text/css" media="screen, projection" />
	<!-- <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script> -->
	
	<script src="js/jquery.min.js"></script> <!-- jquery/1.7.1 used -->
	<script src="js/jquery-ui-datepicker.min.js"></script>
	<script src="js/iCare.js"></script>
</head>

<body>
<div id="wrapper">
<div class="fixedheader">	
<header id="header">
    <div id="headerinfo">
        <div class="row">
			<div id="headervisitinfo">
                	Welcome back! Your  last visit was on Wed, Dec 5, 2012 12:47:08 PM
            </div>    
            <div id="headerloginas">
                	 <strong>Welcome, Benton Mathew Joiser, ID:272727</strong>
            </div>
            <div id="headerlogout">
				<div><a href="UserLogout"  class="logout">
                    Logout</a>
				</div>
            </div>
        </div>
    </div>
</header>
   
    <!-- #header-->
   
    <!-- #logo And Menu -->

<div id="logomenu">
	<div class="row">
    	<div id="logo">
			<img src="images/logo.png"> 
        </div>
        <div id="Menubox">
			<ul class="menu">
                <li><a href="Contact.html"><div class="menuicons"><img src="images/Contact.png"/></div>Contact</a></li>
                <li><a href="Result.html"><div class="menuicons"><img src="images/Results.png"/></div>My Results</a></li>
                <li><a href="UpcomingAppoinments.html"><div class="menuicons"><img src="images/Appointment.png"/></div>My Appointments</a></li>
                <li class="menuselect"><div class="menuicons"><img src="images/Home.png"/></div>Home</li>
            </ul>
        </div>
    </div>
</div>
</div>
   <!-- #logo And Menu -->
   
<div class="line"></div>


	<div id="content">
	
     <!-- #Patient Banner-->
		<div id="PatientBanner">
        	<div class="row">
            	<div id="Patientphoto">
					<img src="images/PatientProfile.png"> 
                </div>
                <div id="PatientProfile">
                	<p> <span class="contentfont">Welcome,</span>
                    <span class="contencap">Benton Mathew Joiser</span></p>
					<p> <span class="contenbold">Patient  ID :</span>
                    <span class="contentfont">272727, </span>
                    <span class="contenbold">NRIC :</span>
                    <span class="contentfont">363636</span></p>
                </div>
            </div> 
        </div>  
       <!-- #Patient Banner-->
	   <!-- #Content Area-->
     	<div id="contentbg">
		</div>
		<div id="contentArea">
			
				<div id="contentArearow">
					<div class="cellindex searchindex">
					<div id="BooknewAppsearchindex">
						<div class="BookAppTitlehomepg">
							Book an appointment
						</div>
						<div class="bookcontent">
						<div id="ApptimeCal">
							<div class="calender ">
								<!-- <img src="images/calendar.PNG"/> -->
								<div id="calendar"></div>
							</div>
							<div class="ApptitleReschedule"> <br />
							Preferred time</div>
								<select class="textboxtimeReschedule"  >
									<option>Select time</option>
									<option>10.30</option>
									<option>11.30</option>
									<option>1.30</option>
									<option>2.30</option>
									<option>3.30</option>
									<option>4.30</option>
									<option>5.30</option>
									<option>6.30</option>
									<option>7.30</option>
									<option>8.30</option>
								</select>
								<span >to</span>
								<select class="textboxtimeReschedule" >
									<option>Select time</option>
									<option>10.30</option>
									<option>11.30</option>
									<option>1.30</option>
									<option>2.30</option>
									<option>3.30</option>
									<option>4.30</option>
									<option>5.30</option>
									<option>6.30</option>
									<option>7.30</option>
									<option>8.30</option>
								</select>
							<div class="ApptitleReschedule">Speciality</div>
								<select class="textbox"  >
									<option>---All---</option>
									<option>Cardiology</option>
									<option>Dermatology</option>
									<option>Endocrinology</option>
									<option>Gastrology</option>
									<option>General medicine</option>
									<option>Gastrology</option>
									<option>Endocrinology</option>
									<option>Gynaecology</option>
									<option>Neurology</option>
									<option>Orthopedics</option>
									
									
									
								</select>
						</div>
						
						</div>
						<div class="centeralign">
							<span><a href="BooknewAppoinment.html"  class="PPbtn">Book an appointment</a></span>
						</div>
							
					</div>
					</div>
					<div class="cellindex appindex">
						<div class="tableindex">
							<div class="row">
								<div class="cellindex dividerindex">
								</div>
								<div class="cellindex Appdivs">
									<div id="UpcomingAppindex">
										<div class="appTitlehomepg">Upcoming appointments</div>
										<div id="HomepageBox">
										
										
											<!-- Stripbox starts here-->
											
											<%
												String clinicName1 = "at Clinic 10";
												String[][] appDataFirst = UpcomingAppointments.getDateTimeDoctors(clinicName1);
											%>
													<div id="stripbox">
														<div class="row">
														<!-- Stripicon-->
														
															<div id="StripSpaceA">
																<div id="StripIcon">
																	
																	<div id="StripIconHeader0" class="StripIconHeaderCls">
																		<%=appDataFirst[0][0] %>
																	</div>
																	
																	<div id="StripDate">
																		<%=appDataFirst[0][1] %>
																	</div>
																	<div id="Stripday">
																		<%=appDataFirst[0][2] %>
																	</div>
																</div>
															</div>
															
															<!-- Stripcontent-->
															<div id="StripSpaceB">
																<p><span 
																<% if(0 == 0) { %>
																	class="AppointmentNewDoctor"
																<% } else { %>
																	class="AppointmentNewDoctorNormal"
																<% } %>
																><%=appDataFirst[0][3] %></span></p>
																<p><span
																<% if(0 == 0) { %>
																	class="AppointmentnewSPL"
																<% } else { %>
																	class="AppointmentnewSPLNormal"
																<% } %>
																><%=appDataFirst[0][4] %></span></p>
																<p><span class="contenbold"><%=appDataFirst[0][5] %> (<%=appDataFirst[0][6] %>)</span></p> 
															</div>
														</div>
													</div>
										
										
										
											<!-- Stripbox starts here-->
											<%
												String clinicName = "at Clinic 10";
												String[][] appData = UpcomingAppointments.getDateTimeDoctors(clinicName);
												for(int i = 1; i<appData.length; i++) {
												
											%>
													<div id="stripbox">
														<div class="row">
														<!-- Stripicon-->
														
															<div id="StripSpaceA">
																<div id="StripIcon">
																
																	<div id="StripIconHeader<%=i %>" class="StripIconHeaderCls">
																		<%=appData[i][0] %>
																	</div>
																	
																	<div id="StripDate">
																		<%=appData[i][1] %>
																	</div>
																	<div id="Stripday">
																		<%=appData[i][2] %>
																	</div>
																</div>
															</div>
															
															<!-- Stripcontent-->
															<div id="StripSpaceB">
																<p><span 
																<% if(i == 0) { %>
																	class="AppointmentNewDoctor"
																<% } else { %>
																	class="AppointmentNewDoctorNormal"
																<% } %>
																><%=appData[i][3] %></span></p>
																<p><span
																<% if(i == 0) { %>
																	class="AppointmentnewSPL"
																<% } else { %>
																	class="AppointmentnewSPLNormal"
																<% } %>
																><%=appData[i][4] %></span></p>
																<p><span class="contenbold"><%=appData[i][5] %> (<%=appData[i][6] %>)</span></p> 
															</div>
														</div>
													</div>
											<!-- Stripbox ends here-->
											<%
												}
											%>

										</div>
										<div class="centeralign">
											<span><a href="UpcomingAppoinments.html"  class="PPbtn hmepgbtn">Show all appointments</a></span> 
										</div>
									</div>
								</div>
								<div class="cellindex dividerindex">
									<!-- page divider -->
									<div id="dividercell"></div>
									<!-- page divider -->
								</div>
								<div class="cellindex Appdivs"  >
									<div id="UpcomingAppindex">
										<div class="appTitlehomepg">            Recently published results            </div>
										<div id="HomepageBox">
											<!-- Stripbox-->
											<div id="stripbox">
												<div class="row">
												<!-- Stripicon-->
													<div id="StripSpaceA">
														<div id="Resulticon">
															<img src="images/lab.png"/>
														</div>
											
													</div>
													<!-- Stripcontent-->
													<div id="StripSpaceB">
														<p><span class="AppointmentNewDoctor">Blood analysis</span></p>
														<p><span class="AppointmentnewSPL"> Dr Alex</span></p>
														<p><span class="contenbold">Nov 10, 2012 at 11:26pm</span> 
															<img class="printPDF" src="images/PDF.png" width="16" height="16"> 
															<img class="printPDF"src="images/print.png" width="16" height="16">
														</p>
													</div>
										
												</div>
											</div>
											<!-- Stripbox-->  
							
											<!-- Stripbox-->
											<div id="stripbox">
												<div class="row">
												<!-- Stripicon-->
													<div id="StripSpaceA">
														<div id="Resulticon">
															<img src="images/radiology.png"/>
														</div>
													</div>
												<!-- Stripcontent-->
													<div id="StripSpaceB">
														<p><span class="AppointmentNewDoctorNormal">CT Brain</span></p>
														<p><span class="AppointmentnewSPLNormal"> Dr Sam</span></p>
														<p><span class="contentnormal">Nov 10, 2012 at 11:26pm</span> <img  class="printPDF" src="images/PDF.png" width="16" height="16"> <img  class="printPDF" src="images/print.png" width="16" height="16"></p>   
													</div>
												</div>
											</div>
											<!-- Stripbox--> 
							  
											<!-- Stripbox-->
											<div id="stripbox">
												<div class="row">
												<!-- Stripicon-->
													<div id="StripSpaceA">
														<div id="Resulticon">
															<img src="images/radiology.png"/>
														</div>
													</div>
												<!-- Stripcontent-->
													<div id="StripSpaceB">
														<p><span class="AppointmentNewDoctorNormal">CT Brain</span></p>
														<p><span class="AppointmentnewSPLNormal"> Dr Sam</span></p>
														<p><span class="contentnormal">Nov 10, 2012 at 11:26pm</span> <img  class="printPDF" src="images/PDF.png" width="16" height="16"> <img  class="printPDF" src="images/print.png" width="16" height="16"></p>
													</div>
												</div>
											</div>
											<!-- Stripbox-->  
							  
											<!-- Stripbox-->
											<div id="stripbox">
												<div class="row">
												<!-- Stripicon-->
													<div id="StripSpaceA">
														<div id="Resulticon">
															<img src="images/lab.png"/>
														</div>
													</div>
													<!-- Stripcontent-->
													<div id="StripSpaceB">
														<p><span class="AppointmentNewDoctorNormal">Blood Sugar</span></p>
														<p><span class="AppointmentnewSPLNormal"> Dr Alex</span></p>
														<p><span class="contentnormal">Nov 10, 2012 at 11:26pm</span> <img  class="printPDF" src="images/PDF.png" width="16" height="16"> <img  class="printPDF" src="images/print.png" width="16" height="16"></p>
													</div>  
												</div>
											</div>
											<!-- Stripbox--> 
										</div>
										<div class="centeralign">
											<span><a href="Result.html"  class="PPbtn hmepgbtn">Show all results</a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					
					</div>
				</div> 
			</div>
			
		
       <!-- #Content Area-->
        
	</div>
    <!-- #content-->
	
	<div class="Footerbg">
		
	
		<div id="footeradd" >
			<p class="FooterTitle"> Get in Touch! </p>
			<div class="FooterContent">
				<p class="Footeradd"> Envato Marketplace, Melbourne St, Sydney</p>
			
			</div>
			
        </div>
		<div id="poweredby">
			<p class="poweredby">Powered by <img src="images/csc.png" width="25" height="14"></p>
        </div>
		
	
	</div>
	
</div>
<!-- #wrapper -->


</body>
</html>
	<script>
		$('#calendar').datepicker({
			inline: true,
			firstDay: 1,
			showOtherMonths: true,
			dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
		});
	</script>
