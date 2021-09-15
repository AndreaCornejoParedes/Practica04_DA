using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Listar
{
    public class Pedientes
    {
        private string NombreP;
        private string Descripcion;
        private string foto;
        private double precio;
        private int cantidad;

        public Pedientes(string nombreP, string descripcion, string foto, double precio, int cantidad)
        {
            NombreP = nombreP;
            Descripcion = descripcion;
            this.foto = foto;
            this.precio = precio;
            this.cantidad = cantidad;
        }
        public string getNombre()
        {
            return this.NombreP;
        }
        public string getDescription()
        {
            return this.Descripcion;
        }
        public string getFoto()
        {
            return this.foto;
        }
        public double getPrecio()
        {
            return this.precio;
        }
        public int getCantidad()
        {
            return this.cantidad;
        }
        public static List<Pedientes> generarPendientes()
        {
            List<Pedientes> lista = new List<Pedientes>();
            lista.Add(new Pedientes("Laptop HP", "Pedido de laptops", "./img/laptop.png", 1200.33, 2));
            lista.Add(new Pedientes("Impresora HP", "Pedido de Impresoras", "./img/impresora.png", 1400.33, 10));
            lista.Add(new Pedientes("Tablet Toshiba", "Pedido de Tablets", "./img/tablet.png", 290.33, 40));
            return lista;
        }
    }
}