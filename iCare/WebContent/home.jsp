<%@ page import="java.io.*,java.util.*" %>
<%
String name = (String)session.getAttribute("sessUname");
if(name == null)  {
	response.sendRedirect("insuranceClaim.jsp");
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
	<!-- <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script> -->
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
						<div id="Apptime">
							<div class="calender ">
							<img src="images/calendar.PNG"/>
							</div>
							<div class="ApptitleReschedule">Preferred time</div>
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
										<div class="appTitlehomepg">            Upcoming appointments            </div>
										<div id="HomepageBox">
											<!-- Stripbox starts here-->
											<div id="stripbox">
												<div class="row">
												<!-- Stripicon-->
													<div id="StripSpaceA">
														<div id="StripIcon">
															<div id="StripIconHeader">
																Nov - 2012
															</div>
															<div id="StripDate">
																18
															</div>
															<div id="Stripday">
																Friday
															</div>
														</div>
													</div>
													<!-- Stripcontent-->
													<div id="StripSpaceB">
														<p><span class="AppointmentNewDoctor">Dr.Jonathan</span></p>
														<p><span class="AppointmentnewSPL">Dermatology</span></p>
														<p><span class="contenbold">10:00 - 10:30</span></p> 
													</div>
												</div>
											</div>
											<!-- Stripbox ends here-->   
									
											
											<!-- Stripbox-->
											<div id="stripbox">
												<div class="row">
												<!-- Stripicon-->
													<div id="StripSpaceA">
														<div id="StripIcon">
															<div id="StripIconHeader">
																Nov - 2012
															</div>
															<div id="StripDate">
																20
															</div>
															<div id="Stripday">
																Friday
															</div>
														</div>
													</div>
													<!-- Stripcontent-->
													<div id="StripSpaceB">
														<p><span class="AppointmentNewDoctorNormal">Dr.Jonathan</span></p>
														<p><span class="AppointmentnewSPLNormal">General medicine</span></p>
														<p><span class="contentnormal">10:00 - 10:30</span></p>
													</div>
												</div>
											</div>
											<!-- Stripbox-->   
								  
											<!-- Stripbox-->
											<div id="stripbox">
												<div class="row">
												<!-- Stripicon-->
													<div id="StripSpaceA">
														<div id="StripIcon">
															<div id="StripIconHeader">
																Nov - 2012
															</div>
															<div id="StripDate">
																22
															</div>
															<div id="Stripday">
																Friday
															</div>
														</div>
													</div>
													<!-- Stripcontent-->
													<div id="StripSpaceB">
														<p><span class="AppointmentNewDoctorNormal">Dr.Jonathan</span></p>
														<p><span class="AppointmentnewSPLNormal">General medicine</span></p>
														<p><span class="contentnormal">10:00 - 10:30</span></p>
													</div>
												</div>
											</div>
											<!-- Stripbox-->
											
											<!-- Stripbox-->
											<div id="stripbox">
												<div class="row">
												<!-- Stripicon-->
													<div id="StripSpaceA">
														<div id="StripIcon">
															<div id="StripIconHeader">
																Nov - 2012
															</div>
															<div id="StripDate">
																27
															</div>
															<div id="Stripday">
																Friday
															</div>
														</div>
													</div>
													<!-- Stripcontent-->
													<div id="StripSpaceB">
														<p><span class="AppointmentNewDoctorNormal">Dr.Jonathan</span></p>
														<p><span class="AppointmentnewSPLNormal">General medicine</span></p>
														<p><span class="contentnormal">10:00 - 10:30</span></p>
													</div>
												</div>
											</div>
											<!-- Stripbox-->
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
			<p class="poweredby">Powered by :</p>
        </div>
		
	
	</div>
	
</div>
<!-- #wrapper -->


</body>
</html>