<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Listar.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="products ml-1 mr-1 p-4">
                <h4 class="font-weight-bold">
                    LISTA DE PRODUCTOS
                </h4>
                <div>
                    <div>
                        <div class="form-group mt-2">
                            <asp:TextBox class="form-control" ID="Nombre" runat="server" Placeholder="Nombre del producto"></asp:TextBox>
                        </div>
                        <div class="row mt-2">
                            <div class="col ">
                                <asp:TextBox class="form-control" ID="Cantidad" Placeholder="Cantidad" type="number" min="0" runat="server"></asp:TextBox>
                            </div>
                            <div class="col ">
                                <asp:TextBox class="form-control" ID="Precio" Placeholder="Precio(S/.)" type="number" step="0.01" min="0" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group mt-2">
                            <asp:TextBox class="form-control" ID="Descripcion" Placeholder="Descripción" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group mt-2">
                            <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                        </div>
                        <div class="d-grid gap-2 mt-2 mb-2">
                            <asp:Button class="btn btn-dark btn-block" ID="Add" runat="server" Text="Agregar" OnClick="Add_Click" />
                        </div>
                    </div>
                    <asp:Panel ID="listProducts" runat="server">
                    </asp:Panel>

                </div>
            </div>
        </div>
        <!-- DETALLES PRODUCTO -->
        <div class="col-md-6">
            <div class="details ml-1 mr-1" id="productDetails" runat="server">
                <h4 class="font-weight-bold pl-4 pt-4">DETALLES</h4>
                <div class="row p-4">
                    <div class="col-md-6">
                        <asp:Image class="imgProduct" ID="Image2" ImageUrl="./Upload/default2.jpg" runat="server" />
                    </div>
                    <div class="col-md-6">
                        <input class="form-control mb-2" type="text" placeholder="Nombre" id="NombreDetalle" runat="server" />
                        <input class="form-control  mb-2" type="text" placeholder="Cantidad" id="CantidadDetalle" runat="server" />
                        <input class="form-control  mb-2" type="text" placeholder="Precio" id="PrecioDetalle" runat="server" />
                        <textarea class="form-control  mb-2" placeholder="Descripción" id="DescripcionDetalle" runat="server"></textarea>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
