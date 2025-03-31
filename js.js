//Obtém o elemento <video> para exibir a câmera.
const video = document.getElementById("video");
//Obtém o <canvas>, onde será desenhada a imagem capturada.
const canvas = document.getElementById("canvas");
//Obtém o contexto 2D do <canvas>, permitindo desenhar na tela.
const ctx = canvas.getContext("2d");
//Obtém o botão de captura.
const captureButton = document.getElementById("capture");

// Acessa a câmera do usuário
//Pede permissão para acessar a câmera.
navigator.mediaDevices.getUserMedia({ video: true })
    //Se o usuário permitir, a câmera é ativada e exibida no <video>.
    .then(stream => {
        video.srcObject = stream;
    })
    .catch(err => console.error("Erro ao acessar a câmera", err));

// Captura a imagem e exibe no canvas
//Escuta o clique no botão de captura.
captureButton.addEventListener("click", () => {
    //Define a largura do <canvas> igual ao vídeo.
    canvas.width = video.videoWidth;
    //Define a altura do <canvas> igual ao vídeo.
    canvas.height = video.videoHeight;
    //Desenha o quadro atual do vídeo no <canvas>.
    ctx.drawImage(video, 0, 0, canvas.width, canvas.height);

    // Processa a imagem após 0,5s
    setTimeout(processarImagem, 500)
});

function processarImagem() {
    // Lê a imagem do canvas
    let src = cv.imread(canvas)
    let dst = new cv.Mat()

    // Converte para tons de cinza
    cv.cvtColor(src, dst, cv.COLOR_RGBA2GRAY)
    // Aplica binarização
    cv.threshold(dst, dst, 128, 255, cv.THRESH_BINARY)

    // Exibe a imagem processada no canvas
    cv.imshow(canvas, dst)
    src.delete()
    dst.delete()
}
