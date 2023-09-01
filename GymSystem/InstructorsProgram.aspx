<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="InstructorsProgram.aspx.cs" Inherits="InstructorsProgram" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="width:90%; margin:auto">
        <section>
            <h3>Instructors Programs</h3>
        </section>
        <hr />
        <section>

            <div style=" width:60%">
                <div style="float:left">
                    Select Instructor
                </div>
                <div style="float:left">
                    <dx:ASPxComboBox ID="cboinstructor" runat="server" ValueType="System.String"></dx:ASPxComboBox>
                </div>
            </div>
            <div style="clear:both"></div>

            <br />

            <dx:ASPxGridView ID="ASPxGridView1" Width="100%" DataSourceID="ObjectDataSource1" runat="server" AutoGenerateColumns="False" KeyFieldName="program_event_id">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="program_event_id" Visible="false" ReadOnly="True" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="program_id" Visible="false" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="calendar_id" Visible="false" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="program_of_event_name" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="start_time" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="end_time" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataColumn>
                        <DataItemTemplate>
                            <asp:CheckBox ID="chkinstructor" runat="server" />
                        </DataItemTemplate>
                    </dx:GridViewDataColumn>
                </Columns>
            </dx:ASPxGridView>

            <br />
       
            <div style="float:right">
                <dx:ASPxButton ID="btnSave" Theme="RedWine" runat="server" Text="Add Instructor"></dx:ASPxButton>
            </div>

        </section>

     

    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.vw_ProgramEventsTableAdapter"></asp:ObjectDataSource>
</asp:Content>

