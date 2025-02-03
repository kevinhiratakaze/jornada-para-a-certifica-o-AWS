document.addEventListener("DOMContentLoaded", function () {
    adicionarEventosBotoes();
    adicionarEfeitosScroll();
    adicionarEfeitoTrilha();
});

function adicionarEventosBotoes() {
    const botoes = document.querySelectorAll(".btn-group a");
    botoes.forEach(botao => {
        botao.addEventListener("mouseover", function () {
            this.style.transform = "scale(1.1)";
            this.style.transition = "0.3s";
        });

        botao.addEventListener("mouseout", function () {
            this.style.transform = "scale(1)";
        });
    });
}

function adicionarEfeitosScroll() {
    const elementos = document.querySelectorAll(".main-section, .oferecemos, .conteudo-programatico, .ranking, .desafio, footer");
    
    function verificarScroll() {
        const alturaJanela = window.innerHeight;
        elementos.forEach(elemento => {
            const posicao = elemento.getBoundingClientRect().top;
            if (posicao < alturaJanela - 100) {
                elemento.style.opacity = "1";
                elemento.style.transform = "translateY(0)";
                elemento.style.transition = "opacity 0.8s ease-out, transform 0.8s ease-out";
            }
        });
    }
    
    elementos.forEach(elemento => {
        elemento.style.opacity = "0";
        elemento.style.transform = "translateY(30px)";
    });
    
    window.addEventListener("scroll", verificarScroll);
    verificarScroll();
}

function adicionarEfeitoTrilha() {
    const itensConteudo = document.querySelectorAll(".conteudo-programatico .item");
    
    function verificarTrilha() {
        const alturaJanela = window.innerHeight;
        itensConteudo.forEach((item, index) => {
            const posicao = item.getBoundingClientRect().top;
            if (posicao < alturaJanela - 100) {
                item.style.opacity = "1";
                item.style.transform = "translateX(0)";
                item.style.transition = `opacity 0.5s ease-out ${index * 0.2}s, transform 0.5s ease-out ${index * 0.2}s`;
            }
        });
    }
    
    itensConteudo.forEach(item => {
        item.style.opacity = "0";
        item.style.transform = "translateX(-50px)";
    });
    
    window.addEventListener("scroll", verificarTrilha);
    verificarTrilha();
}