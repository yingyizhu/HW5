<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Yingyi's Massively Awesome Loan Calculator</title>
    <style type="text/css">
        .auto-style14 {
            font-size: xx-large;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      <h1 class="auto-style14"> Yingyi's Massively Awesome Loan Calculator </h1> </div>
        <p>
            Loan Amount:&nbsp;&nbsp;&nbsp; 　<asp:TextBox ID="tb_loanAmount" runat="server" Height="16px" Width="204px"></asp:TextBox>
        &nbsp;
            <span class="errorMessage"> 
                <asp:RegularExpressionValidator ID="regex_LoanA" runat="server" 
                    ControlToValidate="tb_loanAmount" 
                    ErrorMessage="** Please enter a valid loan amount" 
                    ValidationExpression=" ^[1-9]\d*\.\d*|0\.\d*[1-9]\d*$">
                </asp:RegularExpressionValidator>
            </span>
        </p>
        <p>
            Annual Interest %:&nbsp;
            <asp:TextBox ID="tb_annualInterest" runat="server" Height="16px" Width="204px"></asp:TextBox>
        &nbsp;
            <span class="errorMessage"> 
                <asp:RegularExpressionValidator ID="regex_Interest" runat="server" 
                    ControlToValidate="tb_annualInterest" 
                    ErrorMessage="** Please enter a valid Annual Interest" 
                    ValidationExpression=" ^[1-9]\d*\.\d*|0\.\d*[1-9]\d*$">
                </asp:RegularExpressionValidator>
            </span>
        </p>
        <p>
            Loan Term (Yrs):&nbsp;&nbsp;
            <asp:TextBox ID="tb_LoanTerm" runat="server" Height="16px" Width="204px"></asp:TextBox>
        &nbsp;
           <span class="errorMessage"> 
                <asp:RegularExpressionValidator ID="regex_terms" runat="server" 
                    ControlToValidate="tb_LoanTerm" 
                    ErrorMessage="** Please enter a Loan Term" 
                    ValidationExpression=" ^[1-9]\d*$">
                </asp:RegularExpressionValidator>
            </span>
            </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_calculate" runat="server" Text="Calculate" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_clean" runat="server" Text="Clean All" />
        <br />
        <br />
        <p>Welcome to my mortage calculator. Please complete the fields above to hava your monthly payment and loan repayment schedule calculated for you.lated for you.</p>
        <bMonthly Payment:&nbsp; <asp:Label ID="lb_result" runat="server"></asp:Label>
        <br />
        <br />
        
        <asp:GridView ID="loanGridView" runat="server" />
            
        <br />
        <br />
    </form>
</body>
</html>
