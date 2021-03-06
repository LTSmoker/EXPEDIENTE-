﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Menu.Master" AutoEventWireup="true" CodeBehind="documento.aspx.cs" Inherits="ctrlArchivos.vista.documento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/Forms.css" rel="stylesheet" type="text/css" />
    <script src="../JS/Alerts.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="contenido">
    

        <h1>Documento</h1>
        <asp:Button ID="btnBuscarDoc" class="btn btn-primary btn-lg btn-block" runat="server" Text="Buscar" OnClick="btnBuscarDoc_Click" />
&nbsp;<asp:Button ID="btnEliminarDoc" class="btn btn-primary btn-lg btn-block" runat="server" Text="Eliminar" OnClick="btnEliminarDoc_Click" />
&nbsp;<asp:Button ID="btnActualizarDoc" class="btn btn-primary btn-lg btn-block" runat="server" Text="Actualizar" OnClick="btnActualizarDoc_Click" />
        <br />

        <div class="mysection">
            <h2>Generales del documento</h2> 

            
            <asp:Panel ID="Panel1" runat="server">
                Selecciona el folio del documento:<br />
                 
                <br />
                <asp:DropDownList ID="DropDownList11" AutoPostBack="True" class="form-control"  runat="server" OnSelectedIndexChanged="DropDownList11_SelectedIndexChanged">
                </asp:DropDownList>
                <br />
            </asp:Panel>



            <div class="mycontrol">
                

                Clasificación del expediente:
                <br/>
                <asp:DropDownList ID="DropDownList9" class="form-control" runat="server">
                </asp:DropDownList>
            </div>

    
            <div class="mycontrol">
                Folio:
                <br/>
                <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
            </div>

    
            <div class="mycontrol">
                Tipo:
                <br/>
                <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                    <asp:ListItem>Acta de nacimiento</asp:ListItem>
                    <asp:ListItem>Solicitud de empleo</asp:ListItem>
                    <asp:ListItem>Cartas de recomendación</asp:ListItem>
                    <asp:ListItem>Constancia de no antecedentes penales</asp:ListItem>
                    <asp:ListItem>Examen médico</asp:ListItem>
                    <asp:ListItem>Aviso o constancia de inscripción al RFC</asp:ListItem>
                    <asp:ListItem>Alta en el seguro social</asp:ListItem>
                    <asp:ListItem>Credencial de elector</asp:ListItem>
                    <asp:ListItem>Comprobante de domicilio actual</asp:ListItem>
                    <asp:ListItem>Contrato individual de trabajo</asp:ListItem>
                    <asp:ListItem>Constancia de la CURP</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="mycontrol">
                Estatus del documento:
                <br/>
                <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                    <asp:ListItem>Vigente</asp:ListItem>
                    <asp:ListItem>Vencido</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="mycontrol">
                Prioridad del documento:
                <br/>
                <asp:DropDownList ID="DropDownList8" class="form-control" runat="server">
                    <asp:ListItem>Alta</asp:ListItem>
                    <asp:ListItem>Media</asp:ListItem>
                    <asp:ListItem>Baja</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="mycontrol">
                Número de documento
                <br/>
                <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
   
            </div>

            <div class="mycontrol">
                Fecha del documento
                <br/>
                <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
            </div>

            <div class="mycontrol">
                Quien remite
                <br/>
                <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
                </asp:DropDownList>        
            </div>
    
            <div class="mycontrol">
                A quien va dirigido
                <br/>
                <asp:DropDownList ID="DropDownList4" class="form-control" runat="server">
                </asp:DropDownList>        
            </div>

            <div class="mycontrol">
                Fecha de recepcion del documento
                <br/>
                <asp:TextBox ID="TextBox4" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
            </div>

            <div class="mycontrol">
                Hora de recepcion del documento
                <br/>
                <asp:TextBox ID="TextBox5" class="form-control" runat="server" TextMode="Time"></asp:TextBox>
            </div>

            <div class="mycontrol">
                Asunto del documento
                <br/>
                <asp:TextBox ID="TextBox7" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div class="mycontrol">
                Observaciones del documento
                <br/>
                <asp:TextBox ID="TextBox8" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div class="mycontrol">
                Descripción de anexos
                <br/>
                <asp:TextBox ID="TextBox9" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div class="mycontrol">
                Número de fojas del documento
                <br/>
                <asp:TextBox ID="TextBox10" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>

        </div>

        <div class="mysection">
            <h2>Delegación del documento</h2>
            <div class="mycontrol">
                A quien se turno
                <br/>
                <asp:DropDownList ID="DropDownList5" class="form-control" runat="server">
                </asp:DropDownList>        
            </div>

            <div class="mycontrol">
                Estatus del turno
                <br/>
                <asp:DropDownList ID="DropDownList6" class="form-control" runat="server">
                    <asp:ListItem>Activo</asp:ListItem>
                    <asp:ListItem>Inactivo</asp:ListItem>
                </asp:DropDownList>        
            </div>

            <div class="mycontrol">
                Fecha en que se turno el documento
                <br/>
                <asp:TextBox ID="TextBox6" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
            </div>
            
            
        </div>

        <asp:Button ID="btnAgregarDoc" class="btn btn-primary btn-lg btn-block" runat="server" Text="Agregar" OnClick="btnAgregarDoc_Click" />

        <asp:Button ID="btnactualizar" class="btn btn-primary btn-lg btn-block" runat="server" Text="Actualizar" OnClick="btnactualizar_Click" />
        <br />
        <asp:Button ID="btneliminar" class="btn btn-primary btn-lg btn-block" runat="server" Text="Eliminar" OnClick="btneliminar_Click" />

    </div>
</asp:Content>
