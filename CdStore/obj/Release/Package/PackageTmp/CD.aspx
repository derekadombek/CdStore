<%--updated on: 04/25/2020-setup the master page, validated the borrower form, add nav--%>
<%--updated on: 05/01/2020-added validation and datalist for data from diskinventory db--%>

<%@ Page Title="CD" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CD.aspx.cs" Inherits="CdStore.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        CD</h2>
    <h2>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="cd_id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="cd_idLabel" runat="server" Text='<%# Eval("cd_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cd_nameLabel" runat="server" Text='<%# Eval("cd_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="rel_dateLabel" runat="server" Text='<%# Eval("rel_date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="genre_idLabel" runat="server" Text='<%# Eval("genre_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="status_idLabel" runat="server" Text='<%# Eval("status_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cd_type_idLabel" runat="server" Text='<%# Eval("cd_type_id") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" validationgroup="Edit"/>
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="cd_idLabel1" runat="server" Text='<%# Eval("cd_id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cd_nameTextBox" runat="server" Text='<%# Bind("cd_name") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cd_nameTextBox" ErrorMessage="Required" validationgroup="Edit"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="rel_dateTextBox" runat="server" Text='<%# Bind("rel_date") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rel_dateTextBox" ErrorMessage="Required" validationgroup="Edit"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="genre_idTextBox" runat="server" Text='<%# Bind("genre_id") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="genre_idTextBox" ErrorMessage="Required" validationgroup="Edit"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="status_idTextBox" runat="server" Text='<%# Bind("status_id") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="status_idTextBox" ErrorMessage="Required" validationgroup="Edit"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="cd_type_idTextBox" runat="server" Text='<%# Bind("cd_type_id") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cd_type_idTextBox" ErrorMessage="Required" validationgroup="Edit"></asp:RequiredFieldValidator>
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
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="Insert"/>
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="cd_nameTextBox" runat="server" Text='<%# Bind("cd_name") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="cd_nameTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="rel_dateTextBox" runat="server" Text='<%# Bind("rel_date") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="rel_dateTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="genre_idTextBox" runat="server" Text='<%# Bind("genre_id") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required" ControlToValidate="genre_idTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="status_idTextBox" runat="server" Text='<%# Bind("status_id") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required" ControlToValidate="status_idTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="cd_type_idTextBox" runat="server" Text='<%# Bind("cd_type_id") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required" ControlToValidate="cd_type_idTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
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
                        <asp:Label ID="cd_idLabel" runat="server" Text='<%# Eval("cd_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cd_nameLabel" runat="server" Text='<%# Eval("cd_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="rel_dateLabel" runat="server" Text='<%# Eval("rel_date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="genre_idLabel" runat="server" Text='<%# Eval("genre_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="status_idLabel" runat="server" Text='<%# Eval("status_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cd_type_idLabel" runat="server" Text='<%# Eval("cd_type_id") %>' />
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
                                    <th runat="server">cd_id</th>
                                    <th runat="server">cd_name</th>
                                    <th runat="server">rel_date</th>
                                    <th runat="server">genre_id</th>
                                    <th runat="server">status_id</th>
                                    <th runat="server">cd_type_id</th>
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
                        <asp:Label ID="cd_idLabel" runat="server" Text='<%# Eval("cd_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cd_nameLabel" runat="server" Text='<%# Eval("cd_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="rel_dateLabel" runat="server" Text='<%# Eval("rel_date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="genre_idLabel" runat="server" Text='<%# Eval("genre_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="status_idLabel" runat="server" Text='<%# Eval("status_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cd_type_idLabel" runat="server" Text='<%# Eval("cd_type_id") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventorydd %>" 
            DeleteCommand="sp_del_cd" 
            InsertCommand="sp_ins_cd" 
            SelectCommand="SELECT [cd_id], [cd_name], [rel_date], [genre_id], [status_id], [cd_type_id] FROM [cd] ORDER BY [cd_name]" 
            UpdateCommand="sp_upd_cd" 
            DeleteCommandType="StoredProcedure" 
            InsertCommandType="StoredProcedure" 
            UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="cd_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cd_name" Type="String" />
                <asp:Parameter Name="rel_date" Type="DateTime" />
                <asp:Parameter Name="genre_id" Type="Int32" />
                <asp:Parameter Name="status_id" Type="Int32" />
                <asp:Parameter Name="cd_type_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cd_id" Type="Int32" />
                <asp:Parameter Name="cd_name" Type="String" />
                <asp:Parameter Name="rel_date" Type="DateTime" />
                <asp:Parameter Name="genre_id" Type="Int32" />
                <asp:Parameter Name="status_id" Type="Int32" />
                <asp:Parameter Name="cd_type_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
