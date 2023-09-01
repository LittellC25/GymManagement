<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ProgramsPriceList.aspx.cs" Inherits="ProgramsPriceList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="width:90%; margin:auto">
        <section>
            <h3>Programs and Price</h3>
        </section>
        <hr />
        <section>
            <dx:ASPxGridView ID="ASPxGridView1" Width="100%" DataSourceID="ObjectDataSource1" runat="server" AutoGenerateColumns="False" KeyFieldName="program_id">
                <Columns>
                    <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true" ShowDeleteButton="true"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="program_id" Visible="false" ReadOnly="True" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="membership_type_id" Caption="membership type"
                        PropertiesComboBox-DataSourceID="ObjectDataSource2" PropertiesComboBox-ValueField="membership_type_id" PropertiesComboBox-TextField="membership_type_name"  VisibleIndex="1">
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="program_category_id" Caption="program category" 
                      PropertiesComboBox-DataSourceID="ObjectDataSource3" PropertiesComboBox-ValueField="program_category_id" PropertiesComboBox-TextField="program_category_name"   VisibleIndex="2">
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataTextColumn FieldName="program_name" VisibleIndex="3"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="progam_price" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                </Columns>

                <Templates>
                    <DetailRow>
                        <section>
                            <h5>Add Program Facilities</h5>
                            <hr />
                            <dx:ASPxGridView ID="ASPxGridView2" DataSourceID="ObjectDataSource4" Width="60%" KeyFieldName="program_facility_id" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect" runat="server">
                               
                                <Columns>
                                    <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true" ShowDeleteButton="true"></dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn FieldName="program_id" Visible="false"></dx:GridViewDataTextColumn>
                               <dx:GridViewDataComboBoxColumn FieldName="facility_type_id" Caption="facility" 
                                   PropertiesComboBox-DataSourceID="ObjectDataSource5" PropertiesComboBox-ValueField="facility_type_id" PropertiesComboBox-TextField="facility_type_name"></dx:GridViewDataComboBoxColumn>
                                     </Columns>

                            </dx:ASPxGridView>
                        </section>
                    </DetailRow>
                </Templates>
                <SettingsDetail ShowDetailRow="true" AllowOnlyOneMasterRowExpanded="true" />
            </dx:ASPxGridView>
        </section>
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_ProgramsTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_program_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="membership_type_id" Type="Int32" />
            <asp:Parameter Name="program_category_id" Type="Int32" />
            <asp:Parameter Name="program_name" Type="String" />
            <asp:Parameter Name="progam_price" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="membership_type_id" Type="Int32" />
            <asp:Parameter Name="program_category_id" Type="Int32" />
                <asp:Parameter Name="program_name" Type="String" />
            <asp:Parameter Name="progam_price" Type="Double" />
            <asp:Parameter Name="Original_program_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_MembershipTypesTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_ProgramCategoriesTableAdapter"></asp:ObjectDataSource>
   
     <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetByProgramID" TypeName="GymDataSetTableAdapters.tbl_ProgramFacilitiesTableAdapter" UpdateMethod="Update">
        <SelectParameters>
        <asp:SessionParameter Name="program_id" SessionField="program_id" />
        </SelectParameters>
         <DeleteParameters>
            <asp:Parameter Name="Original_program_facility_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:SessionParameter Name="program_id" SessionField="program_id" />
          
            <asp:Parameter Name="facility_type_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
          <asp:SessionParameter Name="program_id" SessionField="program_id" />
            <asp:Parameter Name="facility_type_id" Type="Int32" />
            <asp:Parameter Name="Original_program_facility_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

    <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_FacilityTypesTableAdapter"></asp:ObjectDataSource>

</asp:Content>

