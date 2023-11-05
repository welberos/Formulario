using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Projeto_Painel : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {


            string sexoSelecionado = ddlSexo.SelectedValue;
            string nome = txtNome.Text;
            string sobrenome = txtSobrenome.Text;
            string celular = TxtCelular.Text;


            if (string.IsNullOrWhiteSpace(sexoSelecionado) || string.IsNullOrWhiteSpace(nome) || string.IsNullOrWhiteSpace(sobrenome) || string.IsNullOrWhiteSpace(celular))
                
            {
                lblMensagemErro.Text = "Preencha todos os campos obrigatórios.";
                lblMensagemErro.Visible = true;
            }
            else
            {
                
                PnlInfPessoais.Visible = false;
                PnlEndPessoal.Visible = true;
                PnlLogin.Visible = false;

            }

        }

        protected void BtnVoltar_Click(object sender, EventArgs e)
        {
            PnlInfPessoais.Visible = true;
            PnlEndPessoal.Visible = false;
            PnlLogin.Visible = false;

            lblMensagemErro.Text = string.Empty;
            lblMensagemErro.Visible = false;
        }

        protected void BtnProxEnd_Click(object sender, EventArgs e)
        {
            string Endereco = TextEnd.Text;
            string Cidade = TextCid.Text;
            string Cep = TextCep.Text;

            if (string.IsNullOrWhiteSpace(Endereco) || string.IsNullOrWhiteSpace(Cidade) || string.IsNullOrWhiteSpace(Cep))
            {

                lblMensagemErro1.Text = "Preencha todos os campos obrigatórios.";
                lblMensagemErro1.Visible = true;
            }

            else
            {
                PnlInfPessoais.Visible = false;
                PnlEndPessoal.Visible = false;
                PnlLogin.Visible = true;
            }
        }

        protected void BtnVoltar2_Click(object sender, EventArgs e)
        {
            PnlInfPessoais.Visible = false;
            PnlEndPessoal.Visible = true;
            PnlLogin.Visible = false;

            lblMensagemErro1.Text = string.Empty;
            lblMensagemErro1.Visible = false;
        }

        protected void BtnEnv_Click(object sender, EventArgs e)
        {
            string Usuario = TextUsuario.Text;
            string Senha = TextSenha.Text;

            if (string.IsNullOrWhiteSpace(Usuario) || string.IsNullOrWhiteSpace(Senha))
            {
                lblMensagemErro2.Text = "Por favor, preencha todos os campos.";
                lblMensagemErro2.Visible = true;
            }

            else
            {
                Response.Redirect(Request.RawUrl);
            }
        }

    }
}
