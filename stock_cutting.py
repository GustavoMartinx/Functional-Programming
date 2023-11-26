import random

# Quantas barras de 20 unidades de comprimento (uc) precisam ser cortadas para atender a todos os pedidos de 4, 5, 6 e 9 uc?
def cutting_stock(orders, stock_length):
    
    # Inicializando uma tabela para armazenar as soluções parciais
    dp = [float('inf')] * (stock_length + 1)
    dp[0] = 0   # Pedidos com comprimento zero são desconsiderados

    for order in orders:
        for length in range(order, stock_length + 1):
            dp[length] = min(dp[length], dp[length - order] + 1)

    # O valor em dp[stock_length] agora contém o número mínimo de barras necessárias
    return dp[stock_length]

# Exemplo de uso:
stock_length = 20
N = int(input("Digite o tamanho da lista de pedidos (N): "))
orders = [random.randint(1, stock_length) for _ in range(N)]

result = cutting_stock(orders, stock_length)
print(f"Número mínimo de barras de estoque necessárias: {result}")
