﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebControls.aspx.cs" Inherits="ASP.NetExample.WebControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="Layout.css" />
</head>
<body>
    <div class="header">Registration Form</div>
    <hr />
    <form id="form1" runat="server">
        <div class="row">

            <%---------------------------------------------------------------------------------------------------------------------%>
            <%--column 1--%>
            <div class="col-4">

                <%--get User's name--%>
                <div>
                    <asp:Label ID="Labeled" runat="server">User Name</asp:Label>
                    <asp:TextBox ID="UserName" runat="server" ToolTip="Enter User Name"></asp:TextBox>
                    <%--"ToolTip" indicate what to show when user hover over it--%>
                </div>
                <hr />


                <%--Gendr, using Radio Button--%>
                <div>
                    <p>
                        <asp:RadioButton ID="RadioButton1"
                            GroupName="gender"
                            Text="Male"
                            runat="server" />
                        <asp:RadioButton ID="RadioButton2"
                            GroupName="gender"
                            Text="Female"
                            runat="server" />
                    </p>
                </div>
                <hr />


                <%--get courses, usage of check boxs--%>

                <div>
                    select courses:
            <asp:CheckBox ID="CheckBox1" runat="server" Text="AP" />
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="DS" />
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="OS" />
                </div>

            </div>
            <%---------------------------------------------------------------------------------------------------------------------%>
            <%--column 2 --%>
            <%--get a date, using calndar--%>

            <div class="col-4">
                <asp:Label ID="Label2" runat="server" Text="Enter Your Birthday:"></asp:Label>
                <br />
                <asp:Calendar ID="Calendar1" runat="server" SelectedDate="1998-09-23" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </div>
            <%---------------------------------------------------------------------------------------------------------------------%>
            <%--column 3--%>
            <div class="col-4">
                <%--fill upload--%>
                <div>
                    <asp:Label ID="Label3" runat="server" Text="Add an image of you:"></asp:Label>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Cyan" OnClick="LinkButton1_Click">Rules of file Upload</asp:LinkButton><br />
                    <asp:Label ID="Label4" runat="server"></asp:Label><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </div>
                <br />

                <%--file upload Upload button--%>
                <%--<p>
            <asp:Button ID="UploadButton" runat="server" Text="UploadFile" OnClick="FileUpload" />
        </p>--%>

                <asp:HyperLink ID="MultipleFilesUploadLink" runat="server" NavigateUrl="UploadMultiplFiles.aspx">Need to upload more files?</asp:HyperLink>
                <hr />
                <%--download trms and conditions--%>
                <p>
                    Click 
                    <asp:LinkButton ID="DownloadTermsClicked" runat="server" OnClick="DownloadTerms">here</asp:LinkButton>
                    to download terms and conditions
                </p>
                <p>
                    <asp:Label ID="DownloadStatus" runat="server"></asp:Label>
                </p>
            </div>
            <%---------------------------------------------------------------------------------------------------------------------%>
        </div>
        <%--end of the row--%>
        <p class="footer">
            <asp:Button ID="SubmitButton"
                class="w3-button w3-green"
                runat="server"
                Text="Submit"
                BackColor="#33cc33"
                OnClick="SubmitButton_Click"
                Width="147px" />
            <%--"OnClick" indicate the method to execute when button is clicked--%>
        </p>

    </form>
    <%---------------------------------------------------------------------------------------------------------------------%>





    <%--showing the result to the user--%>
    <div>
        <p>
            <asp:Label ID="Result" runat="server"></asp:Label>
        </p>

        <p>
            <asp:Label ID="UserInput" runat="server"></asp:Label>
            <%-- showing userName, entered in the text box--%>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>


        <p>
            <asp:Label ID="ShowDate" runat="server"></asp:Label>
        </p>

        <p>
            <asp:Label ID="ShowCourses" runat="server"></asp:Label>
        </p>

        <%--File Upload Status--%>
        <p>
            <asp:Label ID="FileUploadStatus" runat="server"></asp:Label>
        </p>


    </div>
</body>
</html>
