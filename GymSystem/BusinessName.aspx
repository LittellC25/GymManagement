<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="BusinessName.aspx.cs" Inherits="BusinessName" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="width:95%;margin:auto">

        <section>
            <h3>Setup Business</h3>
        </section>
        <hr />

        <section>
            <dx:ASPxGridView ID="ASPxGridView1" Width="100%" DataSourceID="ObjectDataSource1" runat="server" AutoGenerateColumns="false" KeyFieldName="business_id">

                <Columns>
                    <dx:GridViewDataTextColumn FieldName="business_id" Visible="false"></dx:GridViewDataTextColumn>       
                    <dx:GridViewDataTextColumn FieldName="business_name"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="business_address"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="business_city"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="business_phone"></dx:GridViewDataTextColumn>
                    <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true" ShowDeleteButton="true"></dx:GridViewCommandColumn>
                </Columns>
                
            </dx:ASPxGridView>
            </section>

    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_BusinessTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_business_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="business_name" Type="String" />
            <asp:Parameter Name="business_address" Type="String" />
            <asp:Parameter Name="business_city" Type="String" />
            <asp:Parameter Name="business_phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="business_name" Type="String" />
            <asp:Parameter Name="business_address" Type="String" />
            <asp:Parameter Name="business_city" Type="String" />
            <asp:Parameter Name="business_phone" Type="String" />
            <asp:Parameter Name="Original_business_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

