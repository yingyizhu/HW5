<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Yingyi's Loan Calculator</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <style type="text/css">
        .auto-style14 {
            font-size: xx-large;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" aria-autocomplete="none">
    <div>
    
      <h1 class="auto-style14"> Yingyi's Loan Calculator </h1> </div>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Loan Amount:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb_loanAmount" runat="server" Height="16px" Width="204px"></asp:TextBox>
        &nbsp;
            <asp:RegularExpressionValidator ID="REV_LoanAmount" runat="server" ControlToValidate="tb_loanAmount" ErrorMessage="**Please enter a correct amount" ValidationExpression="^(([1-9]\d{0,2}(,\d{3})*)|(([1-9]\d*)?\d))(\.\d\d)?$"></asp:RegularExpressionValidator>
            <span class="errorMessage"> 
                
			
            </span>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Annual Interest %:&nbsp;
            <asp:TextBox ID="tb_annualInterest" runat="server" Height="16px" Width="204px"></asp:TextBox>
        &nbsp;
            <asp:RegularExpressionValidator ID="REV_AnnualInterest" runat="server" ControlToValidate="tb_annualInterest" ErrorMessage="**Please enter a correct interest" ValidationExpression="^(([1-9]\d{0,2}(,\d{3})*)|(([1-9]\d*)?\d))(\.\d\d)?$"></asp:RegularExpressionValidator>
            <span class="errorMessage"> 
                
            </span>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Loan Term (Yrs):&nbsp;&nbsp;
            <asp:TextBox ID="tb_LoanTerm" runat="server" Height="16px" Width="204px"></asp:TextBox>
        &nbsp;
           <span class="errorMessage"> 
                
            <asp:RegularExpressionValidator ID="REV_LoantTernm" runat="server" ControlToValidate="tb_LoanTerm" ErrorMessage="**Please enter a correct term number" ValidationExpression="^[1-9]\d*$"></asp:RegularExpressionValidator>
                
            </span>
            </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="btn_calculate" runat="server" Text="Calculate" />
        &nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="btn_clean" runat="server" Text="Clean All" />
        <br />
        <br />
        <asp:Label ID="lb_infor" runat="server" Text="Welcome to my mortage calculator. Please complete the fields above to hava your monthly payment and loan repayment schedule calculated for you.lated for you."></asp:Label>
        <br />
        <br />
        Monthly Payment:&nbsp; <asp:Label ID="lb_result" runat="server" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: x-large; font-weight: 700"></asp:Label>
        <br />
        <br />
        
        <asp:GridView ID="loanGridView" CssClass="cssgirdview" runat="server" />
            
        <br />
        <br />
    </form>
</body>
</html>
