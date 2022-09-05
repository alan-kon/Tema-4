import matplotlib.pyplot as plt

x=[]
y=[]

tabela=open('novocsv.csv', 'r')
meses=['jan/20', '', '', '', 'mai/20', '', '', '', 'set/20', '', '', '', 'jan/21', '', '', '', 'mai/21', '', '', '', 'set/21', '', '', '','jan/22', '']
for line in tabela:
    line=line.strip()
    X,Y=line.split(';')
    x.append(X)
    y.append(int(Y))
tabela.close()

plt.plot(x, y)
plt.title('Seguro Defeso')
plt.xlabel('Month')
plt.ylabel('Count')
plt.xticks(x,meses)
plt.show()
