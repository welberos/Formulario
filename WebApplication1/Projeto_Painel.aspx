<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Projeto_Painel.aspx.cs" Inherits="WebApplication1.Projeto_Painel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>ProjetoPaineis</title>
    <style type="text/css" >
        .auto-style1 {
            color: #666666;
        }
        .auto-style2 {
            color: #666666;
        }
        .auto-style3 {
            color: #666666;
            font-weight: normal;
            background-color: #FFFFFF;
        }
        .container {
            display: flex;
            justify-content: center;
            height: 100vh;
            align-items: center;
        }

        .panel-style{
            border: 1px solid #ccc;
            background-color: #f7f7f7;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 2px 2px 5px #888888;
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 475px;
        }
        .buton,
        .butonBack{
            
            border-radius: 5px;
            cursor: pointer;
            border: none;
            padding: 10px 20px;
            margin-bottom: 10px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Panel ID="PnlPrincipal" runat="server" CssClass="panelPrinc-style">
                <asp:Panel ID="PnlInfPessoais" runat="server" Height="332px"  CssClass="panel-style">
                    <h1 class="auto-style1">Informações pessoais </h1>
                <table style="height: 215px; width: 326px">
                    <tr>
                        <td>Nome:</td>
                        <td><asp:TextBox ID="txtNome" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                         <td>Sobrenome:</td>
                         <td><asp:TextBox ID="txtSobrenome" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                         <td>Gênero:</td>
                         <td><asp:DropDownList ID="ddlSexo" runat="server">
                            <asp:ListItem Text="Selecione o Sexo" Value="" />
                            <asp:ListItem Text="Masculino" Value="M" />
                            <asp:ListItem Text="Feminino" Value="F" />
                         </asp:DropDownList></td>
                    </tr> 
                    <tr>
                         <td>Celular:</td>
                         <td><asp:TextBox ID="TxtCelular" runat="server"></asp:TextBox></td>
                    </tr>

                    <asp:Label ID="lblMensagemErro" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label> 
                </table>

                    <br />

                    <asp:Button ID="btnSubmit" runat="server" Text="Próximo" OnClick="btnSubmit_Click" style="background-color: #009933" CssClass="buton"/>

                </asp:Panel>
                <asp:Panel ID="PnlEndPessoal" runat="server" Height="338px" style="margin-top: 63px" Visible="false" CssClass="panel-style">
                    <h1><span class="auto-style2">Detalhes do Endereço </span></h1>
                    <table style="height: 215px; width: 326px">
                        <tr>
                            <td>Endereço:</td>
                            <td>
                                <asp:TextBox ID="TextEnd" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Cidade:</td>
                            <td>
                                <asp:TextBox ID="TextCid" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>CEP:</td>
                            <td>
                                <asp:TextBox ID="TextCep" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <asp:Label ID="lblMensagemErro1" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>
                    </table>
                    <br />
                <div class="butons">
                    <asp:Button ID="BtnVoltar" runat="server" style="background-color: #0099FF" Text="Voltar" OnClick="BtnVoltar_Click" CssClass="butonBack"/>&nbsp; 
                    <asp:Button ID="BtnProxEnd" runat="server" style="background-color: #009933" Text="Proximo" OnClick="BtnProxEnd_Click" CssClass="buton"/>
                </div>

                </asp:Panel>    
                <asp:Panel ID="PnlLogin" runat="server" style="margin-top: 26px" Visible="false" CssClass="panel-style">
                    <h1><span class="auto-style3"><strong style="background-color: #F7F7F7">Área de Login </strong></span></h1>
                    <table style="height: 115px; width: 326px">
                        <tr>
                            <td>Usuario:</td>
                            <td>
                                <asp:TextBox ID="TextUsuario" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Senha:</td>
                            <td>
                                <asp:TextBox ID="TextSenha" runat="server" TextMode="Password">></asp:TextBox>
                            </td>
                        </tr>
                        <asp:Label ID="lblMensagemErro2" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>
                    </table>
                    <br />
                    <div class="butons">
                    <asp:Button ID="BtnVoltar2" runat="server" style="background-color: #0099FF" Text="Voltar" OnClick="BtnVoltar2_Click" CssClass="butonBack"/>
&nbsp;<asp:Button ID="BtnEnv" runat="server" Text="Enviar" style="color: #FFFFFF; background-color: #009933" OnClick="BtnEnv_Click" CssClass="buton"/>
                    </div>
                  </asp:Panel>
               </asp:Panel>
        </div>
    </form>
</body>
</html>
