<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="ShowCoursePdf.aspx.cs" Inherits="helloWorld.Users.ShowCoursePdf" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">Course Pdf</h4>
        <div class="col-lg-12">
            <div class="add_user_class">
                <div class="flot_left_class_ma margin_class">
                    <asp:HiddenField ID="hide_CourseId" runat="server" />
                    <div>
                    <div id="my_pdf_viewer">
		                <div id="canvas_container">
			                <canvas id="pdf_renderer"></canvas>
		                </div>		                
	                </div>
                    </div>

                    <input id="current_page" value="1" type="number" class="footer-txt"  disabled="disabled"/>&nbsp;&nbsp;<span>Of</span>&nbsp;&nbsp;
                <input id="total_page" type="number" class="footer-txt" disabled="disabled"/>
                <a href="javascript:void(0);" id="go_Previous" class="btn btn-info" style="opacity:0.5;" >Previous</a>
                <a href="javascript:void(0);" id="go_next" class="btn btn-danger" style="opacity:0.5;" >Next</a>
                <input id="Reverse_Time" type="number" class="footer-txt" style="width:40px;" disabled="disabled"/>
                <asp:Button  align="Left" ID="ShowButton" runat="server" Text="Start Quiz" OnClick="ShowButton_Click" Width="150px" style="display:none;" CssClass="btn btn-success showquize"/>
                    
                </div>
            </div>
        </div>
   </div>
    <%--<table class="tbl">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lvlheading" runat="server" Text="Courses to be Completed"></asp:Label></td>
            <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="Blue" Text="Station:"></asp:Label>
                
                    <asp:Label ID="lvlStation" runat="server" Font-Bold="True" ForeColor="Blue" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                
                <asp:Label ID="Label2" runat="server" Text="Welcome " ForeColor="#00CC3A"></asp:Label>
                <asp:Label ID="lvlName" runat="server" Text="label" BackColor="White" BorderColor="#66FF99" Font-Bold="True" Font-Italic="False" ForeColor="#00CC00"></asp:Label>
                &nbsp; &nbsp;</td>
            
           
        </tr>
          <tr>
            <td colspan="2">
                
                </td>
              </tr> 
        <tr>
            <td colspan="2">
                                
            </td>
        </tr>        
       
    </table>--%>

    
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="CPH_Scripts">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.0.943/pdf.min.js"></script>
<script type="text/javascript">
    var myState = {
        pdf: null,
        currentPage: 1,
        zoom: 1
    };

    var keysDown = {};

    document.onkeydown = function (e) {
        keysDown[e.keyCode] = true

        if (keysDown[83] && keysDown[75] && keysDown[73] && keysDown[80]) {
            keysDown = {}
            myState.currentPage = myState.pdf._pdfInfo.numPages
            render();
            
            document.getElementById("go_next").style.display = "none";
            document.getElementById("go_Previous").style.display = "none";
            document.getElementById("Reverse_Time").style.display = "none";
            document.getElementsByClassName("showquize")[0].style.display = "inline-block";
            document.getElementById("current_page")
                .value = myState.currentPage;
        }
    }

    document.onkeyup = function (e) {
        delete keysDown[e.keyCode]
    }

    pdfjsLib.getDocument('FileCS.ashx?Id=<%= CourseId %>').then((pdf) => {
        myState.pdf = pdf;
        document.getElementById("total_page")
            .value = pdf._pdfInfo.numPages;

        render();

    });

    function render() {
        myState.pdf.getPage(myState.currentPage).then((page) => {

            var canvas = document.getElementById("pdf_renderer");
            var ctx = canvas.getContext('2d');

            var viewport = page.getViewport(myState.zoom);

            canvas.width = viewport.width;
            canvas.height = viewport.height;

            

            page.render({
                canvasContext: ctx,
                viewport: viewport
            });

        });
    }
    
    var iCount = 5;
    var iTotalPageVisited = 1;
    var myVar = setInterval(myTimer, 1000);

    document.getElementById('go_next')
        .addEventListener('click', (e) => {
            LoadNextPage();
        });

    document.getElementById('go_Previous')
        .addEventListener('click', (e) => {
            LoadPreviousPage();
        })
    function LoadPreviousPage() {
        if(myState.currentPage>1)
        {
            iCount = 0;
            clearInterval(myVar);
            document.getElementById("go_next").style.opacity = "1";
            document.getElementById("Reverse_Time").value = iCount;
            myState.currentPage -= 1;
            document.getElementById("current_page")
                .value = myState.currentPage;
            render();
            if(myState.currentPage==1)
            {
                document.getElementById("go_Previous").style.opacity = "0.5";
            }
        }
        else {
            document.getElementById("go_Previous").style.opacity = "0.5";
        }
    }
    function LoadNextPage() {
        if (iCount == 0) {
            
            if (myState.pdf == null
                || myState.currentPage >= myState.pdf
                    ._pdfInfo.numPages) {
                // peter: Fix a bug where for PDFs with one page, the "Start Quiz" button
                // doesn't appear after clicking "Next"
                document.getElementById("go_Previous").style.display = "none";
                document.getElementById("go_next").style.display = "none";
                document.getElementById("Reverse_Time").style.display = "none";
                document.getElementsByClassName("showquize")[0].style.display = "inline-block";
                return
            }

            if (iTotalPageVisited == myState.currentPage)
            {
                iCount = 5;
                myVar = setInterval(myTimer, 1000);
                document.getElementById("go_next").style.opacity = "0.5";
                iTotalPageVisited = iTotalPageVisited + 1;
            }
            else {
                iCount = 0;
                document.getElementById("go_next").style.opacity = "1";
            }
            
            
            document.getElementById("go_Previous").style.opacity = "1";
            document.getElementById("Reverse_Time").value = iCount;
            
            myState.currentPage += 1;
            document.getElementById("current_page")
                .value = myState.currentPage;
            
             
            if (myState.currentPage == myState.pdf._pdfInfo.numPages) {
                document.getElementById("go_Previous").style.display = "none";
                document.getElementById("go_next").style.display = "none";
                document.getElementById("Reverse_Time").style.display = "none";
                document.getElementsByClassName("showquize")[0].style.display = "inline-block";

            }
            render();
        }
        else {
            return false;
        }
    }
    function myTimer() {
        iCount = iCount - 1;
        document.getElementById("Reverse_Time").value = iCount;
        if (iCount <= 0) {
            clearInterval(myVar);
            if (myState.currentPage == myState.pdf._pdfInfo.numPages) {
                document.getElementById("go_next").style.display = "none";
                document.getElementById("go_Previous").style.display = "none";
                document.getElementById("Reverse_Time").style.display = "none";
                document.getElementsByClassName("showquize")[0].style.display = "inline-block";

            }
            else {
                document.getElementById("go_next").style.opacity = "1";
            }

        }

    }
</script>
</asp:Content>