<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ProgramCategories.aspx.cs" Inherits="ProgramCategories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="width:90%; margin:auto">
        <section>
            <h3>Program categories</h3>
        </section>
        <hr />
        <section>
            <dx:ASPxGridView ID="ASPxGridView1" Width="100%" DataSourceID="ObjectDataSource1" runat="server" AutoGenerateColumns="False" KeyFieldName="program_category_id">
                <Columns>
                    <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true" ShowDeleteButton="true"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="program_category_id" Visible="false" ReadOnly="True" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="program_category_name" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
        </section>
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_ProgramCategoriesTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_program_category_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="program_category_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="program_category_name" Type="String" />
            <asp:Parameter Name="Original_program_category_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

