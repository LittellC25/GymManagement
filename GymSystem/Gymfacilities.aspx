<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Gymfacilities.aspx.cs" Inherits="Gymfacilities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="width:90%; margin:auto">

        <section>
            <h3>Setup Gym facilities</h3>
        </section>
        <hr />

        <section>
            <dx:ASPxGridView ID="ASPxGridView1" Width="100%" DataSourceID="ObjectDataSource1" runat="server" AutoGenerateColumns="False" KeyFieldName="facility_type_id">
                <Columns>
                    <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true" ShowDeleteButton="true"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="facility_type_id" Visible="false" ReadOnly="True" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="facility_type_name" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
        </section>
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_FacilityTypesTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_facility_type_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="facility_type_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="facility_type_name" Type="String" />
            <asp:Parameter Name="Original_facility_type_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

