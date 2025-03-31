using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

//using System.Windows.Forms.DataVisualization.Charting;

namespace GateKeeperGUI
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            //ChartLoad();
        }

        ////////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////DEFINICIONES///////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        Utilidades objetoUtilidades = new Utilidades();
        IO_Propiedades ObjetoIOP = new IO_Propiedades();
        convertir ObjetoConvertir = new convertir();

        byte[] byteRx = new byte[1];
        int controlRx = 0;
        ListBox Listbox_identificadorPalabra = new ListBox();
        string RxString_txt = "";
        byte[] VectorByte3 = new byte[1200];
        int indexVectorByte = 0;
        public int[] VectMascaras01 = new int[2000];
        string direccion_guardar2 = "";
        public string foldermedicion = "Mediciones";
        public int[] Vect_Vout_APD = new int[50];
        public int[] Vect_NexysA7_Vout = new int[50];
        public int[] Vect_NexysA7_APD = new int[50];

       


        private void cOMToolStripMenuItem_MouseEnter(object sender, EventArgs e)
        {
            conectarToolStripMenuItem.Enabled = objetoUtilidades.VerPuertosUSB(20, toolStripComboBox_COMPORTS);
        }


        private void conectarToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            serialPort_FPGA.PortName = toolStripComboBox_COMPORTS.Text;
            serialPort_FPGA.Open();
            //serialPort_FPGA.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(RecepcionSerial);
            toolStripStatusLabel1.Text = "Conectado a " + serialPort_FPGA.PortName;
            //cargo la configuracion anterior
            //numericUpDown1.Enabled = true;
            button1.Enabled = true;
            numericUpDown1.Enabled = true;
            numericUpDown2.Enabled = true;
            numericUpDown3.Enabled = true;
            numericUpDown4.Enabled = true;
            numericUpDown5.Enabled = true;
            numericUpDown6.Enabled = true;
            if (serialPort_FPGA.IsOpen)
            {
                numericUpDown1.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[21, 1]);
                numericUpDown2.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[22, 1]);
                numericUpDown3.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[25, 1]);
                numericUpDown4.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[24, 1]);
                numericUpDown5.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[28, 1]);
                numericUpDown6.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[27, 1]);

            }
            else
            {
                MessageBox.Show("Conectar COM");
            }
        }


        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        ////////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////RECEPCION SERIAL///////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////



        
        

        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        ////////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////TRANSMISION SERIAL/////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        private void EnviarNum(int num)
        {
            if (serialPort_FPGA.IsOpen == true)
            {
                byteRx[0] = (byte)num;
                serialPort_FPGA.Write(byteRx, 0, 1);
                System.Threading.Thread.Sleep(1);
            }
            else
            {
                MessageBox.Show("Puerto no abierto");
            }

        }

        private void ParametroSerial(int orden, int bits, int valor, long valor_long)
        {
            if (bits < 33)
            {
                byte[] valor32bits = new byte[4];
                valor32bits = ObjetoConvertir.int2byte(valor);

                byte[] orden32bits = new byte[4];
                orden32bits = ObjetoConvertir.int2byte(orden);

                switch (bits)
                {
                    case 8:
                        EnviarNum(8);
                        EnviarNum(valor32bits[0]);
                        break;

                    case 16:
                        EnviarNum(7);
                        EnviarNum(valor32bits[1]);
                        EnviarNum(valor32bits[0]);
                        break;

                    case 24:
                        EnviarNum(6);
                        EnviarNum(valor32bits[2]);
                        EnviarNum(valor32bits[1]);
                        EnviarNum(valor32bits[0]);
                        break;

                    default:
                        EnviarNum(5);
                        EnviarNum(valor32bits[3]);
                        EnviarNum(valor32bits[2]);
                        EnviarNum(valor32bits[1]);
                        EnviarNum(valor32bits[0]);
                        break;
                }

                EnviarNum(orden32bits[1]);
                EnviarNum(orden32bits[0]);
            }
            else
            {
                byte[] valor64bits = new byte[8];
                valor64bits = ObjetoConvertir.long2byte(valor_long);

                byte[] orden32bits = new byte[4];
                orden32bits = ObjetoConvertir.int2byte(orden);

                switch (bits)
                {
                    case 40:
                        EnviarNum(4);
                        EnviarNum(valor64bits[4]);
                        EnviarNum(valor64bits[3]);
                        EnviarNum(valor64bits[2]);
                        EnviarNum(valor64bits[1]);
                        EnviarNum(valor64bits[0]);
                        break;

                    case 48:
                        EnviarNum(3);
                        EnviarNum(valor64bits[5]);
                        EnviarNum(valor64bits[4]);
                        EnviarNum(valor64bits[3]);
                        EnviarNum(valor64bits[2]);
                        EnviarNum(valor64bits[1]);
                        EnviarNum(valor64bits[0]);
                        break;

                    case 56:
                        EnviarNum(2);
                        EnviarNum(valor64bits[6]);
                        EnviarNum(valor64bits[5]);
                        EnviarNum(valor64bits[4]);
                        EnviarNum(valor64bits[3]);
                        EnviarNum(valor64bits[2]);
                        EnviarNum(valor64bits[1]);
                        EnviarNum(valor64bits[0]);
                        break;

                    default:
                        EnviarNum(1);
                        EnviarNum(valor64bits[7]);
                        EnviarNum(valor64bits[6]);
                        EnviarNum(valor64bits[5]);
                        EnviarNum(valor64bits[4]);
                        EnviarNum(valor64bits[3]);
                        EnviarNum(valor64bits[2]);
                        EnviarNum(valor64bits[1]);
                        EnviarNum(valor64bits[0]);
                        break;
                }

                EnviarNum(orden32bits[1]);
                EnviarNum(orden32bits[0]);

            }

        }


        private void Form1_Load(object sender, EventArgs e)
        {
            ObjetoIOP.leerPropiedades();
            ObjetoConvertir.reset();
            //refreshChart();
        }

        private void Form1_FormClosing_1(object sender, FormClosingEventArgs e)
        {
            if (serialPort_FPGA.IsOpen)
            {
                //ParametroSerial(97 + 10, 8, 0);
                serialPort_FPGA.Close();
            }
            System.Windows.Forms.Application.Exit();
        }


        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////


        ////////////////////////////////////////////////////////////////////////////////////////
        ///////////////////////MANEJO DE CONTROLES DE  WINDOWS FORM/////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        public String[] controles = new string[] {
                                                    "numericUpDown1","numericUpDown2","numericUpDown3","numericUpDown4","numericUpDown6","numericUpDown7","numericUpDown5","numericUpDown8"
                                                };

        public int[] orden = new int[] {
                                            1,2,3,4,5,6,7,8
                                        };
        private void button1_Click(object sender, EventArgs e)
        {
            if (button1.Text == "Enable")
            {
                button1.Text = "Disable";
                ParametroSerial(23, 8, 1, 0);
            }
            else
            {
                button1.Text = "Enable";
                ParametroSerial(23, 8, 0, 0);
            }
        }
        int window0 = 0;
        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {
            window0 = (int)((double)(numericUpDown1.Value) / 2.5);
            //label2.Text = Convert.ToString(window0);
            ObjetoIOP.guardarPropiedades(21, "window0_numericUpDown1", numericUpDown1.Value.ToString());
            ParametroSerial(21, 16, window0, 0);
        }

        int pulseShaperWidth0 = 0;
        private void numericUpDown2_ValueChanged(object sender, EventArgs e)
        {
            pulseShaperWidth0 = (int)((double)(numericUpDown2.Value) / 2.5); 
            //label2.Text = Convert.ToString(pulseShaperWidth);
            ObjetoIOP.guardarPropiedades(22, "pulseShaperWidth0_numericUpDown2", numericUpDown2.Value.ToString());
            ParametroSerial(22, 8, pulseShaperWidth0, 0);
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (button2.Text == "Enable")
            {
                button1.Text = "Disable";
                ParametroSerial(26, 8, 1, 0);
            }
            else
            {
                button2.Text = "Enable";
                ParametroSerial(26, 8, 0, 0);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (button3.Text == "Enable")
            {
                button1.Text = "Disable";
                ParametroSerial(29, 8, 1, 0);
            }
            else
            {
                button3.Text = "Enable";
                ParametroSerial(29, 8, 0, 0);
            }
        }

        int window1;
        private void numericUpDown4_ValueChanged(object sender, EventArgs e)
        {
            window1 = (int)((double)(numericUpDown4.Value) / 2.5);
            //label2.Text = Convert.ToString(window);
            ObjetoIOP.guardarPropiedades(24, "window1_numericUpDown4", numericUpDown4.Value.ToString());
            ParametroSerial(24, 16, window1, 0);
        }

        int window2;
        private void numericUpDown6_ValueChanged(object sender, EventArgs e)
        {
            window2 = (int)((double)(numericUpDown6.Value) / 2.5);
            //label2.Text = Convert.ToString(window);
            ObjetoIOP.guardarPropiedades(27, "window2_numericUpDown6", numericUpDown6.Value.ToString());
            ParametroSerial(27, 16, window2, 0);
        }

        int pulseShaperWidth1;
        private void numericUpDown3_ValueChanged(object sender, EventArgs e)
        {
            pulseShaperWidth1 = (int)((double)(numericUpDown3.Value) / 2.5);
            //label2.Text = Convert.ToString(pulseShaperWidth);
            ObjetoIOP.guardarPropiedades(25, "pulseShaperWidth1_numericUpDown3", numericUpDown3.Value.ToString());
            ParametroSerial(25, 8, pulseShaperWidth1, 0);
        }

        int pulseShaperWidth2;
        private void numericUpDown5_ValueChanged(object sender, EventArgs e)
        {
            pulseShaperWidth2 = (int)((double)(numericUpDown5.Value) / 2.5);
            //label2.Text = Convert.ToString(pulseShaperWidth);
            ObjetoIOP.guardarPropiedades(28, "pulseShaperWidth2_numericUpDown5", numericUpDown5.Value.ToString());
            ParametroSerial(28, 8, pulseShaperWidth2, 0);
        }
    }
}
