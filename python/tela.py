import tkinter as tk

# Função para desenhar a bandeira da Itália
def desenhar_bandeira():
    # Criar a janela
    janela = tk.Tk()
    janela.title("Bandeira da Itália")

    # Criar as três faixas verticais nas cores da bandeira italiana
    faixa_verde = tk.Canvas(janela, width=30, height=200, bg="green")
    faixa_branca = tk.Canvas(janela, width=30, height=200, bg="white")
    faixa_vermelha = tk.Canvas(janela, width=30, height=200, bg="red")

    # Posicionar as faixas na janela
    faixa_verde.grid(row=0, column=0)
    faixa_branca.grid(row=0, column=1)
    faixa_vermelha.grid(row=0, column=2)

    # Iniciar o loop da janela
    janela.mainloop()

# Chamar a função para desenhar a bandeira
desenhar_bandeira()
