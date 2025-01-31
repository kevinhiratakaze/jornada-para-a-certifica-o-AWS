// Seleção de elementos
const usernameInput = document.getElementById("username");
const emailInput = document.getElementById("email");
const senhaInput = document.getElementById("password");
const confirmarSenhaInput = document.getElementById("confirm-password");

const usernameHelper = document.getElementById("username-helper");
const emailHelper = document.getElementById("email-helper");
const passwordHelper = document.getElementById("password-helper");
const confirmPasswordHelper = document.getElementById("confirm-password-helper");

// Funções Gerais
function estilizarInputCorreto(input, helper, message = "") {
  input.classList.remove("error");
  input.classList.add("correct");
  helper.innerText = message;
}

function estilizarInputErro(input, helper, message) {
  input.classList.remove("correct");
  input.classList.add("error");
  helper.innerText = message;
}

// Validação Nome de Usuário
usernameInput.addEventListener("input", (e) => { 
  const valor = e.target.value;
  // Expressão regular para permitir apenas letras e números
  const regex = /^[a-zA-Z0-9]*$/;
  if (!regex.test(valor)) {
    estilizarInputErro(usernameInput, usernameHelper, "O nome de usuário deve conter apenas letras e números.");
    e.target.value = valor.replace(/[^a-zA-Z0-9]/g, ""); // Remove caracteres inválidos
  } else if (valor.length < 3) {
    estilizarInputErro(usernameInput, usernameHelper, "O nome de usuário deve ter no mínimo 3 caracteres.");
  } else {
    estilizarInputCorreto(usernameInput, usernameHelper, "Nome de usuário válido.");
  }
});


// Validação Email
emailInput.addEventListener("input", (e) => {
  // Expressão regular para validar o formato de e-mail (sem espaços e com '@' e domínio)
  const regex = /^\S+@\S+\.\S+$/;
  const valor = e.target.value;
  if (regex.test(valor)) {
    estilizarInputCorreto(emailInput, emailHelper, "Email válido.");
  } else {
    estilizarInputErro(emailInput, emailHelper, "O email é inválido.");
  }
});

// Validação Senha
senhaInput.addEventListener("input", (e) => {
  const valor = e.target.value;
  const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$/;
  if (!valor) {
    estilizarInputErro(senhaInput, passwordHelper, "A senha é obrigatória.");
  } else if (!regex.test(valor)) {
    estilizarInputErro(senhaInput, passwordHelper, "A senha deve conter pelo menos 8 caracteres, incluindo letras maiúsculas, minúsculas, números e caracteres especiais.");
  } else {
    estilizarInputCorreto(senhaInput, passwordHelper, "Senha válida.");
  }
});

// Validação Confirmar Senha
confirmarSenhaInput.addEventListener("input", (e) => {
  const senhaValor = senhaInput.value;
  const confirmarSenhaValor = e.target.value;
  if (!confirmarSenhaValor) {
    estilizarInputErro(confirmarSenhaInput, confirmPasswordHelper, "A confirmação de senha é obrigatória.");
  } else if (senhaValor !== confirmarSenhaValor) {
    estilizarInputErro(confirmarSenhaInput, confirmPasswordHelper, "As senhas não coincidem.");
  } else {
    estilizarInputCorreto(confirmarSenhaInput, confirmPasswordHelper, "As senhas coincidem.");
  }
});

// Seleção do botão 
const cadastrarButton = document.querySelector('button[type="submit"]');

// Evento de clique no botão de cadastro
cadastrarButton.addEventListener("click", (e) => {
  e.preventDefault(); // Impede o envio do formulário por padrão

  // Verifica se todos os campos têm a classe "correct"
  const isUsernameValid = usernameInput.classList.contains("correct");
  const isEmailValid = emailInput.classList.contains("correct");
  const isPasswordValid = senhaInput.classList.contains("correct");
  const isConfirmPasswordValid = confirmarSenhaInput.classList.contains("correct");

  if (isUsernameValid && isEmailValid && isPasswordValid && isConfirmPasswordValid) {
    alert("Cadastro realizado com sucesso!");
  } else {
    alert("Por favor, preencha os campos corretamente.");
  }
});
