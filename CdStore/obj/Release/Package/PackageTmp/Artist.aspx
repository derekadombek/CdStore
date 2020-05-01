<%--updated on: 04/25/2020-setup the master page, validated the borrower form, add nav--%>
<%--updated on: 05/01/2020-added validation and datalist for data from diskinventory db--%>
<%@ Page Title="Artist" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Artist.aspx.cs" Inherits="CdStore.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Artist</h2>
    <h2>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="artist_id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="artist_idLabel" runat="server" Text='<%# Eval("artist_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="artist_firt_nameLabel" runat="server" Text='<%# Eval("artist_firt_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="artist_type_idLabel" runat="server" Text='<%# Eval("artist_type_id") %>' />
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
                        <asp:Label ID="artist_idLabel1" runat="server" Text='<%# Eval("artist_id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="artist_firt_nameTextBox" runat="server" Text='<%# Bind("artist_firt_name") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="artist_firt_nameTextBox" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="artist_type_idTextBox" runat="server" Text='<%# Bind("artist_type_id") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="artist_type_idTextBox" ValidationGroup="Edit"></asp:RequiredFieldValidator>
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
                        <asp:TextBox ID="artist_firt_nameTextBox" runat="server" Text='<%# Bind("artist_firt_name") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="artist_firt_nameTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="artist_type_idTextBox" runat="server" Text='<%# Bind("artist_type_id") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="artist_type_idTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
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
                        <asp:Label ID="artist_idLabel" runat="server" Text='<%# Eval("artist_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="artist_firt_nameLabel" runat="server" Text='<%# Eval("artist_firt_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="artist_type_idLabel" runat="server" Text='<%# Eval("artist_type_id") %>' />
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
                                    <th runat="server">artist_id</th>
                                    <th runat="server">artist_firt_name</th>
                                    <th runat="server">artist_type_id</th>
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
                        <asp:Label ID="artist_idLabel" runat="server" Text='<%# Eval("artist_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="artist_firt_nameLabel" runat="server" Text='<%# Eval("artist_firt_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="artist_type_idLabel" runat="server" Text='<%# Eval("artist_type_id") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventorydd %>" 
            DeleteCommand="sp_del_artist" 
            DeleteCommandType="StoredProcedure" 
            InsertCommand="sp_ins_artist" 
            InsertCommandType="StoredProcedure" 
            SelectCommand="SELECT [artist_id]
      ,[artist_firt_name]
      ,[artist_type_id]
  FROM [dbo].[artist]
order by artist_last_name
" 
            UpdateCommand="sp_upd_artist" 
            UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="artist_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="artist_firt_name" Type="String" />
                <asp:Parameter Name="artist_last_name" Type="String" />
                <asp:Parameter Name="artist_type_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="artist_id" Type="Int32" />
                <asp:Parameter Name="artist_firt_name" Type="String" />
                <asp:Parameter Name="artist_last_name" Type="String" />
                <asp:Parameter Name="artist_type_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
