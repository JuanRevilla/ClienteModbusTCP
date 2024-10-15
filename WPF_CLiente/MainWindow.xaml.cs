using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;


namespace WPF_CLiente
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        // Campos:
        private Cliente clie = null;
        private bool online = false;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void Boton_salir(object sender, RoutedEventArgs e)
        {
            if (clie != null) clie.cierraCliente();
            clie = null;
            Close();

        }
        private void Boton_connectar(object sender, RoutedEventArgs e)
        {
            if(!online)
            {
                clie= new Cliente(tb_DirrecionIP.Text, Convert.ToInt32(tb_Puerto.Text));
                if(clie.conectarAlServidor())
                {
                    btn_Conectar.Content = "Desconectar";
                    btn_Enviar.IsEnabled = true;
                    online = true;
                }
                else
                    clie=null;
            }
            else
            {
                if (clie != null) clie.cierraCliente();
                clie = null;
                btn_Conectar.Content = "Conectar";
                btn_Enviar.IsEnabled = false;
                online = false;
            }
            return;
        }
        private void Boton_enviar(object sender, RoutedEventArgs e)
        {
            byte[] estado;
            byte[] leng = new byte[100];
            int res;
            tb_Respuesta.Text = "";
            if(clie != null && online)
            {
                estado= Encoding.UTF8.GetBytes(tb_MensajeEnviar.Text);
                res = clie.enviaDatos(estado, estado.Length);
                if (res >= 0) res = clie.recibeDatos(leng, leng.Length);
                if (res > 0)
                {
                    tb_Respuesta.Clear();
                    for (int i = 0; i < res; i++)
                        tb_Respuesta.AppendText(leng[i].ToString("X2") + "h ");
                    tb_MensajeEnviar.Text = "";

                }
                else if (res == 0)
                    ;
                else if (res == -1)
                {
                    MessageBox.Show("Se ha cerrado el servidor", "NOtificacion al cliente");
                    clie.cierraCliente();
                    clie = null;
                    btn_Conectar.Content = "Conectar";
                    btn_Enviar.IsEnabled= false;
                    online = false;

                }
                else
                    MessageBox.Show("Error Desconocido", "Error Cliente TCP");
            }
            else
                MessageBox.Show("No hay conexion con el cliente", "Error Cliente TCP");
            return;
        }

        private void tb_Respuesta_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
