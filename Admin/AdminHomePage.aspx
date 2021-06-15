<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="helloWorld.Admin.AdminHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">        
                    
        <div class="form-row col-md-12">
            <div class="form-row col-md-6">
                <asp:Label ID="Overall" runat="server" ForeColor="#F1F7FC"></asp:Label>

                <div id="donutchart"></div>
                <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                <script type="text/javascript">

                    var value = document.getElementById("<%= Overall.ClientID %>").innerHTML;

                    var a = parseFloat(value);
                    var b = 100 - a;

                    // Load google charts
                    google.charts.load('current', { 'packages': ['corechart'] });
                    google.charts.setOnLoadCallback(drawChart);

                    // Draw the chart and set the chart values
                    function drawChart() {
                        var data = google.visualization.arrayToDataTable([
                            ['Task', 'Hours per Day'],
                            ['Compliant', a],
                            ['Non-Compliant', b]
                        ]);

                        // Optional; add a title and set the width and height of the chart
                        var options = {
                            title: 'Overall Station Report',
                            titleTextStyle: {                                                                
                                fontSize: 26, 
                                bold: true,
                            },
                            is3D: true,
                            width:550, height:400,
                            pieHole: 0.4,
                        };

                        // Display the chart inside the <div> element with id="piechart"
                        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
                        chart.draw(data, options);
                    }
                </script>



            </div>
            <div class="form-row col-md-6 bg_class">
                <asp:Label ID="lvlReport" runat="server" ForeColor="#4662ef" ></asp:Label>

                <div class="form-group col-md-12">
                    <h4 class="new_h4">Station Compliance Report</h4>
                </div>
                <div class="form-group col-md-7" style="padding-left: 30px;">
                <label style="color: #fff;">Stations:</label>
                    <asp:DropDownList ID="DDStations" CssClass="locatin_select_class1" runat="server" DataSourceID="lvlStations" DataTextField="Location" DataValueField="Location"></asp:DropDownList>
                    <asp:SqlDataSource ID="lvlStations" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Location] FROM [lLocation]"></asp:SqlDataSource>
                </div>
                 
                 <div class="form-group col-md-2">
                    <asp:Button ID="btnok" runat="server" CssClass="new_add_btn" style="margin-top: 29px;" OnClick="btnok_Click" Text="Run" />                    
                 </div>
                
                <div id="piechart_3d"></div>
                                

                <script type="text/javascript">

                    var value2 = document.getElementById("<%= lvlReport.ClientID %>").innerHTML;

                    var ab = parseFloat(value2);
                    var bc = 100 - ab;

                    // Load google charts
                    google.charts.load('current', { 'packages': ['corechart'] });
                    google.charts.setOnLoadCallback(drawChart);

                    // Draw the chart and set the chart values
                    function drawChart() {
                        var data = google.visualization.arrayToDataTable([
                            ['Task', 'Hours per Day'],
                            ['Compliant', ab],
                            ['Non-Compliant', bc]
                        ]);

                        // Optional; add a title and set the width and height of the chart
                        var options = {
                            title: '',
                            backgroundColor: '#4662ef',
                            width: 500, height: 400,
                            is3D: true,
                        };

                        // Display the chart inside the <div> element with id="piechart"
                        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
                        chart.draw(data, options);
                    }
                </script>



            </div>


        </div>

    </div>

</asp:Content>
