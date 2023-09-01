<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="width:90%; margin:auto">
        <section>
            <h3> Calendar Events</h3>
        </section>
        <hr />

        <section>
            <dx:ASPxGridView ID="ASPxGridView1" Width="100%" DataSourceID="ObjectDataSource1" runat="server" AutoGenerateColumns="False" KeyFieldName="calendar_id">
                <Columns>
                    <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowDeleteButton="true" ShowEditButton="true"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="calendar_id" Visible="false" ReadOnly="True" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="weekly_event_id" Caption="weekly event" PropertiesComboBox-DataSourceID="ObjectDataSource2" 
                        PropertiesComboBox-ValueField="weekly_event_id" PropertiesComboBox-TextField="weekly_event_name" VisibleIndex="1">
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="session_type_id" Caption="Session Type" PropertiesComboBox-DataSourceID="ObjectDataSource3"
                         PropertiesComboBox-ValueField="session_type_id" PropertiesComboBox-TextField="session_type_name" VisibleIndex="2">
                    </dx:GridViewDataComboBoxColumn>

                    <dx:GridViewDataTextColumn FieldName="event_name" VisibleIndex="3"></dx:GridViewDataTextColumn>

                    <dx:GridViewDataTimeEditColumn FieldName="start_time"  VisibleIndex="4">

                    </dx:GridViewDataTimeEditColumn>
                    
                    <dx:GridViewDataTimeEditColumn FieldName="end_time" VisibleIndex="5">

                    </dx:GridViewDataTimeEditColumn>
                </Columns>
            </dx:ASPxGridView>
        </section>
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_CalendarTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_calendar_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="weekly_event_id" Type="Int32" />
            <asp:Parameter Name="session_type_id" Type="Int32" />
            <asp:Parameter Name="event_name" Type="String" />
            <asp:Parameter  Name="start_time" Type="String"  />
            <asp:Parameter  Name="end_time" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="weekly_event_id" Type="Int32" />
            <asp:Parameter Name="session_type_id" Type="Int32" />
            <asp:Parameter Name="event_name" Type="String" />
            <asp:Parameter  Name="start_time" Type="String" />
            <asp:Parameter  Name="end_time" Type="String" />
            <asp:Parameter Name="Original_calendar_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_WeeklyEventsTableAdapter"></asp:ObjectDataSource>

    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GymDataSetTableAdapters.tbl_SessionTypesTableAdapter"></asp:ObjectDataSource>
</asp:Content>

