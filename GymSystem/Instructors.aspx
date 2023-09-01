<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Instructors.aspx.cs" Inherits="Instructors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="width:90%; margin:auto">
        <section>
            <h3>Instructors</h3>
        </section>
        <hr />
        <section>
            <dx:ASPxGridView ID="ASPxGridView1" Width="100%" DataSourceID="ObjectDataSource1" runat="server" AutoGenerateColumns="False" KeyFieldName="instructor_id">
                <Columns>
                    <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true" ShowDeleteButton="true"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="instructor_id" Visible="false" ReadOnly="True" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="instructor_name" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="sex" VisibleIndex="2">
                        <PropertiesComboBox>
                            <Items>
                                <dx:ListEditItem Text="Male" Value="Male" />
                                <dx:ListEditItem Text="Female" Value="Female" />
                            </Items>
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataDateColumn FieldName="date_of_birth" VisibleIndex="3">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="email" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="phone" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="professional_description" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="join_date" VisibleIndex="7">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataBinaryImageColumn Visible="false" FieldName="photo" VisibleIndex="8">
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                    </dx:GridViewDataBinaryImageColumn>
                </Columns>
            </dx:ASPxGridView>
        </section>
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_InstructorTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_instructor_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="instructor_name" Type="String" />
            <asp:Parameter Name="sex" Type="String" />
            <asp:Parameter Name="date_of_birth" Type="DateTime" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="professional_description" Type="String" />
            <asp:Parameter Name="photo" Type="Byte" />
            <asp:Parameter Name="join_date" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="instructor_name" Type="String" />
            <asp:Parameter Name="sex" Type="String" />
            <asp:Parameter Name="date_of_birth" Type="DateTime" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="professional_description" Type="String" />
            <asp:Parameter Name="photo" Type="Byte" />
            <asp:Parameter Name="join_date" Type="DateTime" />
            <asp:Parameter Name="Original_instructor_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

