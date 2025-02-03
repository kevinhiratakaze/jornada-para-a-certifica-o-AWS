document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");
    
    form.addEventListener("submit", function (event) {
        event.preventDefault();

        const usuarioInput = document.getElementById("usuario");
        const senhaInput = document.getElementById("senha");

        const usuario = usuarioInput.value;
        const senha = senhaInput.value;

        // Váriavel para verificar se alguns dos campos está incorreto
        let valido = true;

        usuarioInput.style.border = "1px solid #ccc";
        senhaInput.style.border = "1px solid #ccc";

        // Validação do usuário conforme regras do cadastro
        const usuarioRegex = /^[a-zA-Z0-9]{4,}$/;
        if (!usuarioRegex.test(usuario)) {
            usuarioInput.style.border = "2px solid red";
            alert("Login Incorreto");
            valido = false;
        }

        // Validação da senha conforme regras do cadastro
        const senhaRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
        if (!senhaRegex.test(senha)) {
            senhaInput.style.border = "2px solid red";
            alert("Senha Incorreta");
            valido = false;
        }

        // Se valido for verdadeiro redireciona para a página home.html
        if (valido) {
            window.location.href = "home.html";
        }
    });
});