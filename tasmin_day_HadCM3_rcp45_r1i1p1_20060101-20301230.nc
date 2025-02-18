








<!-- set page scope variables -->


















<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
		
		<!-- page title -->
		<title>OpenID Login Page</title>
		
		<!-- common <head> content -->
		

<link rel="stylesheet" type="text/css" href="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/reset-fonts-grids/reset-fonts-grids.css" />
<link rel="stylesheet" type="text/css" href="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/assets/skins/sam/skin.css" />
<link rel="stylesheet" type="text/css" href="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/container/assets/skins/sam/container.css" />
<link rel="stylesheet" type="text/css" href="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/button/assets/skins/sam/button.css" />

<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/yahoo/yahoo-min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/event/event-min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/json/json-min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/get/get-min.js" type="text/javascript"></script>

<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/utilities/utilities.js" type="text/javascript"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/container/container-min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/element/element-min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/button/button-min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/yahoo-dom-event/yahoo-dom-event.js" type="text/javascript"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/animation/animation-min.js" type="text/javascript"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/connection/connection-min.js" type="text/javascript"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/datasource/datasource-min.js" type="text/javascript"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/dragdrop/dragdrop-min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/datatable/datatable-min.js" type="text/javascript"></script> 

<link rel="stylesheet" type="text/css" href="/esg-orp/themes/base.css" />
		
		<!-- page specific javascript -->
		<!-- automatic redirect if "openid" parameter is detected -->
		    
	</head>
	
	<body class="yui-skin-sam">
	
		<table align="center" width="900px">
		
			<tr><td>








<style type="text/css">

#header {
    background: #FFFFFF;
    color: #ffc;
    overflow: hidden;
    height: 80px;
    margin: 0px;
    padding: 0px;
}
#logo_esgf {
    float: left;
    background: #FFFFFF;
    margin-top: 0px;
    padding-bottom: 0px;
}
#logo_institution {
    float: right;
    background: #FFFFFF;
    margin-top: 0px;
    padding-bottom: 0px;
}
</style>


<div id="header">
    <div id="logo_esgf">
         <img src='images/esgf.png' style="height:76px; padding:2px" />
    </div>
    <div id="logo_institution">
    	
    	
    </div>
</div></td></tr>
			<tr><td><hr class="line"/></td></tr>
			<tr><td><h1>Data Access Login</h1>
					






<p/>&nbsp;<p/>The following URL requires authentication: 
<br/><b>http://esgf-data1.ceda.ac.uk/thredds/fileServer/esg_dataroot/cmip5/output1/MOHC/HadCM3/rcp45/day/atmos/day/r1i1p1/v20131125/tasmin/tasmin_day_HadCM3_rcp45_r1i1p1_20060101-20301230.nc</b>

<p>&nbsp;</p>Please type in your OpenID URL at the OpenID prompt below or select 
your home OpenID Provider from one of the options provided in the drop-down list

<!-- user is NOT authenticated -->

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">

<!-- kltsa 13/08/2014 : : A select element with auto complete 
                         (Functionality from : http://jqueryui.com/autocomplete/#combobox). 
-->
<style>
.custom-combobox 
{
  position: relative;
  display: inline-block;
  text-align:left;
}
.custom-combobox-toggle 
{
  position: absolute;
  top: 0;
  bottom: 0;
  margin-left: 0px;
  padding: 0;
  /* support: IE7 */
  *height: 2.7em;
  *top: 0.1em;
  text-align:left;
}
.custom-combobox-input 
{
  top : 10
  margin: 10;
  text-align:left;
  padding: 0.5em;
  width: 600px;
  height: 16.8px;
  float:left;
}
</style>
				
		
<script language="javascript">

	(function($) {
		$
				.widget(
						"custom.combobox",
						{
							_create : function() {
								this.wrapper = $("<span>").addClass(
										"custom-combobox").insertAfter(
										this.element);
								this.element.hide();
								this._createAutocomplete();
								this._createShowAllButton();
							},
							_createAutocomplete : function() {
								var selected = this.element
										.children(":selected"), value = selected
										.val() ? selected.text() : "";
								this.input = $("<input>")
										.appendTo(this.wrapper)
										.val(value)
										.attr("title", "")
										.addClass(
												"custom-combobox-input ui-widget ui-widget-content ui-state-default ui-corner-left")
										.autocomplete({
											delay : 0,
											minLength : 0,
											source : $.proxy(this, "_source")
										}).tooltip({
											tooltipClass : "ui-state-highlight"
										});
								this._on(this.input, {
									autocompleteselect : function(event, ui) {
										ui.item.option.selected = true;
										this._trigger("select", event, {
											item : ui.item.option
										});
									},
									autocompletechange : "_removeIfInvalid"
								});
							},
							_createShowAllButton : function() {
								var input = this.input, wasOpen = false;
								$("<a>")
										.attr("tabIndex", -1)
										.attr("title", "Show All Items")
										.tooltip()
										.appendTo(this.wrapper)
										.button(
												{
													icons : {
														primary : "ui-icon-triangle-1-s"
													},
													text : false
												})
										.removeClass("ui-corner-all")
										.addClass(
												"custom-combobox-toggle ui-corner-right")
										.mousedown(
												function() {
													wasOpen = input
															.autocomplete(
																	"widget")
															.is(":visible");
												}).click(function() {
											input.focus();
											// Close if already visible
											if (wasOpen) {
												return;
											}
											// Pass empty string as value to search for, displaying all results
											input.autocomplete("search", "");
										});
							},
							_source : function(request, response) {
								var matcher = new RegExp($.ui.autocomplete
										.escapeRegex(request.term), "i");
								response(this.element
										.children("option")
										.map(
												function() {
													var text = $(this).text();
													if (this.value
															&& (!request.term || matcher
																	.test(text)))
														return {
															label : text,
															value : text,
															option : this
														};
												}));
							},
							_removeIfInvalid : function(event, ui) {
								// Selected an item, nothing to do
								if (ui.item) {
									return;
								}
								// Search for a match (case-insensitive)
								var value = this.input.val(), valueLowerCase = value
										.toLowerCase(), valid = false;
								this.element
										.children("option")
										.each(
												function() {
													if ($(this).text()
															.toLowerCase() === valueLowerCase) {
														this.selected = valid = true;
														return false;
													}

												});
								// Found a match, nothing to do
								if (valid) {
									return;
								}

								// Remove invalid value
								this.input.val(value).attr(
										"title",
										"\"" + value
												+ "\"  didn't match any item.")
										.tooltip("open");

								/* kltsa 15/08/2014 : if option does not exists, add it.*/
								select = document
										.getElementById('openid_identifier');
								var opt = document.createElement('option');
								opt.value = value;
								opt.innerHTML = value;
								select.appendChild(opt);
								select.value = value;
								this.selected = valid = true;
								return false;

								//this.element.val("");
								this._delay(function() {
									this.input.tooltip("close").attr("title",
											"");
								}, 5500);
								this.input.autocomplete("instance").term = "";
							},
							_destroy : function() {
								this.wrapper.remove();
								this.element.show();
							}
						});
	})(jQuery);
	$(function() {
		$("#openid_identifier").combobox();		
	});
</script>

<p/>&nbsp;<p/>
<form method="post" action="/esg-orp/j_spring_openid_security_check.htm">
<script language="javascript">
function sanitize() 
{
  $("#SubmitButton").focus();	
  openidElement = document.getElementById("openid_identifier");
  openid = openidElement.value;
  openid = openid.replace("http:","https:")
                   .replace(/[\>\<"'\&$()\[\]\{\}%]/gi,'_')
	               .replace(/^\s*/, '').replace(/\s*$/, '');
  openidElement.value = openid;
}
</script>	
			
<table align="center">
<tr>
<td>
<div class="panel">
<table border="0" align="center">
<caption>Status: not logged-in</caption>
<tr>
<td align="right" valign="middle">
<img src='/esg-orp/themes/openid.png' width="80" />
</td>
<td>
<table>
<tr>
<td align="right" class="required">OpenID</td>
<td align="left"  WIDTH="650">









<select name="openid_identifier" id="openid_identifier">

 <option value=https://></option>

 <option value=https://esgf-node.llnl.gov/esgf-idp/openid/>DOE Lawrence Livermore National Laboratory (LLNL)</option>

 <option value=https://esgdata.gfdl.noaa.gov/esgf-idp/openid/>NOAA Geophysical Fluid Dynamics Laboratory (GFDL)</option>

 <option value=https://esgf.nci.org.au/esgf-idp/openid/>National Computational Infrastructure (NCI)</option>

 <option value=https://ceda.ac.uk/openid/>Centre for Environmental Data Analysis (CEDA)</option>

 <option value=https://esgf-node.ipsl.upmc.fr/esgf-idp/openid/>Institut Pierre Simon Laplace (IPSL)</option>

 <option value=https://esg-dn1.nsc.liu.se/esgf-idp/openid/>National Supercomputer Center at Linkoping University (NSC-LIU)</option>

 <option value=https://esgf-data.dkrz.de/esgf-idp/openid/>German Climate Computing Centre (DKRZ)</option>

</select>

</td>
<td  align="center">
<input type="submit" value="GO" style="height:30px; width:50px" id="SubmitButton" onclick="javascript:sanitize()"/>
</td>												
</tr>
<tr>
<td align="center" colspan="4">
<input type="checkbox" name="rememberOpenid" checked="checked"/> <span class="highlight">Remember my OpenID</span> on this computer
</td>
</tr>													
</table>
</td>
</tr>
</table>
</div>
</td>
</tr>
</table>
</form>		
<br>
				
				

<p/>&nbsp;<p/>After logging in, you will be redirected to: 
<br/>
<b>http://esgf-data1.ceda.ac.uk/thredds/fileServer/esg_dataroot/cmip5/output1/MOHC/HadCM3/rcp45/day/atmos/day/r1i1p1/v20131125/tasmin/tasmin_day_HadCM3_rcp45_r1i1p1_20060101-20301230.nc</b>
<p/>&nbsp;<p/></td></tr>
			<tr><td></td></tr>
		
		</table>
		
	</body>
	
</html>
