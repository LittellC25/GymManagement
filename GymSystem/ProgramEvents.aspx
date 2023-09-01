<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ProgramEvents.aspx.cs" Inherits="ProgramEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="width:90%; margin:auto">

        <section>
            <h3>Program of Events</h3>
        </section>
        <hr />

        <section>
            <dx:ASPxGridView ID="ASPxGridView1" Width="100%" DataSourceID="ObjectDataSource1" runat="server" AutoGenerateColumns="False" KeyFieldName="program_event_id">
                <Columns>
                    <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true" ShowDeleteButton="true"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="program_event_id" ReadOnly="True" Visible="false" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="program_id" Caption="Program" PropertiesComboBox-DataSourceID="ObjectDataSource2" 
                        PropertiesComboBox-ValueField="program_id" PropertiesComboBox-TextField="program_name"  VisibleIndex="1">
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="calendar_id" Caption="Event" PropertiesComboBox-DataSourceID="ObjectDataSource3"
                         PropertiesComboBox-ValueField="calendar_id" PropertiesComboBox-TextField="event_name" VisibleIndex="2">
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataTextColumn FieldName="program_of_event_name" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    
                  

                </Columns>
            </dx:ASPxGridView>
        </section>
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_ProgramEventsTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_program_event_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="program_id" Type="Int32" />
            <asp:Parameter Name="calendar_id" Type="Int32" />
            <asp:Parameter Name="program_of_event_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="program_id" Type="Int32" />
            <asp:Parameter Name="calendar_id" Type="Int32" />
            <asp:Parameter Name="program_of_event_name" Type="String" />
            <asp:Parameter Name="Original_program_event_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>


    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server"  OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_ProgramsTableAdapter" UpdateMethod="Update">
   
    </asp:ObjectDataSource>

    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_CalendarTableAdapter" UpdateMethod="Update">
     
    </asp:ObjectDataSource>

</asp:Content>

