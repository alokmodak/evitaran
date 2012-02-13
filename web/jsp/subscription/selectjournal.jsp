<%--
    Document   : Select Journal
--%>
<%@page import="IAS.Class.util"%>
<script type="text/javascript">
    var journalInfo = {};
    $(document).ready(function(){

        //jdsAppend("CMasterData?md=journals", "journalName", "journalName");

        $.ajax({
            type: "GET",
            url: "CMasterData?md=journals",
            dataType: "xml",
            success: function(xml){

                $(xml).find("row").each(function(){
                    $(this).find("journalName").each(function(){
                        journalName = $(this).text();
                        $("#journalName").append("<option value='" + journalName + "'>" + journalName + "</option");
                    });
                    $(this).find("journalCode").each(function(){
                        journalCode = $(this).text();
                    });
                    $(this).find("price").each(function(){
                        journalPrice = $(this).text();
                    });
                    // create an array of objects, indexed by the journal name.
                    // the object has details like code and price.
                    journalInfo[journalName] = {code:journalCode,price:journalPrice,discount:10};
                });
            },
            complete: function(){
                var html=null;
            },
            error: function() {
                alert("XML File could not be found");
            }
        });

        $("#newSubscription").jqGrid({
            url:'',
            //data: "subscriberNumber=" + $("#subscriberNumber").val(),
            datatype: 'local',
            mtype: 'GET',
            height: 260,
            autowidth: true,
            forceFit: true,
            sortable: true,
            loadonce: false,
            rownumbers: true,
            sortname:'subscriptionDate',
            emptyrecords: "No subscription(s) to view",
            loadtext: "Loading...",
            colNames: ['Journal Name','Journal Code','Journal Cost (INR)','Start Year','End Year','Copies','Discount(%)','Total (INR)','Delete'],
            colModel: [
                {
                    name:"journalName",
                    index:"journalName",
                    align:"center",
                    width:140

                },
                {
                    name:"journalCode",
                    index:"journalCode",
                    align:"center",
                    width:60,
                    key: true
                },
                {
                    name:"journalCost",
                    index:"journalCost",
                    align:"center",
                    width:60
                },
                {
                    name:"startYear",
                    index:"startYear",
                    width:60,
                    align:"center"
                },
                {
                    name:"endYear",
                    index:"endYear",
                    width:60,
                    align:"center"
                },
                {
                    name:"Copies",
                    index:"Copies",
                    width:60,
                    align:"center"
                },
                {
                    name:"Discount",
                    index:"Discount",
                    width:60,
                    align:"center"
                },
                {
                    name:"Total",
                    index:"Total",
                    width:60,
                    align:"center"
                },
                {
                    name:"delete",
                    index:"delete",
                    width:40,
                    align:"center"
                }

            ],
            caption: '&nbsp;',
            viewrecords: true,
            gridview: true,
            rowNum:20
        });
    });


</script>

<fieldset class="subMainFieldSet">
    <legend>Select Journal</legend>

    <div class="IASFormFieldDiv">
        <span class="IASFormDivSpanLabel" style="width:auto;">
            <label>Start Year:</label>
        </span>

        <span class="IASFormDivSpanInputBoxLessMargin">
            <select class="IASComboBoxMandatory" TABINDEX="11" name="subscriptionStartYear" id="subscriptionStartYear" onchange="setEndYear()">
                <%
                    int year = Integer.parseInt(util.getDateString("yyyy"));
                    for (int i = year; i <= year + 4; i++) {
                        out.println("<option value=\"" + i + "\">" + i + "</option>");
                    }
                %>
            </select>
        </span>

        <span class="IASFormDivSpanLabel" style="margin-left:15px;width: auto;">
            <label>End Year:</label>
        </span>

        <span class="IASFormDivSpanInputBoxLessMargin">
            <select class="IASComboBoxMandatory" TABINDEX="11" name="endYear" id="endYear">
                <%
                    for (int j = 0; j <= 4; j++) {
                        out.println("<option value =\"" + (j+year) + "\">" + (j+year) + "</option>");
                    }
                %>
            </select>
        </span>

        <span class="IASFormDivSpanLabel" style="margin-left:15px;width: auto;">
            <label>Journal name:</label>
        </span>

        <span class="IASFormDivSpanInputBoxLessMargin">
            <select class="IASComboBoxMandatory" TABINDEX="11" name="journalName" id="journalName">
            </select>
        </span>

        <span class="IASFormDivSpanLabel" style="margin-left:15px;width: auto;">
            <label>All Journals:</label>
        </span>
        <span class="IASFormDivSpanInputBoxLessMargin">
            <input class="IASCheckBox" TABINDEX="9" type="checkbox" name="selalljrnl" id="selAllJrnl" value="1" onclick="disableJrnl()"/>
        </span>


        <span class="IASFormDivSpanLabel" style="margin-left:15px;width: auto;">
            <label>Copies:</label>
        </span>

        <span class="IASFormDivSpanInputBoxLessMargin">
            <select class="IASComboBoxMandatory" TABINDEX="11" name="copies" id="copies">
                <%
                    for (int i = 1; i <= 10; i++) {
                        out.println("<option value =\"" + i + "\">" + i + "</option>");
                    }
                %>
            </select>
        </span>
        <span class="IASFormDivSpanInputBox" style="margin-left:35px;">
            <input class="IASButton" TABINDEX="14" type="button" value="Add" id="btnAddLine" name="btnAddLine" onclick="addJournal()"/>
            <input class="IASButton" TABINDEX="15" type="button" value="Delete All" id="btnDeleteAll" name="btnDeleteAll" onclick="deleteRow('All')"/>
        </span>
    </div>
    <div class="IASFormFieldDiv" style="margin-top: 15px;">
        <table class="datatable" id="newSubscription"></table>
        <div id="pager"></div>
    </div>
</fieldset>



