<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ejemplo_1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Creamos una clase para ocultar el id, pero aun asi se dibuje en el html-->
    <!-- Necesito ocultar tanto la cabecera(header) como el contenido (item) se ve en la linea 46-->
    <%--<style> 
        .oculto{
            display:none; 
        }
    </style>--%>
    <!-- Cards -->
    <div class="row my-5">
    <div class="card col" style="">
        <img src="https://www.topgear.com/sites/default/files/images/news-article/2017/04/055dc795049cd1cb56e7e699587cc19c/mini_remastered_by_david_brown_automotive_mid-res_13.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
    </div>
    <div class="card col" style="">
        <img src="https://img.remediosdigitales.com/9e2741/vw-golf-gti-clubsport-12p/1366_2000.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
    </div>
    <div class="card col" style="">
        <img src="https://adminclasificados.lavoz.com.ar/files/imagecache/ficha_aviso_mobile_462_253/avisos/aviso_auto/aviso-auto-ford-focus-9998577.JPG" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
    </div>
    </div>
    <!-- -->
    <div class="row">
    <div class="col-2"></div>
    <div class="col my-5">
    <h3 class="">GRILLA DE AUTOS</h3>
        <!-- Poner la propiedad AutoGenerateColumns = false para ver ciertas columnas y ponemos las column q queremos-->
        <%--con esto DataKeyNames="Id" le decimos a la greed q tenemos un dato clave (ID)--%>
        <asp:GridView runat="server" DataKeyNames="Id" OnSelectedIndexChanged="dgvAutos_SelectedIndexChanged" AutoGenerateColumns="false" cssClass="table table-striped table-hover " ID="dgvAutos">
            <Columns>
<%--                <asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto"/>--%>
                <asp:BoundField HeaderText="Modelo" DataField="Modelo" />
                <asp:BoundField HeaderText="Color" DataField="Color" />
                <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
                <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
                <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />               
            </Columns>
        </asp:GridView>
        <!--Agregamos un enlace para viajar al formulario-->
        <a href="AutoForm.aspx">Agregar</a>
    </div>        
                <!--BoundField: Esta etiqueta define el tipo de una columna -->
                <!--HeaderText: Esta etiqueta define el header/cabecera de una columna -->
                <!--DataField: Esta etiqueta define el nombre del campo de datos (propiedad) de una columna -->
                <!--CommandField: tiene botones que permiten realizar acciones específicas en cada fila-->
    <div class="col-2"></div>
    </div>
</asp:Content>
