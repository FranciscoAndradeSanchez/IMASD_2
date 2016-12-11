<%@ Page Title="" Language="VB" MasterPageFile="~/mpInterna.master" AutoEventWireup="false" CodeFile="reporteProyectos.aspx.vb" Inherits="reporteProyectos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCabecera" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPrincipalInterna" Runat="Server">
     <div class="reportes_" style="margin-top:1%; margin-left:5%;">
           <iframe width="95%" height="600px" src="http://intranet.cnf.gob.mx:8080/reportportal/default.aspx?reportId=331&u=16&p=ABD5D3D3D7BCD8C6E19CA9&toolbar=1&filters=1&description=1&name=1&scroll=1" frameborder="1" ></iframe>
     </div>
</asp:Content>

