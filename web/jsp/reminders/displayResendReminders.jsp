<%--
    Document   : sendReminders.jsp
    Created on : Nov 15, 2011, 8:24:51 AM
    Author     : aloko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../templates/style.jsp" %>
        <link rel="stylesheet" type="text/css" href="css/reminder/displayReminder.css" />

        <title>Display and Resend Reminders</title>
        <script type="text/javascript" src="<%=request.getContextPath() + "/js/reminders/reminders.js"%>"></script>

        <script type="text/javascript">
            var selectedId = 0;
            //initally set to false, after the first search the flag is set to true
            var isPageLoaded = false;

            $(document).ready(function(){
                jQuery("#btnPrintSend").attr("disabled",true);
            });

            $(function(){

                $("#reminderTable").jqGrid({
                    url:"<%=request.getContextPath()%>/reminders",
                    datatype: 'xml',
                    mtype: 'GET',
                    width: '100%',
                    height: 240,
                    autowidth: true,
                    forceFit: true,
                    sortable: true,
                    loadonce: true,
                    rownumbers: true,
                    emptyrecords: "No Reminders Found",
                    loadtext: "Loading...",
                    colNames:['Subscription Id','Subscriber Type','Subscriber Number','Subscriber Name', 'Invoice Number',
                        'Balance','Reminder Type','Reminder Date','Email'],
                    colModel :[
                        {name:'subId', index:'subId', width:10, align:'center', xmlmap:'subId'},
                        {name:'subtypecode', index:'subtypecode', width:80, align:'center', xmlmap:'subtypecode'},
                        {name:'subscriberNumber', index:'subscriberNumber', width:80, align:'center', xmlmap:'subscriberNumber'},
                        {name:'subscriberName', index:'subscriberName', width:80, align:'center', xmlmap:'subscriberName'},
                        {name:'invoiceNumber', index:'invoiceNumber', width:80, align:'center', xmlmap:'invoiceNumber'},                        
                        {name:'balance', index:'balance', width:80, align:'center', xmlmap:'balance'},
                        {name:'reminderType', index:'reminderType', width:50, align:'center', xmlmap:'reminderType'},
                        {name:'reminderDate', index:'reminderDate', width:50, align:'center', xmlmap:'reminderDate'},
                        {name:'email', index:'email', width:50, align:'center', xmlmap:'email'}
                    ],
                    xmlReader : {
                        root: "results",
                        row: "row",
                        page: "results>page",
                        total: "results>total",
                        records : "results>records",
                        repeatitems: false,
                        id: "id"
                    },
                    pager: '#pager',
                    rowNum:15,
                    rowList:[15,30,45],
                    viewrecords: true,
                    gridview: true,
                    caption: '&nbsp;',
                    editurl:"<%=request.getContextPath()%>/reminders?action=search",
                    gridComplete: function() {

                    },
                    beforeRequest: function(){
                        return isPageLoaded;
                    },
                    loadError: function(xhr,status,error){
                        alert("Failed getting data from server" + status);
                    }

                });

            });

            function search(){

                if (($("#reminderType").val() == 0) && (($("#to").val()) == 0 && ($("#from").val()) == 0)){
                    alert("Select Reminder Type and Date Range");
                }
                else {
                    isPageLoaded = true;
                    jQuery("#reminderTable").setGridParam({postData:
                            {
                            reminderType            : $("#reminderType").val(),
                            to                      : $("#to").val(),
                            from                      : $("#from").val(),
                            action                  : "search"
                        }});
                    jQuery("#reminderTable").setGridParam({ datatype: "xml" });
                    jQuery("#reminderTable").trigger("clearGridData");
                    jQuery("#reminderTable").trigger("reloadGrid");
                    jQuery("#btnPrintSend").attr("disabled",false);
                }
            }

            function resendReminders(){

                if ($("#reminderType").val() == 0) {
                    alert("Select Reminder Type");
                }

                else if($("reminderDate").val() == "") {
                    alert("Please try again after logging in again ");
                }
                else if($("medium").val() == "") {
                    alert("Select Medium for sending Reminders ");
                }
                else if($("#medium").val() == 'E') {
                    emailReminders();
                }
                else {
                    isPageLoaded = true;
                    $("#reminderFormId1").submit();
                    jQuery("#btnPrintSend").attr("disabled",false);
                }
            }

            // draw the date picker.
            jQueryDatePicker("from","to");
        </script>

    </head>
    <body>
        <%@include file="../templates/layout.jsp" %>

        <div id="bodyContainer">
            <form method="post" action="<%=request.getContextPath() + "/reminders?action=resend"%>" name="reminderForm" id="reminderFormId1">
                <div class="MainDiv">
                    <fieldset class="MainFieldset">
                        <legend>Display and Resend Reminders</legend>
                        <jsp:useBean class="IAS.Bean.reminder.reminderFormBean" id="reminderFormBean" scope="request"></jsp:useBean>

                        <%-----------------------------------------------------------------------------------------------------%>
                        <%-- Search Criteria Field Set --%>
                        <%-----------------------------------------------------------------------------------------------------%>
                        <fieldset class="subMainFieldSet">
                            <legend>Selection Criteria - Reminders</legend>
                            <div class="IASFormLeftDiv">
                                <div class="IASFormFieldDiv">
                                    <span class="IASFormDivSpanLabel">
                                        <label>Reminder Type</label>
                                    </span>
                                    <span class="IASFormDivSpanInputBox">
                                        <select class="IASComboBoxWideMandatory" TABINDEX="1" name="reminderType" id="reminderType">
                                            <option value ="1">Type 1 Reminder - Gentle</option>
                                            <option value ="2">Type 2 Reminder - Strong</option>
                                            <option value ="3">Type 3 Reminder - Harsh</option>
                                        </select>
                                    </span>
                                </div>
                            </div>
                            <div class="IASFormRightDiv">
                                <div class="IASFormFieldDiv">
                                    <span class="IASFormDivSpanLabel">
                                        <label>Reminder Date:</label>
                                    </span>
                                    <div class="dateDiv"></div>
                                    <span class="IASFormDivSpanInputBox">
                                        <input class="IASDateTextBox" TABINDEX="2" readonly size="10" type="text" id="from" name="from"/>
                                        <label> to </label>
                                        <input class="IASDateTextBox" TABINDEX="3" readonly size="10" type="text" id="to" name="to"/>
                                    </span>
                                </div>
                            </div>
                            <div class="actionBtnDiv">
                                <input class="IASButton" TABINDEX="4" type="button" value="Display" id="btnSearch" name="btnSearch" onclick="search()"/>
                            </div>
                        </fieldset>

                        <%-----------------------------------------------------------------------------------------------------%>
                        <%-- Search Result Field Set --%>
                        <%-----------------------------------------------------------------------------------------------------%>
                        <fieldset class="subMainFieldSet">
                            <table class="reminderTable" id="reminderTable"></table>
                            <div id="pager"></div>
                        </fieldset>
                        <fieldset class="subMainFieldSet">
                            <div class="IASFormFieldDiv">
                                <div id="printMedium">
                                    <span class="IASFormDivSpanLabel">
                                        <label>Medium</label>
                                    </span>
                                    <span class="IASFormDivSpanInputBox">
                                        <select class="IASComboBox" TABINDEX="5" name="medium" id="medium">
                                            <option value ="E">Email Only</option>
                                            <option value ="P">Print Only</option>
                                            <option value ="A">Print All</option>
                                        </select>
                                    </span>
                                </div>
                                <div id="printSendBtnDiv">
                                    <input class="IASButton" TABINDEX="6" type="button" value="Send/ Print Reminder" id="btnPrintSend" name="btnPrintSend" onclick="resendReminders()"/>
                                </div>
                                <div id="cancelBtnDiv">
                                    <input class="IASButton" TABINDEX="7" type="reset" value="Reset"/>
                                </div>
                            </div>
                        </fieldset>
                    </fieldset>
                </div>
            </form>
        </div>
    </body>
</html>