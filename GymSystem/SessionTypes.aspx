<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="SessionTypes.aspx.cs" Inherits="SessionTypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="width:90%; margin:auto">
        <section>
            <h3>Session Types</h3>
        </section>
        <hr />

        <section>
            <dx:ASPxGridView ID="ASPxGridView1" Width="100%" DataSourceID="ObjectDataSource1" runat="server" AutoGenerateColumns="false" KeyFieldName="session_type_id">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="session_type_id" Visible="false"></dx:GridViewDataTextColumn>           
                    <dx:GridViewDataTextColumn FieldName="session_type_name" ></dx:GridViewDataTextColumn>

                    <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowDeleteButton="true" ShowEditButton="true"></dx:GridViewCommandColumn>
                </Columns>
           
                 </dx:ASPxGridView>
        </section>
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_SessionTypesTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_session_type_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="session_type_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="session_type_name" Type="String" />
            <asp:Parameter Name="Original_session_type_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

