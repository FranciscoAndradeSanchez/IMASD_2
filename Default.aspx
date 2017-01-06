<%@ Page Language="VB" MasterPageFile="~/mpProiectus.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Culture="es-MX" Theme="skin"%>
<%@ OutputCache Duration="5" VaryByParam="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphCabecera" Runat="Server">
    <style type="text/css">
        .login {
            /*background-image:url(images/2014/login.png);*/
            background-color: #545454;
            width: 90%;
            height: 90%;
            margin:auto;
            display: inline-block;
            position: relative;
            border-radius:2%;           
        }

        .registro {
            background-image: url(images/2014/registro.png);
            width: 322px;
            height: 250px;
            display: inline-block;
            position: relative;
            float: right;
        }
    
        .tbUsuario {
            background-color:white;                     
            line-height: 22px;
            position: absolute;
            top: 6%;
            width: 67%;
            left: 24%;
            float:right;
        }  
        .labusu{
            top: 6%;
            left: 1%;
            float:left;
            color:white;
        }

        .tbPass {
            background-color:white;                        
            line-height: 22px;
            position: absolute;
            top: 16%;
            width: 67%;
            left: 24%;
            float:right;
        }
        .labcon{
            top: 16%;
            left: 1%;
            float:left;
            color:white;
        }
        


        .pie > p {
            font-size: 20px;
        }


        .validacion {
            position: absolute;
            left: 50px;
            top: 153px;
        }

        .uEquis {
            position: absolute;
            left: 287px;
            top: 26px;
        }

        .pEquis {
            position: absolute;
            left: 287px;
            top: 81px;
        } 

        div.botonIngresa {
            position: absolute;
            left: 17px;
            top: 117px;
            width: 50%;
            background-repeat: no-repeat;
            background-position: center center;
        }

        div.botonRegistra {
            position: relative;
            left: 20%;
            top: 117px;
            width: 50%;
            background-repeat: no-repeat;
            background-position: center center;
        }

        div.botonIngresa > input.boton {
            left: 20%;
            background-image: url(../images/2014/botoningresar.PNG);
            background-size: 100% 100%;
            background-repeat: no-repeat;
            
        }

        div.botonRegistra > input.boton{
            left: 22%;
            background-image: url(../images/2014/botonRegistrar.PNG);
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }

        .olvido {
            bottom: 50%;
            left: 18px;
            position: absolute;
        }

        .ayuda {
            bottom: 50%;
            position: absolute;
            right: 59px;
        }

        .btIngresar {
            background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
            bottom: 50px;
            left: 10%;
            position: absolute;
            width: 50%;
        }
    </style>
</asp:Content>


<asp:Content ID="cntDefault" ContentPlaceHolderID="cphPrincipal" Runat="Server">

<div class="row-centralcontent">

    <div class="col1">
      
         <%--<h3>Sistema de control y seguimientos de proyectos </h3>--%>
        <p style=”text-align: justify;”>El Sistema de Control y Seguimiento de Proyectos de Desarrollo, Transferencia de
        Tecnología e Investigación es una herramienta para difundir y compartir el conocimiento
        en el área forestal que se genera con los fondos gestionados por la Comisión Nacional
        Forestal.</p>
        <p style=”text-align: justify;”>Esta herramienta se concibió para sistematizar el seguimiento y divulgación de los
        resultados de los distintos proyectos, que se apoyan con el fin de generar bienestar
        y opciones de desarrollo para todos los mexicanos, y en especial a aquellas personas
        que residen, laboren, estudien, se interesen o realicen cualquier actividad dentro
        el sector forestal mexicano</p>     
        <br />
        <h3>Entre sus alcances se encuentra:</h3>

        <ul>
        <li>Inventario de proyectos</li>      
        <li>Seguimiento técnico</li>
        <li>Reportes y estadísticas</li>
        <li>Productos</li>
        </ul>

    </div>

    <div class="col2">
        
            <div class="login">
                <asp:Label ID="labusu" class="labusu" runat="server" Text="Usuario:" for="txtUsuario" style="margin-top: 25px; margin-left: 5px; font-size:14px;" ></asp:Label>
                <asp:TextBox ID="txtUsuario" runat="server" MaxLength="15" ToolTip="Ingrese Usuario" TabIndex="1" CssClass="tbUsuario"></asp:TextBox>
    
                <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Usuario es requerido" ToolTip="Usuario es requerido" CssClass="uEquis">x</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvUsuario" runat="server" ControlToValidate="txtUsuario"
                                            ErrorMessage="Usuario no válido" ToolTip="Usuario no válido">x</asp:CustomValidator>
                <asp:Label ID="labcon" class="labcon" runat="server" Text="Contraseña:" for="txtContrasenia" style="margin-top: 0px; margin-left: 5px; position: absolute; left: 0px; font-size:14px;" ></asp:Label>
               <asp:TextBox ID="txtContrasenia" runat="server" MaxLength="15" ToolTip="Ingrese Contraseña" TextMode="Password" TabIndex="2" CssClass="tbPass"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtContrasenia"
                            ErrorMessage="Contraseña es requerida" ToolTip="Contraseña requerida, maximo 15 caracteres de longitud" CssClass="pEquis">x</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="cvContrasenia" runat="server" ControlToValidate="txtContrasenia"
                            ErrorMessage="Contraseña no válida" ToolTip="Contraseña no válida">x</asp:CustomValidator>

                <asp:ValidationSummary ID="vsInicioSesion" runat="server" CssClass="validacion" />
                <asp:HyperLink ID="hlnkReiniciarContra" runat="server" CssClass="olvido" NavigateUrl="~/Reiniciarcontra.aspx" style=" font-size:14px;" >¿Olvidó su contraseña?</asp:HyperLink>&nbsp;
                <asp:HyperLink ID="hlnkAyuda" runat="server"  CssClass="ayuda" NavigateUrl="~/ayuda/ayuda.aspx" Target="_blank" style="font-size:14px;">Ayuda</asp:HyperLink>


        
   
                    
                    <div class="boton_container botonIngresa">
                        <asp:Button ID="ibtnIngresar" CssClass="boton" Text=""  runat="server" PostBackUrl="~/Default.aspx" />
                    </div>
                    <div class="boton_container botonRegistra">
                        <asp:Button runat="server" ID="ibtnRegistrar" CssClass="boton"  Text="" PostBackUrl="~/Registro.aspx" CausesValidation="False" UseSubmitBehavior="False" ValidateRequestMode="Disabled" ViewStateMode="Disabled"/>
                   
                    </div>
         

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Solo letras o numeros" ValidationExpression="^([a-zA-Z]|[0-9])+$">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtContrasenia" ErrorMessage="Solo se permiten letras y numeros" ValidationExpression="^([a-zA-Z]|[0-9])+$">*</asp:RegularExpressionValidator>
                <br /><br />
                <div class="videos" style="margin-top:46%; margin-left:5%;">
                   <%-- <iframe width="95%" height="100%" src="https://youtu.be/FEb9BlcnFl8" frameborder="1" allowfullscreen></iframe>--%>
                     <iframe width="95%" height="100%" src="https://www.youtube.com/embed/FEb9BlcnFl8?rel=0&autoplay=1" frameborder="1" allowfullscreen></iframe>
                </div>
                <br />
               <%-- <p style="text-align:center; margin-top=0; margin-bottom=0;">
                    <span  class="videos-link"><a href="https://www.youtube.com/channel/UCoWWO_lK5arImCwY6GbaeeQ?rel=0&autoplay=1" target="_blank"><strong style="color:black;">Canal CONAFOR</strong> <img src="images/2014/YOUTUBE.jpg" width="3%" height="3%" alt="CANAL CONAFOR" /></a></span>
                </p>--%>

            </div>
            
            
       
           

    </div>

</div>

 
</asp:Content>

