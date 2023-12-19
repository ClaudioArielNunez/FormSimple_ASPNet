<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="Ejemplo_1.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="mt-3">Formulario</h3>
    <div class="row">
        <!--Formulario con clases de bootstrap y asp-->
        <div class="col-6 mt-3">
            <div class="mb-3">
                <label for="txtId" class="form-label">Id</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtId" />

            </div>
            <div class="mb-3">
                <label for="txtModelo" class="form-label">Modelo</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtModelo" />
            </div>
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripcion</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtDescripcion" TextMode="MultiLine" /><!--textMode=prop para escribir multiples lineas-->
            </div>
            <div class="mb-3">
                <label for="ddlColores" class="form-label">Color</label>
                <asp:DropDownList ID="ddlColores" CssClass="form-select" runat="server"></asp:DropDownList>
                <!--el dropdown se carga en el LOAD DEL FORMULARIO-->
            </div>
            <div class="mb-3">
                <label for="txtFecha" class="form-label">Fecha</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtFecha" TextMode="Date" /><!--textMode=prop para Fecha-->
            </div>
             <div class="mb-3">
                <asp:CheckBox Text="" ID="chkUsado" CssClass="" runat="server" />
                <asp:Label Text="Usado" CssClass="form-check-label" runat="server" />
            </div>
            <div class="mb-3 form-check">
                <!--Para q solo se pueda marcar uno, ponemos un GROUPNAME Y UN RADIO CHECKED-->
                <asp:RadioButton Text="" id="rdbImportado" cssClass="form-check-input" runat="server" GroupName="Importado" />
                <label class="form-check-label">Importado</label>
            </div>
            <div class="mb-3 form-check">
                <asp:RadioButton Text="" ID="rdbNacional" cssClass="form-check-input" GroupName="Importado" Checked="true" runat="server" />
                <label class="form-check-label">Nacional</label>

            </div>
            <div class="mb-3">
                <asp:Button Text="Aceptar" OnClick="btnAceptar_Click"  ID="btnAceptar" cssclass="btn btn-primary" runat="server" />
                <a href="Default.aspx" class="text-decoration-none ms-2">Cancelar</a>
            </div>
        </div>

    </div>

</asp:Content>
