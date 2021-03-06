<%--
    Document   : List Outstanding Bill - Print
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../templates/style.jsp" %>
        <link rel="stylesheet" type="text/css" href="css/report/outstandingBill.css" />

        <title>List and Print Outstanding Bill</title>

        <script type="text/javascript" src="<%=request.getContextPath() + "/js/reports/listOutstandingBalance.js"%>"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                jdsAppend("<%=request.getContextPath() + "/CMasterData?md=journalGroupName"%>","journalGroupName","journalGroupName");
            });
        </script>
        <script type="text/javascript">
            // var selectedJournal = 0;
            var selectedId = 0;
            //initally set to false, after the first search the flag is set to true
            var isPageLoaded = false;

            $(function(){

                $("#balanceTable").jqGrid({
                    url:"<%=request.getContextPath() + "/reports?action=listOutstandingBalance"%>",
                    datatype: 'xml',
                    mtype: 'GET',
                    width: '100%',
                    height: Constants.jqgrid.HEIGHT,
                    autowidth: true,
                    forceFit: true,
                    sortable: true,
                    loadonce: true,
                    rownumbers: true,
                    emptyrecords: "No Journal",
                    loadtext: "Loading...",
                    colNames:['Sub No','Journal Codes','Balance','Period', 'Pro. Inv. No.', 'Inv Date'],
                    colModel :[
                        {name:'subscriberNumber', index:'subscriberNumber', width:50, align:'center', xmlmap:'subscriberNumber'},
                        {name:'journalCode', index:'journalCode', width:180, align:'center', xmlmap:'journalCode'},
                        {name:'balance', index:'balance', width:80, align:'center', xmlmap:'balance'},
                        {name:'period', index:'period', width:80, align:'center', xmlmap:'period'},
                        {name:'proInvNo', index:'proInvNo', width:80, align:'center', xmlmap:'proInvNo'},
                        {name:'proInvDate', index:'proInvDate', width:80, align:'center', xmlmap:'proInvDate'}
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
                    gridComplete: function() {
                        var ids = jQuery("#balanceTable").jqGrid('getDataIDs');
                        if(ids.length > 0){
                            $("#printReportBtn").button("enable");
                            $("#printReportBtnExcel").button("enable");
                        }
                    },
                    beforeRequest: function(){
                        return isPageLoaded;
                    },
                    loadError: function(xhr,status,error){
                        alert("Failed getting data from server" + status);
                    }

                });

            });

            jQuery("#balanceTable").jqGrid('navGrid','#pager',
                // Which buttons to show
                {edit:false,add:false,del:false,search:true},
                // Edit options
                {},
                // Add options
                {},
                // Delete options
                {},
                // Search options
                {multipleGroup:true, multipleSearch:true}
            );

            // called when the search button is clicked
            function getOutstandingBalance(){
                if($("#periodStart").val() == 0 && $("#periodEnd").val() == 0 && $("#subEnd").val() == 0 && ("#selall:checked").length  == 0){
                    alert("Atleast one search parameter should be selected");
                }
                else
                {
                    isPageLoaded = true;

                    jQuery("#balanceTable").setGridParam({postData:
                            {periodStart          : $("#periodStart").val(),
                            periodEnd            : $("#periodEnd").val(),
                            subEnd               : $("#subEnd").val(),
                            totalBalance         : $("#selall:checked").length
                        }});
                    jQuery("#balanceTable").setGridParam({ datatype: "xml" });
                    jQuery("#balanceTable").trigger("clearGridData");
                    jQuery("#balanceTable").trigger("reloadGrid");

                    jQuery("#balanceTable").jqGrid('navGrid','#pager',
                        // Which buttons to show
                        {edit:false,add:false,del:false,search:true},
                        // Edit options
                        {},
                        // Add options
                        {},
                        // Delete options
                        {},
                        // Search options
                        {multipleGroup:true, multipleSearch:true}
                    );
                }
            }
            
            function printReportPdf()
            {
                var x = "printOutstandingBalance";
                $('#action').val(x);
            }
            
            function printReportExcel()
            {
                var x = "exportToExcelOutstandingBalance";
                $('#action').val(x);
            }             
        </script>
    </head>
    <body>
        <%@include file="../templates/layout.jsp" %>

        <div id="bodyContainer">
            <form method="post" action="<%=request.getContextPath() + "/reports"%>" name="listOutstandingBill">
                <div class="MainDiv">
                    <fieldset class="MainFieldset">
                        <legend>List and Print Outstanding Bill</legend>

                        <%-----------------------------------------------------------------------------------------------------%>
                        <%-- Search Criteria Field Set --%>
                        <%-----------------------------------------------------------------------------------------------------%>
                        <fieldset class="subMainFieldSet">
                            <legend>Search Criteria</legend>

                            <%-- Search Criteria left div --%>
                            <div class="IASFormLeftDiv">
                                <div class="IASFormFieldDiv">
                                    <label>For subscription ending in:</label>
                                    <select class="IASComboBoxWide allusers" TABINDEX="1" name="subEnd" id="subEnd">
                                        <option value="0">Select</option>
                                        <%
                                            for (int j = 1990; j <= 2050; j++) {
                                                out.println("<option value =\"" + j + "\">" + j + "</option>");
                                            }
                                        %>
                                    </select>
                                </div>
                                <div class="IASFormFieldDiv">
                                    <span class="IASFormDivSpanLabel">
                                        <label>Balance Till Date</label>
                                    </span>
                                    <span class="IASFormDivSpanInputBox">
                                        <input class="IASCheckBox allusers" TABINDEX="9" type="checkbox" name="selall" id="selall" onclick="getChecked()"/>
                                    </span>
                                </div>
                            </div>

                            <div class="IASFormRightDiv">
                                <div class="IASFormFieldDiv">
                                    <label>Subscription Between Period:</label>
                                    <select class="IASComboBox allusers" TABINDEX="1" name="periodStart" id="periodStart">
                                        <option value="0">Select</option>
                                        <%
                                            for (int j = 1990; j <= 2050; j++) {
                                                out.println("<option value =\"" + j + "\">" + j + "</option>");
                                            }
                                        %>
                                    </select>
                                    <label> and </label>
                                    <select class="IASComboBox allusers" TABINDEX="1" name="periodEnd" id="periodEnd">
                                        <option value="0">Select</option>
                                        <%
                                            for (int j = 1990; j <= 2050; j++) {
                                                out.println("<option value =\"" + j + "\">" + j + "</option>");
                                            }
                                        %>
                                    </select>
                                </div>
                            </div>
                            <div class="actionBtnDiv">
                                <button class="IASButton SearchButton allusers" TYPE="button" TABINDEX="3" onclick="getOutstandingBalance()" value="Get Balance">Search</button>
                            </div>
                        </fieldset>


                        <%-----------------------------------------------------------------------------------------------------%>
                        <%-- Search Result Field Set --%>
                        <%-----------------------------------------------------------------------------------------------------%>
                        <fieldset class="subMainFieldSet">
                            <table class="datatable" id="balanceTable"></table>
                            <div id="pager"></div>
                        </fieldset>

                        <%-----------------------------------------------------------------------------------------------------%>
                        <%-- Print Action Field Set --%>
                        <%-----------------------------------------------------------------------------------------------------%>

                        <input class="allusers" type="hidden" name="action" id="action"/>
                        <fieldset class="subMainFieldSet">
                            <div class="IASFormFieldDiv">
                                <div class="singleActionBtnDiv">
                                    <%--<input class="IASButton" type="button" value="Print" disabled id="printReportBtn" onclick="printReport();"/>--%>
                                    <input class="IASButton allusers" type="submit" TABINDEX="4" value="Print - PDF" disabled id="printReportBtn" onclick="printReportPdf()"/>
                                    <input class="IASButton allusers" type="submit" TABINDEX="5" value="Print - Excel" disabled id="printReportBtnExcel" onclick="printReportExcel()"/>                                                                        
                                </div>
                            </div>
                        </fieldset>
                    </fieldset>
                </div>
            </form>
        </div>
    </body>
</html>