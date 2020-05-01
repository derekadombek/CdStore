<%--updated on: 04/25/2020-setup the master page, validated the borrower form, add nav--%>
<%--updated on: 05/01/2020-added validation and datalist for data from diskinventory db--%>
<%@ Page Title="Borrow" Language="C#" AutoEventWireup="true" CodeBehind="Borrow.aspx.cs" Inherits="CdStore.WebForm1" 
    MasterPageFile="~/Site1.Master" ClientIDMode="Static"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%--main content--%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Borrow</h2>
    <asp:ListView ID="ListView2" runat="server" DataKeyNames="borrower_id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="borrower_idLabel" runat="server" Text='<%# Eval("borrower_id") %>' />
                </td>
                <td>
                    <asp:Label ID="borrower_firt_nameLabel" runat="server" Text='<%# Eval("borrower_firt_name") %>' />
                </td>
                <td>
                    <asp:Label ID="borrower_last_nameLabel" runat="server" Text='<%# Eval("borrower_last_name") %>' />
                </td>
                <td>
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" ValidationGroup="Edit"/>
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="borrower_idLabel1" runat="server" Text='<%# Eval("borrower_id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="borrower_firt_nameTextBox" runat="server" Text='<%# Bind("borrower_firt_name") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="borrower_firt_nameTextBox" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="borrower_last_nameTextBox" runat="server" Text='<%# Bind("borrower_last_name") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="borrower_last_nameTextBox" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="phoneTextBox" ValidationGroup="Edit" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                            ControlToValidate="phoneTextBox" ErrorMessage="Must be XXX-XXX-XXXX"
                            Display="Dynamic" CssClass="text-danger" 
                            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ValidationGroup="Edit">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert"  ValidationGroup="Insert"/>
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="borrower_firt_nameTextBox" runat="server" Text='<%# Bind("borrower_firt_name") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="borrower_firt_nameTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="borrower_last_nameTextBox" runat="server" Text='<%# Bind("borrower_last_name") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="borrower_last_nameTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="phoneTextBox2" runat="server" Text='<%# Bind("phone") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="phoneTextBox2" ValidationGroup="Insert" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                            ControlToValidate="phoneTextBox2" ErrorMessage="Must be XXX-XXX-XXXX"
                            Display="Dynamic" CssClass="text-danger" 
                            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ValidationGroup="Insert">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="borrower_idLabel" runat="server" Text='<%# Eval("borrower_id") %>' />
                </td>
                <td>
                    <asp:Label ID="borrower_firt_nameLabel" runat="server" Text='<%# Eval("borrower_firt_name") %>' />
                </td>
                <td>
                    <asp:Label ID="borrower_last_nameLabel" runat="server" Text='<%# Eval("borrower_last_name") %>' />
                </td>
                <td>
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server"></th>
                                <th runat="server">borrower_id</th>
                                <th runat="server">borrower_firt_name</th>
                                <th runat="server">borrower_last_name</th>
                                <th runat="server">phone</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="borrower_idLabel" runat="server" Text='<%# Eval("borrower_id") %>' />
                </td>
                <td>
                    <asp:Label ID="borrower_firt_nameLabel" runat="server" Text='<%# Eval("borrower_firt_name") %>' />
                </td>
                <td>
                    <asp:Label ID="borrower_last_nameLabel" runat="server" Text='<%# Eval("borrower_last_name") %>' />
                </td>
                <td>
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventorydd %>" DeleteCommand="sp_del_borrower" DeleteCommandType="StoredProcedure" InsertCommand="sp_ins_borrower" InsertCommandType="StoredProcedure" SelectCommand="SELECT [borrower_id]
      ,[borrower_firt_name]
      ,[borrower_last_name]
      ,[phone]
  FROM [disk_inventorydd].[dbo].[borrower]" UpdateCommand="sp_upd_borrower" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="borrower_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="borrower_firt_name" Type="String" />
            <asp:Parameter Name="borrower_last_name" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="borrower_id" Type="Int32" />
            <asp:Parameter Name="borrower_firt_name" Type="String" />
            <asp:Parameter Name="borrower_last_name" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
