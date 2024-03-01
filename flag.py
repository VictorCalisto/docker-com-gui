import tkinter as tk

janela = tk.Tk()

altura = 300
largura = 600

canvas = tk.Canvas(janela, height=altura, width=largura)
canvas.pack()

# Desenha a bandeira italiana
# Verde
canvas.create_rectangle(0, 0, largura/3, altura, fill='green')
# Branco
canvas.create_rectangle(largura/3, 0, 2*largura/3, altura, fill='white')
# Vermelho
canvas.create_rectangle(2*largura/3, 0, largura, altura, fill='red')

janela.mainloop()
