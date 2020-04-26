<%--updated on: 04/25/2020--%>
<%--update: setup the master page, validated the borrower form, add nav--%>
<%@ Page Title="Borrow" Language="C#" AutoEventWireup="true" CodeBehind="Borrow.aspx.cs" Inherits="CdStore.WebForm1" 
    MasterPageFile="~/Site1.Master" ClientIDMode="Static"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%--main content--%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Borrow a CD!</h2><br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="* means that the field is required" CssClass="text-danger" />
    <h3>How many CD's?</h3>
                <div class="form-group">
                    
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlNoOfCD" runat="server" CssClass="form-control">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Genre</label>
                    <div class="col-sm-9 genre">
                        <asp:RadioButton ID="rdoMetal" runat="server" Text="Metal" GroupName="Genre" />
                        <asp:RadioButton ID="rdoPunk" runat="server" Text="Punk" GroupName="Genre" />
                        <asp:RadioButton ID="rdoRap" runat="server" Text="Rap" GroupName="Genre" />
                        <asp:RadioButton ID="rdoCountry" runat="server" Text="Country" GroupName="Genre" />
                        <asp:RadioButton ID="rdoRock" runat="server" Text="Rock" GroupName="Genre" />
                    </div>
                </div>

    <h3>Borrowing Dates</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Checkout Date</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtCheckoutDate" runat="server" TextMode="DateTime"
                             CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvCheckout" runat="server" 
                            ControlToValidate="txtCheckoutDate" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvCheckoutDate" runat="server" Text="Must be a valid date" CssClass="text-danger"
                            Display="Dynamic" ControlToValidate="txtCheckoutDate" Type="Date" Operator="DataTypeCheck">
                        </asp:CompareValidator>
                    </div>

                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Return Date</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtReturnDate" runat="server" TextMode="DateTime"
                             CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvReturnDate" runat="server" 
                            ControlToValidate="txtReturnDate" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvReturnDate" runat="server" 
                            ControlToValidate="txtReturnDate" ControlToCompare="txtCheckoutDate" Type="Date" 
                            text="Must be after Checkout date" Operator="GreaterThan" 
                            Display="Dynamic"  CssClass="text-danger">
                        </asp:CompareValidator><br />
                    </div>
                </div>

    <h3>Contact information</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                            ControlToValidate="txtFirstName" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                            ControlToValidate="txtLastName" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Email address</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                            ControlToValidate="txtEmail" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                            ControlToValidate="txtEmail" Text="Must be valid email address" 
                            Display="Dynamic" CssClass="text-danger"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Telephone number</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                            ControlToValidate="txtPhone" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                            ControlToValidate="txtPhone" Text="Use this format: 999-999-9999"
                            Display="Dynamic" CssClass="text-danger" 
                            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                        </asp:RegularExpressionValidator>    
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Preferred method</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlPreferredMethod" runat="server" CssClass="form-control">
                            <asp:ListItem>Text</asp:ListItem>
                            <asp:ListItem>Call</asp:ListItem>
                            <asp:ListItem>Email</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                             CssClass="btn btn-primary" OnClick="btnSubmit_Click"  />
                        <asp:Button ID="btnClear" runat="server" Text="Clear"
                             CssClass="btn btn-primary" OnClick="btnClear_Click" CausesValidation="false"  />
                    </div>
                </div>
            
               
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>
                    </div>
                </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
