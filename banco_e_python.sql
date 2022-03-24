import pyodbc
 
dados_conexao = (
    
    "Driver={SQL Server};"
    "Server=LAPTOP-SG53A25P\SQLEXPRESS;"
    "DataBase=PYTHONSQL;"

)

conexao = pyodbc.connect(dados_conexao)
print('Conexão bem sucedida')

cursor = conexao.cursor()

comando = """ INSERT INTO Vendas(id_venda, cliente, produto, data_venda, preco, qunatidade)
Values
    (2, 'João', 'Teclado', '16/03/22', 7000, 2)"""

cursor.execute(comando)
cursor.commit()



